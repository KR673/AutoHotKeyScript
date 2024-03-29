; ^k::send, {Up}
; ^h::send, {Left}
; ^l::send, {Right}
; ^j::send, {Down}
; ^6::send, {Home}
; ^4::send, {End}
; ^u::send, {BackSpace}

#If, GetKeyState("LCtrl", "P")
    k::Up
    h::Left
    l::Right
    j::Down
    6::Home
    4::End
    z::send ^{z}
    x::send ^{x}
    c::send ^{c}
    v::send ^{v}
    ; s::send ^{s}
    ; w::send ^{w}
    /::send ^{/}
    f::send ^{f}
    u::send {BackSpace}
    ; f::send {PgUp} 
    ; g::send {PgDn} 
    N::send ^{left} 
    M::send ^{Right}
    +N::send +^{left}
    +M::send +^{Right}
    ,::send ^!{left}
    .::send ^!{Right}
    Y::send ^{BackSpace}
    `;::send ^{;}     
    !B::send ^!{b}
    b::send ^{b}
    Tab::send ^{Tab}
    return
#If
