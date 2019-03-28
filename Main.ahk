#NoEnv
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  
; Ensures a consistent starting directory.
;replace CapsLock to LeftEnter; CapsLock = Alt CapsLock
SetTitleMatchMode, 2 ;设置标题匹配模式模糊

#Include HotString.ahk
#Include HotKey_MoveCursor.ahk
#Include Hotkey.ahk