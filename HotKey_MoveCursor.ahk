; 取消CapsLock原有的功能, 改为alt + caps
*Capslock::SetCapsLockState, Off
Hotkey, CapsLock, Off
RAlt & Capslock::SetCapsLockState, % GetKeyState("CapsLock", "T") ? "Off" : "On"

; $CapsLock::
; KeyWait, CapsLock
; If (A_PriorKey="CapsLock")
; SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off":"On"
; Return
#If, GetKeyState("CapsLock", "P")
k::Up
h::Left
j::Down
l::Right
6::Home
4::End
N::send ^{left}
M::send ^{Right}
+N::send +^{left}
+M::send +^{Right}
,::send ^!{left}
.::send ^!{Right}
U::send {BackSpace}
Y::send ^{BackSpace}
return
#If

