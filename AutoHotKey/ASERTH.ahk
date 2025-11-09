#Requires AutoHotkey v2.0

; Copyright (c) 2025 Neil Raiden, LLC (AGPL v3)
; <https://www.gnu.org/licenses/agpl-3.0.en.html>

; ---
;
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

; ------ layer 1 ------
; ┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬──────┐
; │ ` │ 1 │ 2 │ 3 │ 4 │ 5 │ 6 │ 7 │ 8 │ 9 │ 0 │ - │ = │ bksp │
; ├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬────┤
; │ tab │   │   │ D │ F │ G │   │   │ K │ P │ ; │   │   │    │
; ├─────┴─┬─┴─┬─┴─ ↘ ─ ↘ ─ ↘ ─┬─┴─┬─┴─ ↘ ─┬─ ↺ ─┴─┬─┴─┬─┴────┤
; │ caps  │   │   │ E │ R │ T │   │ N │ I │ O │ L │   │  ent │
; ├───────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─ ↗ ─┴─┬─┴─┬─┴─┬─┴─┬─┴──────┤
; │ shift   │   │   │   │   │   │ J │   │   │   │   │  shift │
; └─────────┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴────────┘

$e::Send "d"
$r::Send "f"
$t::Send "g"
$d::Send "e"
$f::Send "r"
$g::Send "t"
$n::Send "j"
$j::Send "n"
$i::Send "k"
$k::Send "i"
$p::Send ";"
$o::Send "p"
$l::Send "o"
$;::Send "l"

; ------ layer 2 (Shift+key) ------

$+e::Send "D"
$+r::Send "F"
$+t::Send "G"
$+d::Send "E"
$+f::Send "R"
$+g::Send "T"
$+n::Send "J"
$+j::Send "N"
$+i::Send "K"
$+k::Send "I"
$+p::Send ":"
$+o::Send "P"
$+l::Send "O"
$+;::Send "L"

; ------ layer 3 (Alt+key) ---
; ┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬──────┐
; │ ´ │ ¹ │ ² │ ³ │ ⁴ │ ⁵ │ ⁶ │ ⁷ │ ⁸ │ ⁹ │ ⁰ │ → │ ≠ │ bksp │
; ├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬────┤
; │ tab │ … │ ◌̀ │ ◌́ │ ° │ æ │ √ │ ↑ │ § │ ℗ │ × │ ⟨ │ ⟩ │ •  │
; ├─────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────┤
; │ caps  │ “ │ ” │ ↓ │ ® │ ™ │ ‐ │ – │ ◌̈ │ ø │ « │ » │  ent │
; ├───────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴──────┤
; │ shift   │ ‘ │ ’ │ © │ ⁃ │ · │ œ │ — │ ÷ │ ‹ │ › │  shift │
; └─────────┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴────────┘

; --- number row: `1234567890-=
; │ ´ │ ¹ │ ² │ ³ │ ⁴ │ ⁵ │ ⁶ │ ⁷ │ ⁸ │ ⁹ │ ⁰ │ → │ ≠ │ bksp │
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

; --- TAB row: qwertyuiop[]\
; │ tab │ … │ ◌̀ │ ◌́ │ ° │ æ │ √ │ ↑ │ § │ ℗ │ × │ ⟨ │ ⟩ │ •  │
$!q::Send "…"
$!w::Send "̀" ; U+0300 combining grave mark
$!e::Send "́" ; U+0301 combining acute mark
$!r::Send "°"
$!t::Send "æ"
$!y::Send "√"
$!u::Send "↑"
$!i::Send "§"
$!o::Send "℗"
$!p::Send "×"
$![::Send "⟨"
$!]::Send "⟩"
$!\::Send "•"

