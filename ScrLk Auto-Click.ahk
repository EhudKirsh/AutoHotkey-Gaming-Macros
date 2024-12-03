#Persistent ; Keeps the script running
SetTimer, CheckScrLk, 100 ; Check every 100ms
return

CheckScrLk:
if GetKeyState("ScrollLock", "T") ; If Scroll Lock is toggled on
{
    Click ; Simulate a mouse click
    Sleep, 100 ; Add delay between clicks (adjust as needed)
}
return