#Requires AutoHotkey v2.0

; The * wildcard modifier makes the hotkey work even if extra keys are pressed.
; pressing Esc sends LeftAlt key-code:
$Esc::LAlt

; Pressing CapsLock sends Esc key-code:
$*CapsLock::Esc

; pressing Right Alt sends Left Alt key-code:
; LeftAlt behaves like RightAlt
$LAlt::RAlt

; The "$" is the keyboard hook modifier 
;  (so the hotkey is only activated if actually pressed)

; ------ layer 1 ---

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

; ------ layer 2 (Shift+key) ---

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

; --- number row: `1234567890-=
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

; --- Alt+Space:
;!(how to enter space here?)::Send " "

; --- layer 4 (Alt+Shift+key) ---

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
$!+a::Send ""
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
$!+z::Send "⌥"
$!+x::Send "⌘"
$!+c::Send "¢"
$!+v::Send "⌃"
$!+b::Send "○"
$!+n::Send "Œ"
$!+m::Send "µ"
$!+,::Send "☒"
$!+.::Send "☐"
$!+/::Send "☑"

; --- end
