Do you want to fire fully-automatically in games that only let you tap or burst fire? These macros simulate repeated Left-Mouse Button (LMB) clicks and effectively implement full-auto firing.

For games that have infinite ammo, you can actually make use of the otherwise useless Scroll Lock (ScrLk) button. The macro below simulates LMB clicks when ScrLk's LED on your keyboard is on, and stop when you press ScrLk again and turn ScrLk's LED off. You can click on ScrLk to re-start and re-pause this macro as many times as you would like.
```AHK
#Persistent ; Keeps the script running
SetTimer, CheckScrLk, 10 ; Check every 10ms
return

CheckScrLk:
if GetKeyState("ScrollLock", "T") ; If Scroll Lock is toggled on
{
    Click ; Simulate a mouse click
    Sleep, 1 ; Add delay between clicks (adjust as needed)
}
return
```
Examples of flash games where this macro is useful are: Crusader Tank (games attached above)

<img src='Crusader Tank.jpg' width='80%' height='80%'>

---
Likewise, some games that only allow tap and burst fire have limited ammo or require reloading, so it's best to have a macro that simulates fast LMB clicks simply by holding the LMB. The script below accomplishes this:
```AHK
$LButton:: ; Custom handler for the left mouse button
Loop
{
    if !GetKeyState("LButton", "P") ; If the button is released, exit the loop
        break
    Click ; Simulate a left mouse click
    Sleep, 1 ; Delay between simulated clicks (adjust as needed)
}
return
```
Examples of flash games where this macro is useful are: Crusader Tank, Miniclip's Commando Series (games attached above)

<img src='Commando.jpg' width='70%' height='70%'>

---
Steps to use AutoHotkey (AHK) macros: 

1) Download <a href="https://www.autohotkey.com" target="_blank" rel="noopener noreferrer">AutoHotkey</a>

2) Click on 'New script' in AutoHotkey Dash and name it something nice.
<img src='AutoHotkey Dash.jpg' width='70%' height='70%'>
<img src='New Script.jpg' width='35%' height='35%'>

3) Press Edit. Copy & paste the above script. It can be editted in Notepad or VS Code.

4) Double-click the new .ahk file you created and saved in the folder it was saved.
  <img src='Folder.jpg' width='60%' height='60%'>
This macro is activated when you can see the green H icon in the right of the taskbar.

You can right-click on this icon and press 'Exit' to quit the macro.

Hovering over it with the mouse cursor shows its name, in case you have multiple macros activated.

<img src='Hover.jpg' width='70%' height='70%'>
