;This script assumes full screen on a 1920x 1080 monitor in "Large Screen" Mode
#SingleInstance force
#MaxThreadsPerHotkey 2
#Persistent
CoordMode, Mouse, Window
SetTimer, WatchCursor, 5 ; Necessary and I don't know why
return

WatchCursor:
MouseGetPos, XCur, YCur ; Tracks mouse at all times
return

F1::
CoordMode, Mouse, Window
MouseGetPos, xCen, yCen ; This will be where your mouse snaps back to
toggle := !toggle
While (toggle=1) ;Boundary scripts are the same, will be explained in right boundary. CHANGE THE BOUNDRY VARIABLES IF YOU DON'T HAVE A 1920x1080 MONITOR.
{	
	DllCall("SystemParametersInfo", Int,[color=red]113[/color], Int,0, UInt,[color=red]5[/color], Int,2) ;Slows mouse movement (idk if this actually works lol
	if (XCur > 1900) ; Right boundary < BOUNDRY VARIABLE. CHANGE THESE IF YOU DON'T HAVE A 1920x1080 MONITOR.
	{
		Send {LButton} ;Cancels the click to stop in game snapping
		MouseMove XCen, YCur, 0 ; Moves mouse back to initial position (where you pressed F1)
		Sleep 40 ; Freezes inputs for a frame or two, this stops in game snapping. Comment out if you want less dead time in exchange for snapping movements
		Send {LButton Down} ; Restarts click
	}
		if (XCur < 1610) ; Left boundary < BOUNDRY VARIABLE. CHANGE THESE IF YOU DON'T HAVE A 1920x1080 MONITOR.
	{
		Send {LButton}
		MouseMove XCen, YCur, 0
		Sleep 40
		Send {LButton Down}
	}
		if (YCur > 1000) ; Bottom boundary < BOUNDRY VARIABLE. CHANGE THESE IF YOU DON'T HAVE A 1920x1080 MONITOR.
	{
		Send {LButton}
		MouseMove XCur, YCen, 0
		Sleep 40
		Send {LButton Down}
	}
		if (YCur < 800) ; Top boundary < BOUNDRY VARIABLE. CHANGE THESE IF YOU DON'T HAVE A 1920x1080 MONITOR.
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
		
