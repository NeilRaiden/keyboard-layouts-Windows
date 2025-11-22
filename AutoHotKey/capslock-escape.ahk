#Requires AutoHotkey v2.0
#SingleInstance Force
Persistent

; Copyright (c) 2025 Neil Raiden, LLC (AGPL v3)
; <https://www.gnu.org/licenses/agpl-3.0.en.html>

; ---
; AutoHotKey notes:
; - The "$" is the keyboard hook modifier (so the hotkey is only activated if actually pressed).
; ---
; # A. LShift+RShift toggles CapsLock
;    - Toggle the CapsLock state when both Shift keys are pressed simultaneously.
;    - The SetCapsLockState command changes the physical state of the Caps Lock key,
; which may trigger any existing remapping of the Caps Lock key via Windows Registry or other software.
;    - To prevent unintended key presses, consider managing the remapping entirely within AutoHotkey instead of relying on the Windows Registry.

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

; ---
; # B. The 3 key swaps:
; 1. pressing Esc sends LeftAlt key-code:
;    - Important: system shortcut Ctrl+Alt+Del ist still the same!
$Esc::LAlt

; 2. Pressing CapsLock sends Esc key-code:
; - The "*" wildcard modifier makes the hotkey work even if extra keys are pressed. So even then any other key is pressed simultanously with CapsLock, only "Esc" will be sent. Some people prefer using "CapsLock+key" combos to act as "Ctrl+key" -- not implemented here (yet). 
;$*CapsLock::Esc
$CapsLock::Esc

; 3. pressing LeftAlt sends RightAlt key-code:
;    (the LeftAlt now behaves like the RightAlt - activates layer 3 and 4)
$LAlt::RAlt

; ---
; # C. Improved "Delete"
; 1. Shift+Space sends Backspace:
+Space::Backspace

; 2. Physical [CapsLock+Space] = delete last word (Windows: Ctrl+Backspace)
CapsLock & Space:: Send("^+{Backspace}")

; 3. RightAlt+Space = delete last line (Windows: Alt+Backspace)
; (not implemented)

; ---
; # D. Dictionary
; open Google in default browser with (Ctrl+Win+g):
;^#g::Run("https://google.com")
;; open TFD.com in default browser with (Ctrl+Win+d):
;; to do: copy selected text to Clipboard, then to variable, and attach to the link
^#d::Run("https://www.tfd.com")

; # E. Date and Time
; 1. current date ( Ctrl+; in Excel):
^;::SendDateString()

SendDateString() {
    SendMode('Event')
    SetKeyDelay( -1, -1)
;    timestamp := FormatTime( A_Now, 'ddd dd-MMM  HH:mm')
    timestamp := FormatTime( A_Now, 'yyyy-MM-dd')
    Send(timestamp)
}

; 2. current time (Ctrl+Shift+; in Excel):
^+;::SendTimeString()

SendTimeString() {
    SendMode('Event')
    SetKeyDelay( -1, -1)
    timestamp := FormatTime( A_Now, 'HH:mm:ss')
    Send(timestamp)
}

; 3. current date (for journal)
^'::SendDateLongString()

SendDateLongString() {
    SendMode('Event')
    SetKeyDelay( -1, -1)
    timestamp := FormatTime( A_Now, 'ddd dd, MMM yyyy')
    Send(timestamp)
}

; 4. current time (Ctrl+Shift+; in Excel):
^"::SendTimeShortString()

SendTimeShortString() {
    SendMode('Event')
    SetKeyDelay( -1, -1)
    timestamp := FormatTime( A_Now, 'HH:mm')
    Send(timestamp)
}
; ---
