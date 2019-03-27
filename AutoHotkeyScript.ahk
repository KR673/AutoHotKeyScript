#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;replace CapsLock to LeftEnter; CapsLock = Alt CapsLock
SetTitleMatchMode, 2 ;设置标题匹配模式模糊
; ::
; WinActivate, 登陆
; {
; 	click 953, 602
; 	return
; }
; else return

; $CapsLock::Enter
*Capslock::SetCapsLockState, Off
RAlt & Capslock::SetCapsLockState, % GetKeyState("CapsLock", "T") ? "Off" : "On"

!u::Send ^c !{tab} ^v

;RAlt & S::run C:\Users\Administrator\Desktop\AutoHotkey Script.ahk

#IfWinActive, AutoHotkeyScript.ahk
~<^S::
IfWinActive, AutoHotkeyScript.ahk
{
	run AutoHotkeyScript.ahk
	sleep 260
 	send {Enter}
	Return
}
else return
#IfWinActive

; $CapsLock::
; KeyWait, CapsLock
; If (A_PriorKey="CapsLock")
; SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off":"On"
; Return

#If, GetKeyState("CapsLock", "P")
i::Up
j::Left
k::Down
l::Right
[::Home
]::End
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

Hotkey, CapsLock, Off

$>!I::
send {Home}
send +{End}
send ^R
Sleep 150
send {Right}
return

$>!W::
IfWinActive, ahk_class WeWorkWindow
{
    WinMinimize, ahk_class WeWorkWindow
	return
}
else {
	WinActivate, ahk_class WeWorkWindow
	return
}

$>!D::
IfWinActive, ahk_class SunAwtFrame
{
    WinMinimize, ahk_class SunAwtFrame
	return
}
else {
	WinActivate, ahk_class SunAwtFrame
	return
}

$>!N::
IfWinActive, ahk_class TNavicatMainForm
{
    WinMinimize, ahk_class TNavicatMainForm
	return
}
else {
	WinActivate, ahk_class TNavicatMainForm
	return
}

$>!C::
IfWinActive, Google Chrome
{
    WinMinimize, Google Chrome
	return
}
else {
	WinActivate, Google Chrome
	return
}

$>!F::
IfWinActive, ahk_class MozillaWindowClass
{
    WinMinimize, ahk_class MozillaWindowClass
	return
}
else {
	WinActivate, ahk_class MozillaWindowClass
	return
}

$>!V::
IfWinActive, Visual Studio Code
{
    WinMinimize, Visual Studio Code
	return
}
else {
	WinActivate, Visual Studio Code
	return
}

$>!Z::
IfWinActive, ahk_class WizNoteMainFrame
{
    WinMinimize, ahk_class WizNoteMainFrame
	return
}
else {
	WinActivate, ahk_class WizNoteMainFrame
	return
}

; ----------------------------
; 热字符串
; ----------------------------

:*:cjc::create java class
:*:138p::13838530526
:*:jpw::123456
::jjj::1232423423
:*:zq::  123123 {tab} 123456 {tab} 123456
 