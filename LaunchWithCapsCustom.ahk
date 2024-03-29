; #NoEnv
; SendMode Input  
; SetWorkingDir %A_ScriptDir%  
; SetTitleMatchMode, 2 ;设置标题匹配模式模糊

; Recommended for new scripts due to its superior speed and reliability.
; Ensures a consistent starting directory.
; replace CapsLock to LeftEnter; CapsLock = Alt CapsLock

; 取清capsLock原功能并添加新功能
#Include HotkeyOfVimModel.ahk
#Include CustomInputMethodSwitchKey.ahk
#Include CustomCapsLock.ahk
#Include TypeMethodSwitch.ahk