#Requires AutoHotkey v2.0
#SingleInstance Force
Persistent

; Toggle the CapsLock state when both Shift keys are pressed simultaneously.

; The SetCapsLockState command changes the physical state of the Caps Lock key,
; which may trigger any existing remapping of the Caps Lock key via Windows Registry or other software.
; To prevent unintended key presses, consider managing the remapping entirely within AutoHotkey instead of relying on the Windows Registry.

CapslockOn := GetKeyState("CapsLock", "T") = 1
IsTogglingCapsLock := 0

<+RShift:: 
>+LShift:: 
{
    global CapslockOn
    global IsTogglingCapsLock
    IsTogglingCapsLock := 1
    CapslockOn := !CapslockOn
    if (CapslockOn)
        SetCapsLockState "On"
    else
        SetCapsLockState "Off"
    IsTogglingCapsLock := 0
    return
}

