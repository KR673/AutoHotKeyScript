#NoEnv
; Recommended for new scripts due to its superior speed and reliability.
SendMode Input  
SetWorkingDir %A_ScriptDir%  
; Ensures a consistent starting directory.
; replace CapsLock to LeftEnter; CapsLock = Alt CapsLock
SetTitleMatchMode, 2 ;设置标题匹配模式模糊

; 交换ctrl与capsLock, 并自定义Lctrl的功能

#Include HotkeyOfVimModel.ahk
#Include CustomInputMethodSwitchKey.ahk
#Include ExchangeCtrlAndCapsLock.ahk
#Include CustomLCtrl.ahk