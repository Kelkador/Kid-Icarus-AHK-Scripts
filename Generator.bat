@ECHO OFF
CHOICE /C KC /M "What input will you use? (K for Keyboard/Mouse C for Controller)"
if %errorlevel%==1 goto KeyboardMouse
if %errorlevel%==2 goto Controller


:KeyboardMouse
set "Version=KeyboardMouse"
@echo What key will you press to SPRINT? (Recommended: Space or LControl) (Type out key name if not an alphanumeric key!!)
set /p "Sprint= "
@echo What key will you press to activate vehicle abilities? (Exotank, etc.)
set /p "Vroom= "
goto funnel

:Controller
set "Version=Controller"
@echo What key will you press to activate vehicle abilities? (Exotank, etc.) (Type out key name if not an alphanumeric key AND map chosen key to the controller in Steam!!)
set /p "Vroom= "
goto funnel

:funnel
@echo What key will START the script?
set /p "Start= "
@echo What key will PAUSE the script?
set /p "Pause= "
@echo What key will END the script?
set /p "End= "
Del %Version%.ahk
if %Version%==KeyboardMouse Del .\Lib\Barrier.ahk

if %Version%==Controller echo:  Persistent >> Controller.ahk
if %Version%==Controller echo:  KeyHistory(0) >> Controller.ahk
if %Version%==Controller echo:  #SingleInstance force >> Controller.ahk
if %Version%==Controller echo:  InstallKeybdHook() >> Controller.ahk
if %Version%==Controller echo:  InstallMouseHook() >> Controller.ahk
if %Version%==Controller echo:  KeyHistory(0) >> Controller.ahk
if %Version%==Controller echo:  A_MaxHotkeysPerInterval ^:= 255 >> Controller.ahk
if %Version%==Controller echo:  ListLines(false) >> Controller.ahk
if %Version%==Controller echo:  SendMode("Input") >> Controller.ahk
if %Version%==Controller echo:  ProcessSetPriority("A") >> Controller.ahk
if %Version%==Controller echo:  SetKeyDelay(-1, -1) >> Controller.ahk
if %Version%==Controller echo:  CoordMode("Mouse", "Client") >> Controller.ahk
if %Version%==Controller echo:  #MaxThreads 255 >> Controller.ahk
if %Version%==Controller echo:  SetTimer WatchCursor, 25 >> Controller.ahk
if %Version%==Controller echo:  global toggle >> Controller.ahk
if %Version%==Controller echo:  toggle ^:= 0 >> Controller.ahk
if %Version%==Controller echo:  return >> Controller.ahk
if %Version%==Controller echo:   >> Controller.ahk
if %Version%==Controller echo:   *%Vroom%^:: >> Controller.ahk
if %Version%==Controller echo:  { >> Controller.ahk
if %Version%==Controller echo:  global >> Controller.ahk
if %Version%==Controller echo:  if toggle ^= 1 >> Controller.ahk
if %Version%==Controller echo:  { >> Controller.ahk
if %Version%==Controller echo:  toggle ^:= 0 >> Controller.ahk
if %Version%==Controller echo:  BlockInput MouseMove >> Controller.ahk
if %Version%==Controller echo:  sleep 70 >> Controller.ahk
if %Version%==Controller echo:  Send ("{LButton}") >> Controller.ahk
if %Version%==Controller echo:  sleep 70 >> Controller.ahk
if %Version%==Controller echo:  MouseMove VroomX, VroomY, 0 >> Controller.ahk
if %Version%==Controller echo:  sleep 70 >> Controller.ahk
if %Version%==Controller echo:  Send ("{LButton Down}") >> Controller.ahk
if %Version%==Controller echo:  sleep 70 >> Controller.ahk
if %Version%==Controller echo:  Send ("{LButton Up}") >> Controller.ahk
if %Version%==Controller echo:  sleep 70 >> Controller.ahk
if %Version%==Controller echo:  MouseMove XCen, YCen, 0 >> Controller.ahk
if %Version%==Controller echo:  toggle ^:= 1 >> Controller.ahk
if %Version%==Controller echo:  BlockInput false >> Controller.ahk
if %Version%==Controller echo:  } >> Controller.ahk
if %Version%==Controller echo:  } >> Controller.ahk
if %Version%==Controller echo:   >> Controller.ahk
if %Version%==Controller echo:  ~*%Start%^:: ;Begins Script  >> Controller.ahk
if %Version%==Controller echo: {  >> Controller.ahk
if %Version%==Controller echo: global >> Controller.ahk
if %Version%==Controller echo:  CoordMode("Mouse", "Client") >> Controller.ahk
if %Version%==Controller echo:  WinGetPos(^&LeftB1, ^&TopB1, ^&RightB1, ^&BottomB1, "A") >> Controller.ahk
if %Version%==Controller echo:  LeftB2 ^:= (RightB1 * 0.1)  >> Controller.ahk
if %Version%==Controller echo:  TopB2 ^:= (BottomB1 * 0.1)  >> Controller.ahk
if %Version%==Controller echo:  RightB2 ^:= (RightB1 * 0.9)  >> Controller.ahk
if %Version%==Controller echo:  BottomB2 ^:= (BottomB1 * 0.9)  >> Controller.ahk
if %Version%==Controller echo:  VroomX ^:= (RightB1 * 0.08)  >> Controller.ahk
if %Version%==Controller echo:  VroomY ^:= (BottomB1 * 0.92)  >> Controller.ahk
if %Version%==Controller echo:  xCen ^:= (RightB1 / 2) ; This will be where your mouse snaps back to horizontally   >> Controller.ahk
if %Version%==Controller echo:  yCen ^:= (BottomB1 / 2) ; This will be where your mouse snaps back to vertically  >> Controller.ahk
if %Version%==Controller echo:  toggle ^:= 1 >> Controller.ahk
if %Version%==Controller echo:  ClipCursor(true, LeftB1 ^+ 10, TopB1 ^+ 60, LeftB1 ^+ RightB1 ^- 10, TopB1 ^+ BottomB1 ^- 10) >> Controller.ahk
if %Version%==Controller echo:  SetTimer Activate, 50 >> Controller.ahk
if %Version%==Controller echo:  } >> Controller.ahk
if %Version%==Controller echo:   >> Controller.ahk
if %Version%==Controller echo:    ~*%Pause%^:: ; Restarts Script    >> Controller.ahk
if %Version%==Controller echo:  { >> Controller.ahk
if %Version%==Controller echo:  global >> Controller.ahk
if %Version%==Controller echo:  CoordMode("Mouse", "Client")  >> Controller.ahk
if %Version%==Controller echo:  toggle ^:= 0 >> Controller.ahk
if %Version%==Controller echo:  sleep 100 >> Controller.ahk
if %Version%==Controller echo:  Send("{LButton}") >> Controller.ahk
if %Version%==Controller echo:  ClipCursor(False, 0, 0, 0, 0) >> Controller.ahk
if %Version%==Controller echo:  return  >> Controller.ahk
if %Version%==Controller echo:  }   >> Controller.ahk
if %Version%==Controller echo:   >> Controller.ahk
if %Version%==Controller echo:  WatchCursor()  >> Controller.ahk
if %Version%==Controller echo: { ; V1toV2: Added bracket >> Controller.ahk
if %Version%==Controller echo:  global XCur >> Controller.ahk
if %Version%==Controller echo:  global YCur >> Controller.ahk
if %Version%==Controller echo:  CoordMode "Mouse", "Client" >> Controller.ahk
if %Version%==Controller echo:  MouseGetPos ^&XCur, ^&YCur ; Tracks mouse at all times  >> Controller.ahk
if %Version%==Controller echo:  return  >> Controller.ahk
if %Version%==Controller echo: } ; V1toV2: Added bracket in the end >> Controller.ahk
if %Version%==Controller echo:   >> Controller.ahk
if %Version%==Controller echo:  Activate() >> Controller.ahk
if %Version%==Controller echo:  { >> Controller.ahk
if %Version%==Controller echo:  While toggle ^= 1 >> Controller.ahk
if %Version%==Controller echo:  {  >> Controller.ahk
if %Version%==Controller echo:  	if (XCur ^> RightB2) ; Right boundary    >> Controller.ahk
if %Version%==Controller echo:  	{   >> Controller.ahk
if %Version%==Controller echo:  		Send ("{LButton}") ;Cancels the click to stop in game snapping   >> Controller.ahk
if %Version%==Controller echo:  		BlockInput MouseMove  >> Controller.ahk
if %Version%==Controller echo:  		MouseMove XCen, YCen, 0 ; Moves mouse back to initial position  >> Controller.ahk
if %Version%==Controller echo:  		Sleep (50) ; Freezes inputs for a frame or two, this stops in game snapping. Comment out if you want less dead time in exchange for snapping movements   >> Controller.ahk
if %Version%==Controller echo:  		BlockInput false >> Controller.ahk
if %Version%==Controller echo:  		Send ("{LButton Down}") ; Restarts click   >> Controller.ahk
if %Version%==Controller echo:  	}   >> Controller.ahk
if %Version%==Controller echo:  		if (XCur ^< LeftB2) ; Left boundary    >> Controller.ahk
if %Version%==Controller echo:  	{   >> Controller.ahk
if %Version%==Controller echo:  		Send ("{LButton}")  >> Controller.ahk
if %Version%==Controller echo:  		BlockInput MouseMove  >> Controller.ahk
if %Version%==Controller echo:  		MouseMove XCen, YCen, 0  >> Controller.ahk
if %Version%==Controller echo:  		Sleep (50)  >> Controller.ahk
if %Version%==Controller echo:  		BlockInput false  >> Controller.ahk
if %Version%==Controller echo:  		Send ("{LButton Down}") >> Controller.ahk
if %Version%==Controller echo:  	}   >> Controller.ahk
if %Version%==Controller echo:  		if (YCur ^> BottomB2) ; Bottom boundary    >> Controller.ahk
if %Version%==Controller echo:  	{   >> Controller.ahk
if %Version%==Controller echo:  		Send ("{LButton}")  >> Controller.ahk
if %Version%==Controller echo:  		BlockInput MouseMove  >> Controller.ahk
if %Version%==Controller echo:  		MouseMove XCen, YCen, 0  >> Controller.ahk
if %Version%==Controller echo:  		Sleep (50)  >> Controller.ahk
if %Version%==Controller echo:  		BlockInput false  >> Controller.ahk
if %Version%==Controller echo:  		Send ("{LButton Down}")  >> Controller.ahk
if %Version%==Controller echo:  	}   >> Controller.ahk
if %Version%==Controller echo:  		if (YCur ^< TopB2) ; Top boundary   >> Controller.ahk
if %Version%==Controller echo:  	{   >> Controller.ahk
if %Version%==Controller echo:  		Send ("{LButton}")  >> Controller.ahk
if %Version%==Controller echo:  		BlockInput MouseMove  >> Controller.ahk
if %Version%==Controller echo:  		MouseMove XCen, YCen, 0  >> Controller.ahk
if %Version%==Controller echo:  		Sleep (50)  >> Controller.ahk
if %Version%==Controller echo:  		BlockInput false >> Controller.ahk
if %Version%==Controller echo:  		Send ("{LButton Down}") >> Controller.ahk
if %Version%==Controller echo:  	}    >> Controller.ahk
if %Version%==Controller echo:  		Send ("{LButton Down}") ; Ensures touch screen is always tapped >> Controller.ahk
if %Version%==Controller echo:  	}  >> Controller.ahk
if %Version%==Controller echo: 	 if toggle ^= 0  >> Controller.ahk
if %Version%==Controller echo: 	 return >> Controller.ahk
if %Version%==Controller echo: } >> Controller.ahk
if %Version%==Controller echo: >> Controller.ahk
if %Version%==Controller echo: >> Controller.ahk
if %Version%==Controller echo: ClipCursor(confine, x1, y1, x2, y2) { >> Controller.ahk
if %Version%==Controller echo: >> Controller.ahk
if %Version%==Controller echo:	hData ^:= DllCall("GlobalAlloc", "uint",0x2, "ptr",16) >> Controller.ahk
if %Version%==Controller echo:	pData ^:= DllCall("GlobalLock", "ptr",hData) >> Controller.ahk
if %Version%==Controller echo:	NumPut("UPtr",x1,pData+0) >> Controller.ahk
if %Version%==Controller echo:	NumPut("UPtr",y1,pData+4) >> Controller.ahk
if %Version%==Controller echo:	NumPut("UPtr",x2,pData+8) >> Controller.ahk
if %Version%==Controller echo:	NumPut("UPtr",y2,pData+12) >> Controller.ahk
if %Version%==Controller echo: >> Controller.ahk
if %Version%==Controller echo:	value ^:=  Confine ^? DllCall( "ClipCursor", "Ptr",pData ) : DllCall( "ClipCursor" ) >> Controller.ahk
if %Version%==Controller echo:	DllCall("GlobalUnlock", "ptr",hData) >> Controller.ahk
if %Version%==Controller echo:	DllCall("GlobalFree", "ptr",hData) >> Controller.ahk
if %Version%==Controller echo: >> Controller.ahk
if %Version%==Controller echo: return >> Controller.ahk
if %Version%==Controller echo: } >> Controller.ahk
if %Version%==Controller echo: >> Controller.ahk
if %Version%==Controller echo: ~*%End%^::  >> Controller.ahk
if %Version%==Controller echo: { >> Controller.ahk
if %Version%==Controller echo: global >> Controller.ahk
if %Version%==Controller echo: ClipCursor(False, 0, 0, 0, 0) >> Controller.ahk
if %Version%==Controller echo: ExitApp() >> Controller.ahk
if %Version%==Controller echo: } >> Controller.ahk

