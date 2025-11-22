#Requires AutoHotkey v2.0
#SingleInstance Force

; Copyright (c) 2025 Neil Raiden, LLC (AGPL v3)
; <https://www.gnu.org/licenses/agpl-3.0.en.html>

;# Keyboard Layout (Shavian Imperial)
; This keyboard layout is based on __Imperial Good Companion Model 6__ typewriter.

; _Note_: This keyboard layout **is not based** on the [Keyman Shaw Imperial](https://keyman.com/keyboards/english_shavian_igc).

; ## The original __Imperial Model 6__ typewriter:
; * had no keys ⟮`⟯ and ⟮1⟯
; * had no digits 0 and 1. Just like on many very old typewriters I and O was used instead
; * had only capital Latin letters available after using **CapsLock** lever
; * had no CapsLock button — just like many old typewriters it had a lever to lock the SHIFT key (actually to lock the roller pin in the upper position).
; * the keys ⟮3⟯ and ⟮5⟯ had Shavian letters (IPA equivalents: ⟨ɛ⟩ and ⟨e⟩) which are not in official Shavian Unicode charset. Currently the only font supporting those extra Shavian letters is only Inter Alia. So instead, the following symbols are linked ⟨𐑻⟩ and ⟨𐑺⟩ to those keys.
; * had no letters ⟨𐑸,𐑹,𐑿,𐑼,𐑽⟩.
; * had no exclamation point ⟨!⟩, no double-quote mark ⟨"⟩, no semi-colon ⟨;⟩
; * punctuation marks on the SHIFT line were: unshifted ⟨,·.⟩; shifted ⟨?-/⟩

; Possibly the lack of Shavian letters and missing punctuation marks mentioned above were among the reasons why Shavian wasn't adopted back in 1970‐ties.
; That, and off course, the price of the _Imperial Model 6_ being about five times higher than a regular typewriter.

; ## Differences between this keyboard layout and the original _Imperial Model 6_ :
; * lowercase Latin letters in the **shifted** layer instead of uppercase
; * missing Shavian letters ⟨𐑸,𐑹,𐑿,𐑼,𐑽⟩ added to the **shifted** layer in the numerals line 
; * this layout adds symbols to keys ⟮`⟯ and ⟮1⟯:
;    - ⟨⸰⟩ and ⟨·⟩ (namer dot) in **Unshifted** layer
;	- ⟨◦⟩ and ⟨•⟩ (bullets) in **Shifted** layer
;	- numbers ⟨0⟩ and ⟨1⟩ in AltGR layer.
; * uppercase Latin letters in **AltGr** layer
; * punctuation marks on the SHIFT line (unshifted layer) are ⟨,./⟩ instead of originally ⟨,·.⟩
; * punctuation marks on the SHIFT line (shifted layer) are ⟨?;!⟩ instead of ⟨?-/⟩
; * tilde and double-quote mark added to the ⟮\|⟯ key
; * also, some of the most common punctuation marks were added to the **AltGR+Shift** layer (see tables below).

; _Note_: **In Windows AltGr(Right Alt) is equivalent to LeftAlt+Ctrl.**

; ---
; AutoHotKey notes:
; - The "$" is the keyboard hook modifier (so the hotkey is only activated if actually pressed).
; ---

; ------ Layer 1 (unshifted) ------
;┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬──────┐
;│ ⸰ │ · │ 𐑬 │ 𐑻 │ 𐑫 │ 𐑺 │ 𐑜 │ 𐑖 │ 𐑗 │ 𐑙 │ 𐑘 │ 𐑡 │ 𐑔 │ bksp │
;├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬────┤
;│ tab │ 𐑭 │ 𐑷 │ 𐑵 │ 𐑱 │ 𐑳 │ 𐑓 │ 𐑞 │ 𐑤 │ 𐑥 │ 𐑒 │ 𐑢 │ 𐑣 │ 𐑠  │
;├─────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────┤
;│ caps  │ 𐑪 │ 𐑨 │ 𐑦 │ 𐑩 │ 𐑧 │ 𐑐 │ 𐑯 │ 𐑑 │ 𐑮 │ 𐑕 │ 𐑛 │  ent │
;├───────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴──────┤
;│ shift   │ 𐑾 │ 𐑲 │ 𐑴 │ 𐑰 │ 𐑚 │ 𐑝 │ 𐑟 │ , │ . │ / │  shift │
;└─────────┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴────────┘

; --- numbers row:
;│ ⸰ │ · │ 𐑬 │ 𐑻 │ 𐑫 │ 𐑺 │ 𐑜 │ 𐑖 │ 𐑗 │ 𐑙 │ 𐑘 │ 𐑡 │ 𐑔 │ bksp │
$`::Send "⸰"
$1::Send "·"
$2::Send "𐑬"
$3::Send "𐑻"
$4::Send "𐑫"
$5::Send "𐑺"
$6::Send "𐑜"
$7::Send "𐑖"
$8::Send "𐑗"
$9::Send "𐑙"
$0::Send "𐑘"
$-::Send "𐑡"
$=::Send "𐑔"

; --- TAB row:
;│ tab │ 𐑭 │ 𐑷 │ 𐑵 │ 𐑱 │ 𐑳 │ 𐑓 │ 𐑞 │ 𐑤 │ 𐑥 │ 𐑒 │ 𐑢 │ 𐑣 │ 𐑠  │
$q::Send "𐑭"
$w::Send "𐑷"
$e::Send "𐑵"
$r::Send "𐑱"
$t::Send "𐑳"
$y::Send "𐑓"
$u::Send "𐑞"
$i::Send "𐑤"
$o::Send "𐑥"
$p::Send "𐑒"
$[::Send "𐑢"
$]::Send "𐑣"
$\::Send "𐑠"

; --- CapsLock row:
;│ caps  │ 𐑪 │ 𐑨 │ 𐑦 │ 𐑩 │ 𐑧 │ 𐑐 │ 𐑯 │ 𐑑 │ 𐑮 │ 𐑕 │ 𐑛 │  ent │
$a::Send "𐑪"
$s::Send "𐑨"
$d::Send "𐑦"
$f::Send "𐑩"
$g::Send "𐑧"
$h::Send "𐑐"
$j::Send "𐑯"
$k::Send "𐑑"
$l::Send "𐑮"
$;::Send "𐑕"
$'::Send "𐑛"

; --- Shift row:
;│ shift   │ 𐑾 │ 𐑲 │ 𐑴 │ 𐑰 │ 𐑚 │ 𐑝 │ 𐑟 │ , │ . │ / │  shift │
$z::Send "𐑾"
$x::Send "𐑲"
$c::Send "𐑴"
$v::Send "𐑰"
$b::Send "𐑚"
$n::Send "𐑝"
$m::Send "𐑟"
$,::Send ","
$.::Send "."
$/::Send "/"


; ------ Layer 2 (shifted) ------
;┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬──────┐
;│ ◦ │ • │ 𐑶 │ 𐑸 │ 𐑿 │ 𐑹 │ 𐑼 │ 𐑽 │ * │ - │ ( │ ) │ = │ bksp │
;├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬────┤
;│ tab │ q │ w │ e │ r │ t │ y │ u │ i │ o │ p │ ! │ & │ ~  │
;├─────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────┤
;│ caps  │ a │ s │ d │ f │ g │ h │ j │ k │ l │ ' │ " │  ent │
;├───────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴──────┤
;│ shift   │ z │ x │ c │ v │ b │ n │ m │ ; │ : │ ? │  shift │
;└─────────┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴────────┘

; --- numbers row:
;│ ◦ │ • │ 𐑶 │ 𐑸 │ 𐑿 │ 𐑹 │ 𐑼 │ 𐑽 │ * │ - │ ( │ ) │ = │ bksp │
$+`::Send "◦"
$+1::Send "•"
$+2::Send "𐑶"
$+3::Send "𐑸"
$+4::Send "𐑿"
$+5::Send "𐑹"
$+6::Send "𐑼"
$+7::Send "𐑽"
$+8::Send "*"
$+9::Send "-"
$+0::Send "("
$+-::Send ")"
$+=::Send "="

; --- TAB row:
;│ tab │ q │ w │ e │ r │ t │ y │ u │ i │ o │ p │ ! │ & │ ~  │
$+q::Send "q"
$+w::Send "w"
$+e::Send "e"
$+r::Send "r"
$+t::Send "t"
$+y::Send "y" 
$+u::Send "u"
$+i::Send "i" 
$+o::Send "o"
$+p::Send "p"
$+[::Send "!"
$+]::Send "&"
$+\::Send "~"

; --- CapsLock row:
;│ caps  │ a │ s │ d │ f │ g │ h │ j │ k │ l │ ' │ " │  ent │
$+a::Send "a"
$+s::Send "s"
$+d::Send "d"
$+f::Send "f"
$+g::Send "g"
$+h::Send "h"
$+j::Send "j"
$+k::Send "k"
$+l::Send "l"
$+;::Send "'"
$+'::Send '"'

; --- Shift row:
;│ shift   │ z │ x │ c │ v │ b │ n │ m │ ; │ : │ ? │  shift │
$+z::Send "z"
$+x::Send "x"
$+c::Send "c"
$+v::Send "v"
$+b::Send "b"
$+n::Send "n"
$+m::Send "m"
$+,::Send ";"
$+.::Send ":"
$+/::Send "?"


; ------ Layer 3 (Alt+key) ------
;┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬──────┐
;│ 0 │ 1 │ 2 │ 3 │ 4 │ 5 │ 6 │ 7 │ 8 │ 9 │ [ │ ] │ _ │ bksp │
;├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬────┤
;│ tab │ Q │ W │ E │ R │ T │ Y │ U │ I │ O │ P │ { │ } │ |  │
;├─────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────┤
;│ caps  │ A │ S │ D │ F │ G │ H │ J │ K │ L │ « │ » │  ent │
;├───────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴──────┤
;│ shift   │ Z │ X │ C │ V │ B │ N │ M │ “ │ ” │ … │  shift │
;└─────────┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴────────┘

; --- number row:
;│ 0 │ 1 │ 2 │ 3 │ 4 │ 5 │ 6 │ 7 │ 8 │ 9 │ [ │ ] │ _ │ bksp │
$!`::Send "0"
$!1::Send "1"
$!2::Send "2"
$!3::Send "3"
$!4::Send "4"
$!5::Send "5"
$!6::Send "6"
$!7::Send "7"
$!8::Send "8"
$!9::Send "9"
$!0::Send "["
$!-::Send "]"
$!=::Send "_"

; --- TAB row:
;│ tab │ Q │ W │ E │ R │ T │ Y │ U │ I │ O │ P │ { │ } │ |  │
$!q::Send "Q"
$!w::Send "W"
$!e::Send "E"
$!r::Send "R"
$!t::Send "T"
$!y::Send "Y"
$!u::Send "U"
$!i::Send "I"
$!o::Send "O"
$!p::Send "P"
$![::Send "{"
$!]::Send "}"
$!\::Send "|"

; --- CapsL-Enter row:
;│ caps  │ A │ S │ D │ F │ G │ H │ J │ K │ L │ « │ » │  ent │
$!a::Send "A"
$!s::Send "S"
$!d::Send "D"
$!f::Send "F"
$!g::Send "G"
$!h::Send "H"
$!j::Send "J"
$!k::Send "K"
$!l::Send "L"
$!;::Send "«"
$!'::Send "»"

; --- Shift row:
;│ shift   │ Z │ X │ C │ V │ B │ N │ M │ “ │ ” │ … │  shift │
$!z::Send "Z"
$!x::Send "X"
$!c::Send "C"
$!v::Send "V"
$!b::Send "B"
$!n::Send "N"
$!m::Send "M"
$!,::Send "“"
$!.::Send "”"
$!/::Send "…"

; --- Alt+Space: Em-Space (space length equal to font height)
!Space::Send "{U+2003}"

; ------ Layer 4 (Alt+Shift+key) ------
;┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬──────┐
;│ ` │ ´ │ @ │ # │ $ │ % │ ^ │ & │ × │ ÷ │ < │ > │ + │ bksp │
;├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬────┤
;│ tab │   │   │   │   │   │   │   │   │   │   │   │   │ \  │
;├─────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────┤
;│ caps  │   │   │   │   │   │ ‐ │   │   │ ₤ │ ‹ │ › │  ent │
;├───────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴──────┤
;│ shift   │   │   │   │ ⁃ │ ○ │ – │ — │ ‘ │ ’ │   │  shift │
;└─────────┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴────────┘

; --- number row: ~!@#$%^&*()_+
;│ ` │ ´ │ @ │ # │ $ │ % │ ^ │ & │ × │ ÷ │ < │ > │ + │ bksp │
$!+`::Send '``'   ; ` - AutoHotKey escape character
$!+1::Send "´"
$!+2::Send "@"
$!+3::Send "{#}"  ; # - AutoHotKey special character
$!+4::Send "$"
$!+5::Send "%"
$!+6::Send "{^}"  ; ^ - AutoHotKey special character
$!+7::Send "&"
$!+8::Send "×"
$!+9::Send "÷"
$!+0::Send "<"
$!+-::Send ">"
$!+=::Send "{+}"  ; + - AutoHotKey special character 

; --- TAB row: QWERTYUIOP{}|
;│ tab │   │   │   │   │   │   │   │   │   │   │   │   │ \  │
$!+q::Send ""
$!+w::Send ""
$!+e::Send ""
$!+r::Send ""
$!+t::Send ""
$!+y::Send ""
$!+u::Send ""
$!+i::Send ""
$!+o::Send ""
$!+p::Send ""
$!+[::Send ""
$!+]::Send ""
$!+\::Send "\"

; --- CapsL-Enter row: ASDFGHJKL:"
;│ caps  │   │   │   │   │   │ ‐ │   │   │ ₤ │ ‹ │ › │  ent │
$!+a::Send ""
$!+s::Send ""
$!+d::Send ""
$!+f::Send ""
$!+g::Send ""
$!+h::Send "‐"
$!+j::Send ""
$!+k::Send ""
$!+l::Send "₤"
$!+;::Send "‹"
$!+'::Send "›"

; --- Shift row: ZXCVBNM<>?
;│ shift   │   │   │   │ ⁃ │ ○ │ – │ — │ ‘ │ ’ │   │  shift │
$!+z::Send ""
$!+x::Send ""
$!+c::Send ""
$!+v::Send "⁃"
$!+b::Send "○"
$!+n::Send "–"
$!+m::Send "—"
$!+,::Send "‘"
$!+.::Send "’"
$!+/::Send ""

; --- Alt+Shift+Space: zero-width space
!+Space::Send "{U+200B}"

; --- end
