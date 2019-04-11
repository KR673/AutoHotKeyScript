; ----------------------------
; 常用sql
; ----------------------------

; 示例: 要求选项与参数的简单输入框:
Gui, New
;Gui, Add, Edit, vsqlSelect ym ; ym 选项开始一个新的控件列。
;多个窗口时, 需要在Gui 后边的参数是窗口编号, 用于GuiClose识别, 
Gui, color, 000000, 000000
Gui, Add, Text, x12 y19 w50 h20 Cwhite, SQL: 
Gui, Add, Text, x12 y49 w50 h20 Cwhite, PARAM:
Gui, Add, Edit, x62 y19 w130 h20 Cwhite vsqlSelect ;放在第一位可以默认有一个光标, v[参数名]可以声明一个变量
Gui, Add, Edit, x62 y49 w130 h20 Cwhite vparam
Gui, Add, Button, x192 y19 w50 h50 default, OK ;ButtonOK（如果存在）会在此按钮被按下时运行。 default会默认选中按钮
Gui, Show, x493 y410 h151 w257, SQLSELECT
WinSet, Transparent, 200 ,SQLSELECT ;设置窗口SQLSELECT 的透明度
;Gui, Add, Progress, x170 y1030 w30 h0 , 25
Gui, Font, S8 Cwhite, Verdana
Gui, Font, S8 Cwhite, Verdana
Gui, Font, S8 Cwhite, Verdana
Gui, Add, ListBox, x12 y79 w230 h70 Cwhite, 1. Common 2. UserYuanGong ` 3. Crm_JiHui
Return ;自动运行段结束。在用户进行操作前脚本会一直保持空闲状态.

1GuiClose: ;前边的为窗口编号
ButtonOK:
Gui, Submit  ; 保存用户的输入到每个控件的关联变量中.
If sqlSelect = 1
    {
        SendInput , select * from CommonDict where TypeIndex in (select TableId from CommonDict where TypeName like '`%%param%`%')
    }
If sqlSelect = 2
    {
        SendInput, select * from UserYuanGong where DengLuZhangHao like '`%%param%`%' or xingming like '`%%param%`%'
    }
If sqlSelect = 3
    {
        SendInput, select * from Crm_JiHui where mobile = '%param%'
    }
ExitApp

Return