; --- CapsL-Enter row: asdfghjkl;'
; │ caps  │ “ │ ” │ ↓ │ ® │ ™ │ ‐ │ – │ ◌̈ │ ø │ « │ » │  ent │
$!a::Send "“"
$!s::Send "”"
$!d::Send "↓"
$!f::Send "®"
$!g::Send "™"
$!h::Send "‐"
$!j::Send "–"
$!k::Send "̈"  ; U+0308 combining diaeresis (umlaut)
$!l::Send "ø"
$!;::Send "«"
$!'::Send "»"

; --- Shift row: zxcvbnm,./
; │ shift   │ ‘ │ ’ │ © │ ⁃ │ · │ œ │ — │ ÷ │ ‹ │ › │  shift │
$!z::Send "‘"
$!x::Send "’"
$!c::Send "©"
$!v::Send "⁃"
$!b::Send "·"
$!n::Send "œ"
$!m::Send "—"
$!,::Send "÷"
$!.::Send "‹"
$!/::Send "›"

; --- layer 4 (Alt+Shift+key) ---
; ┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬──────┐
; │ ≈ │ ₁ │ ₂ │ ₃ │ ₄ │ ₅ │ ₆ │ ₇ │ ₈ │ ₉ │ ₀ │ ← │ ± │ bksp │
; ├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬────┤
; │ tab │ ⌜ │ ⌝ │ ⌞ │ ⌟ │ Æ │   │   │   │ π │   │ ⟮ │ ⟯ │ ◦  │
; ├─────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────┤
; │ caps  │ ⊞ │ ☺ │   │   │ ‰ │ ‑ │ ◌̃ │   │ Ø │ ₤ │   │  ent │
; ├───────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴──────┤
; │ shift   │   │   │ ¢ │   │ ○ │ Œ │ µ │ ☒ │ ☐ │ ☑ │  shift │
; └─────────┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴────────┘

; --- number row: ~!@#$%^&*()_+
; │ ≈ │ ₁ │ ₂ │ ₃ │ ₄ │ ₅ │ ₆ │ ₇ │ ₈ │ ₉ │ ₀ │ ← │ ± │ bksp │
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
; │ tab │ ⌜ │ ⌝ │ ⌞ │ ⌟ │ Æ │   │   │   │ π │   │ ⟮ │ ⟯ │ ◦  │
$!+q::Send "⌜"
$!+w::Send "⌝"
$!+e::Send "⌞" 
$!+r::Send "⌟"
$!+t::Send "Æ"
$!+y::Send ""
$!+u::Send ""
$!+i::Send ""
$!+o::Send "π"
$!+p::Send ""
$!+[::Send "⟮"
$!+]::Send "⟯"
$!+\::Send "◦"

; --- CapsL-Enter row: ASDFGHJKL:"
; │ caps  │ ⊞ │ ☺ │   │   │ ‰ │ ‑ │ ◌̃ │   │ Ø │ ₤ │   │  ent │
$!+a::Send "⊞"  ; U+229E, known as "SQUARED PLUS" (⊞) - substitute for Windows logo
;$!+a::Send ""  ; Apple logo
$!+s::Send "☺"
$!+d::Send ""
$!+f::Send ""
$!+g::Send "‰"
$!+h::Send "‑"
$!+j::Send "̃" ; U+0303 - combining tilde
$!+k::Send ""
$!+l::Send "Ø"
$!+;::Send "₤"
$!+'::Send ""

; --- Shift row: ZXCVBNM<>?
; │ shift   │   │   │ ¢ │   │ ○ │ Œ │ µ │ ☒ │ ☐ │ ☑ │  shift │
;$!+z::Send "⌥"  ;(Apple symbol for "Option" key)
$!+z::Send "" 
;$!+x::Send "⌘"  ;(Apple symbol for "Command" key)
$!+x::Send ""
$!+c::Send "¢"
;$!+v::Send "⌃"  ;(Apple symbol for "Control" key)
$!+v::Send ""
$!+b::Send "○"
$!+n::Send "Œ"
$!+m::Send "µ"
$!+,::Send "☒"
$!+.::Send "☐"
$!+/::Send "☑"

; --- end
