; eclipse 中'ctrl + ['直接进入vim NORMAL模式
#IfWinActive, ahk_exe eclipse.exe
^[::
	send {Esc}
	send {Esc}
	send {Esc}
return
#IfWinActive

#IfWinActive, ahk_exe devenv.exe
^[::
	send {Esc}
	send {Esc}
	send {Esc}
return
#IfWinActive