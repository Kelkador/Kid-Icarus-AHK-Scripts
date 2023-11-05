@echo off
CHOICE /C KC /M "What input will you use? (K for Keyboard/Mouse C for Controller)"
if %errorlevel%==1 goto KeyboardMouse
if %errorlevel%==2 goto Controller


:KeyboardMouse
set "Version=KeyboardMouse"
@echo What key will you press to SPRINT? (Recommended: Space or LControl) (Type out key name if not a character key!!)
set /p "Sprint= "
@echo What key will you press to activate vehicle abilities? (Exotank, etc.)
set /p "Vroom= "
goto funnel

:Controller
set "Version=Controller"
@echo What key will you press to activate vehicle abilities? (Exotank, etc.) (Type out key name if not a character key and map this key to the controller in Steam!!)
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

if %Version%==KeyboardMouse Del .\Lib\JoyX.ahk
if %Version%==KeyboardMouse Del .\Lib\JoyY.ahk

if %Version%==KeyboardMouse echo: #Persistent > .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: #NoEnv >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: #KeyHistory 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: #SingleInstance force >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: #InstallKeybdHook >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: #InstallMouseHook >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: #KeyHistory 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: #MaxHotkeysPerInterval 250 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: ListLines Off >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: SendMode Input >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: SendMode Input >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: Process, Priority, , A >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: #include AHK-ViGEm-Bus.ahk >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: SetBatchLines, -1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: SetKeyDelay, -1, -1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: #MaxThreads 100 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: #NoTrayIcon >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: SetTimer, JoyFix, 100 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: controller ^:= ComObjActive("{69420101-D9E5-4043-9A69-816ED91837A3}") >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: APressed ^:= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: DPressed ^:= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: %Sprint%Pressed ^:= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: SuperAPressed ^:= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: SuperDPressed ^:= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: AMax ^:= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: DMax ^:= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: ~*%Sprint%:: >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	%Sprint%Pressed ^:= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	return >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: ~*%Sprint% up:: >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	%Sprint%Pressed ^:= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	return >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: ~*D:: >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: if DPressed ^= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: { >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	DPressed ^:= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	SuperDPressed ^:= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	SuperAPressed ^:= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	AMax ^:= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	if %Sprint%Pressed ^= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	if APressed ^= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LX.SetState(20) >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	sleep 30 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	if SuperDPressed ^= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LX.SetState(60) >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	sleep 55 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	else >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LX.SetState(60) >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	sleep 30 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	if SuperDPressed ^= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LX.SetState(85) >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	sleep 55 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	if SuperDPressed ^= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LX.SetState(100) >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	DMax ^:= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	else return >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	else return >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	else >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LX.SetState(100) >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	DMax ^:= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: } >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	return >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: ~*D up:: >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	DPressed ^:= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	SuperDPressed ^:= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	DMax ^:= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	if APressed ^= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LX.SetState(50) >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	else >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	if AMax ^= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	return >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	else >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	SuperAPressed ^:= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LX.SetState(85) >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	sleep 30 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	if SuperAPressed ^= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LX.SetState(40) >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	sleep 30 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	if SuperAPressed ^= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LX.SetState(15) >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	sleep 55 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	if SuperAPressed ^= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LX.SetState(0) >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	AMax ^:= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	else return >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	else return >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	else return >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: } >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	return >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo:	 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: ~*A:: >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: if APressed ^= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: { >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	APressed ^:= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	SuperAPressed ^:= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	SuperDPressed ^:= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	DMax ^:= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	if %Sprint%Pressed ^= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	if DPressed ^= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LX.SetState(85) >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	sleep 30 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	if SuperAPressed ^= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LX.SetState(40) >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	sleep 55 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	else >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LX.SetState(40) >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	sleep 30 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	if SuperAPressed ^= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LX.SetState(15) >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	sleep 55 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	if SuperAPressed ^= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	AMax ^:= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LX.SetState(0) >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	else return >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	else return >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	else >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LX.SetState(0) >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	AMax ^:= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: } >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	return >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: ~*A up:: >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	APressed ^:= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	SuperAPressed ^:= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	AMax ^:= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	if DPressed ^= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LX.SetState(50) >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	else >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	if DMax ^= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	return >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	else >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	SuperDPressed ^:= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LX.SetState(20) >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	sleep 30 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	if SuperDPressed ^= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LX.SetState(60) >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LX.SetState(60) >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	sleep 30 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	if SuperDPressed ^= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LX.SetState(85) >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	sleep 55 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	if SuperDPressed ^= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LX.SetState(100) >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	DMax ^:= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	else return >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	else return >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	else return >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: } >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: 	return >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: JoyFix: >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: if GetKeyState("A", "P") ^= 0 and GetKeyState("D", "P") ^= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: try controller.Axes.LX.SetState(50) >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: if GetKeyState("A", "P") ^= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: APressed ^:= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: else if GetKeyState("A", "P") ^= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: APressed ^:= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: if GetKeyState("D", "P") ^= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: DPressed ^:= 1 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: else if GetKeyState("D", "P") ^= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: DPressed ^:= 0 >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: return >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: >> .\Lib\JoyX.ahk
if %Version%==KeyboardMouse echo: #Persistent > .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: #NoEnv >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: #KeyHistory 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: #SingleInstance force >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: #InstallKeybdHook >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: #InstallMouseHook >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: #KeyHistory 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: #MaxHotkeysPerInterval 250 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: ListLines Off >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: SendMode Input >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: SendMode Input >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: Process, Priority, , A >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: #include AHK-ViGEm-Bus.ahk >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: SetBatchLines, -1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: SetKeyDelay, -1, -1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: #MaxThreads 100 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: #NoTrayIcon >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: SetTimer, JoyFix, 100 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: controller ^:= ComObjActive("{69420101-D9E5-4043-9A69-816ED91837A3}") >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: WPressed ^:= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: SPressed ^:= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: %Sprint%Pressed ^:= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: SuperWPressed ^:= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: SuperSPressed ^:= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: WMax ^:= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: SMax ^:= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: return >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: ~*%Sprint%:: >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	%Sprint%Pressed ^:= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	return >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: ~*%Sprint% up:: >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	%Sprint%Pressed ^:= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	return >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: ~*W:: >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: if WPressed ^= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: { >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	WPressed ^:= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	SuperWPressed ^:= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	SuperSPressed ^:= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	SMax ^:= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	if %Sprint%Pressed ^= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	if SPressed ^= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LY.SetState(85) >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	sleep 30 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	if SuperWPressed ^= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LY.SetState(40) >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	sleep 55 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	else >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LY.SetState(40) >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	sleep 30 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	if SuperWPressed ^= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LY.SetState(15) >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	sleep 55 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	if SuperWPressed ^= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LY.SetState(0) >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	WMax ^:= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	else return >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	else return >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	else >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LY.SetState(0) >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	WMax ^:= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: } >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	return >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: ~*W up:: >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	WPressed ^:= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	SuperWPressed ^:= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	if SPressed ^= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LY.SetState(50) >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	else >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	if SMax ^= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	return >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	SuperSPressed ^:= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LY.SetState(20) >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	sleep 30 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	if SuperSPressed ^= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LY.SetState(60) >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	sleep 30 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	if SuperSPressed ^= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LY.SetState(85) >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	sleep 55 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	if SuperSPressed ^= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LY.SetState(100) >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	SMax ^:= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	else return >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	else return >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	else return >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	return >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: ~*S:: >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: if SPressed ^= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: { >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	SPressed ^:= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	SuperSPressed ^:= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	SuperWPressed ^:= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	WMax ^:= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	if %Sprint%Pressed ^= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	if WPressed ^= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LY.SetState(20) >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	sleep 30 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	if SuperSPressed ^= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LY.SetState(60) >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	sleep 55 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	else >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LY.SetState(60) >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	sleep 30 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	if SuperSPressed ^= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LY.SetState(85) >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	sleep 55 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	if SuperSPressed ^= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LY.SetState(100) >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	SMax ^:= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	else return >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	else return >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	else  >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LY.SetState(100) >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	SMax ^:= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: } >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	return >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: ~*S up:: >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	SPressed ^:= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	SuperSPressed ^:= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	SMax ^:= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	if WPressed ^= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LY.SetState(50) >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	else >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	if WMax ^= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	return >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	else >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	SuperWPressed ^:= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LY.SetState(85) >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	sleep 30 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	if SuperWPressed ^= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LY.SetState(40) >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	sleep 30 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	if SuperWPressed ^= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LY.SetState(15) >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	sleep 55 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	if SuperWPressed ^= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	{ >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	controller.Axes.LY.SetState(0) >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	WMax ^:= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	else return >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	else return >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	else return >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	} >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: } >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: 	return >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: JoyFix: >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: { >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: if GetKeyState("W", "P") ^= 0 and GetKeyState("S", "P") ^= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: try controller.Axes.LY.SetState(50) >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: if GetKeyState("W", "P") ^= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: WPressed ^:= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: else if GetKeyState("W", "P") ^= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: WPressed ^:= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: if GetKeyState("S", "P") ^= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: SPressed ^:= 1 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: else if GetKeyState("S", "P") ^= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: SPressed ^:= 0 >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: return >> .\Lib\JoyY.ahk
if %Version%==KeyboardMouse echo: } >> .\Lib\JoyY.ahk
echo: #Persistent  > %Version%.ahk
echo: #NoEnv  >> %Version%.ahk
echo: #KeyHistory 0  >> %Version%.ahk
echo: #SingleInstance force  >> %Version%.ahk
echo: #InstallKeybdHook  >> %Version%.ahk
echo: #InstallMouseHook  >> %Version%.ahk
echo: #KeyHistory 0  >> %Version%.ahk
echo: #MaxHotkeysPerInterval 250  >> %Version%.ahk
echo: ListLines Off  >> %Version%.ahk
echo: SendMode Input  >> %Version%.ahk
if %Version%==KeyboardMouse echo: #include Lib\AHK-ViGEm-Bus.ahk >> %Version%.ahk
echo: SetWorkingDir, Lib  >> %Version%.ahk
echo: Process, Priority, , A  >> %Version%.ahk
echo: SetBatchLines, -1  >> %Version%.ahk
echo: SetKeyDelay, -1, -1  >> %Version%.ahk
echo: #MaxThreads 150 >> %Version%.ahk
echo: SetTimer, WatchCursor, 5 >> %Version%.ahk
echo: global XCur >> %Version%.ahk
echo: global YCur >> %Version%.ahk
echo: global TopB2 >> %Version%.ahk
echo: global BottomB2 >> %Version%.ahk
echo: global LeftB2 >> %Version%.ahk
echo: global RightB2 >> %Version%.ahk
echo: global XCen >> %Version%.ahk
echo: global YCen >> %Version%.ahk
echo: global XVroom >> %Version%.ahk
echo: global YVroom >> %Version%.ahk
echo: global toggle >> %Version%.ahk
echo: global Vehicle >> %Version%.ahk
echo: global confine >> %Version%.ahk
echo: toggle ^:= 0 >> %Version%.ahk
echo: Vehicle ^:= 0 >> %Version%.ahk
echo: confine ^:= False >> %Version%.ahk
echo:  >> %Version%.ahk
if %Version%==KeyboardMouse echo: controller ^:= new ViGEmDS4() >> %Version%.ahk
if %Version%==KeyboardMouse echo: ObjRegisterActive(controller, "{69420101-D9E5-4043-9A69-816ED91837A3}") >> %Version%.ahk
if %Version%==KeyboardMouse echo: run JoyX.ahk >> %Version%.ahk
if %Version%==KeyboardMouse echo: run JoyY.ahk >> %Version%.ahk
echo:  >> %Version%.ahk
echo: OnExit("Closing")  >> %Version%.ahk
echo:   >> %Version%.ahk
echo: ~*%Start%:: ;Begins Script >> %Version%.ahk
echo: if toggle ^= 0 >> %Version%.ahk
echo: { >> %Version%.ahk
echo: CoordMode, Mouse, Client >> %Version%.ahk
echo: WinGetPos, LeftB1, TopB1, RightB1, BottomB1, A >> %Version%.ahk
echo: LeftB2 ^:= (RightB1 * 0.1) >> %Version%.ahk
echo: TopB2 ^:= (BottomB1 * 0.1) >> %Version%.ahk
echo: RightB2 ^:= (RightB1 * 0.9) >> %Version%.ahk
echo: BottomB2 ^:= (BottomB1 * 0.9) >> %Version%.ahk
echo: TopB3 ^:= (TopB1 * 1.15) >> %Version%.ahk
echo: LeftB3 ^:= (LeftB1 * 1.02) >> %Version%.ahk
echo: ClipX ^:= ((LeftB1 + RightB1) * .99) >> %Version%.ahk
echo: ClipY ^:= ((TopB1 + BottomB1) * .98) >> %Version%.ahk
echo: VroomX ^:= (RightB1 * 0.08) >> %Version%.ahk
echo: VroomY ^:= (BottomB1 * 0.92) >> %Version%.ahk
echo: xCen ^:= (RightB1 / 2) ; This will be where your mouse snaps back to horizontally  >> %Version%.ahk
echo: yCen ^:= (BottomB1 / 2) ; This will be where your mouse snaps back to vertically >> %Version%.ahk
echo: toggle ^:= 1 >> %Version%.ahk
echo: ClipCursor(True, LeftB3, TopB3, ClipX, ClipY) >> %Version%.ahk
echo: Activate() >> %Version%.ahk
echo: return >> %Version%.ahk
echo: } >> %Version%.ahk
echo:  >> %Version%.ahk
echo:  >> %Version%.ahk
echo:  >> %Version%.ahk
echo:  ~*%Pause%:: ; Restarts Script   >> %Version%.ahk
echo: {  >> %Version%.ahk
echo: CoordMode, Mouse, Client >> %Version%.ahk
if %Version%==KeyboardMouse echo: ObjRegisterActive(controller, "") >> %Version%.ahk
echo: Reload  >> %Version%.ahk
echo: Send {LButton}  >> %Version%.ahk
echo: return   >> %Version%.ahk
echo: }  >> %Version%.ahk
echo:   >> %Version%.ahk
echo: ~*%End%::  >> %Version%.ahk
echo: ExitApp >> %Version%.ahk
echo:  >> %Version%.ahk
if %Version%==KeyboardMouse echo: ~*LButton:: >> %Version%.ahk
if %Version%==KeyboardMouse echo: 	controller.Buttons.L1.SetState(true) >> %Version%.ahk
if %Version%==KeyboardMouse echo: 	return >> %Version%.ahk
if %Version%==KeyboardMouse echo: >> %Version%.ahk
if %Version%==KeyboardMouse echo: >> %Version%.ahk
if %Version%==KeyboardMouse echo: ~*LButton Up:: >> %Version%.ahk
if %Version%==KeyboardMouse echo: 	controller.Buttons.L1.SetState(false) >> %Version%.ahk
if %Version%==KeyboardMouse echo: 	return >> %Version%.ahk
if %Version%==KeyboardMouse echo: >> %Version%.ahk
echo: ~*^$%Vroom%:: >> %Version%.ahk
echo: if (Vehicle ^= 0) and (toggle ^= 1) >> %Version%.ahk
echo: { >> %Version%.ahk
echo: BlockInput, MouseMove >> %Version%.ahk
echo: Vehicle ^:= 1 >> %Version%.ahk
echo: toggle ^:= 0 >> %Version%.ahk
echo: sleep 100 >> %Version%.ahk
echo: Send {LButton Up} >> %Version%.ahk
echo: sleep 100 >> %Version%.ahk
echo: MouseMove, VroomX, VroomY, 0 >> %Version%.ahk
echo: Send {LButton Down} >> %Version%.ahk
echo: sleep 70 >> %Version%.ahk
echo: Send {LButton Up} >> %Version%.ahk
echo: sleep 70 >> %Version%.ahk
echo: MouseMove, xCen, yCen, 0 >> %Version%.ahk
echo: Vehicle ^:= 0 >> %Version%.ahk
echo: toggle ^:= 1 >> %Version%.ahk
echo: BlockInput, MouseMoveOff >> %Version%.ahk
echo: return >> %Version%.ahk
echo: } >> %Version%.ahk
echo:   >> %Version%.ahk
echo: ClipCursor(confine, x1, y1, x2, y2) {  >> %Version%.ahk
echo:  ; ^https://autohotkey.com/board/topic/61753-confining-mouse-to-a-window/  >> %Version%.ahk
echo:  If ^!confine  >> %Version%.ahk
echo:   Return DllCall("ClipCursor")  >> %Version%.ahk
echo:  VarSetCapacity(R, 16, 0), NumPut(x1, ^&R, 0, "UInt"), NumPut(y1, ^&R, 4, "UInt")  >> %Version%.ahk
echo:  NumPut(x2, ^&R, 8, "UInt"), NumPut(y2, ^&R, 12, "UInt")  >> %Version%.ahk
echo:  Return DllCall("ClipCursor", UInt, ^&R)  >> %Version%.ahk
echo: }  >> %Version%.ahk
echo:   >> %Version%.ahk
if %Version%==KeyboardMouse echo: ObjRegisterActive(Object, CLSID, ^Flags:=0) { >> %Version%.ahk
if %Version%==KeyboardMouse echo:     static cookieJar ^:= {} >> %Version%.ahk
if %Version%==KeyboardMouse echo:     if (!CLSID) { >> %Version%.ahk
if %Version%==KeyboardMouse echo:         if (cookie ^:= cookieJar.Remove(Object)) ^!= "" >> %Version%.ahk
if %Version%==KeyboardMouse echo:             DllCall("oleaut32\RevokeActiveObject", "uint", cookie, "ptr", 0) >> %Version%.ahk
if %Version%==KeyboardMouse echo:         return >> %Version%.ahk
if %Version%==KeyboardMouse echo:     } >> %Version%.ahk
if %Version%==KeyboardMouse echo:     if cookieJar[Object] >> %Version%.ahk
if %Version%==KeyboardMouse echo:         throw Exception("Object is already registered", -1) >> %Version%.ahk
if %Version%==KeyboardMouse echo:     VarSetCapacity(_clsid, 16, 0) >> %Version%.ahk
if %Version%==KeyboardMouse echo:     if ^(hr ^:= DllCall("ole32\CLSIDFromString", "wstr", CLSID, "ptr", ^&_clsid)) ^< 0 >> %Version%.ahk
if %Version%==KeyboardMouse echo:         throw Exception("Invalid CLSID", -1, CLSID) >> %Version%.ahk
if %Version%==KeyboardMouse echo:     hr ^:= DllCall("oleaut32\RegisterActiveObject" >> %Version%.ahk
if %Version%==KeyboardMouse echo:         , "ptr", ^&Object, "ptr", ^&_clsid, "uint", Flags, "uint*", cookie >> %Version%.ahk
if %Version%==KeyboardMouse echo:         , "uint") >> %Version%.ahk
if %Version%==KeyboardMouse echo:     if hr ^< 0 >> %Version%.ahk
if %Version%==KeyboardMouse echo:         throw Exception(format("Error 0x{:x}", hr), -1) >> %Version%.ahk
if %Version%==KeyboardMouse echo:     cookieJar[Object] ^:= cookie >> %Version%.ahk
if %Version%==KeyboardMouse echo: } >> %Version%.ahk
echo:   >> %Version%.ahk
echo: WatchCursor: >> %Version%.ahk
echo: CoordMode, Mouse, Client >> %Version%.ahk
echo: MouseGetPos, XCur, YCur ; Tracks mouse at all times >> %Version%.ahk
echo: return >> %Version%.ahk
echo:   >> %Version%.ahk
echo: Closing()  >> %Version%.ahk
echo: {  >> %Version%.ahk
echo: DetectHiddenWindows, On  >> %Version%.ahk
echo: SetTitleMatchMode, 2  >> %Version%.ahk
echo: DetectHiddenWindows, On  >> %Version%.ahk
echo: WinGet, AHKList, List, ahk_exe Autohotkey.exe  >> %Version%.ahk
echo: Loop, ^%%AHKList%%  >> %Version%.ahk
echo: 	IF (A_ScriptHwnd ^<^> ID ^:= AHKList^%%A_Index%%)  >> %Version%.ahk
echo: 		WinClose, ahk_id %ID%  >> %Version%.ahk
echo: ClipCursor(False, 0, 0, 0, 0)  >> %Version%.ahk
if %Version%==KeyboardMouse echo: WinClose, JoyX.ahk >> %Version%.ahk
if %Version%==KeyboardMouse echo: WinClose, JoyY.ahk >> %Version%.ahk
echo: 	Send {LButton}  >> %Version%.ahk
echo: WinGet, AHKList, List, ahk_exe AutohotkeyU64.exe  >> %Version%.ahk
echo: Loop, ^%%AHKList%%  >> %Version%.ahk
echo: 	IF (A_ScriptHwnd ^<^> ID ^:= AHKList^%%A_Index%%)  >> %Version%.ahk
echo: 		WinClose, ahk_id %ID%  >> %Version%.ahk
echo: }  >> %Version%.ahk
echo:  >> %Version%.ahk
echo: Activate() >> %Version%.ahk
echo: { >> %Version%.ahk
echo: click: >> %Version%.ahk
echo: While toggle ^:= 1 >> %Version%.ahk
echo: { >> %Version%.ahk
echo: 	if (XCur ^> RightB2) ; Right boundary   >> %Version%.ahk
echo: 	{  >> %Version%.ahk
echo: 		Send {LButton} ;Cancels the click to stop in game snapping  >> %Version%.ahk
echo: 		BlockInput, MouseMove >> %Version%.ahk
echo: 		MouseMove XCen, YCen, 0 ; Moves mouse back to initial position >> %Version%.ahk
echo: 		Sleep (60) ; Freezes inputs for a frame or two, this stops in game snapping. Comment out if you want less dead time in exchange for snapping movements  >> %Version%.ahk
echo: 		BlockInput, MouseMoveOff >> %Version%.ahk
echo: 		Send {LButton Down} ; Restarts click  >> %Version%.ahk
echo: 	}  >> %Version%.ahk
echo: 		if (XCur ^< LeftB2) ; Left boundary   >> %Version%.ahk
echo: 	{  >> %Version%.ahk
echo: 		Send {LButton} >> %Version%.ahk
echo: 		BlockInput, MouseMove >> %Version%.ahk
echo: 		MouseMove XCen, YCen, 0 >> %Version%.ahk
echo: 		Sleep (60) >> %Version%.ahk
echo: 		BlockInput, MouseMoveOff >> %Version%.ahk
echo: 		Send {LButton Down} >> %Version%.ahk
echo: 	}  >> %Version%.ahk
echo: 		if (YCur ^> BottomB2) ; Bottom boundary   >> %Version%.ahk
echo: 	{  >> %Version%.ahk
echo: 		Send {LButton} >> %Version%.ahk
echo: 		BlockInput, MouseMove >> %Version%.ahk
echo: 		MouseMove XCen, YCen, 0 >> %Version%.ahk
echo: 		Sleep (60) >> %Version%.ahk
echo: 		BlockInput, MouseMoveOff >> %Version%.ahk
echo: 		Send {LButton Down} >> %Version%.ahk
echo: 	}  >> %Version%.ahk
echo: 		if (YCur ^< TopB2) ; Top boundary  >> %Version%.ahk
echo: 	{  >> %Version%.ahk
echo: 		Send {LButton} >> %Version%.ahk
echo: 		BlockInput, MouseMove >> %Version%.ahk
echo: 		MouseMove XCen, YCen, 0 >> %Version%.ahk
echo: 		Sleep (60) >> %Version%.ahk
echo: 		BlockInput, MouseMoveOff >> %Version%.ahk
echo: 		Send {LButton Down} >> %Version%.ahk
echo: 	}  >> %Version%.ahk
echo: 		if GetKeyState("LButton", "P") ^= 0 >> %Version%.ahk
echo: 	{  >> %Version%.ahk
echo: 		Send {LButton Down} ; Ensures touch screen is always tapped  >> %Version%.ahk
echo: 	} >> %Version%.ahk
echo: } >> %Version%.ahk
echo: if toggle ^= 0 >> %Version%.ahk
echo: sleep 500 >> %Version%.ahk
echo: if toggle ^= 1 >> %Version%.ahk
echo: goto click >> %Version%.ahk
echo: } >> %Version%.ahk