if %Version%==KeyboardMouse echo:  KeyHistory(0) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  Persistent >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  #SingleInstance force >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  InstallKeybdHook() >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  InstallMouseHook() >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  KeyHistory(0) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  A_MaxHotkeysPerInterval ^:= 255 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  ListLines(false) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  SendMode("Input") >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  ProcessSetPriority("A") >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  SetKeyDelay(-1, -1) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  #MaxThreads 255 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  #Include Lib/AHK-ViGEm-Bus.ahk >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  global controller >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  controller ^:= ViGEmDS4() >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  global Vehicle >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  Vehicle ^:= 0  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  global confine >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  confine ^:= False >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  global Yvalue >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  Yvalue ^:= 50 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  global Yincrement >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  Yincrement ^:= 7 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  global Ydecrease >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  Ydecrease ^:= -7 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  global Xvalue >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  Xvalue ^:= 50 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  global Xincrement >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  Xincrement ^:= 7 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  global Xdecrease >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  Xdecrease ^:= -7 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  global %Sprint%Pressed >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  %Sprint%Pressed ^:= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  StickFreeze ^:= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  SetTimer XJoyValue, 30 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  SetTimer YJoyValue, 30 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  barrier ^:= ThreadObj("#Include .\Lib\Barrier.ahk") >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  global toggle2 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  toggle2 ^:= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  return >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:   >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  ~*%End%^::  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: global >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: ClipCursor1(False, 0, 0, 0, 0)  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  ExitApp() >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:   ~*%Sprint%^::   >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  {  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  	global >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	if %Sprint%Pressed ^= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	{ >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:   	%Sprint%Pressed ^:= 1 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	if GetKeyState("W", "P") ^&^& GetKeyState("S", "P") ^= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	{ >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	Yvalue ^:= 50 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	YDirection ^:= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	sleep 70 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	if GetKeyState("W", "P") ^&^& GetKeyState("S", "P") ^= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	{ >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	Yvalue ^:= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	YDirection ^:= 1 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	} >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	} >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	if GetKeyState("W", "P") ^= 0 ^&^& GetKeyState("S", "P") >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	{ >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	Yvalue ^:= 50 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	YDirection ^:= 1 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	sleep 70 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	if GetKeyState("W", "P") ^= 0 ^&^& GetKeyState("S", "P") >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	{ >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	Yvalue ^:= 100 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	YDirection ^:= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	} >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	} >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	if GetKeyState("A", "P") ^&^& GetKeyState("D", "P") ^= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	{ >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	Xvalue ^:= 50 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	XDirection ^:= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	sleep 70 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	if GetKeyState("A", "P") ^&^& GetKeyState("D", "P") ^= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	{ >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	Xvalue ^:= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	XDirection ^:= 1 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	} >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	} >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	if GetKeyState("A", "P") ^= 0 ^&^& GetKeyState("D", "P") >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	{ >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	Xvalue ^:= 50 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	XDirection ^:= 1 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	sleep 70 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	if GetKeyState("A", "P") ^= 0 ^&^& GetKeyState("D", "P") >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	{ >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	Xvalue ^:= 100 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	XDirection ^:= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	} >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	} >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	return >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	} >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	return >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  ~*%Sprint% Up::  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  {  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  	global  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:    %Sprint%Pressed ^:= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	StickFreeze ^:= 1 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	sleep 90 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	StickFreeze ^:= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	return >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  }  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:    >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:    >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  ~*LButton::  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	global >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  	controller.Buttons.Square.SetState(true)  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	return >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  ~*LButton Up::  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	global >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  	controller.Buttons.Square.SetState(false)  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: ~*W:: >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: global >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: YDirection ^:= "1" >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if (%Sprint%Pressed ^= 1) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Yvalue ^:= "0" >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: else if (Yvalue ^> 0) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: YRamp() >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: else >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Loop >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if GetKeyState("W", "P") ^= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Break >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if GetKeyState("S", "P")  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Yvalue ^:= "50" >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if (YDirection ^= 1  ^&^& Yvalue ^> 0) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: YRamp() >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Sleep(5) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: return >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:   >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: ~*W up::  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  global >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: YDirection ^:= "0" >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if GetKeyState("S", "P") ^= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Yvalue ^:= "50" >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: else if (%Sprint%Pressed ^= 1) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Yvalue ^:= "100" >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: else YRamp2() >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: return >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: ~*S:: >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  global >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: YDirection ^:= "0" >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if (%Sprint%Pressed ^= 1) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Yvalue ^:= "100" >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if (Yvalue ^< 100) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: YRamp2() >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: else >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Loop >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if GetKeyState("S", "P") ^= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Break >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if GetKeyState("W", "P")  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Yvalue ^:= "50" >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if (YDirection ^= 0  ^&^& Yvalue ^< 100) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: YRamp2() >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Sleep(5) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: return >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:   >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: ~*S up:: >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: {  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: global >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: YDirection ^:= "1" >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if GetKeyState("W", "P") ^= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Yvalue ^:= "50" >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: else if (%Sprint%Pressed ^= 1) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Yvalue ^:= "0" >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: YRamp() >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: return >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: W ^& S:: >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: global >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Yvalue ^:= "50" >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: return >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:   >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  ~*A:: >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: global >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: XDirection ^:= "1" >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if (%Sprint%Pressed ^= 1) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Xvalue ^:= "0" >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: else if (Xvalue ^> 0) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: XRamp() >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: else >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Loop >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if GetKeyState("A", "P") ^= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Break >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if GetKeyState("D", "P")  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Xvalue ^:= "50" >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if (XDirection ^= 1  ^&^& Xvalue ^> 0) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: XRamp() >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Sleep(5) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: return >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:   >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: ~*A up::  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  global >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: XDirection ^:= "0" >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if GetKeyState("D", "P") ^= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Xvalue ^:= "50" >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: else if (%Sprint%Pressed ^= 1) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Xvalue ^:= "100" >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: XRamp2() >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: return >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  ~*D::  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  global >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: XDirection ^:= "0" >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if (%Sprint%Pressed ^= 1) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Xvalue ^:= "100" >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: else if (Xvalue ^< 100) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: XRamp2() >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: else >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Loop >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if GetKeyState("D", "P") ^= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Break >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if GetKeyState("A", "P")  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Xvalue ^:= "50" >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if (XDirection ^= 0  ^&^& Xvalue ^< 100) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: XRamp2() >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Sleep(5) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: return >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  ~*D up::  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: global >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: XDirection ^:= "1" >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if GetKeyState("A", "P") ^= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Xvalue ^:= "50" >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: else if (%Sprint%Pressed ^= 1) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Xvalue ^:= "0" >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: else XRamp() >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: return >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: A ^& D:: >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: global >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Xvalue ^:= "50" >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: YRamp() >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: global >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: While GetKeyState("W", "P")  ^&^& YDirection ^= 1  ^&^& Yvalue ^> 0  ^&^& GetKeyState("S", "P") ^= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:    Yvalue ^+= Ydecrease >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:    Sleep(5) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  return >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:   >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: YRamp2() >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: global >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: While GetKeyState("S", "P")  ^&^& YDirection ^= 0  ^&^& Yvalue ^< 100  ^&^& GetKeyState("W", "P") ^= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:    Yvalue ^+= Yincrement >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:    Sleep(5) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  return >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: YJoyValue() >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: global >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if (Yvalue ^> 100) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Yvalue ^:= 100 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if (Yvalue ^< 0) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Yvalue ^:= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if StickFreeze ^= 1 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Yvalue ^:= 50 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if GetKeyState("W", "P") ^= 0 ^&^& GetKeyState("S", "P") ^= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Yvalue ^:= 50 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: try controller.Axes.LY.SetValue(3, Yvalue) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: XRamp() >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: global >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: While GetKeyState("A", "P")  ^&^& XDirection ^= 1  ^&^& Xvalue ^> 0  ^&^& GetKeyState("D", "P") ^= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:    { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:    Xvalue ^+= Xdecrease >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:    Sleep(5) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:    } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  return >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: XRamp2() >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: global >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: While GetKeyState("D", "P")  ^&^& XDirection ^= 0  ^&^& Xvalue ^< 100  ^&^& GetKeyState("A", "P") ^= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:    Xvalue ^+= Xincrement >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:    Sleep(5) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: return >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: XJoyValue() >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: global >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if (Xvalue ^> 100) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Xvalue ^:= 100 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if (Xvalue ^< 0) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Xvalue ^:= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if StickFreeze ^= 1 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Xvalue ^:= 50 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: if GetKeyState("A", "P") ^= 0 ^&^& GetKeyState("D", "P") ^= 0 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: Xvalue ^:= 50 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: try controller.Axes.LX.SetValue(2, Xvalue) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: } >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: ClipCursor1(confine, x1, y1, x2, y2) { >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	hData ^:= DllCall("GlobalAlloc", "uint",0x2, "ptr",16) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	pData ^:= DllCall("GlobalLock", "ptr",hData) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	NumPut("UPtr",x1,pData+0) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	NumPut("UPtr",y1,pData+4) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	NumPut("UPtr",x2,pData+8) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	NumPut("UPtr",y2,pData+12) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo:  >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	value ^:=  Confine ^? DllCall( "ClipCursor", "Ptr",pData ) : DllCall( "ClipCursor" ) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	DllCall("GlobalUnlock", "ptr",hData) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	DllCall("GlobalFree", "ptr",hData) >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	 >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	return >> KeyboardMouse.ahk
if %Version%==KeyboardMouse echo: 	} >> KeyboardMouse.ahk

