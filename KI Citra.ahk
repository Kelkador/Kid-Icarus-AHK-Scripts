;This script assumes full screen on a 1920x 1080 monitor in "Large Screen" Mode
#SingleInstance force
#MaxThreadsPerHotkey 2
#Persistent
CoordMode, Mouse, Window
SetTimer, WatchCursor, 5 ; Necessary and I don't know why
return


Lock(llwindowname="") ; DO NOT TOUCH
{
   CoordMode, Mouse, Window
  VarSetCapacity(llrectA, 16)
  WinGetPos, llX, llY, llWidth, llHeight
  If (!llWidth AND !llHeight) {
    DllCall("ClipCursor")
    Return, False
  }
  Loop, 4 {
    DllCall("RtlFillMemory", UInt,&llrectA+0+A_Index-1, UInt,1, UChar,(llX + 30) >> 8*A_Index-8)
    DllCall("RtlFillMemory", UInt,&llrectA+4+A_Index-1, UInt,1, UChar,(llY + 30) >> 8*A_Index-8)
    DllCall("RtlFillMemory", UInt,&llrectA+8+A_Index-1, UInt,1, UChar,(llWidth + llX - 30)>> 8*A_Index-8)
    DllCall("RtlFillMemory", UInt,&llrectA+12+A_Index-1, UInt,1, UChar,(llHeight + llY - 30) >> 8*A_Index-8)
  }
  DllCall("ClipCursor", "UInt", &llrectA)
Return, True
Return
}

WatchCursor:
MouseGetPos, XCur, YCur ; Tracks mouse at all times
return

F1::
CoordMode, Mouse, Window
MouseGetPos, xCen, yCen ; This will be where your mouse snaps back to
toggle := !toggle
While (toggle=1) ;Boundary scripts are the same, will be explained in right boundary.
{	
	DllCall("SystemParametersInfo", Int,[color=red]113[/color], Int,0, UInt,[color=red]5[/color], Int,2) ;Slows mouse movement
	if (XCur > 1900) ; Right boundary
	{
		Send {LButton} ;Cancels the click to stop in game snapping
		MouseMove XCen, YCur, 0 ; Moves mouse back to initial position (where you pressed F1)
		Sleep 40 ; Freezes inputs for a frame or two, this stops in game snapping. Comment out if you want less dead time in exchange for snapping movements
		Send {LButton Down} ; Restarts click
	}
		if (XCur < 1610) ; Left boundary
	{
		Send {LButton}
		MouseMove XCen, YCur, 0
		Sleep 40
		Send {LButton Down}
	}
		if (YCur > 1000) ; Bottom boundary
	{
		Send {LButton}
		MouseMove XCur, YCen, 0
		Sleep 40
		Send {LButton Down}
	}
		if (YCur < 800) ; Top boundary
	{
		Send {LButton}
		MouseMove XCur, YCen, 0
		Sleep 40
		Send {LButton Down}
	}
	if GetKeyState("LButton", "P") = 0
		{
		Send {LButton Down} ; Ensures touch screen is always tapped
		}
}
return

6:: ; Restarts Script
Reload
Return


2:: ;Vehicle controls
toggle := !toggle
Send {LButton}
Sleep 40
MouseMove 1617, 1005, 0
send {LButton}
Sleep 40
MouseMove xCen, yCen, 0
toggle := !toggle
Return

Esc:: ExitApp
		
