#NoEnv
; Recommended for new scripts due to its superior speed and reliability.
SendMode Input  
SetWorkingDir %A_ScriptDir%  
; Ensures a consistent starting directory.
; replace CapsLock to LeftEnter; CapsLock = Alt CapsLock
SetTitleMatchMode, 2 ;设置标题匹配模式模糊

; 取清capsLock原功能并添加新功能

#Include CustomInputMethodSwitchKey.ahk
#Include CustomCapsLock.ahk