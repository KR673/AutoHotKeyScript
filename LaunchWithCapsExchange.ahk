; #NoEnv

; Input会导致按窗口部分快捷键失效, 暂时不清楚什么原因
; SendMode Input  
; SetWorkingDir %A_ScriptDir%  
; SetTitleMatchMode, 2 ;设置标题匹配模式模糊

; Recommended for new scripts due to its superior speed and reliability.
; Ensures a consistent starting directory.
; replace CapsLock to LeftEnter; CapsLock = Alt CapsLock

; 交换ctrl与capsLock, 并自定义Lctrl的功能
; 
; #Include HotkeyOfVimModel.ahk
#Include ExchangeCtrlAndCapsLock.ahk
#Include CustomInputMethodSwitchKey.ahk
#Include CustomLCtrl.ahk
#Include HotkeyOfVimModel.ahk
#Include TypeMethodSwitch.ahk