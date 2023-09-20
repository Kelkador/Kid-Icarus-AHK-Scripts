 #Persistent 
 #NoEnv 
 #KeyHistory 0 
 #SingleInstance force 
 #InstallKeybdHook 
 #InstallMouseHook 
 #KeyHistory 0 
 #MaxHotkeysPerInterval 250 
 ListLines Off 
 SendMode Input 
 SendMode Input 
 Process, Priority, , A 
 #include AHK-ViGEm-Bus.ahk 
 SetBatchLines, -1 
 SetKeyDelay, -1, -1 
 #MaxThreads 100 
 #NoTrayIcon 
 
 SetTimer, JoyFix, 100 
 
 controller := ComObjActive("{69420101-D9E5-4043-9A69-816ED91837A3}") 
 
 APressed := 0 
 DPressed := 0 
 LControlPressed := 0 
 SuperAPressed := 0 
 SuperDPressed := 0 
 AMax := 0 
 DMax := 0 
 
 
 ~*LControl:: 
 	LControlPressed := 1 
 	return 
 
 ~*LControl up:: 
 	LControlPressed := 0 
 	return 
 	 
 ~*D:: 
 if DPressed = 0 
 { 
 	DPressed := 1 
 	SuperDPressed := 1 
 	SuperAPressed := 0 
 	AMax := 0 
 	if LControlPressed = 0 
 	{ 
 	if APressed = 1 
 	{ 
 	controller.Axes.LX.SetState(20) 
 	sleep 80 
 	if SuperDPressed = 1 
 	{ 
 	controller.Axes.LX.SetState(60) 
 	sleep 80 
 	} 
 	} 
 	else 
 	{ 
 	controller.Axes.LX.SetState(60) 
 	sleep 80 
 	} 
 	if SuperDPressed = 1 
 	{ 
 	controller.Axes.LX.SetState(85) 
 	sleep 80 
 	if SuperDPressed = 1 
 	{ 
 	controller.Axes.LX.SetState(100) 
 	DMax := 1 
 	} 
 	else return 
 	} 
 	else return 
 	} 
 	else 
 	{ 
 	controller.Axes.LX.SetState(100) 
 	DMax := 1 
 	} 
 } 
 	return 
 	 
 ~*D up:: 
 	DPressed := 0 
 	SuperDPressed := 0 
 	DMax := 0 
 	if APressed = 0 
 	controller.Axes.LX.SetState(50) 
 	else 
 	{ 
 	if AMax = 1 
 	return 
 	else 
 	{ 
 	SuperAPressed := 1 
 	controller.Axes.LX.SetState(80) 
 	sleep 80 
 	if SuperAPressed = 1 
 	{ 
 	controller.Axes.LX.SetState(40) 
 	sleep 80 
 	if SuperAPressed = 1 
 	{ 
 	controller.Axes.LX.SetState(15) 
 	sleep 80 
 	if SuperAPressed = 1 
 	{ 
 	controller.Axes.LX.SetState(0) 
 	AMax := 1 
 	} 
 	else return 
 	} 
 	else return 
 	} 
 	else return 
 	} 
 } 
 	return 
 	 
	 
 ~*A:: 
 if APressed = 0 
 { 
 	APressed := 1 
 	SuperAPressed := 1 
 	SuperDPressed := 0 
 	DMax := 0 
 	if LControlPressed = 0 
 	{ 
 	if DPressed = 1 
 	{ 
 	controller.Axes.LX.SetState(80) 
 	sleep 80 
 	if SuperAPressed = 1 
 	{ 
 	controller.Axes.LX.SetState(40) 
 	sleep 80 
 	} 
 	} 
 	else 
 	{ 
 	controller.Axes.LX.SetState(40) 
 	sleep 80 
 	} 
 	if SuperAPressed = 1 
 	{ 
 	controller.Axes.LX.SetState(15) 
 	sleep 80 
 	if SuperAPressed = 1 
 	{ 
 	AMax := 1 
 	controller.Axes.LX.SetState(0) 
 	} 
 	else return 
 	} 
 	else return 
 	} 
 	else 
 	{ 
 	controller.Axes.LX.SetState(0) 
 	AMax := 1 
 	} 
 } 
 	return 
 	 
 ~*A up:: 
 	APressed := 0 
 	SuperAPressed := 0 
 	AMax := 0 
 	if DPressed = 0 
 	controller.Axes.LX.SetState(50) 
 	else 
 	{ 
 	if DMax = 1 
 	return 
 	else 
 	{ 
 	SuperDPressed := 1 
 	controller.Axes.LX.SetState(20) 
 	sleep 80 
 	if SuperDPressed = 1 
 	{ 
 	controller.Axes.LX.SetState(60) 
 	controller.Axes.LX.SetState(60) 
 	sleep 80 
 	if SuperDPressed = 1 
 	{ 
 	controller.Axes.LX.SetState(85) 
 	sleep 80 
 	if SuperDPressed = 1 
 	{ 
 	controller.Axes.LX.SetState(100) 
 	DMax := 1 
 	} 
 	else return 
 	} 
 	else return 
 	} 
 	else return 
 	} 
 } 
 	return 
 
 JoyFix: 
 if GetKeyState("A", "P") = 0 and GetKeyState("D", "P") = 0 
 try controller.Axes.LX.SetState(50) 
 if GetKeyState("A", "P") = 1 
 APressed := 1 
 else if GetKeyState("A", "P") = 0 
 APressed := 0 
 if GetKeyState("D", "P") = 1 
 DPressed := 1 
 else if GetKeyState("D", "P") = 0 
 DPressed := 0 
 return 
 
