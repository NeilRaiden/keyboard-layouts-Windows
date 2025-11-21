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
;│ tab │ ɜ │ ʍ │ ɛ │ ɹ │ θ │ ə │ ʊ │ ɪ │ ɔ │ ɒ │ ⟨ │ ⟩ │ •  │
;├─────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────┤
;│ caps  │ ɑ │ ʃ │ ð │ ɐ │ ɡ │ ‐ │ ʤ │ ʰ │ ɫ │ ː │ ᵊ │  ent │
;├───────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴──────┤
;│ shift   │ ʒ │ æ │ ʧ │ ʌ │ · │ ŋ │ ◌̃ │ ˈ │ ˌ │ ʔ │  shift │
;└─────────┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴────────┘
; Alt+m ◌̃ - (U+0303) combining tilde (for nasalization)

; --- number row:
;│ ´ │ ¹ │ ² │ ³ │ ⁴ │ ⁵ │ ⁶ │ ⁷ │ ⁸ │ ⁹ │ ⁰ │ → │ ≠ │ bksp │
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
;│ tab │ ɜ │ ʍ │ ɛ │ ɹ │ θ │ ə │ ʊ │ ɪ │ ɔ │ ɒ │ ⟨ │ ⟩ │ •  │
$!q::Send "ɜ"
$!w::Send "ʍ"
$!e::Send "ɛ"
$!r::Send "ɹ"
$!t::Send "θ"
$!y::Send "ə"
$!u::Send "ʊ"
$!i::Send "ɪ"
$!o::Send "ɔ"
$!p::Send "ɒ"
$![::Send "⟨"
$!]::Send "⟩"
$!\::Send "•"

; --- CapsL-Enter row:
;│ caps  │ ɑ │ ʃ │ ð │ ɐ │ ɡ │ ‐ │ ʤ │ ʰ │ ɫ │ ː │ ᵊ │  ent │
$!a::Send "ɑ"
$!s::Send "ʃ"
$!d::Send "ð"
$!f::Send "ɐ"
$!g::Send "ɡ"
$!h::Send "‐"
$!j::Send "ʤ"
$!k::Send "ʰ"
$!l::Send "ɫ"
$!;::Send "ː"
$!'::Send "ᵊ"

; --- Shift row:
;│ shift   │ ʒ │ æ │ ʧ │ ʌ │ · │ ŋ │ ◌̃ │ ˈ │ ˌ │ ʔ │  shift │
$!z::Send "ʒ"
$!x::Send "æ"
$!c::Send "ʧ"
$!v::Send "ʌ"
$!b::Send "·"
$!n::Send "ŋ"
$!m::Send "̃" ; Alt+m ◌̃ - (U+0303) combining tilde (for nasalization)
$!,::Send "ˈ"
$!.::Send "ˌ"
$!/::Send "ʔ"

; --- Alt+Space: Em-Space (space length equal to font height)
!Space::Send "{U+2003}"


; ------ Layer 4 (Alt+Shift+key) ------
;┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬──────┐
;│ ≈ │ ₁ │ ₂ │ ₃ │ ₄ │ ₅ │ ₆ │ ₇ │ ₈ │ ₉ │ ₀ │ ← │ ± │ bksp │
;├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬────┤
;│ tab │ ɝ │ ◌̀ │ ◌́ │ ʳ │ ɾ │ ɚ │ ↑ │   │ ◌ │   │ ⟮ │ ⟯ │ ◦  │
;├─────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────┤
;│ caps  │ “ │ ” │ ↓ │ ◌̄ │ ◌̱ │ ‑ │   │ « │ » │ § │ × │  ent │
;├───────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴──────┤
;│ shift   │ ‘ │ ’ │ … │ ⁃ │ ○ │ – │ — │ ‹ │ › │ ÷ │  shift │
;└─────────┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴────────┘
; Alt+Shift+w ◌̀  - U+0300 combining grave accent
; Alt+Shift+e ◌́  - U+0301 combining acute accent
; Alt+Shift+f ◌̄  - U+0304 combining macron
; Alt+Shift+g ◌̱  - U+0331 combining macron below

; --- number row: ~!@#$%^&*()_+
;│ ≈ │ ₁ │ ₂ │ ₃ │ ₄ │ ₅ │ ₆ │ ₇ │ ₈ │ ₉ │ ₀ │ ← │ ± │ bksp │
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
;│ tab │ ɝ │ ◌̀ │ ◌́ │ ʳ │ ɾ │ ɚ │ ↑ │   │ ◌ │   │ ⟮ │ ⟯ │ ◦  │
$!+q::Send "ɝ"
$!+w::Send "̀"   ; Alt+Shift+w ◌̀  - U+0300 combining grave accent
$!+e::Send "́"   ; Alt+Shift+e ◌́  - U+0301 combining acute accent
$!+r::Send "ʳ"
$!+t::Send "ɾ"
$!+y::Send "ɚ"
$!+u::Send "↑"
$!+i::Send ""
$!+o::Send "◌"  ; Alt+Shift+o ◌ - U+25cc dotted circle
$!+p::Send ""
$!+[::Send "⟮"
$!+]::Send "⟯"
$!+\::Send "◦"

; --- CapsL-Enter row: ASDFGHJKL:"
;│ caps  │ “ │ ” │ ↓ │ ◌̄ │ ◌̱ │ ‑ │   │ « │ » │ § │ × │  ent │
$!+a::Send "“"
$!+s::Send "”"
$!+d::Send "↓"
$!+f::Send "̄"   ; Alt+Shift+f ◌̄  - U+0304 combining macron
$!+g::Send "̱"   ; Alt+Shift+g ◌̱  - U+0331 combining macron below
$!+h::Send "‑"
$!+j::Send ""
$!+k::Send "«"
$!+l::Send "»"
$!+;::Send "§"
$!+'::Send "×"

; --- Shift row: ZXCVBNM<>?
;│ shift   │ ‘ │ ’ │ … │ ⁃ │ ○ │ – │ — │ ‹ │ › │ ÷ │  shift │
$!+z::Send "‘"
$!+x::Send "’"
$!+c::Send "…"
$!+v::Send "⁃"
$!+b::Send "○"
$!+n::Send "–"
$!+m::Send "—"
$!+,::Send "‹"
$!+.::Send "›"
$!+/::Send "÷"

; --- Alt+Shift+Space: zero-width space
!+Space::Send "{U+200B}"

; --- end
