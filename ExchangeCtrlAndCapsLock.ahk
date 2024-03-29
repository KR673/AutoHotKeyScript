CapsLock::Ctrl
; CapsLock::
; SetCapsLockState, Off
; Send {LCtrl}
; return

LCtrl::
SetCapsLockState, Off
return

RAlt & LCtrl::SetCapsLockState, % GetKeyState("CapsLock", "T") ? "Off" : "On"