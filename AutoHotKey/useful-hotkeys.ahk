#Requires AutoHotkey v2.0

; open File Explorer:
^#e::Run explorer.exe
; open Google in default browser:
^#g::Run https://google.com
; insert today's date:
F5:: Send %A_DD%/%A_MM%/%A_YYY%
; Shift+Space sends Backspace:
+Space::{Backspace}
; CapsLock acts as Control
CapsLock::Ctrl
