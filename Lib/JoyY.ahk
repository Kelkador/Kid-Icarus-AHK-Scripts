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
 
 WPressed := 0 
 SPressed := 0 
 LControlPressed := 0 
 SuperWPressed := 0 
 SuperSPressed := 0 
 WMax := 0 
 SMax := 0 
 
 return 
 
 ~*LControl:: 
 	LControlPressed := 1 
 	return 
 
 ~*LControl up:: 
 	LControlPressed := 0 
 	return 
 
 ~*W:: 
 if WPressed = 0 
 { 
 	WPressed := 1 
 	SuperWPressed := 1 
 	SuperSPressed := 0 
 	SMax := 0 
 	if LControlPressed = 0 
 	{ 
 	if SPressed = 1 
 	{ 
 	controller.Axes.LY.SetState(80) 
 	sleep 80 
 	if SuperWPressed = 1 
 	{ 
 	controller.Axes.LY.SetState(40) 
 	sleep 80 
 	} 
 	} 
 	else 
 	{ 
 	controller.Axes.LY.SetState(40) 
 	sleep 80 
 	} 
 	if SuperWPressed = 1 
 	{ 
 	controller.Axes.LY.SetState(15) 
 	sleep 80 
 	if SuperWPressed = 1 
 	{ 
 	controller.Axes.LY.SetState(0) 
 	WMax := 1 
 	} 
 	else return 
 	} 
 	else return 
 	} 
 	else 
 	{ 
 	controller.Axes.LY.SetState(0) 
 	WMax := 1 
 	} 
 } 
 	return 
 
 ~*W up:: 
 	WPressed := 0 
 	SuperWPressed := 0 
 	if SPressed = 0 
 	controller.Axes.LY.SetState(50) 
 	else 
 	{ 
 	if SMax = 1 
 	return 
 	{ 
 	SuperSPressed := 1 
 	controller.Axes.LY.SetState(20) 
 	sleep 80 
 	if SuperSPressed = 1 
 	{ 
 	controller.Axes.LY.SetState(60) 
 	sleep 80 
 	if SuperSPressed = 1 
 	{ 
 	controller.Axes.LY.SetState(85) 
 	sleep 80 
 	if SuperSPressed = 1 
 	{ 
 	controller.Axes.LY.SetState(100) 
 	SMax := 1 
 	} 
 	else return 
 	} 
 	else return 
 	} 
 	else return 
 	} 
 	} 
 	return 
 
 ~*S:: 
 if SPressed = 0 
 { 
 	SPressed := 1 
 	SuperSPressed := 1 
 	SuperWPressed := 0 
 	WMax := 0 
 	if LControlPressed = 0 
 	{ 
 	if WPressed = 1 
 	{ 
 	controller.Axes.LY.SetState(20) 
 	sleep 80 
 	if SuperSPressed = 1 
 	{ 
 	controller.Axes.LY.SetState(60) 
 	sleep 80 
 	} 
 	} 
 	else 
 	{ 
 	controller.Axes.LY.SetState(60) 
 	sleep 80 
 	} 
 	if SuperSPressed = 1 
 	{ 
 	controller.Axes.LY.SetState(85) 
 	sleep 80 
 	if SuperSPressed = 1 
 	{ 
 	controller.Axes.LY.SetState(100) 
 	SMax := 1 
 	} 
 	else return 
 	} 
 	else return 
 	} 
 	else  
 	{ 
 	controller.Axes.LY.SetState(100) 
 	SMax := 1 
 	} 
 } 
 	return 
 
 ~*S up:: 
 	SPressed := 0 
 	SuperSPressed := 0 
 	SMax := 0 
 	if WPressed = 0 
 	controller.Axes.LY.SetState(50) 
 	else 
 	{ 
 	if WMax = 1 
 	return 
 	else 
 	{ 
 	SuperWPressed := 1 
 	controller.Axes.LY.SetState(80) 
 	sleep 80 
 	if SuperWPressed = 1 
 	{ 
 	controller.Axes.LY.SetState(40) 
 	sleep 80 
 	if SuperWPressed = 1 
 	{ 
 	controller.Axes.LY.SetState(15) 
 	sleep 80 
 	if SuperWPressed = 1 
 	{ 
 	controller.Axes.LY.SetState(0) 
 	WMax := 1 
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
 { 
 if GetKeyState("W", "P") = 0 and GetKeyState("S", "P") = 0 
 try controller.Axes.LY.SetState(50) 
 if GetKeyState("W", "P") = 1 
 WPressed := 1 
 else if GetKeyState("W", "P") = 0 
 WPressed := 0 
 if GetKeyState("S", "P") = 1 
 SPressed := 1 
 else if GetKeyState("S", "P") = 0 
 SPressed := 0 
 return 
 } 
