;; 强制 左shift 切换英文, 右shift切换中文

;; ~ 符号用于在按键被按下的同时也将其发送到活动窗口

;; 左shift + space
; ~LShift & Space::
;; ctrl + space
^Space::
SwitchIME(04090409) ; 英语(美国) 美式键盘
return

;; shift + space
; +Space:: 
~RShift & Space::
SwitchIME(00000804) ; 英语(美国) 美式键盘
return

;; 如果不写这个, shift 输出大写字母或符号会失效
; ~$LShift:: 
; return

; ~$LShift Up::
; SwitchIME(04090409) ; 英语(美国) 美式键盘
; return

; ~$RShift:: 
; return

; ~$RShift up::
; SwitchIME(00000804) ; 中文(中国) 简体中文-美式键盘
; return

SwitchIME(dwLayout){
    HKL:=DllCall("LoadKeyboardLayout", Str, dwLayout, UInt, 1)
    ControlGetFocus,ctl,A
    SendMessage,0x50,0,HKL,%ctl%,A
}