0## What is This Project?
Simply put, I made some AHK scripts that allow the 3DS classic Kid Icarus Uprising to be playing with mouse and keyboard or dual analogue, with very little problems. There is some software that you'll need to get this working fully, but once you download everything it'll be fairly plug and play. Please download the scripts from the "releases" page. Note: My video you are probably linked to from this is ENTIRELY OUTDATED!!! This is a complete, updated guide below

## What Software is Needed?
1. AutoHotKey 1.1 (https://www.autohotkey.com/) (Always needed)
2. Citra (https://citra-emu.org/) (Always needed)
3. Steam (https://store.steampowered.com/) (Controller)
4. ViGEmBus Driver (https://github.com/nefarius/ViGEmBus/releases/tag/v1.21.442.0) (Mouse/Keyboard)


NOTE: Before unzipping the release, "unblock" it in windows or the Mouse/Keyboard Functions WON'T LOAD.

![ScreenShot](https://i.imgur.com/hL90WgX.png)

![ScreenShot](https://i.imgur.com/e2YruCf.png)

## What are the Script's Default Controls?
You decide! The only defaults are WASD = Movement for Mouse/Keyboard. Change that if you're technically inclined and also insane.

To figure out the exact names of the non-letter/number keys you must put in: https://www.autohotkey.com/docs/v1/KeyList.htm

## How does the .bat work?
Choose your control method and follow the instructions.


Keyname = If you want to assign Space or F6 to an action, write out "Space" or "F6" (Keys like F, L, 4, etc do not need a special name. Consult the KeyList above if stumped)

Sprint = Sprint key. Without pressing you will walk most of the time. (Keyboard only)

Vehicle abilities = Exotank, etc.

Start script = What will activate the script (lol)

Pause script = What will pause script operation, will restart if the above key is pressed.

End script = Closes the script completely, will have to be reopened.

## I want to control with Mouse and Keyboard!!
1. Create your own MouseKeyboard.ahk file and run!
2. In Citra's controls settings (Emulation > Configure > Controls): Click "Auto Map" click "OK" then click click outside the Window once to map everything to a virtual controller!

![ScreenShot](https://i.imgur.com/HjBv41Z.png)

3. Remap most the controls as you wish to the keyboard. However, DO NOT REMAP THE L BUTTON OR CIRCLE PAD. Leave those as-is and make sure L is set to fire in-game.
4. Make SURE layout is set to "Seperate Windows" under Emulation > Configure > Graphics

![ScreenShot](https://i.imgur.com/jCIUPZm.png)

5. Once you start the game to test that everything's working, press your start script button hovering over the focused touch screen to check, your mouse should be stuck in a state of clicking and your cursor should be trapped within the touch screen window.

You should be good to start facing the Underworld!!

## I want to control with Dual Analogue!
1. Create your own Controller.ahk file and run!
2. Open Steam.
3. Edit "Desktop Layout" under Steam > Settings > Controller
4. Make sure the Right Joystick is set to "Joystick Mouse"
5. Set controls as you like and keep both Steam and the script active as you open Citra!
6. Make SURE layout is set to "Seperate Windows" under Emulation > Configure > Graphics

![ScreenShot](https://i.imgur.com/jCIUPZm.png)

7. Click the "Auto Map" function in Emulation > Configure > Controls and follow the instructions!
8. Once you start the game to test that everything's working, press your start script button hovering over the focused touch screen to check, your mouse should be stuck in a state of clicking and your cursor should be trapped within the touch screen window.

... Yeah honestly from here the skies the limit due to Steam Input being excellent. If you want you can even do some mode switching that toggles the script between menu and gameplay. If you want my template I use to play with controller...

1. Click here in the Steam Controller menu!

![ScreenShot](https://i.imgur.com/XArifVc.png)

2. In search, search for "Kelkador" and download the template.

![ScreenShot](https://i.imgur.com/ePI7gjq.png)

3. In "Layouts" Make sure "Show All Layouts" is active, and it should be at the bottom!

In my layout, there's gyro aiming and I use "8" to start the script, "9" to pause it, with "0" as my vehicle button. (So put those as your entries in Generator.bat!) Bumpers in "Game Mode" tighten your aim, and did I mention my layout has Gyro? Steam Input is AMAZING. Toy around with it.

## Special thanks

evilC, for making the ViGEm AHK Wrapper

nefarius, for ViGEm itself

Sakurai, for being a real one

## I have a question/FAQ!!!!

First: If it's movement lag on the mouse and keyboard option: Go to Windows Control Panel and search for and open "Set up USB game controllers". Having this open in the background fixes this (rare) problem for me and I DO NOT know why!!

![ScreenShot](https://i.imgur.com/aMSCswW.png)

Secondly, if Citra is acting strangely, check the default Citra System hotkeys. Ctrl + W is bound to an action by default, make sure you unbind that!

Lastly, if a part of the script you believe is inaccurate, make sure there is as little "dead" black space in the Citra touch screen window as you can get!

For anything else, DM or @ me on tweeter https://twitter.com/Kelkador
