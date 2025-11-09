#Requires AutoHotkey v2.0

; Copyright (c) 2025 Neil Raiden, LLC (AGPL v3)
; <https://www.gnu.org/licenses/agpl-3.0.en.html>

; ---
; # The 3 key swaps:
; 1. pressing Esc sends LeftAlt key-code:
;    (system shortcuts like Ctrl+Alt+Del are now Ctrl+Esc+Del)
$Esc::LAlt

; 2. Pressing CapsLock sends Esc key-code:
; - The "*" wildcard modifier makes the hotkey work even if extra keys are pressed. Example above: "$*CapsLock::Esc". So even then any other key is pressed simultanously with CapsLock, only "Esc" will be sent. Some people prefer using "CapsLock+key" combos to act as "Ctrl+key" -- not implemented here (yet). 
$*CapsLock::Esc

; 3. pressing LeftAlt sends RightAlt key-code:
;    (the LeftAlt now behaves like the RightAlt - activates layer 3 and 4)
$LAlt::RAlt

; AutoHotKey notes:
; - The "$" is the keyboard hook modifier (so the hotkey is only activated if actually pressed).

; _Note_: Layer 1 (unshifted) and Layer 2 (shifted) are exactly the same as on the regular QWERTY layout.


; ------ Layer 3 (Alt+key) ------
;┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬──────┐
;│ ´ │ ¹ │ ² │ ³ │ ⁴ │ ⁵ │ ⁶ │ ⁷ │ ⁸ │ ⁹ │ ⁰ │ → │ ≠ │ bksp │
;├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬────┤
;│ tab │ … │ ◌̀ │ ◌́ │ ® │ ™ │ √ │ ↑ │ ◌̈ │ ø │ ℗ │ ⟨ │ ⟩ │ •  │
;├─────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────┤
;│ caps  │ “ │ ” │ ↓ │ ° │ æ │ ‐ │ œ │ « │ » │ § │ × │  ent │
;├───────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴──────┤
;│ shift   │ ‘ │ ’ │ © │ ⁃ │ · │ – │ — │ ‹ │ › │ ÷ │  shift │
;└─────────┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴────────┘
; shift+w ◌̀ U+0300 combining grave mark
; shift+e ◌́ U+0301 combining acute mark
; shift+i ◌̈ U+0308 combining diaeresis (umlaut)

; --- number row:
$!`::Send "´"
$!1::Send "¹"
$!2::Send "²"
$!3::Send "³"
$!4::Send "⁴"
$!5::Send "⁵"
$!6::Send "⁶"
$!7::Send "⁷"
$!8::Send "⁸"
$!9::Send "⁹"
$!0::Send "⁰"
$!-::Send "→"
$!=::Send "≠"

; --- TAB row:
$!q::Send "…"
$!w::Send "̀" ; U+0300 combining grave mark
$!e::Send "́" ; U+0301 combining acute mark
$!r::Send "®"
$!t::Send "™"
$!y::Send "√"
$!u::Send "↑"
$!i::Send "̈"  ; U+0308 combining diaeresis (umlaut)
$!o::Send "ø"
$!p::Send "℗"
$![::Send "⟨"
$!]::Send "⟩"
$!\::Send "•"

; --- CapsL-Enter row:
$!a::Send "“"
$!s::Send "”"
$!d::Send "↓"
$!f::Send "°"
$!g::Send "æ"
$!h::Send "‐"
$!j::Send "œ"
$!k::Send "«"
$!l::Send "»"
$!;::Send "§"
$!'::Send "×"

; --- Shift row:
$!z::Send "‘"
$!x::Send "’"
$!c::Send "©"
$!v::Send "⁃"
$!b::Send "·"
$!n::Send "–"
$!m::Send "—"
$!,::Send "‹"
$!.::Send "›"
$!/::Send "÷"

; --- Alt+Space:
;!(how to enter space here?)::Send " "


; ------ Layer 4 (Alt+Shift+key) ------
;┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬──────┐
;│ ≈ │ ₁ │ ₂ │ ₃ │ ₄ │ ₅ │ ₆ │ ₇ │ ₈ │ ₉ │ ₀ │ ← │ ± │ bksp │
;├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬────┤
;│ tab │ ⌜ │ ⌝ │ ⌞ │ ⌟ │ ‰ │   │   │   │ Ø │ π │ ⟮ │ ⟯ │ ◦  │
;├─────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────┤
;│ caps  │ ⊞ │ ☺ │   │   │ Æ │ ‑ │ Œ │   │ ₤ │   │   │  ent │
;├───────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴──────┤
;│ shift   │ ⌥ │ ⌘ │ ¢ │ ⌃ │ ○ │ ◌̃ │ µ │ ☒ │ ☐ │ ☑ │  shift │
;└─────────┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴────────┘
; Alt+Shift+n ◌̃  U+0303 - combining tilde

; --- number row: ~!@#$%^&*()_+
$!+`::Send "≈"
$!+1::Send "₁"
$!+2::Send "₂"
$!+3::Send "₃"
$!+4::Send "₄"
$!+5::Send "₅"
$!+6::Send "₆"
$!+7::Send "₇"
$!+8::Send "₈"
$!+9::Send "₉"
$!+0::Send "₀"
$!+-::Send "←"
$!+=::Send "±"

; --- TAB row: QWERTYUIOP{}|
$!+q::Send "⌜"
$!+w::Send "⌝"
$!+e::Send "⌞" 
$!+r::Send "⌟"
$!+t::Send "‰"
$!+y::Send ""
$!+u::Send ""
$!+i::Send ""
$!+o::Send "Ø"
$!+p::Send "π"
$!+[::Send "⟮"
$!+]::Send "⟯"
$!+\::Send "◦"

; --- CapsL-Enter row: ASDFGHJKL:"
$!+a::Send "⊞"  ; U+229E, known as "SQUARED PLUS" (⊞) - substitute for Windows logo
$!+s::Send "☺"
$!+d::Send ""
$!+f::Send ""
$!+g::Send "Æ"
$!+h::Send "‑"
$!+j::Send "Œ"
$!+k::Send ""
$!+l::Send "₤"
$!+;::Send ""
$!+'::Send ""

; --- Shift row: ZXCVBNM<>?
$!+z::Send "⌥"
$!+x::Send "⌘"
$!+c::Send "¢"
$!+v::Send "⌃"
$!+b::Send "○"
$!+n::Send "̃" ; U+0303 - combining tilde
$!+m::Send "µ"
$!+,::Send "☒"
$!+.::Send "☐"
$!+/::Send "☑"

; --- end
