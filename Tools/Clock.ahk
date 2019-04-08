; ---------------------------------------
;               计时器
; ---------------------------------------


Gui, New
Gui,2: Add, Edit, x62 y9 w130 h20 vTime
gui,2: font, s8 , Verdana ;为之后的文本设置样式
Gui,2: Add, Text , x12 y9 w50 h20 , 时间(S)
Gui,2: Add, Button, x202 y9 w60 h20 default, OK
Gui,2: Show, x202 y162 h42 w276 Center, 
Return

2GuiClose: ; 窗口时间, 当窗口2关闭时执行接下来的代码
2ButtonOK:
Gui,2: Submit  ; 保存用户的输入到每个控件的关联变量中.
isTime := Time * 1000 ;如果使用%包裹, 不管此变量 包含 什么内容都会被假定为另一个变量
Sleep, %isTime%
MsgBox, 时间到!
; Gui, New
; Gui, color, 000000, 000000
; gui, font, S100 W500 , Verdana ;为之后的文本设置样式
; Gui, Add, Text, x12 y9 w450 h200 Center CSilver , 时间到
; Gui, Add, Progress, x202 y9 w-50 h50 , 25
; Gui, Font, S50 CDefault, Verdana
; Gui, Font, S20, 
; Gui, Show, x366 y426 h220 w473,isTime 
; WinSet, Transparent, 200 ,isTime ;设置窗口SQLSELECT 的透明度
ExitApp
Return
