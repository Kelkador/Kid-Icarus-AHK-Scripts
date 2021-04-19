## What is This Project?
Simply put, I made some AHK scripts that allow the 3DS classic Kid Icarus Uprising to be playing with mouse and keyboard or dual analogue, with very little problems. There is some software that you'll need to get this working fully, but once you download everything it'll be fairly plug and play.

## What Software is Needed?
1. AutoHotKey's current release (NOT 2.0) (https://www.autohotkey.com/) (needed no matter what)
2. Citra (https://citra-emu.org/) (if playing on emu)
3. InputRedirection Client QT (https://github.com/gbrown5/InputRedirectionClient-Qt) (if playing on original hardware)
4. Steam (https://store.steampowered.com/) (for dual analogue controls)
5. Universal Controller Remapper AHK Version by evilC (https://github.com/evilC/UCR) (for mouse and keyboard controls)
6. vJoy (http://vjoystick.sourceforge.net/site/index.php/download-a-install/download) (for mouse and keyboard controls)

## What are the Script's Default Controls?
F1: Start the script, only start the script when the window is focused and the cursor is in the middle of the touch screen.

6: Restart the script, you will have to press F1 again

2: Use vehicle (Cherubot, Aether Ring) ability. (Citra Script Only)

Esc: Stop script.

## Okay Nerd, I Want to Play on my 3DS
1. Install the Rosalina menu on your 3DS. Hacking the 3DS is not going to be covered in this guide, check this one out instead. (https://3ds.hacks.guide/)
2. Once your 3DS is all hacked, press L + DPad Down + Select and navigate the Rosalina Menu > Miscellaneous options > Start InputRedirection, take note of the IP Address in the upper right.
![ScreenShot](https://imgur.com/gaoecOh)
![ScreenShot](https://imgur.com/OGdBkNG)
![ScreenShot](https://imgur.com/7gUwrFB)
3. Plug the IP address into InputRedirection Client (!!This will only work if the 3DS and computer are connected to the same network!!)
4. Set controls as you wish, below are the controls I've found work best with my script and UCR settings.
![ScreenShot](https://imgur.com/MlT0VxV)
![ScreenShot](https://imgur.com/fpgzdnt)
5. To get vehicle controls with this method, right click the lower left corner of the "touch screen" window and select "Set Point to Button" and follow the instructions in the window that pops up.
6. Start "KI OG Hardware.ahk" focus the touch screen (click it), center the cursor and hit F1!

## Nah, Actually Citra is my Jam
1. Download Citra and dump your copy of Kid Icarus Uprising. (Google how to dump your copy, it will not be covered in this guide)
2. Dump your 3DS system files for Citra. (https://github.com/citra-emu/citra/wiki/User-Directory)
3. Set your controls. (Emulation > Configure > Controls)
4. Change the display type (View > Screen Layout > Large Screen) and full screen (F11).
![ScreenShot](https://imgur.com/RJXsoiD)
5. Start "KI Citra.ahk" focus the Citra window (click it), center the cursor and hit F1!
NOTE: This setup is assuming you followed these steps AND have a 1920x1080 monitor. If you have ANYTHING else this WILL NOT WORK. To get it to work, or to get a different layout to work, edit the "boundary" variables with numbers you can get from "Windows Spy" (Installed with AHK) To do this, launch windows spy, focus the Citra window in full screen and use the guide below to find the define the boundaries of the touch screen as it appears on the screen by hovering the left, right, top and bottom boundaries on the touch screen.
![ScreenShot](https://imgur.com/CHaBj4D)

I need to control 
