; 取消CapsLock原有的功能, 改为alt + caps


CapsLock::
SetCapsLockState, Off
return

*Capslock::SetCapsLockState, Off
Hotkey, CapsLock, Off
RAlt & Capslock::SetCapsLockState, % GetKeyState("CapsLock", "T") ? "Off" : "On"

#If, GetKeyState("CapsLock", "P")
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
a::send ^{a}
s::send ^{s}
f::send {PgUp}
g::send {PgDn}
N::send ^{left}
M::send ^{Right}
+N::send +^{left}
+M::send +^{Right}
,::send ^!{left}
.::send ^!{Right}
U::send {BackSpace}
Y::send ^{BackSpace}
`;::send ^{;}
!B::send ^!{b} 
b::send ^{b}
Tab::send ^{Tab}
return
#If