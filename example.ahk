﻿; 初始化

vim := class_vim()

; 运行Notepad作为示例
run,notepad.exe "%A_ScriptFullPath%"
WinWait,ahk_class Notepad
msgbox 按h或者gg查看帮助
; 加载Action
{
; 加载名为<down>的Action,备注为向下移动,默认为GoSub对与Action名一致的Label，即<down>
vim.SetAction("<down>","向下移动")
vim.SetAction("<up>","向上移动")
vim.SetAction("<left>","向左移动")
vim.SetAction("<right>","向右移动")
vim.SetAction("<InsertMode>","插入模式")
vim.SetAction("<NormalMode>","普通模式")
; 可以设置Action热键执行的是函数、命令行或者发送文本、执行的最大次数
act := vim.SetAction("帮助","这是帮助内容")
; 设置Action为执行函数"msgbox_help"
act.SetFunction("msgbox_help")
/*
; 设置运行的次数为3次
act.SetMaxTimes(3)

; 设置Action为运行命令行 cmd.exe
act.setCmdLine("cmd.exe")

; 设置Action为发送文本" this is vimd"
act.setHotString("this is vimd")
*/
}

class:="Notepad"
filepath:="Notepad.exe"
;filepath:="AAuto Quicker.exe" 

; 在VimD中，filepath会作为ahk_exe 的判断条件，class作为ahk_class的判断条件
; 但是filepath的优先级更高



; 设置Win
vim.SetWin("记事本",class,filepath)

; 切换到Inert模式，后续map的所有热键都是在Insert模式下
vim.SetMode("Insert","记事本")
; 映射热键
vim.map("<Esc>","<NormalMode>","记事本")

; 切换到Normal模式，后续map的所有热键都是在Noraml模式下
vim.SetMode("Normal","记事本")
; 映射热键
; <0>~<9>是内置的Label，可以看一下class_vim.ahk
vim.map("0","<0>","记事本")
vim.map("1","<1>","记事本")
vim.map("2","<2>","记事本")
vim.map("3","<3>","记事本")
vim.map("4","<4>","记事本")
vim.map("5","<5>","记事本")
vim.map("6","<6>","记事本")
vim.map("7","<7>","记事本")
vim.map("8","<8>","记事本")
vim.map("9","<9>","记事本")
vim.map("j","<Down>","记事本")
vim.map("k","<Up>","记事本")
vim.map("h","<left>","记事本")
vim.map("l","<right>","记事本")
; 组合键，按g，再按g
vim.map("gg","帮助","记事本")
vim.map("h","帮助","记事本")
vim.map("i","<InsertMode>","记事本")

; 注意，最后一次SetMode 为 "normal" 则当前为Noraml模式

return


; 以下为热键对应的功能区
; 切换为Insert 模式
<InsertMode>:
  vim.SetMode("Insert","记事本")
return
; 切换为Normal 模式
<NormalMode>:
  vim.SetMode("Normal","记事本")
return

<down>:
	send,{down}
return
<up>:
	send,{up}
return
<left>:
	send,{left}
return
<right>:
	send,{right}
return

msgbox_help()
{
v =
(
  按0~9是设置执行次数
  按j为向下
  按k为向上
  按h为向左
  按l为向右
  按i切换到Insert模式
  按Esc切换到Normal模式
  按h或者gg查看帮助
)
  msgbox % v
}


; class_vim必须放在最后
#include lib\class_vim.ahk
