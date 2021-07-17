## What is This Project?
Simply put, I made some AHK scripts that allow the 3DS classic Kid Icarus Uprising to be playing with mouse and keyboard or dual analogue, with very little problems. There is some software that you'll need to get this working fully, but once you download everything it'll be fairly plug and play.

## What Software is Needed?
1. AutoHotKey's current release (NOT 2.0) (https://www.autohotkey.com/) (needed no matter what)
2. A hacked 3DS (https://3ds.hacks.guide/) (needed no matter what)
3. Citra (https://citra-emu.org/) (if playing on emu)
4. InputRedirection Client QT (https://github.com/gbrown5/InputRedirectionClient-Qt) (if playing on original hardware)
5. Universal Controller Remapper AHK Version by evilC (https://github.com/evilC/UCR) (for mouse and keyboard controls)
6. vJoy (http://vjoystick.sourceforge.net/site/index.php/download-a-install/download) (for mouse and keyboard controls)
7. Steam (https://store.steampowered.com/) (for dual analogue)

## What are the Script's Default Controls?
F1: Start the script, only start the script when the window is focused and the cursor is in the middle of the touch screen.

6: Restart the script, you will have to press F1 in the middle of the Touch Screen again

2: Use vehicle (Cherubot, Aether Ring) ability (Citra Script Only)

Esc: Stop script

## I want to control with Mouse and Keyboard!!
1. Download Universal Controller Remapper (UCR) and vJoy.
2. Launch UCR and go to IOClasses > VJoy > Install SCPVBus

![ScreenShot](https://i.imgur.com/PUVcw3q.png)

3. Close UCR and drag UCR.ini into UCR's root folder (overwrite if it prompts you to do so)
4. Launch UCR again and choose the profile on the right side for the playing method you're using (Input Redirect or Citra)

![ScreenShot](https://i.imgur.com/gymYqvR.png)

NOTE: By default left control is a "run button", if you wish to assign a different run button, you will need to assign every other rebinding to have a version with that "run button" for smooth gameplay.

5. (Optional) Rebind keys to your liking
6. Move onto what you want to play on

NOTE: By default the binded keys (Except L and R) will have their keyboard inputs BLOCKED. Meaning pressing W will ONLY send "Left Stick Up" if you would like to change this, click the binded key and uncheck "blocked"

![ScreenShot](https://i.imgur.com/EZe5WjK.png)

FINAL NOTE: If you let go of your "run button" before you let go of your button to perform an action, the action will be HELD until you hit it with the run button again. For an example on default controls, if you let go of left ctrl while holding Q, UCR will hold DPAD left until left ctrl and Q are hit again!

## I want to control with Dual Analogue!
1. Install and open Steam.
2. Go to View > Settings > Controller > Desktop Configuration

![ScreenShot](https://i.imgur.com/lKbXBck.png)

![ScreenShot](https://i.imgur.com/Y8p7wNA.png)

3. Go to Browse Configs > Templates > Gamepad

![ScreenShot](https://i.imgur.com/qd9wbxb.png)

4. Rebind the right stick to "Joystick Mouse Move" and change the sensitivity to your liking
5. Move onto what you want to play on.

## I Want to Play on My 3DS
1. Install the Rosalina menu on your 3DS. Hacking the 3DS is not going to be covered in this guide, check this one out instead. (https://3ds.hacks.guide/)
2. Once your 3DS is all hacked, press L + DPad Down + Select and navigate the Rosalina Menu > Miscellaneous options > Start InputRedirection, take note of the IP Address in the upper right.
![ScreenShot](https://i.imgur.com/gaoecOh.png)
![ScreenShot](https://i.imgur.com/OGdBkNG.png)
![ScreenShot](https://i.imgur.com/7gUwrFB.png)
3. Plug the IP address into InputRedirection Client (!!This will only work if the 3DS and computer are connected to the same network!!)
4. Set controls as you wish, below are the controls I've found work best with my script and UCR settings.

![ScreenShot](https://i.imgur.com/MlT0VxV.png)

![ScreenShot](https://i.imgur.com/fpgzdnt.png)

5. To get vehicle controls with this method, right click the lower left corner of the "touch screen" window and select "Set Point to Button" and follow the instructions in the window that pops up.
6. Start "KI OG Hardware.ahk" focus the touch screen (click it), center the cursor and hit F1!

## I Want to Play on Citra
1. Dump your copy of Kid Icarus Uprising. (Google how to dump your 3DS games, it will not be covered in this guide)
2. Dump your 3DS system files for Citra. (https://github.com/citra-emu/citra/wiki/User-Directory)
3. Set your controls. (Emulation > Configure > Controls) (Below are my recommended controls for Citra)

![ScreenShot](https://i.imgur.com/eF0RnDn.png)

![ScreenShot](https://i.imgur.com/eJ0CKK6.png)


4. Change the display type (View > Screen Layout > Large Screen) and full screen (F11).

![ScreenShot](https://i.imgur.com/RJXsoiD.png)

5. Start "KI Citra.ahk" focus the Citra window (click it), center the cursor on the touch screen and hit F1!

NOTE: This setup is assuming you followed these steps AND have a 1920x1080 monitor. If you have ANYTHING else this WILL NOT WORK. To get it to work, or to get a different layout to work, edit the "boundary" variables with numbers you can get from "Windows Spy" (Installed with AHK) To do this, launch windows spy, hover over the edges of the touch screen and use the guide below to find the define the boundaries as they appear on the screen by hovering over the left, right, top and bottom boundaries of the touch screen and reading the numbers windows spy provides.

![ScreenShot](https://i.imgur.com/INRYhRE.png)

![ScreenShot](https://i.imgur.com/JzaQgKt.png)

FINAL NOTE:  If you're having issues binding the analogue sticks in Citra, click "automap" (below the ZR binding) and push a different key/button. The analogue sticks should be binded correctly!

## What Should My In-Game Bindings Be?

Vertical and horizontal sensitivity max

Circle Pad > Touch Screen Aiming > The bindings below

![ScreenShot](https://i.imgur.com/NWGpPo6.png)

## I have a question!!!!

DM or @ me on tweeter https://twitter.com/Kelkador
