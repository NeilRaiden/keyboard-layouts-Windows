#Requires AutoHotkey v2.0

; The "$" is the keyboard hook modifier
;  (so the hotkey is only activated if actually pressed)
; The * wildcard modifier makes the hotkey work even if extra keys are pressed.
; pressing Esc sends LeftAlt key-code:
$Esc::LAlt

; Pressing CapsLock sends Esc key-code:
$*CapsLock::Esc

; pressing Right Alt sends Left Alt key-code:
; LeftAlt behaves like RightAlt
$LAlt::RAlt

;  Numbers row in layer 1 & 2 is exactly the same as on the regular QWERTY layout.
; Except for the pound sign "£" in place of hash "#".

; ------ Layer 1 (unshifted) ------
;┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬──────┐
;│ ` │ 1 │ 2 │ 3 │ 4 │ 5 │ 6 │ 7 │ 8 │ 9 │ 0 │ - │ = │ bksp │
;├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬────┤
;│ tab │ɔɪ │ w │ ɛ │ r │ t │ɑː │ ʌ │ ɪ │ ɒ │ p │ [ │ ] │ \  │
;├─────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────┤
;│ caps  │ ə │ s │ d │ f │ ɡ │ h │ j │ k │ l │ ; │ ' │  ent │
;├───────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴──────┤
;│ shift   │ z │ɜːr│tʃ │ v │ b │ n │ m │ , │ . │ / │  shift │
;└─────────┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴────────┘

; --- TAB row:
$q::Send "ɔɪ"
$w::Send "w"
$e::Send "ɛ"
$r::Send "r"
$t::Send "t"
;$y::Send "ɑ"  ; US
$y::Send "ɑː"  ; UK
$u::Send "ʌ"
$i::Send "ɪ"
$o::Send "ɒ"
$p::Send "p"
$[::Send "["
$]::Send "]"
$\::Send "\"

; --- CapsLock row:
$a::Send "ə"
$s::Send "s"
$d::Send "d"
$f::Send "f"
$g::Send "ɡ" ; U+0261 (not "g" U+0067)
$h::Send "h"
$j::Send "j"
$k::Send "k"
$l::Send "l"
$;::Send ";"
$'::Send "'"

; --- Shift row:
$z::Send "z"
;$x::Send "ɜr"  ; US
$x::Send "ɜːʳ"  ; UK
;$x::Send "ɜːr" ; UK-rhotic
$c::Send "tʃ"
$v::Send "v"
$b::Send "b"
$n::Send "n"
$m::Send "m"
$,::Send ","
$.::Send "."
$/::Send "/"

; ------ Layer 2 (shifted) ------
;┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬──────┐
;│ ~ │ ! │ @ │ # │ $ │ % │ ^ │ & │ * │ ( │ ) │ _ │ + │ bksp │
;├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬────┤
;│ tab │aʊ │ɪə │eɪ │ɑːʳ│ θ │ɔː │ ʊ │iː │əʊ │ɔːʳ│ { │ } │ |  │
;├─────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────┤
;│ caps  │ æ │ ʃ │əʳ │aɪ │ · │ ð │dʒ │ « │ » │ : │ " │  ent │
;├───────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴──────┤
;│ shift   │ ʒ │eəʳ│ɪəʳ│juː│ ⸰ │ ŋ │uː │ ‹ │ › │ ? │  shift │
;└─────────┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴────────┘

; --- TAB row:
$+q::Send "aʊ"
$+w::Send "ɪə"
$+e::Send "eɪ"
;$+r::Send "ɑr"  ; US
$+r::Send "ɑːʳ"  ; UK
;$+r::Send "ɑːr" ; UK-rhotic
$+t::Send "θ"
;$+y::Send "ɔ"   ; US
$+y::Send "ɔː"   ; UK
$+u::Send "ʊ"
;$+i::Send "i"   ; US
$+i::Send "iː"   ; UK
;$+o::Send "ɔʊ"  ; US
$+o::Send "əʊ"   ; UK
;$+p::Send "ɔr"  ; US
$+p::Send "ɔːʳ"  ; UK
;$+p::Send "ɔːr" ; UK-rhotic
$+[::Send "{"
$+]::Send "}"
$+\::Send "|"

; --- CapsLock row:
$+a::Send "æ"
$+s::Send "ʃ"
;$+d::Send "ər"  ; US
$+d::Send "əʳ"   ; UK
$+f::Send "aɪ"
$+g::Send "·"
$+h::Send "ð"
$+j::Send "dʒ"
$+k::Send "«"
$+l::Send "»"
$+;::Send ":"
$+'::Send '"'

; --- Shift row:
$+z::Send "ʒ"
;$+x::Send "er"  ; US
$+x::Send "eəʳ"  ; UK
;$+x::Send "eər" ; UK-rhotic
$+c::Send "ɪər"  ; US (or "ɪr"?)
;$+c::Send "ɪər" ; UK
;$+v::Send "ju"  ; US
$+v::Send "juː"  ; UK
$+b::Send "⸰"
$+n::Send "ŋ"
;$+m::Send "u"   ; US
$+m::Send "uː"   ; UK
$+,::Send "‹"
$+.::Send "›"
$+/::Send "?"


; ------ layer 3 (Alt+key) ------
;┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬──────┐
;│ ´ │ ¹ │ ² │ ³ │ ⁴ │ ⁵ │ ⁶ │ ⁷ │ ⁸ │ ⁹ │ ⁰ │ → │ ≠ │ bksp │
;├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬────┤
;│ tab │ … │ ʍ │ e │ ʳ │ ɾ │   │ ↑ │   │ ˈ │ ˌ │ ⟨ │ ⟩ │ •  │
;├─────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────┤
;│ caps  │ “ │ ” │ ↓ │ ° │ ʔ │ ‐ │ ʤ │ ≤ │ ≥ │ ː │ × │  ent │
;├───────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴──────┤
;│ shift   │ ‘ │ ’ │ ʧ │ ⁃ │ ○ │ – │ — │ < │ > │ ÷ │  shift │
;└─────────┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴────────┘

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
$!w::Send "ʍ"
$!e::Send "e"
$!r::Send "ʳ"
$!t::Send "ɾ"
$!y::Send ""
$!u::Send "↑"
$!i::Send ""
$!o::Send "ˈ"
$!p::Send "ˌ"
$![::Send "⟨"
$!]::Send "⟩"
$!\::Send "•"

; --- CapsL-Enter row:
$!a::Send "“"
$!s::Send "”"
$!d::Send "↓"
$!f::Send "°"
$!g::Send "ʔ"
$!h::Send "‐"
$!j::Send "ʤ"
$!k::Send "≤"
$!l::Send "≥"
$!;::Send "ː"
$!'::Send "×"

; --- Shift row:
$!z::Send "‘"
$!x::Send "’"
$!c::Send "ʧ"
$!v::Send "⁃"
$!b::Send "○"
$!n::Send "–"
$!m::Send "—"
$!,::Send "<"
$!.::Send ">"
$!/::Send "÷"

; --- Alt+Space:
;!(how to enter space here?)::Send " "

; ------ Layer 4 (Alt+Shift+key) ------
;┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬──────┐
;│ ≈ │ ₁ │ ₂ │ ₃ │ ₄ │ ₅ │ ₆ │ ₇ │ ₈ │ ₉ │ ₀ │ ← │ ± │ bksp │
;├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬────┤
;│ tab │ ⋯ │   │ ɜ │ ɹ │ ʰ │   │   │   │   │   │ ⟮ │ ⟯ │ ◦  │
;├─────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────┤
;│ caps  │ ɐ │ ☺ │ ɚ │   │ ˀ │ ‑ │   │   │ ɫ │ § │   │  ent │
;├───────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴──────┤
;│ shift   │   │ ɝ │   │   │ ◌ │   │   │ ☒ │ ☐ │ ☑ │  shift │
;└─────────┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴────────┘

; --- number row: ~!@£$%^&*()_+
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
$!+q::Send "⋯"
$!+w::Send ""
$!+e::Send "ɜ"
$!+r::Send "ɹ"
$!+t::Send "ʰ"
$!+y::Send ""
$!+u::Send ""
$!+i::Send ""
$!+o::Send ""
$!+p::Send ""
$!+[::Send "⟮"
$!+]::Send "⟯"
$!+\::Send "◦"

; --- CapsL-Enter row: ASDFGHJKL:"
;$!+a::Send "⊞"  ; U+229E, known as "SQUARED PLUS" (⊞) - substitute for Windows logo
$!+a::Send "ɐ"
$!+s::Send "☺"
$!+d::Send "ɚ"
$!+f::Send ""
$!+g::Send "ˀ"
$!+h::Send "‑"
$!+j::Send ""
$!+k::Send ""
$!+l::Send "ɫ"
$!+;::Send "§"
$!+'::Send ""

; --- Shift row: ZXCVBNM<>?
$!+z::Send ""
$!+x::Send "ɝ"
$!+c::Send ""
$!+v::Send ""
$!+b::Send "◌"
$!+n::Send ""
$!+m::Send ""
$!+,::Send "☒"
$!+.::Send "☐"
$!+/::Send "☑"

; --- end
