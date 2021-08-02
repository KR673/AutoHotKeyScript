; Ctrl::CapsLock
; SetCapsLockState, AlwaysOff

; SetCapsLockState, AlwaysOff

CapsLock::Ctrl
LCtrl::
; Send, {CapsLock down}
SetCapsLockState, Off
return
; *capslock::Ctrl ; Ctrl::
; Send {CapsLock}
; Return
; Hotkey, CapsLock, Off
RAlt & LCtrl::SetCapsLockState, % GetKeyState("CapsLock", "T") ? "Off" : "On" ; 

; $CapsLock::
; KeyWait, CapsLock
; If (A_PriorKey="CapsLock")
; SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off":"On"
; Return

^Space::send #{Space}

#If, GetKeyState("LCtrl", "P")
    k::Up
    h::Left
    j::Down
    l::Right
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

