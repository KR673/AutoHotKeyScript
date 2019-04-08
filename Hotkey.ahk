
;RAlt & S::run C:\Users\Administrator\Desktop\AutoHotkey Script.ahk

;在编辑页面, 保存时自动重启脚本
#IfWinActive, ahk_class Chrome_WidgetWin_1
~<^S::
IfWinActive, ahk_exe Code.exe
{
	run Main.ahk
	sleep 300
 	send {Enter}
	Return
}
else return
#IfWinActive

;navicate 执行单行sql
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

#IfWinActive, ahk_class SunAwtFrame
	#If, GetKeyState("CapsLock", "P")
		J & C::
		send ^+A
		sleep 100
		send create` `java` `class
		sleep 200
		send {Enter}
		return
		J & P::
		send ^+A
		sleep 100
		send create` `package
		sleep 200
		send {Enter}
		return
	#If
#IfWinActive

!+J::
	MouseClickDrag, Left, 1748, 13, 2900, 13 [, 10,R]
return

!+p::
FileRead, abc, *c C:\Users\Administrator\Desktop\新建文本文档 (4).txt
Send, %abc%.png
return

::hsql:: 
run, AutoSql.ahk, .\tools 
return

<^<!P:: run, Clock.ahk, .\tools 