if %Version%==KeyboardMouse echo: Persistent >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: KeyHistory(0) >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: #SingleInstance force >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: InstallKeybdHook() >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: InstallMouseHook() >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: KeyHistory(0) >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: A_MaxHotkeysPerInterval ^:= 255 >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: ListLines(false) >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: SendMode("Input") >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: ProcessSetPriority("A") >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: SetKeyDelay(-1, -1) >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: CoordMode("Mouse", "Client") >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: #MaxThreads 255 >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: #NoTrayIcon >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: SetTimer WatchCursor, 25 >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: global toggle >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: toggle ^:= 0 >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: return >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo:  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo:  ~*%Vroom%^:: >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: { >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: global >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: if toggle ^= 1 >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: { >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: toggle ^:= 0 >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: BlockInput MouseMove >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: sleep 70 >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: Send ("{LButton}") >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: sleep 70 >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: MouseMove VroomX, VroomY, 0 >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: sleep 70 >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: Send ("{LButton Down}") >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: sleep 70 >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: Send ("{LButton Up}") >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: sleep 70 >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: MouseMove XCen, YCen, 0 >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: toggle ^:= 1 >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: BlockInput false >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: } >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: } >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo:  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: ~*%Start%^:: ;Begins Script  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: {  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: global >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: CoordMode("Mouse", "Client") >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: WinGetPos(^&LeftB1, ^&TopB1, ^&RightB1, ^&BottomB1, "A") >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: LeftB2 ^:= (RightB1 * 0.1)  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: TopB2 ^:= (BottomB1 * 0.1)  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: RightB2 ^:= (RightB1 * 0.9)  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: BottomB2 ^:= (BottomB1 * 0.9)  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: TopB3 ^:= (TopB1 * 1.15)  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: VroomX ^:= (RightB1 * 0.08)  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: VroomY ^:= (BottomB1 * 0.92)  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: xCen ^:= (RightB1 / 2) ; This will be where your mouse snaps back to horizontally   >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: yCen ^:= (BottomB1 / 2) ; This will be where your mouse snaps back to vertically  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: toggle ^:= 1 >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: ClipCursor(true, LeftB1 ^+ 10, TopB1 ^+ 60, LeftB1 ^+ RightB1 ^- 10, TopB1 ^+ BottomB1 ^- 10) >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: SetTimer Activate, 50 >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: } >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo:  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo:   ~*%Pause%^:: ; Restarts Script    >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: { >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: global >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: CoordMode("Mouse", "Client")  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: toggle ^:= 0 >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: sleep 100 >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: Send("{LButton}") >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: ClipCursor(False, 0, 0, 0, 0) >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: return  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: }   >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo:  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: WatchCursor()  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: { ; V1toV2: Added bracket >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: global XCur >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: global YCur >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: CoordMode "Mouse", "Client" >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: MouseGetPos ^&XCur, ^&YCur ; Tracks mouse at all times  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: return  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: } ; V1toV2: Added bracket in the end >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo:  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: Activate() >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: { >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: While toggle ^= 1 >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: {  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 	if (XCur ^> RightB2) ; Right boundary    >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 	{   >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		Send ("{LButton}") ;Cancels the click to stop in game snapping   >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		BlockInput MouseMove  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		MouseMove XCen, YCen, 0 ; Moves mouse back to initial position  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		Sleep (50) ; Freezes inputs for a frame or two, this stops in game snapping. Comment out if you want less dead time in exchange for snapping movements   >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		BlockInput false >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		Send ("{LButton Down}") ; Restarts click   >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 	}   >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		if (XCur ^< LeftB2) ; Left boundary    >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 	{   >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		Send ("{LButton}")  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		BlockInput MouseMove  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		MouseMove XCen, YCen, 0  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		Sleep (50)  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		BlockInput false  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		Send ("{LButton Down}") >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 	}   >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		if (YCur ^> BottomB2) ; Bottom boundary    >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 	{   >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		Send ("{LButton}")  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		BlockInput MouseMove  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		MouseMove XCen, YCen, 0  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		Sleep (50)  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		BlockInput false  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		Send ("{LButton Down}")  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 	}   >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		if (YCur ^< TopB2) ; Top boundary   >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 	{   >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		Send ("{LButton}")  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		BlockInput MouseMove  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		MouseMove XCen, YCen, 0  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		Sleep (50)  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		BlockInput false >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		Send ("{LButton Down}") >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 	}    >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 		Send ("{LButton Down}") ; Ensures touch screen is always tapped >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: 	}  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: if toggle ^= 0  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: return >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: } >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo:  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo:   >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: ClipCursor(confine, x1, y1, x2, y2) { >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo:  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: hData ^:= DllCall("GlobalAlloc", "uint",0x2, "ptr",16) >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: pData ^:= DllCall("GlobalLock", "ptr",hData) >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: NumPut("UPtr",x1,pData+0) >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: NumPut("UPtr",y1,pData+4) >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: NumPut("UPtr",x2,pData+8) >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: NumPut("UPtr",y2,pData+12) >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo:  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: value ^:=  Confine ^? DllCall( "ClipCursor", "Ptr",pData ) : DllCall( "ClipCursor" ) >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: DllCall("GlobalUnlock", "ptr",hData) >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: DllCall("GlobalFree", "ptr",hData) >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo:  >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: return >> .\Lib\Barrier.ahk
if %Version%==KeyboardMouse echo: } >> .\Lib\Barrier.ahk
