## What is This Project?
Simply put, I made some AHK scripts that allow the 3DS classic Kid Icarus Uprising to be playing with mouse and keyboard or dual analogue, with very little problems. There is some software that you'll need to get this working fully, but once you download everything it'll be fairly plug and play. Please download the scripts from the "releases" page. Note: My video you are probably linked to from this is ENTIRELY OUTDATED!!! This is a complete, updated guide below

## What Software is Needed?
1. Citra (Google a recent version, make sure it has seperate windows screen layout.) (Always needed)
2. Steam ([https://store.steampowered.com/](https://store.steampowered.com/)) (Controller)
3. ViGEmBus Driver ([https://github.com/nefarius/ViGEmBus/releases/tag/v1.22.0](https://github.com/nefarius/ViGEmBus/releases/tag/v1.22.0)) (Mouse/Keyboard)

NOTE: Before unzipping the release of these scripts, "unblock" it in !indows or the Mouse/Keyboard Functions WON'T LOAD.

![ScreenShot](https://i.imgur.com/hL90WgX.png)

![ScreenShot](https://i.imgur.com/e2YruCf.png)

## What are the Script's Default Controls?
You decide! The only defaults are WASD = Movement for Mouse/Keyboard. Change that if you're technically inclined and also insane.

To figure out the exact names of the non-alphanumeric keys you must put in: [https://www.autohotkey.com/docs/v2/KeyList.htm](https://www.autohotkey.com/docs/v2/KeyList.htm)

## How does the .bat work?
Choose your control method and follow the instructions.

Sprint = Sprint key. Without pressing you will walk most of the time. (Keyboard only)

Vehicle abilities = Exotank, etc.

Start script = What will start the barrier around the current window.

Pause script = What will pause the barrier from activating.

End script = Closes the script completely, will have to be reopened.

## I want to control with Mouse and Keyboard!!
1. Generate your own MouseKeyboard.ahk with Generate.bat and run!
2. In Citra's controls settings (Emulation > Configure > Controls): Click "Auto Map" click "OK" then click click outside the Window once to map everything to a virtual controller!

![ScreenShot](https://i.imgur.com/HjBv41Z.png)

3. Remap most the controls as you wish to the keyboard. However, DO NOT REMAP THE L BUTTON OR CIRCLE PAD. Leave those as-is and make sure L is set to fire in-game.
4. Make SURE layout is set to "Seperate Windows" under Emulation > Configure > Graphics

![ScreenShot](https://i.imgur.com/jCIUPZm.png)

5. Once you start the game to test that everything's working, press your start script button hovering over the focused touch screen to check, your mouse should be stuck in a state of clicking and your cursor should be trapped within the touch screen window.

You should be good to start facing the Underworld!!

## I want to control with Dual Analogue!
1. Generate your own Controller.ahk with Generate.bat and run!
2. Open Steam.
3. Add Citra as a "Non-Steam Game" (Lower left, add a Non-Steam Game, locate Citra)
4. Edit the controls of the shortcut as desired (right-click > properties > controller) and make sure the Right Joystick is set to "Joystick Mouse"
5. Set controls as you like and keep both Steam and the script active as you open Citra!
6. Make SURE layout is set to "Seperate Windows" under Emulation > Configure > Graphics

![ScreenShot](https://i.imgur.com/jCIUPZm.png)

7. Click the "Auto Map" function in Emulation > Configure > Controls and follow the instructions!
8. Once you start the game to test that everything's working, press your start script button hovering over the focused touch screen to check, your mouse should be stuck in a state of clicking and your cursor should be trapped within the touch screen window.

... Yeah honestly from here the skies the limit due to Steam Input being excellent. If you want you can even do some mode switching that toggles the script between menu and gameplay. Look up a steam input guide if your confused and as this is entirely preference based, I can't really help beyond this!

## Special thanks

evilC, for making the ViGEm AHK Wrapper

nefarius, for ViGEm itself

Sakurai, for being a real one

## I have a question/FAQ!!!!

When setting controls in Steam make SURE "Use Desktop Configuration in Launcher" is UNCHECKED!

If Citra is acting strangely, check the default Citra System hotkeys. Ctrl + W is bound to an action by default, make sure you unbind that!

If controls are unresponsive after previously working, try shutting off and turning back on your system!

ONLY use the release of AHK included with the zip and make sure you are launching the script with that!

If you have the seperate screens of Citra on seperate monitors, try switching the graphics backend from OpenGL to Vulkan! May fix lag issues!

Lastly, if a part of the script you believe is inaccurate, make sure there is as little "dead" black space in the Citra touch screen window as you can get!

For anything else, DM or @ me on tweeter https://twitter.com/Kelkador
