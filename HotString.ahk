﻿; ----------------------------
; 热字符串
; ----------------------------

;o 替换的时候忽略终止符

; :*:13p::13838530526
; :*:jpw::123456
:*:zq;::张崎_13989{tab}123456{tab}123456 ;大括号可以触发按键
:*:wxb;::王晓波_14944{tab}123456@{tab}123456 ;大括号可以触发按键
; :o*:ru;::http://localhost:8003/#/home
; :o*:crm;::http://localhost:8001/#/home

; :o:xy::这个问题您需要联系技术服务服务
; :o:hc::清空浏览器缓存试一下 快捷键 : ctrl {+} shift {+} delete ; 大括号可以提示autohotkey发送原始字符
; :o:xz::您可以联系您部门的行政处理
; :o:ilv::好的, 已经给您联系技术处理了, 请您稍等
; :o:dq::单Q
; :o:jt::您把页面截个全图吧, 我看一下
; :o:rdl::您重新登陆一下试试
; :o:zil::好的, 已经在处理呢, 您稍等
; :o:kq::不用客气
; :o:wg::这您需要联系网管处理


:*:<>;::<>{Left 1}
:*:();::(){Left 1}
:*:"";::""{Left 1}
:*:'';::''{Left 1}
:*:````;::````{Left 1} ;需要使用多个`进行转义
:*:[];::[]{Left 1}
:*:{};::{}{Left 1}
:*:rq;:j:
    SendInput %A_YYYY%年%A_MM%月%A_DD%日
Return