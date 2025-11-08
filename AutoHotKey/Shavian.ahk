#Requires AutoHotkey v2.0

; Copyright (c) 2025 Neil Raiden, LLC (AGPL v3)
; <https://www.gnu.org/licenses/agpl-3.0.en.html>

;# Keyboard Layout Shavian (QWERTY+)
;It is the classic Shavian QWERTY keyboard layout with added common symbols to **AltGr** and **AltGr+Shift** layers.
;
; * The **Unshifted** and **Shifted** layers are exactly the same as **Shavian QWERTY**
; * The **AltGR** and **AltGr+Shift** layers are almost exactly identical as in **Writer+ (QWERTY)**
;
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

; ------ Layer 1 (unshifted) ------
;┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬──────┐
;│ ` │ 1 │ 2 │ 3 │ 4 │ 5 │ 6 │ 7 │ 8 │ 9 │ 0 │ - │ = │ bksp │
;├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬────┤
;│ tab │ 𐑶 │ 𐑢 │ 𐑧 │ 𐑮 │ 𐑑 │ 𐑭 │ 𐑳 │ 𐑦 │ 𐑪 │ 𐑐 │ [ │ ] │ \  │
;├─────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────┤
;│ caps  │ 𐑩 │ 𐑕 │ 𐑛 │ 𐑓 │ 𐑜 │ 𐑣 │ 𐑘 │ 𐑒 │ 𐑤 │ ; │ ' │  ent │
;├───────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴──────┤
;│ shift   │ 𐑟 │ 𐑻 │ 𐑗 │ 𐑝 │ 𐑚 │ 𐑯 │ 𐑥 │ , │ . │ / │  shift │
;└─────────┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴────────┘

; --- numbers row: (the same as standard QWERTY layout)

; --- TAB row:
;│ tab │ 𐑶 │ 𐑢 │ 𐑧 │ 𐑮 │ 𐑑 │ 𐑭 │ 𐑳 │ 𐑦 │ 𐑪 │ 𐑐 │ [ │ ] │ \  │
$q::Send "𐑶"
$w::Send "𐑢"
$e::Send "𐑧"
$r::Send "𐑮"
$t::Send "𐑑"
$y::Send "𐑭"
$u::Send "𐑳"
$i::Send "𐑦"
$o::Send "𐑪"
$p::Send "𐑐"
$[::Send "["
$]::Send "]"
$\::Send "\"

; --- CapsLock row:
;│ caps  │ 𐑩 │ 𐑕 │ 𐑛 │ 𐑓 │ 𐑜 │ 𐑣 │ 𐑘 │ 𐑒 │ 𐑤 │ ; │ ' │  ent │
$a::Send "𐑩"
$s::Send "𐑕"
$d::Send "𐑛"
$f::Send "𐑓"
$g::Send "𐑜"
$h::Send "𐑣"
$j::Send "𐑘"
$k::Send "𐑒"
$l::Send "𐑤"
$;::Send ";"
$'::Send "'"

; --- Shift row:
;│ shift   │ 𐑟 │ 𐑻 │ 𐑗 │ 𐑝 │ 𐑚 │ 𐑯 │ 𐑥 │ , │ . │ / │  shift │
$z::Send "𐑟"
$x::Send "𐑻"
$c::Send "𐑗"
$v::Send "𐑝"
$b::Send "𐑚"
$n::Send "𐑯"
$m::Send "𐑥"
$,::Send ","
$.::Send "."
$/::Send "/"


; ------ Layer 2 (shifted) ------
;┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬──────┐
;│ ~ │ ! │ @ │ # │ $ │ % │ ^ │ & │ * │ ( │ ) │ _ │ + │ bksp │
;├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬────┤
;│ tab │ 𐑬 │ 𐑾 │ 𐑱 │ 𐑸 │ 𐑔 │ 𐑷 │ 𐑫 │ 𐑰 │ 𐑴 │ 𐑹 │ { │ } │  | │
;├─────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────┤
;│ caps  │ 𐑨 │ 𐑖 │ 𐑼 │ 𐑲 │ · │ 𐑞 │ 𐑡 │ « │ » │ : │ " │  ent │
;├───────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴──────┤
;│ shift   │ 𐑠 │ 𐑺 │ 𐑽 │ 𐑿 │ ⸰ │ 𐑙 │ 𐑵 │ ‹ │ › │ ? │  shift │
;└─────────┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴────────┘

; --- numbers row: (the same as standard QWERTY layout)

; --- TAB row:
;│ tab │ 𐑬 │ 𐑾 │ 𐑱 │ 𐑸 │ 𐑔 │ 𐑷 │ 𐑫 │ 𐑰 │ 𐑴 │ 𐑹 │ { │ } │  | │
$+q::Send "𐑬"
$+w::Send "𐑾"
$+e::Send "𐑱"
$+r::Send "𐑸"
$+t::Send "𐑔"
$+y::Send "𐑷" 
$+u::Send "𐑫"
$+i::Send "𐑰" 
$+o::Send "𐑴"
$+p::Send "𐑹"
$+[::Send "{"
$+]::Send "}"
$+\::Send "|"

; --- CapsLock row:
;│ caps  │ 𐑨 │ 𐑖 │ 𐑼 │ 𐑲 │ · │ 𐑞 │ 𐑡 │ « │ » │ : │ " │  ent │
$+a::Send "𐑨"
$+s::Send "𐑖"
$+d::Send "𐑼"
$+f::Send "𐑲"
$+g::Send "·"
$+h::Send "𐑞"
$+j::Send "𐑡"
$+k::Send "«"
$+l::Send "»"
$+;::Send ":"
$+'::Send '"'

; --- Shift row:
;│ shift   │ 𐑠 │ 𐑺 │ 𐑽 │ 𐑿 │ ⸰ │ 𐑙 │ 𐑵 │ ‹ │ › │ ? │  shift │
$+z::Send "𐑠"
$+x::Send "𐑺"
$+c::Send "𐑽"
$+v::Send "𐑿"
$+b::Send "⸰"
$+n::Send "𐑙"
$+m::Send "𐑵"
$+,::Send "‹"
$+.::Send "›"
$+/::Send "?"

; Unfinished:

; ------ Layer 3 (Alt+key) ------
;┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬──────┐
;│ ´ │ ¹ │ ² │ ³ │ ⁴ │ ⁵ │ ⁶ │ ⁷ │ ⁸ │ ⁹ │ ⁰ │ → │ ≠ │ bksp │
;├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬────┤
;│ tab │ … │ ◌̀ │ ◌́ │ ® │ ™ │ √ │ ↑ │ ◌̈ │ ø │ ℗ │ ⟨ │ ⟩ │ •  │
;├─────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────┤
;│ caps  │ “ │ ” │ ↓ │ ° │ æ │ ‐ │ œ │ ≤ │ ≥ │ § │ × │  ent │
;├───────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴──────┤
;│ shift   │ ‘ │ ’ │ © │ ⁃ │ ○ │ – │ — │ ‹ │ › │ ÷ │  shift │
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
$!w::Send "̀"  ; U+0300 combining grave mark
$!e::Send "́"  ; U+0301 combining acute mark
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
$!k::Send "≤"
$!l::Send "≥"
$!;::Send "§"
$!'::Send "×"

; --- Shift row:
$!z::Send "‘"
$!x::Send "’"
$!c::Send "©"
$!v::Send "⁃"
$!b::Send "○"
$!n::Send "–"
$!m::Send "—"
$!,::Send "<"
$!.::Send ">"
$!/::Send "÷"


; ------ Layer 4 (Alt+Shift+key) ------
;┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬──────┐
;│ ≈ │ ₁ │ ₂ │ ₃ │ ₄ │ ₅ │ ₆ │ ₇ │ ₈ │ ₉ │ ₀ │ ← │ ± │ bksp │
;├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬────┤
;│ tab │ ⌜ │ ⌝ │ ⌞ │ ⌟ │ ‰ │   │   │   │ Ø │ π │ ⟮ │ ⟯ │ ◦  │
;├─────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────┤
;│ caps  │ ⊞ │ ☺ │   │   │ Æ │ ‑ │ Œ │   │ ₤ │   │   │  ent │
;├───────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴──────┤
;│ shift   │ ⌥ │ ⌘ │ ¢ │ ⌃ │ ◌ │ ◌̃ │ µ │ ☒ │ ☐ │ ☑ │  shift │
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
;$!+z::Send "⌥"  ;(Apple symbol for "Option" key)
$!+z::Send "" 
;$!+x::Send "⌘"  ;(Apple symbol for "Command" key)
$!+x::Send ""
$!+c::Send "¢"
;$!+v::Send "⌃"  ;(Apple symbol for "Control" key)
$!+v::Send ""
$!+b::Send "◌"
$!+n::Send "̃"  ; U+0303 - combining tilde
$!+m::Send "µ"
$!+,::Send "☒"
$!+.::Send "☐"
$!+/::Send "☑"

; --- end
