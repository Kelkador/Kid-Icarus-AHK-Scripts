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
  WinGetPos, llX, llY, llWidth, llHeight, %llwindowname%
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
WinGetPos, , , W, H, InputRedirectionClient-Qt - Touch screen ; Window NEEDS to be named
MouseGetPos, xCen, yCen ; This will be where your mouse snaps back to
EnvSub, W, 100 ; Makes horizontal mouse snapping better
EnvSub, H, 100 ; Makes vertical mouse snapping better
Lock("InputRedirectionClient-Qt - Touch screen") ; Activates clip cursor, mouse can no longer leave touch screen
toggle := !toggle
While (toggle=1) ;Boundary scripts are the same, will be explained in right boundary.
{	
	if (XCur > W) ; Right boundary
	{
		Send {LButton} ;Cancels the click to stop in game snapping
		MouseMove XCen, YCur, 0 ; Moves mouse back to initial position (where you pressed F1)
		Sleep 40 ; Freezes inputs for a frame or two, this stops in game snapping. Comment out if you want less dead time in exchange for snapping movements
		Send {LButton Down} ; Restarts click
	}
		if (XCur < 100) ; Left boundary
	{
		Send {LButton}
		MouseMove XCen, YCur, 0
		Sleep 40
		Send {LButton Down}
	}
		if (YCur > H) ; Bottom boundary
	{
		Send {LButton}
		MouseMove XCur, YCen, 0
		Sleep 40
		Send {LButton Down}
	}
		if (YCur < 100) ; Top boundary
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

Esc:: ExitApp
		
