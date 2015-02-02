﻿; TOTALCMD: {{{1
TOTALCMD:
	vim.SetPlugin("TOTALCOMMANDER","Array","0.2","TC管理器插件，前身是(VIATC)")
	TCPluginINI := A_ScriptDir "\plugins\TOTALCMD\totalcmd.ini"
	TCExe:=GetTCINI("TCexe")
	TCCtrl:=GetTCCtrl()
	SetTCINI("TCDir",TCDir:=GetTCDir())
	SetTCINI("TCExe",TCExe)
	TCINI:=RegExMatch(TCDir,"\\$") ? TCDir "wincmd.ini" : TCDir "\wincmd.ini"
	hittext:=GetHitText("ASDFJKLGHQCMPI")
	GoSub,LoadTCActions
	GoSub,TCCOMMAND
	vim.SetMode("normal")
	vim.Map("<w-e>","<TC_Toggle>")
	vim.SetWin("TC","TTOTAL_CMD","TOTALCMD.exe")
	vim.SetTimeOut(800,"TC")
	vim.BeforeActionDo("TC_BeforeActionDo","TC")
	vim.AfterActionDo("TC_AfterActionDo","TC")
	;====设置 normal 模式 ====
	vim.SetMode("normal","TC")
	vim.Map("0","<0>","TC")
	vim.Map("1","<1>","TC")
	vim.Map("2","<2>","TC")
	vim.Map("3","<3>","TC")
	vim.Map("4","<4>","TC")
	vim.Map("5","<5>","TC")
	vim.Map("6","<6>","TC")
	vim.Map("7","<7>","TC")
	vim.Map("8","<8>","TC")
	vim.Map("9","<9>","TC")
	vim.Map("j","<TC_Down>","TC")
	vim.Map("k","<TC_Up>","TC")
	vim.Map("h","<TC_left>","TC")
	vim.Map("l","<TC_right>","TC")
	vim.map("H","<cm_GotoPreviousDir>","TC")
	vim.map("L","<cm_GotoNextDir>","TC")
	vim.map("J","<TC_SelectDown>","TC")
	vim.map("K","<TC_SelectUp>","TC")
	vim.map("d","<cm_DirectoryHotlist>","TC")
	vim.map("D","<cm_OpenDesktop>","TC")
	vim.map("e","<cm_ContextMenu>","TC")
	vim.map("E","<cm_ExecuteDOS>","TC")
	vim.map("N","<cm_DirectoryHistory>","TC")
	vim.map("o","<cm_LeftOpenDrives>","TC")
	vim.map("O","<cm_RightOpenDrives>","TC")
	vim.map("q","<cm_SrcQuickview>","TC")
	vim.map("r","<cm_RenameOnly>","TC")
	vim.map("R","<cm_MultiRenameFiles>","TC")
	vim.map("x","<cm_Delete>","TC")
	vim.map("X","<TC_ForceDelete>","TC")
	vim.map("w","<cm_List>","TC")
	vim.map("y","<cm_CopyNamesToClip>","TC")
	vim.map("Y","<cm_CopyFullNamesToClip>","TC")
	vim.map("p","<cm_UnpackFiles>","TC")
	vim.map("P","<cm_packFiles>","TC")
	vim.map("t","<cm_OpenNewTab>","TC")
	vim.map("u","<TC_GoToParentEx>","TC")
	vim.map("U","<cm_GoToRoot>","TC")
	vim.map("T","<cm_OpenNewTabBg>","TC")
	vim.map("/","<cm_ShowQuickSearch>","TC")
	vim.map("?","<cm_SearchFor>","TC")
	vim.map("[","<cm_SelectCurrentName>","TC")
	vim.map("{","<cm_UnSelectCurrentName>","TC")
	vim.map("]","<cm_SelectCurrentExtension>","TC")
	vim.map("{","<cm_UnselectCurrentExtension>","TC")
	vim.map("\","<cm_ExchangeSelection>","TC")
	vim.map("|","<cm_ClearAll>","TC")
	vim.map("-","<cm_SwitchSeparateTree>","TC")
	vim.map("=","<cm_MatchSrc>","TC")
	vim.map(";","<cm_FocusCmdLine>","TC")
	vim.map("cc","<cm_Copy>","TC")
	vim.map("co","<cm_CopyOtherpanel>","TC")
	vim.map("cs","<cm_CopySamepanel>","TC")
	vim.map("cb","<cm_CopyToClipboard>","TC")
	vim.map("ct","<cm_CutToClipboard>","TC")
	vim.map("cv","<cm_PasteFromClipboard>","TC")
	;vim.map("G","<LastLine>","TC")
	;vim.map("gg","<GoToLine>","TC")
	;vim.map("g$","<LastLine>","TC")
	vim.map("ga","<cm_CloseAllTabs>","TC")
	vim.map("gn","<cm_SwitchToNextTab>","TC")
	vim.map("gp","<cm_SwitchToPreviousTab>","TC")
	vim.map("gc","<cm_CloseCurrentTab>","TC")
	vim.map("gb","<cm_OpenDirInNewTabOther>","TC")
	vim.map("ge","<cm_Exchange>","TC")
	vim.map("gw","<cm_ExchangeWithTabs>","TC")
	vim.map("g1","<cm_SrcActivateTab1>","TC")
	vim.map("g2","<cm_SrcActivateTab2>","TC")
	vim.map("g3","<cm_SrcActivateTab3>","TC")
	vim.map("g4","<cm_SrcActivateTab4>","TC")
	vim.map("g5","<cm_SrcActivateTab5>","TC")
	vim.map("g6","<cm_SrcActivateTab6>","TC")
	vim.map("g7","<cm_SrcActivateTab7>","TC")
	vim.map("g8","<cm_SrcActivateTab8>","TC")
	vim.map("g9","<cm_SrcActivateTab9>","TC")
	vim.map("sn","<cm_SrcByName>","TC")
	vim.map("se","<cm_SrcByExt>","TC")
	vim.map("ss","<cm_SrcBySize>","TC")
	vim.map("sd","<cm_SrcByDateTime>","TC")
	vim.map("sr","<cm_SrcNegOrder>","TC")
	vim.map("s1","<cm_SrcSortByCol1>","TC")
	vim.map("s2","<cm_SrcSortByCol2>","TC")
	vim.map("s3","<cm_SrcSortByCol3>","TC")
	vim.map("s4","<cm_SrcSortByCol4>","TC")
	vim.map("s5","<cm_SrcSortByCol5>","TC")
	vim.map("s6","<cm_SrcSortByCol6>","TC")
	vim.map("s7","<cm_SrcSortByCol7>","TC")
	vim.map("s8","<cm_SrcSortByCol8>","TC")
	vim.map("s9","<cm_SrcSortByCol9>","TC")
	vim.map("s0","<cm_SrcUnsorted>","TC")
	vim.map("v","<cm_SrcCustomViewMenu>","TC")
	vim.map("Vb","<cm_VisButtonbar>","TC")
	vim.map("Vd","<cm_VisDriveButtons>","TC")
	vim.map("Vo","<cm_VisTwoDriveButtons>","TC")
	vim.map("Vr","<cm_VisDriveCombo>","TC")
	vim.map("Vc","<cm_VisDriveCombo>","TC")
	vim.map("Vt","<cm_VisTabHeader>","TC")
	vim.map("Vs","<cm_VisStatusbar>","TC")
	vim.map("Vn","<cm_VisCmdLine>","TC")
	vim.map("Vf","<cm_VisKeyButtons>","TC")
	vim.map("Vw","<cm_VisDirTabs>","TC")
	vim.map("Ve","<cm_CommandBrowser>","TC")
	vim.map("zz","<cm_50Percent>","TC")
	;vim.map("zi","<WinMaxLeft>","TC")
	;vim.map("zo","<WinMaxRight>","TC")
	vim.map("zt","<TC_AlwayOnTop>","TC")
	vim.map("zn","<cm_Minimize>","TC")
	vim.map("zm","<cm_Maximize>","TC")
	vim.map("zr","<cm_Restore>","TC")
	vim.map("zv","<cm_VerticalPanels>","TC")

	;vim.map("g0","<TC_GotoLastTab>","TC")
	;vim.map("m","<TC_Mark>","TC")
	;vim.map("'","<TC_GotoMark>","TC")
	;vim.Map("g","<TC_right>","TC")
	vim.Map("n","<TC_HintHistory>","TC")
	vim.Map("i","<TC_Insert>","TC")
	vim.Map(":","<TC_CMD>","TC")
	vim.Map("<Esc>","<TC_Esc>","TC")
	;=========================

	;====设置 Insert 模式 ====
	vim.SetMode("insert","TC")
	vim.Map("<Esc>","<TC_Esc>","TC")
	;=========================

	;====设置 Edit 模式 ====
	vim.SetMode("CMD","TC")
	vim.Map("<Esc>","<TC_Esc>","TC")
	;=========================

	;====设置 Hint 模式 ====
	vim.SetMode("Hint","TC")
	vim.Map("<Esc>","<TC_Esc>","TC")
	;=========================

	;====设置 Search 模式 ====
	vim.SetMode("Search","TC")
	vim.Map("<Esc>","<TC_Esc>","TC")
	;=========================

	;====设置 History 模式 ====
	vim.SetMode("History","TC")
	Loop,26
	{
		;vim.Map(chr(64+A_Index),"<TC_HintHistory_Click>","TC")
		vim.Map(chr(96+A_Index),"<TC_HintHistory_Click>","TC")
	}
	;=========================

	; 设置初始化为 normal 模式
	vim.SetMode("normal","TC")
return

; LoadTCActions: {{{1
LoadTCActions:
	vim.SetAction("<TC_Down>","向下移动")
	vim.SetAction("<TC_up>","向上移动")
	vim.SetAction("<TC_left>","向左移动")
	vim.SetAction("<TC_right>","向右移动")
	vim.SetAction("<TC_SelectDown>","向下选择")
	vim.SetAction("<TC_SelectUp>","向上选择")
	vim.SetAction("<TC_ForceDelete>","强制删除")
	vim.SetAction("<TC_GoToParentEx>","返回上一级")
	vim.SetAction("<TC_AlwayOnTop>","置顶TC")

	vim.SetAction("<TC_Toggle>","激活TC")
	vim.SetAction("<TC_Esc>","切换为Normal模式，并发送Esc")
	vim.SetAction("<TC_Insert>","切换为Insert模式")
	vim.SetAction("<TC_CMD>","切换为CMD模式")
	vim.SetAction("<TC_Hint>","Hint模式")
	vim.SetAction("<TC_HintHistory>","Hint历史记录")
	vim.SetAction("<TC_azHistory>","az历史记录")
	vim.SetAction("<TC_HintHistory_Click>","az历史点击")
return
; TC_BeforeActionDo() {{{1
TC_BeforeActionDo()
{
	Global TCCtrl,TC_SendPos
	WinGet,MenuID,ID,AHK_CLASS #32768
	If MenuID And (TC_SendPos <> 572)
		return True
	ControlGetFocus,ctrl,AHK_CLASS TTOTAL_CMD
	TCListBox := TCCtrl["TCListBox"]
	Ifinstring,ctrl,%TCListBox%
		Return False
	Return True
}
; TC_AfterActionDo() {{{1
TC_AfterActionDo()
{
	TC_Dock_Init()
}
TC_Dock_Init()
{
	Global vim
	TC_Dock_Load()
	modeObj := vim.GetMode("TC")
	If RegExMatch(modeObj.name,"i)^CMD$")
	{
		GUI,TC_Dock:Default
		GUIControlGet,vis,Visible,Edit1
		If vis
			GUIControl,Focus,Edit1
		Else
			TC_Dock_EditUpdate()
	}
	Else
		TC_Dock_TextUpdate()
}
TC_DockGuiEscape:
	vim.SetMode("normal","TC")
	WinActivate,ahk_class TTOTAL_CMD
	TC_Dock_TextUpdate()
return
TC_Dock_Edit_Change:
	GUI,TC_Dock:Default
	GUIControlGet,string,,Edit1
	If not Strlen(string)
		GoSub,TC_DockGuiEscape
return
TC_Dock_Edit_OK:
	TC_Dock_Edit_OK()
return
; TC_Dock_Edit_OK() {{{2
TC_Dock_Edit_OK()
{
	GUI,TC_Dock:Default
	GUIControlGet,string,,Edit1
	If RegExMatch(string,"i)^:[e|(ex)|(exi)|(exit)][\s]*")
		WinClose,ahk_Class TTOTAL_CMD
	Else If RegExMatch(string,"i)^:set") {
		SetString := SubStr(String,5)
		If RegExMatch(SetString,"i)\s*sb\s*=\s*([01])\s*$",m) {
			If not m1 
				TC_Dock_Destroy()
			SetTCINI("sb",m1)
		}
		Else If RegExMatch(SetString,"i)\s*sb_[l|(le)|(len)]\s*=\s*(\d+)\s*$",m) {
			If m1 < 100
				m1 := 100
			SetTCINI("sb_len",m1)
			TC_Dock_Destroy()
			TC_Dock_Load()
			TC_Dock_TextUpdate()
		}
		Else If RegExMatch(SetString,"i)\s*sb_[b|(bc)|(bco)|(bcol)|(bcolo)|(bcolor)]\s*=\s*([\dA-Fa-f]+)\s*$",m) {
			SetTCINI("sb_bcolor",m1)
			TC_Dock_Destroy()
			TC_Dock_Load()
			TC_Dock_TextUpdate()
		}
		Else If RegExMatch(SetString,"i)\s*sb_[t|(tc)|(tco)|(tcol)|(tcolo)|(tcolor)]\s*=\s*([\dA-Fa-f]+)\s*$",m) {
			SetTCINI("sb_tcolor",m1)
			TC_Dock_Destroy()
			TC_Dock_Load()
			TC_Dock_TextUpdate()
		}
		Else If RegExMatch(SetString,"i)\s*sb_[s|(st)|(str)|(stri)|(strin)|(string)]\s*=(.*)$",m)
		{
			SetTCINI("sb_String",m1)
			TC_Dock_Destroy()
			TC_Dock_Load()
			TC_Dock_TextUpdate()
		}
	}
	Else If RegExMatch(string,"i)^:(h|(he)|(hel)|(help))$") {
		msgbox help
	}
	Else
		Error := True
	GoSub,TC_DockGuiEscape
	If Error {
		GUI,TC_Dock:Default
		GUIControl,,Static1,!!! Command Error
	}
}
; TC_Dock_TextUpdate() {{{2
TC_Dock_TextUpdate()
{
	winObj := vim.GetWin("TC")
	modeObj := vim.GetMode("TC")
	name := modeObj.name
	StringUpper, name , name , T
	string := (s:=GetTCINI("sb_String")) ? s : "-- <mode> --  <Count><KeyTemp>"
	string := RegExReplace(string,"i)<mode>",name)
	string := RegExReplace(string,"i)<KeyTemp>",winObj.KeyTemp)
	count := winObj.Count ? winObj.Count : ""
	string := RegExReplace(string,"i)<Count>",Count)
	;name := "-- " name " --     "  winObj.KeyTemp
	GUI,TC_Dock:Default
	GUIControl,-g,Edit1
	GUIControl,Hide,Edit1
	GUIControl,Show,Static1
	GUIControl,,Static1,%string%
}
; TC_Dock_EditUpdate() {{{2
TC_Dock_EditUpdate()
{
	GUI,TC_Dock:Default
	GUI,TC_Dock:+hwndhTC_Dock
	GUIControl,Hide,Static1
	GUIControl,Show,Edit1
	GUIControl,,Edit1
	GUIControl,Focus,Edit1
	ControlSend,Edit1,:,ahk_id %hTC_Dock%
	GUIControl,+gTC_Dock_Edit_Change,Edit1
}
; TC_Dock_Destroy() {{{2
TC_Dock_Destroy(){
	Global Dock_HostID
	GUI,TC_Dock:Destroy
	Dock_HostID := 0
}
; TC_Dock_Load() {{{2
TC_Dock_Load(){
	Global Dock_HostID
	s:=strlen(s:=GetTCINI("sb")) ? s : True
	If Not Dock_HostID And s
	{
		Dock_HostID := WinExist("ahk_class TTOTAL_CMD")
		length := (l:=GetTCINI("sb_len")) ? l : 240
		bcolor := (b:=GetTCINI("sb_bcolor")) ? b : 454545
		tcolor := (c:=GetTCINI("sb_tcolor")) ? c : "FFFFFF"
		font   := (f:=GetTCINI("sb_font"))   ? f : 12
		hight  := (h:=GetTCINI("sb_hight")) ? h : 24
		hight2 := hight+4
		length2 := length+10
		m := ceil((hight-font)/2)-2
		GUI,TC_Dock:Destroy
		GUI,TC_Dock:+LastFound -Caption +ToolWindow +Border
		GUI,TC_Dock:color,%bcolor%,%bcolor%
		GUI,TC_Dock:font,s%font% c%tcolor%
		GUI,TC_Dock:Add, Text, y%m% x5 w%length%  h%hight%
		GUI,TC_Dock:Add, Edit, y-2 x-2 w%length2% h%hight2% hidden -Multi 
		GUI,TC_Dock:Add, Button, Default w0 h0 WantReturn gTC_Dock_Edit_OK
		GUI,TC_Dock:Show
		Dock(WinExist(), "x(0,0,10) y(1,-1,-10) w(0," length ") h(0," hight ") t", 0)
		Winactivate,AHK_CLASS TTOTAL_CMD
	}
}


GetTCDir()
{
	Global TCPluginINI
	If FileExist(TCDir:=GetTCINI("TCDir"))
		return TCDir
	IfWinExist ahk_class TTOTAL_CMD
		WinGet,TCPath,ProcessPath,ahk_class TTOTAL_CMD
	If FileExist(TCPath)
	{
		Splitpath,TCPath,,TCDir
		return TCDir
	}
	RegRead,TCDir,HKEY_CURRENT_USER,Software\Ghisler\Total Commander,InstallDir
	If FileExist(TCDir)
		return TCDir
}
GetTCINI(k)
{
	Global TCPluginINI
	INIRead,r,%TCPluginINI%,Config,%k%,%A_Space%
	return r
}
SetTCINI(k,v)
{
	Global TCPluginINI
	INIWrite,%v%,%TCPluginINI%,config,%k%
}
FindTCDir()
{
	Global TCDir
	GUI,FindTCDir:Destroy
	GUI,FindTCDir:Add,Edit,w300 ReadOnly,%TCDir%
	GUI,FindTCDir:show
}
GetTCCtrl()
{
	ctrl := []
	If A_Is64bitOS
	{
		ctrl["TCListBox"] := "LCLListBox"
		ctrl["TCEdit"]    := "Edit2"
		ctrl["TInEdit"]   := "TInEdit1"
		ctrl["TCPanel1"]  := "Window1"
		ctrl["TCPanel2"]  := "Window11"
	}
	Else
	{
		ctrl["TCListBox"] := "TMyListBox"
		ctrl["TCEdit"]    := "Edit1"
		ctrl["TInEdit"]   := "TInEdit1"
		ctrl["TCPanel1"]  := "TPanel1"
		ctrl["TCPanel2"]  := "TMyPanel8"
	}
	return ctrl
}
; TC Actions {{{1
; <TC_Normal>: {{{2
<TC_Normal>:
	vim.Clear("TC")
	vim.SetMode("normal","TC")
return
; <TC_Insert>: {{{2
<TC_Insert>:
	vim.Clear("TC")
	vim.SetMode("insert","TC")
return
; <TC_Search>: {{{2
<TC_Search>:
	vim.Clear("TC")
	vim.SetMode("search","TC")
return
; <TC_CMD>: {{{2
<TC_CMD>:
	vim.Clear("TC")
	vim.SetMode("CMD","TC")
return
; <TC_Esc>: {{{2
<TC_Esc>:
	Send,{Esc}
	vim.Clear("TC")
	vim.SetMode("normal","TC")
return
; <TC_Down>: {{{2
<TC_Down>:
	send,{down}
return
; <TC_Up>: {{{2
<TC_Up>:
	send,{up}
return
; <TC_left>: {{{2
<TC_left>:
	send,{left}
return
; <TC_right>: {{{2
<TC_right>:
	send,{right}
return
; <TC_SelectDown>: {{{2
<TC_SelectDown>:
	send,+{Down}
return
; <TC_SelectUp>: {{{2
<TC_SelectUp>:
	send,+{Up}
return
; <TC_ForceDelete>: {{{2
<TC_ForceDelete>:
	send,+{Delete}
return
; <TC_GoToParentEx> {{{2
; 返回到上层文件夹，可返回到我的电脑
<TC_GoToParentEx>:
	IsRootDir()
	GoSub,<cm_GoToParent>
return
IsRootDir()
{
	ClipSaved := ClipboardAll
	clipboard :=
	GoSub,<cm_CopySrcPathToClip>
	ClipWait,1
	Path := Clipboard
	Clipboard := ClipSaved
	If RegExMatch(Path,"^.:\\$")
	{
		GoSub,<cm_OpenDrives>
		Path := "i)" . RegExReplace(Path,"\\","")
		ControlGetFocus,focus_control,AHK_CLASS TTOTAL_CMD
		ControlGet,outvar,list,,%focus_control%,AHK_CLASS TTOTAL_CMD
		Loop,Parse,Outvar,`n
		{
			If Not A_LoopField
				Break
			If RegExMatch(A_LoopField,Path)
			{
				Focus := A_Index - 1
				Break
			}
		}
		PostMessage, 0x19E, %Focus%, 1, %focus_control%, AHK_CLASS TTOTAL_CMD
	}
}
; <TC_AlwayOnTop>: {{{2
<TC_AlwayOnTop>:
	AlwayOnTop()
Return
AlwayOnTop()
{
	WinGet,ExStyle,ExStyle,ahk_class TTOTAL_CMD
	If (ExStyle & 0x8)
   		WinSet,AlwaysOnTop,off,ahk_class TTOTAL_CMD
	else
   		WinSet,AlwaysOnTop,on,ahk_class TTOTAL_CMD
}

; <TC_Toggle>: {{{2
<TC_Toggle>:
	TC_Toggle()
return
TC_Toggle()
{
	Global TCDir,TCExe,Dock_HostID
	TCPath:= RegExMatch(TCDir,"\\$") ? TCDir TCExe : TCDir "\" TCExe
	IfWinExist,AHK_CLASS TTOTAL_CMD
	{
		WinGet,AC,MinMax,AHK_CLASS TTOTAL_CMD
		If Ac = -1
			Winactivate,AHK_ClASS TTOTAL_CMD
		Else
		Ifwinnotactive,AHK_CLASS TTOTAL_CMD
			Winactivate,AHK_CLASS TTOTAL_CMD
		Else
			Winminimize,AHK_CLASS TTOTAL_CMD
	}
	Else
	{
		Dock_HostID := 0
		Run,%TCPath%
		Loop,4
		{
			IfWinNotActive,AHK_CLASS TTOTAL_CMD
				WinActivate,AHK_CLASS TTOTAL_CMD
			Else
				Break
			Sleep,500
		}
	}
	TC_Dock_Init()
}

; <TC_Hint>: {{{2
<TC_Hint>:
	vim.SetMode("Hint","TC")
	msgbox Hint
return
; <TC_HintHistory>: {{{2
<TC_HintHistory>:
	TC_HintHistory()
	vim.SetMode("History","TC")
return
TC_HintHistory()
{
	Global HitText,HitText_a2z,HitLocation,hHistory ;,graphics,brush,pen,pToken,hbm,hdc,obm,hHistory
	Global hithwnd,hdc,Width,Height
	GoSub,<cm_DirectoryHistory>
	WinWait, ahk_class #32768
	hHistory:=WinExist("ahk_class #32768")
	SendMessage, 0x1E1, 0, 0      ; MN_GETHMENU
	SetTimer,Check_TCHistory,200
	hMenu := ErrorLevel
	GoSub,TC_Hint_On
	HitLocation:=[]
	HitText[0]:=0
	HitText_a2z := 0
	Loop,% GetMenuItemCount(hMenu)
	{
		pos := GetMenuItemRect(hMenu,A_Index-1)
		DrawHit_a2z(pos.x,pos.y+2)
	}
	UpdateLayeredWindow(hithwnd, hdc, 0, 0, Width, Height)
}
Check_TCHistory:
	If not WinExist("ahk_id " hHistory)
	{
		Settimer,Check_TCHistory,off
		vim.SetMode("normal","TC")
		GoSub,TC_Hint_Off
		TC_AfterActionDo()
	}
return
<TC_HintHistory_Click>:
	TC_HintHistory_Click()
return
TC_HintHistory_Click()
{
	Global HitLocation,vim
	pos := HitLocation[A_ThisHotkey]
	x := pos["x"]+5
	y := pos["y"]
	SendClick(x,y)
	vim.SetMode("normal","TC")
	GoSub,TC_Hint_Off
}
SendClick(x,y)
{
	CoordMode,Mouse,Screen
	d := A_MouseDelay
	MouseGetPos,bx,by
	SetMouseDelay,-1
	Click,%x%,%y%
	Click,%bx%,%by%,0
	SetMouseDelay,%d%
}
TC_Hint_On:
{
	If !pToken := Gdip_StartUp()
		return
	Width := A_ScreenWidth , Height := A_ScreenHeight
	Gui,hitwin:  -Caption +E0x80000 +LastFound +OwnDialogs +Owner +AlwaysOnTop
	Gui,hitwin:  Show, NA
	hithwnd := WinExist()
	hbm := CreateDIBSection(Width, Height)
	hdc := CreateCompatibleDC()
	obm := SelectObject(hdc, hbm)
	graphics := Gdip_GraphicsFromHDC(hdc)
	Gdip_SetSmoothingMode(graphics, 4)
	brush := Gdip_BrushCreateSolid(0xFFf8f640)
	pen := Gdip_CreatePen(0xFFd05080,1)
	return
}

TC_Hint_Off:
{
	If pToken
	{
		Gdip_DeletePen(pPen)
		Gdip_DeleteBrush(b)
		SelectObject(hdc, obm)
		DeleteObject(hbm)
		DeleteDC(hdc)
		Gdip_DeleteGraphics(G)
		Gdip_Shutdown(pToken)
		GUI,hitwin:Destroy
	}
	return
}

GetAccLocation(AccObj, Child=0, byref x="", byref y="", byref w="", byref h="")
{
	AccObj.accLocation(ComObj(0x4003,&x:=0), ComObj(0x4003,&y:=0), ComObj(0x4003,&w:=0), ComObj(0x4003,&h:=0), Child)
	return	"x" (x:=NumGet(x,0,"int")) "  "
	.	"y" (y:=NumGet(y,0,"int")) "  "
	.	"w" (w:=NumGet(w,0,"int")) "  "
	.	"h" (h:=NumGet(h,0,"int"))
}
DrawHit(x,y)
{
	global HitText,HitLocation,graphics,brush,pen
	idx:=HitText[0]:=HitText[0]+1
	n:=	strlen(t:=HitText[idx]) > 1 ? 28 : 18
	HitLocation[t]:={"x":x,"y":y}
	Gdip_FillRoundedRectangle(graphics, brush, x, y, n, 16, 3)
	Gdip_DrawRoundedRectangle(graphics, pen, x, y, n, 16,3)
	Gdip_TextToGraphics(graphics,t,"x" x+3 " y" y+2 " h16 w" n)
	return
}
DrawHit_a2z(x,y)
{
	global graphics,brush,pen,HitText_a2z,HitLocation
	n := 18
	HitText_a2z++
	HitLocation[Chr(64+HitText_a2z)]:={"x":x,"y":y}
	Gdip_FillRoundedRectangle(graphics, brush, x, y, n, 16, 3)
	Gdip_DrawRoundedRectangle(graphics, pen, x, y, n, 16,3)
	Gdip_TextToGraphics(graphics,Chr(64+HitText_a2z),"x" x+3 " y" y+2 " h16 w" n)
}
GetHitText(string)
{
	text := []
	l:=strlen(string)-8
	idx:=m:=n:=1
	Loop,8
	{
		c := SubStr(string,idx,1)
		StringUpper,c,c
		text[idx] := c  
		idx++
	}
	String:=SubStr(string,9)
	s:=SubStr(string,1,1)
	Loop,999
	{
		c := SubStr(string,n,1)
		StringUpper,c,c
		text[idx] := s c  
		idx++
		n++
		if n >= %l%
		{
			s:= subStr(string,m,1)
			StringUpper,s,s
			m++
			n:= 1
		}
	}
	return text
}

GetMenuItemCount(hMenu){
	return DllCall("GetMenuItemCount", "Uint", hMenu)
}
GetMenuItemID(hmenu,idx){
	; 当前菜单为子菜单时，返回-1
	return DllCall("GetMenuItemID", "Uint", hMenu, "Uint", idx)
}
GetMenuItemRect(hMenu,idx){
	VarSetCapacity(rect,16)
	DllCall("GetMenuItemRect", "Uint" , 0,  "Uint", hMenu, "int", idx, "ptr", &rect)
	r := []
	r.x := NumGet(rect,0,true)
	r.y := NumGet(rect,4,true) 
	r.w := NumGet(rect,8,true) 
	r.h := NumGet(rect,12,true) 
	return r
}
GetMenuString(hMenu,idx){
	nSize++ := DllCall("GetMenuString", "Uint", hMenu, "int", idx, "Uint", 0, "int", 0, "Uint", 0x400)
	VarSetCapacity(sString, nSize)
	DllCall("GetMenuString", "Uint", hMenu, "int", idx, "str", sString, "int", nSize, "Uint", 0x400)	;MF_BYPOSITION
	return sString
}
GetSubMenu(hMenu,idx){
	return DllCall("GetSubMenu", "Uint", hMenu, "int", idx)
}
GetMenu(hMenu)
{
	Loop, % GetMenuItemCount(hMenu)
	{
		idx := A_Index - 1
		idn := GetMenuItemID(hMenu,idx) 
		sString := GetMenuString(hMenu,idx)
		rect := GetMenuItemRect(hmenu,idx)
		If !sString
		   sString := "---------------------------------------"
		sContents .= idx . " : " . idn . A_Tab . A_Tab . sString . " rect : (x:" rect.x ")(y:" rect.y ")(w:" rect.w ")(h:" rect.h . ")`n" 
		If (idn = -1) && (hSubMenu := GetSubMenu(hMenu,idx))
		   sContents .= GetMenu(hSubMenu)
	}
	Return	sContents
}

; Tool Functions {{{1
; LeftRight(){{{2
LeftRight(){
	ControlGetFocus,TLB,ahk_class TTOTAL_CMD
	ControlGetPos,x2,y2,wn,,%TLB%,ahk_class TTOTAL_CMD
	ControlGetPos,x1,y1,,,%TCPanel1%,AHK_CLASS TTOTAL_CMD
	If x1 > %y1%
	{
		; 左右窗口
		If x1 > %x2%
			return True
		Else
			return False
	}
	Else
	{
		; 上下窗口
		If y1 > %y2%
			return True
		Else
			return False
	}
}

; TC自带命令 {{{1
;==================================================
;=======使用VIM下的VOom 插件可以很方便的查看=======
;==================================================
TCCOMMAND:
  vim.SetAction("<cm_SrcComments>","来源窗口: 显示文件备注")
  vim.SetAction("<cm_SrcShort>","来源窗口: 列表")
  vim.SetAction("<cm_SrcLong>","来源窗口: 详细信息")
  vim.SetAction("<cm_SrcTree>","来源窗口: 文件夹树")
  vim.SetAction("<cm_SrcQuickview>","来源窗口: 快速查看")
  vim.SetAction("<cm_VerticalPanels>","纵向/横向排列")
  vim.SetAction("<cm_SrcQuickInternalOnly>","来源窗口: 快速查看(不用插件)")
  vim.SetAction("<cm_SrcHideQuickview>","来源窗口: 关闭快速查看窗口")
  vim.SetAction("<cm_SrcExecs>","来源窗口: 可执行文件")
  vim.SetAction("<cm_SrcAllFiles>","来源窗口: 所有文件")
  vim.SetAction("<cm_SrcUserSpec>","来源窗口: 上次选中的文件")
  vim.SetAction("<cm_SrcUserDef>","来源窗口: 自定义类型")
  vim.SetAction("<cm_SrcByName>","来源窗口: 按文件名排序")
  vim.SetAction("<cm_SrcByExt>","来源窗口: 按扩展名排序")
  vim.SetAction("<cm_SrcBySize>","来源窗口: 按大小排序")
  vim.SetAction("<cm_SrcByDateTime>","来源窗口: 按日期时间排序")
  vim.SetAction("<cm_SrcUnsorted>","来源窗口: 不排序")
  vim.SetAction("<cm_SrcNegOrder>","来源窗口: 反向排序")
  vim.SetAction("<cm_SrcOpenDrives>","来源窗口: 打开驱动器列表")
  vim.SetAction("<cm_SrcThumbs>","来源窗口: 缩略图")
  vim.SetAction("<cm_SrcCustomViewMenu>","来源窗口: 自定义视图菜单")
  vim.SetAction("<cm_SrcPathFocus>","来源窗口: 焦点置于路径上")
  vim.SetAction("<cm_LeftComments>","左窗口: 显示文件备注")
  vim.SetAction("<cm_LeftShort>","左窗口: 列表")
  vim.SetAction("<cm_LeftLong>","左窗口: 详细信息")
  vim.SetAction("<cm_LeftTree>","左窗口: 文件夹树")
  vim.SetAction("<cm_LeftQuickview>","左窗口: 快速查看")
  vim.SetAction("<cm_LeftQuickInternalOnly>","左窗口: 快速查看(不用插件)")
  vim.SetAction("<cm_LeftHideQuickview>","左窗口: 关闭快速查看窗口")
  vim.SetAction("<cm_LeftExecs>","左窗口: 可执行文件")
  vim.SetAction("<cm_LeftAllFiles>","	左窗口: 所有文件")
  vim.SetAction("<cm_LeftUserSpec>","左窗口: 上次选中的文件")
  vim.SetAction("<cm_LeftUserDef>","左窗口: 自定义类型")
  vim.SetAction("<cm_LeftByName>","左窗口: 按文件名排序")
  vim.SetAction("<cm_LeftByExt>","左窗口: 按扩展名排序")
  vim.SetAction("<cm_LeftBySize>","左窗口: 按大小排序")
  vim.SetAction("<cm_LeftByDateTime>","左窗口: 按日期时间排序")
  vim.SetAction("<cm_LeftUnsorted>","左窗口: 不排序")
  vim.SetAction("<cm_LeftNegOrder>","左窗口: 反向排序")
  vim.SetAction("<cm_LeftOpenDrives>","左窗口: 打开驱动器列表")
  vim.SetAction("<cm_LeftPathFocus>","左窗口: 焦点置于路径上")
  vim.SetAction("<cm_LeftDirBranch>","左窗口: 展开所有文件夹")
  vim.SetAction("<cm_LeftDirBranchSel>","左窗口: 只展开选中的文件夹")
  vim.SetAction("<cm_LeftThumbs>","窗口: 缩略图")
  vim.SetAction("<cm_LeftCustomViewMenu>","窗口: 自定义视图菜单")
  vim.SetAction("<cm_RightComments>","右窗口: 显示文件备注")
  vim.SetAction("<cm_RightShort>","右窗口: 列表")
  vim.SetAction("<cm_RightLong>","详细信息")
  vim.SetAction("<cm_RightTre>","右窗口: 文件夹树")
  vim.SetAction("<cm_RightQuickvie>","右窗口: 快速查看")
  vim.SetAction("<cm_RightQuickInternalOnl>","右窗口: 快速查看(不用插件)")
  vim.SetAction("<cm_RightHideQuickvie>","右窗口: 关闭快速查看窗口")
  vim.SetAction("<cm_RightExec>","右窗口: 可执行文件")
  vim.SetAction("<cm_RightAllFile>","右窗口: 所有文件")
  vim.SetAction("<cm_RightUserSpe>","右窗口: 上次选中的文件")
  vim.SetAction("<cm_RightUserDe>","右窗口: 自定义类型")
  vim.SetAction("<cm_RightByNam>","右窗口: 按文件名排序")
  vim.SetAction("<cm_RightByEx>","右窗口: 按扩展名排序")
  vim.SetAction("<cm_RightBySiz>","右窗口: 按大小排序")
  vim.SetAction("<cm_RightByDateTim>","右窗口: 按日期时间排序")
  vim.SetAction("<cm_RightUnsorte>","右窗口: 不排序")
  vim.SetAction("<cm_RightNegOrde>","右窗口: 反向排序")
  vim.SetAction("<cm_RightOpenDrives>","右窗口: 打开驱动器列表")
  vim.SetAction("<cm_RightPathFocu>","右窗口: 焦点置于路径上")
  vim.SetAction("<cm_RightDirBranch>","右窗口: 展开所有文件夹")
  vim.SetAction("<cm_RightDirBranchSel>","右窗口: 只展开选中的文件夹")
  vim.SetAction("<cm_RightThumb>","右窗口: 缩略图")
  vim.SetAction("<cm_RightCustomViewMen>","右窗口: 自定义视图菜单")
  vim.SetAction("<cm_List>","查看(用查看程序)")
  vim.SetAction("<cm_ListInternalOnly>","查看(用查看程序, 但不用插件/多媒体)")
  vim.SetAction("<cm_Edit>","编辑")
  vim.SetAction("<cm_Copy>","复制")
  vim.SetAction("<cm_CopySamepanel>","复制到当前窗口")
  vim.SetAction("<cm_CopyOtherpanel>","复制到另一窗口")
  vim.SetAction("<cm_RenMov>","重命名/移动")
  vim.SetAction("<cm_MkDir>","新建文件夹")
  vim.SetAction("<cm_Delete>","删除")
  vim.SetAction("<cm_TestArchive>","测试压缩包")
  vim.SetAction("<cm_PackFiles>","压缩文件")
  vim.SetAction("<cm_UnpackFiles>","解压文件")
  vim.SetAction("<cm_RenameOnly>","重命名(Shift+F6)")
  vim.SetAction("<cm_RenameSingleFile>","重命名当前文件")
  vim.SetAction("<cm_MoveOnly>","移动(F6)")
  vim.SetAction("<cm_Properties>","显示属性")
  vim.SetAction("<cm_CreateShortcut>","创建快捷方式")
  vim.SetAction("<cm_Return>","模仿按 ENTER 键")
  vim.SetAction("<cm_OpenAsUser>","以其他用户身份运行光标处的程序")
  vim.SetAction("<cm_Split>","分割文件")
  vim.SetAction("<cm_Combine>","合并文件")
  vim.SetAction("<cm_Encode>","编码文件(MIME/UUE/XXE 格式)")
  vim.SetAction("<cm_Decode>","解码文件(MIME/UUE/XXE/BinHex 格式)")
  vim.SetAction("<cm_CRCcreate>","创建校验文件")
  vim.SetAction("<cm_CRCcheck>","验证校验和")
  vim.SetAction("<cm_SetAttrib>","更改属性")
  vim.SetAction("<cm_Config>","配置: 布局")
  vim.SetAction("<cm_DisplayConfig>","配置: 显示")
  vim.SetAction("<cm_IconConfig>","配置: 图标")
  vim.SetAction("<cm_FontConfig>","配置: 字体")
  vim.SetAction("<cm_ColorConfig>","配置: 颜色")
  vim.SetAction("<cm_ConfTabChange>","配置: 制表符")
  vim.SetAction("<cm_DirTabsConfig>","配置: 文件夹标签")
  vim.SetAction("<cm_CustomColumnConfig>","配置: 自定义列")
  vim.SetAction("<cm_CustomColumnDlg>","更改当前自定义列")
  vim.SetAction("<cm_LanguageConfig>","配置: 语言")
  vim.SetAction("<cm_Config2>","配置: 操作方式")
  vim.SetAction("<cm_EditConfig>","配置: 编辑/查看")
  vim.SetAction("<cm_CopyConfig>","配置: 复制/删除")
  vim.SetAction("<cm_RefreshConfig>","配置: 刷新")
  vim.SetAction("<cm_QuickSearchConfig>","配置: 快速搜索")
  vim.SetAction("<cm_FtpConfig>","配置: FTP")
  vim.SetAction("<cm_PluginsConfig>","配置: 插件")
  vim.SetAction("<cm_ThumbnailsConfig>","配置: 缩略图")
  vim.SetAction("<cm_LogConfig>","配置: 日志文件")
  vim.SetAction("<cm_IgnoreConfig>","配置: 隐藏文件")
  vim.SetAction("<cm_PackerConfig>","配置: 压缩程序")
  vim.SetAction("<cm_ZipPackerConfig>","配置: ZIP 压缩程序")
  vim.SetAction("<cm_Confirmation>","配置: 其他/确认")
  vim.SetAction("<cm_ConfigSavePos>","保存位置")
  vim.SetAction("<cm_ButtonConfig>","更改工具栏")
  vim.SetAction("<cm_ConfigSaveSettings>","保存设置")
  vim.SetAction("<cm_ConfigChangeIniFiles>","直接修改配置文件")
  vim.SetAction("<cm_ConfigSaveDirHistory>","保存文件夹历史记录")
  vim.SetAction("<cm_ChangeStartMenu>","更改开始菜单")
  vim.SetAction("<cm_NetConnect>","映射网络驱动器")
  vim.SetAction("<cm_NetDisconnect>","断开网络驱动器")
  vim.SetAction("<cm_NetShareDir>","共享当前文件夹")
  vim.SetAction("<cm_NetUnshareDir>","取消文件夹共享")
  vim.SetAction("<cm_AdministerServer>","显示系统共享文件夹")
  vim.SetAction("<cm_ShowFileUser>","显示本地文件的远程用户")
  vim.SetAction("<cm_GetFileSpace>","计算占用空间")
  vim.SetAction("<cm_VolumeId>","设置卷标")
  vim.SetAction("<cm_VersionInfo>","版本信息")
  vim.SetAction("<cm_ExecuteDOS>","打开命令提示符窗口")
  vim.SetAction("<cm_CompareDirs>","比较文件夹")
  vim.SetAction("<cm_CompareDirsWithSubdirs>","比较文件夹(同时标出另一窗口没有的子文件夹)")
  vim.SetAction("<cm_ContextMenu>","显示快捷菜单")
  vim.SetAction("<cm_ContextMenuInternal>","显示快捷菜单(内部关联)")
  vim.SetAction("<cm_ContextMenuInternalCursor>","显示光标处文件的内部关联快捷菜单")
  vim.SetAction("<cm_ShowRemoteMenu>","媒体中心遥控器播放/暂停键快捷菜单")
  vim.SetAction("<cm_SyncChangeDir>","两边窗口同步更改文件夹")
  vim.SetAction("<cm_EditComment>","编辑文件备注")
  vim.SetAction("<cm_FocusLeft>","焦点置于左窗口")
  vim.SetAction("<cm_FocusRight>","焦点置于右窗口")
  vim.SetAction("<cm_FocusCmdLine>","焦点置于命令行")
  vim.SetAction("<cm_FocusButtonBar>","焦点置于工具栏")
  vim.SetAction("<cm_CountDirContent>","计算所有文件夹占用的空间")
  vim.SetAction("<cm_UnloadPlugins>","卸载所有插件")
  vim.SetAction("<cm_DirMatch>","标出新文件, 隐藏相同者")
  vim.SetAction("<cm_Exchange>","交换左右窗口")
  vim.SetAction("<cm_MatchSrc>","目标 = 来源")
  vim.SetAction("<cm_ReloadSelThumbs>","刷新选中文件的缩略图")
  vim.SetAction("<cm_DirectCableConnect>","直接电缆连接")
  vim.SetAction("<cm_NTinstallDriver>","加载 NT 并口驱动程序")
  vim.SetAction("<cm_NTremoveDriver>","卸载 NT 并口驱动程序")
  vim.SetAction("<cm_PrintDir>","打印文件列表")
  vim.SetAction("<cm_PrintDirSub>","打印文件列表(含子文件夹)")
  vim.SetAction("<cm_PrintFile>","打印文件内容")
  vim.SetAction("<cm_SpreadSelection>","选择一组文件")
  vim.SetAction("<cm_SelectBoth>","选择一组: 文件和文件夹")
  vim.SetAction("<cm_SelectFiles>","选择一组: 仅文件")
  vim.SetAction("<cm_SelectFolders>","选择一组: 仅文件夹")
  vim.SetAction("<cm_ShrinkSelection>","不选一组文件")
  vim.SetAction("<cm_ClearFiles>","不选一组: 仅文件")
  vim.SetAction("<cm_ClearFolders>","不选一组: 仅文件夹")
  vim.SetAction("<cm_ClearSelCfg>","不选一组: 文件和/或文件夹(视配置而定)")
  vim.SetAction("<cm_SelectAll>","全部选择: 文件和/或文件夹(视配置而定)")
  vim.SetAction("<cm_SelectAllBoth>","全部选择: 文件和文件夹")
  vim.SetAction("<cm_SelectAllFiles>","全部选择: 仅文件")
  vim.SetAction("<cm_SelectAllFolders>","全部选择: 仅文件夹")
  vim.SetAction("<cm_ClearAll>","全部取消: 文件和文件夹")
  vim.SetAction("<cm_ClearAllFiles>","全部取消: 仅文件")
  vim.SetAction("<cm_ClearAllFolders>","全部取消: 仅文件夹")
  vim.SetAction("<cm_ClearAllCfg>","全部取消: 文件和/或文件夹(视配置而定)")
  vim.SetAction("<cm_ExchangeSelection>","反向选择")
  vim.SetAction("<cm_ExchangeSelBoth>","反向选择: 文件和文件夹")
  vim.SetAction("<cm_ExchangeSelFiles>","反向选择: 仅文件")
  vim.SetAction("<cm_ExchangeSelFolders>","反向选择: 仅文件夹")
  vim.SetAction("<cm_SelectCurrentExtension>","选择扩展名相同的文件")
  vim.SetAction("<cm_UnselectCurrentExtension>","不选扩展名相同的文件")
  vim.SetAction("<cm_SelectCurrentName>","选择文件名相同的文件")
  vim.SetAction("<cm_UnselectCurrentName>","不选文件名相同的文件")
  vim.SetAction("<cm_SelectCurrentNameExt>","选择文件名和扩展名相同的文件")
  vim.SetAction("<cm_UnselectCurrentNameExt>","不选文件名和扩展名相同的文件")
  vim.SetAction("<cm_SelectCurrentPath>","选择同一路径下的文件(展开文件夹+搜索文件)")
  vim.SetAction("<cm_UnselectCurrentPath>","不选同一路径下的文件(展开文件夹+搜索文件)")
  vim.SetAction("<cm_RestoreSelection>","恢复选择列表")
  vim.SetAction("<cm_SaveSelection>","保存选择列表")
  vim.SetAction("<cm_SaveSelectionToFile>","导出选择列表")
  vim.SetAction("<cm_SaveSelectionToFileA>","导出选择列表(ANSI)")
  vim.SetAction("<cm_SaveSelectionToFileW>","导出选择列表(Unicode)")
  vim.SetAction("<cm_SaveDetailsToFile>","导出详细信息")
  vim.SetAction("<cm_SaveDetailsToFileA>","导出详细信息(ANSI)")
  vim.SetAction("<cm_SaveDetailsToFileW>","导出详细信息(Unicode)")
  vim.SetAction("<cm_LoadSelectionFromFile>","导入选择列表(从文件)")
  vim.SetAction("<cm_LoadSelectionFromClip>","导入选择列表(从剪贴板)")
  vim.SetAction("<cm_EditPermissionInfo>","设置权限(NTFS)")
  vim.SetAction("<cm_EditAuditInfo>","审核文件(NTFS)")
  vim.SetAction("<cm_EditOwnerInfo>","获取所有权(NTFS)")
  vim.SetAction("<cm_CutToClipboard>","剪切选中的文件到剪贴板")
  vim.SetAction("<cm_CopyToClipboard>","复制选中的文件到剪贴板")
  vim.SetAction("<cm_PasteFromClipboard>","从剪贴板粘贴到当前文件夹")
  vim.SetAction("<cm_CopyNamesToClip>","复制文件名")
  vim.SetAction("<cm_CopyFullNamesToClip>","复制文件名及完整路径")
  vim.SetAction("<cm_CopyNetNamesToClip>","复制文件名及网络路径")
  vim.SetAction("<cm_CopySrcPathToClip>","复制来源路径")
  vim.SetAction("<cm_CopyTrgPathToClip>","复制目标路径")
  vim.SetAction("<cm_CopyFileDetailsToClip>","复制文件详细信息")
  vim.SetAction("<cm_CopyFpFileDetailsToClip>","复制文件详细信息及完整路径")
  vim.SetAction("<cm_CopyNetFileDetailsToClip>","复制文件详细信息及网络路径")
  vim.SetAction("<cm_FtpConnect>","FTP 连接")
  vim.SetAction("<cm_FtpNew>","新建 FTP 连接")
  vim.SetAction("<cm_FtpDisconnect>","断开 FTP 连接")
  vim.SetAction("<cm_FtpHiddenFiles>","显示隐藏文件")
  vim.SetAction("<cm_FtpAbort>","中止当前 FTP 命令")
  vim.SetAction("<cm_FtpResumeDownload>","续传")
  vim.SetAction("<cm_FtpSelectTransferMode>","选择传输模式")
  vim.SetAction("<cm_FtpAddToList>","添加到下载列表")
  vim.SetAction("<cm_FtpDownloadList>","按列表下载")
  vim.SetAction("<cm_GotoPreviousDir>","后退")
  vim.SetAction("<cm_GotoNextDir>","前进")
  vim.SetAction("<cm_DirectoryHistory>","文件夹历史记录")
  vim.SetAction("<cm_GotoPreviousLocalDir>","后退(非 FTP)")
  vim.SetAction("<cm_GotoNextLocalDir>","前进(非 FTP)")
  vim.SetAction("<cm_DirectoryHotlist>","常用文件夹")
  vim.SetAction("<cm_GoToRoot>","转到根文件夹")
  vim.SetAction("<cm_GoToParent>","转到上层文件夹")
  vim.SetAction("<cm_GoToDir>","打开光标处的文件夹或压缩包")
  vim.SetAction("<cm_OpenDesktop>","桌面")
  vim.SetAction("<cm_OpenDrives>","我的电脑")
  vim.SetAction("<cm_OpenControls>","控制面板")
  vim.SetAction("<cm_OpenFonts>","字体")
  vim.SetAction("<cm_OpenNetwork>","网上邻居")
  vim.SetAction("<cm_OpenPrinters>","打印机")
  vim.SetAction("<cm_OpenRecycled>","回收站")
  vim.SetAction("<cm_CDtree>","更改文件夹")
  vim.SetAction("<cm_TransferLeft>","在左窗口打开光标处的文件夹或压缩包")
  vim.SetAction("<cm_TransferRight>","在右窗口打开光标处的文件夹或压缩包")
  vim.SetAction("<cm_EditPath>","编辑来源窗口的路径")
  vim.SetAction("<cm_GoToFirstFile>","光标移到列表中的第一个文件")
  vim.SetAction("<cm_GotoNextDrive>","转到下一个驱动器")
  vim.SetAction("<cm_GotoPreviousDrive>","转到上一个驱动器")
  vim.SetAction("<cm_GotoNextSelected>","转到下一个选中的文件")
  vim.SetAction("<cm_GotoPrevSelected>","转到上一个选中的文件")
  vim.SetAction("<cm_GotoDriveA>","转到驱动器 A")
  vim.SetAction("<cm_GotoDriveC>","转到驱动器 C")
  vim.SetAction("<cm_GotoDriveD>","转到驱动器 D")
  vim.SetAction("<cm_GotoDriveE>","转到驱动器 E")
  vim.SetAction("<cm_GotoDriveF>","可自定义其他驱动器")
  vim.SetAction("<cm_GotoDriveZ>","最多 26 个")
  vim.SetAction("<cm_HelpIndex>","帮助索引")
  vim.SetAction("<cm_Keyboard>","快捷键列表")
  vim.SetAction("<cm_Register>","注册信息")
  vim.SetAction("<cm_VisitHomepage>","访问 Totalcmd 网站")
  vim.SetAction("<cm_About>","关于 Total Commander")
  vim.SetAction("<cm_Exit>","退出 Total Commander")
  vim.SetAction("<cm_Minimize>","最小化 Total Commander")
  vim.SetAction("<cm_Maximize>","最大化 Total Commander")
  vim.SetAction("<cm_Restore>","恢复正常大小")
  vim.SetAction("<cm_ClearCmdLine>","清除命令行")
  vim.SetAction("<cm_NextCommand>","下一条命令")
  vim.SetAction("<cm_PrevCommand>","上一条命令")
  vim.SetAction("<cm_AddPathToCmdline>","将路径复制到命令行")
  vim.SetAction("<cm_MultiRenameFiles>","批量重命名")
  vim.SetAction("<cm_SysInfo>","系统信息")
  vim.SetAction("<cm_OpenTransferManager>","后台传输管理器")
  vim.SetAction("<cm_SearchFor>","搜索文件")
  vim.SetAction("<cm_FileSync>","同步文件夹")
  vim.SetAction("<cm_Associate>","文件关联")
  vim.SetAction("<cm_InternalAssociate>","定义内部关联")
  vim.SetAction("<cm_CompareFilesByContent>","比较文件内容")
  vim.SetAction("<cm_IntCompareFilesByContent>","使用内部比较程序")
  vim.SetAction("<cm_CommandBrowser>","浏览内部命令")
  vim.SetAction("<cm_VisButtonbar>","显示/隐藏: 工具栏")
  vim.SetAction("<cm_VisDriveButtons>","显示/隐藏: 驱动器按钮")
  vim.SetAction("<cm_VisTwoDriveButtons>","显示/隐藏: 两个驱动器按钮栏")
  vim.SetAction("<cm_VisFlatDriveButtons>","切换: 平坦/立体驱动器按钮")
  vim.SetAction("<cm_VisFlatInterface>","切换: 平坦/立体用户界面")
  vim.SetAction("<cm_VisDriveCombo>","显示/隐藏: 驱动器列表")
  vim.SetAction("<cm_VisCurDir>","显示/隐藏: 当前文件夹")
  vim.SetAction("<cm_VisBreadCrumbs>","显示/隐藏: 路径导航栏")
  vim.SetAction("<cm_VisTabHeader>","显示/隐藏: 排序制表符")
  vim.SetAction("<cm_VisStatusbar>","显示/隐藏: 状态栏")
  vim.SetAction("<cm_VisCmdLine>","显示/隐藏: 命令行")
  vim.SetAction("<cm_VisKeyButtons>","显示/隐藏: 功能键按钮")
  vim.SetAction("<cm_ShowHint>","显示文件提示")
  vim.SetAction("<cm_ShowQuickSearch>","显示快速搜索窗口")
  vim.SetAction("<cm_SwitchLongNames>","开启/关闭: 长文件名显示")
  vim.SetAction("<cm_RereadSource>","刷新来源窗口")
  vim.SetAction("<cm_ShowOnlySelected>","仅显示选中的文件")
  vim.SetAction("<cm_SwitchHidSys>","开启/关闭: 隐藏或系统文件显示")
  vim.SetAction("<cm_Switch83Names>","开启/关闭: 8.3 式文件名小写显示")
  vim.SetAction("<cm_SwitchDirSort>","开启/关闭: 文件夹按名称排序")
  vim.SetAction("<cm_DirBranch>","展开所有文件夹")
  vim.SetAction("<cm_DirBranchSel>","只展开选中的文件夹")
  vim.SetAction("<cm_50Percent>","窗口分隔栏位于 50%")
  vim.SetAction("<cm_100Percent>","窗口分隔栏位于 100% TC 8.0+")
  vim.SetAction("<cm_VisDirTabs>","显示/隐藏: 文件夹标签")
  vim.SetAction("<cm_VisXPThemeBackground>","显示/隐藏: XP 主题背景")
  vim.SetAction("<cm_SwitchOverlayIcons>","开启/关闭: 叠置图标显示")
  vim.SetAction("<cm_VisHistHotButtons>","显示/隐藏: 文件夹历史记录和常用文件夹按钮")
  vim.SetAction("<cm_SwitchWatchDirs>","启用/禁用: 文件夹自动刷新")
  vim.SetAction("<cm_SwitchIgnoreList>","启用/禁用: 自定义隐藏文件")
  vim.SetAction("<cm_SwitchX64Redirection>","开启/关闭: 32 位 system32 目录重定向(64 位 Windows)")
  vim.SetAction("<cm_SeparateTreeOff>","关闭独立文件夹树面板")
  vim.SetAction("<cm_SeparateTree1>","一个独立文件夹树面板")
  vim.SetAction("<cm_SeparateTree2>","两个独立文件夹树面板")
  vim.SetAction("<cm_SwitchSeparateTree>","切换独立文件夹树面板状态")
  vim.SetAction("<cm_ToggleSeparateTree1>","开启/关闭: 一个独立文件夹树面板")
  vim.SetAction("<cm_ToggleSeparateTree2>","开启/关闭: 两个独立文件夹树面板")
  vim.SetAction("<cm_UserMenu1>","用户菜单 1")
  vim.SetAction("<cm_UserMenu2>","用户菜单 2")
  vim.SetAction("<cm_UserMenu3>","用户菜单 3")
  vim.SetAction("<cm_UserMenu4>","用户菜单 4")
  vim.SetAction("<cm_UserMenu5>","用户菜单 5")
  vim.SetAction("<cm_UserMenu6>","用户菜单 6")
  vim.SetAction("<cm_UserMenu7>","用户菜单 7")
  vim.SetAction("<cm_UserMenu8>","用户菜单 8")
  vim.SetAction("<cm_UserMenu9>","用户菜单 9")
  vim.SetAction("<cm_UserMenu10>","可定义其他用户菜单")
  vim.SetAction("<cm_OpenNewTab>","新建标签")
  vim.SetAction("<cm_OpenNewTabBg>","新建标签(在后台)")
  vim.SetAction("<cm_OpenDirInNewTab>","新建标签(并打开光标处的文件夹)")
  vim.SetAction("<cm_OpenDirInNewTabOther>","新建标签(在另一窗口打开文件夹)")
  vim.SetAction("<cm_SwitchToNextTab>","下一个标签(Ctrl+Tab)")
  vim.SetAction("<cm_SwitchToPreviousTab>","上一个标签(Ctrl+Shift+Tab)")
  vim.SetAction("<cm_CloseCurrentTab>","关闭当前标签")
  vim.SetAction("<cm_CloseAllTabs>","关闭所有标签")
  vim.SetAction("<cm_DirTabsShowMenu>","显示标签菜单")
  vim.SetAction("<cm_ToggleLockCurrentTab>","锁定/解锁当前标签")
  vim.SetAction("<cm_ToggleLockDcaCurrentTab>","锁定/解锁当前标签(可更改文件夹)")
  vim.SetAction("<cm_ExchangeWithTabs>","交换左右窗口及其标签")
  vim.SetAction("<cm_GoToLockedDir>","转到锁定标签的根文件夹")
  vim.SetAction("<cm_SrcActivateTab1>","来源窗口: 激活标签 1")
  vim.SetAction("<cm_SrcActivateTab2>","来源窗口: 激活标签 2")
  vim.SetAction("<cm_SrcActivateTab3>","来源窗口: 激活标签 3")
  vim.SetAction("<cm_SrcActivateTab4>","来源窗口: 激活标签 4")
  vim.SetAction("<cm_SrcActivateTab5>","来源窗口: 激活标签 5")
  vim.SetAction("<cm_SrcActivateTab6>","来源窗口: 激活标签 6")
  vim.SetAction("<cm_SrcActivateTab7>","来源窗口: 激活标签 7")
  vim.SetAction("<cm_SrcActivateTab8>","来源窗口: 激活标签 8")
  vim.SetAction("<cm_SrcActivateTab9>","来源窗口: 激活标签 9")
  vim.SetAction("<cm_SrcActivateTab10>","来源窗口: 激活标签 10")
  vim.SetAction("<cm_TrgActivateTab1>","目标窗口: 激活标签 1")
  vim.SetAction("<cm_TrgActivateTab2>","目标窗口: 激活标签 2")
  vim.SetAction("<cm_TrgActivateTab3>","目标窗口: 激活标签 3")
  vim.SetAction("<cm_TrgActivateTab4>","目标窗口: 激活标签 4")
  vim.SetAction("<cm_TrgActivateTab5>","目标窗口: 激活标签 5")
  vim.SetAction("<cm_TrgActivateTab6>","目标窗口: 激活标签 6")
  vim.SetAction("<cm_TrgActivateTab7>","目标窗口: 激活标签 7")
  vim.SetAction("<cm_TrgActivateTab8>","目标窗口: 激活标签 8")
  vim.SetAction("<cm_TrgActivateTab9>","目标窗口: 激活标签 9")
  vim.SetAction("<cm_TrgActivateTab10>","目标窗口: 激活标签 10")
  vim.SetAction("<cm_LeftActivateTab1>","左窗口: 激活标签 1")
  vim.SetAction("<cm_LeftActivateTab2>","左窗口: 激活标签 2")
  vim.SetAction("<cm_LeftActivateTab3>","左窗口: 激活标签 3")
  vim.SetAction("<cm_LeftActivateTab4>","左窗口: 激活标签 4")
  vim.SetAction("<cm_LeftActivateTab5>","左窗口: 激活标签 5")
  vim.SetAction("<cm_LeftActivateTab6>","左窗口: 激活标签 6")
  vim.SetAction("<cm_LeftActivateTab7>","左窗口: 激活标签 7")
  vim.SetAction("<cm_LeftActivateTab8>","左窗口: 激活标签 8")
  vim.SetAction("<cm_LeftActivateTab9>","左窗口: 激活标签 9")
  vim.SetAction("<cm_LeftActivateTab10>","左窗口: 激活标签 10")
  vim.SetAction("<cm_RightActivateTab1>","右窗口: 激活标签 1")
  vim.SetAction("<cm_RightActivateTab2>","右窗口: 激活标签 2")
  vim.SetAction("<cm_RightActivateTab3>","右窗口: 激活标签 3")
  vim.SetAction("<cm_RightActivateTab4>","右窗口: 激活标签 4")
  vim.SetAction("<cm_RightActivateTab5>","右窗口: 激活标签 5")
  vim.SetAction("<cm_RightActivateTab6>","右窗口: 激活标签 6")
  vim.SetAction("<cm_RightActivateTab7>","右窗口: 激活标签 7")
  vim.SetAction("<cm_RightActivateTab8>","右窗口: 激活标签 8")
  vim.SetAction("<cm_RightActivateTab9>","右窗口: 激活标签 9")
  vim.SetAction("<cm_RightActivateTab10>","右窗口: 激活标签 10")
  vim.SetAction("<cm_SrcSortByCol1>","来源窗口: 按第 1 列排序")
  vim.SetAction("<cm_SrcSortByCol2>","来源窗口: 按第 2 列排序")
  vim.SetAction("<cm_SrcSortByCol3>","来源窗口: 按第 3 列排序")
  vim.SetAction("<cm_SrcSortByCol4>","来源窗口: 按第 4 列排序")
  vim.SetAction("<cm_SrcSortByCol5>","来源窗口: 按第 5 列排序")
  vim.SetAction("<cm_SrcSortByCol6>","来源窗口: 按第 6 列排序")
  vim.SetAction("<cm_SrcSortByCol7>","来源窗口: 按第 7 列排序")
  vim.SetAction("<cm_SrcSortByCol8>","来源窗口: 按第 8 列排序")
  vim.SetAction("<cm_SrcSortByCol9>","来源窗口: 按第 9 列排序")
  vim.SetAction("<cm_SrcSortByCol10>","来源窗口: 按第 10 列排序")
  vim.SetAction("<cm_TrgSortByCol1>","目标窗口: 按第 1 列排序")
  vim.SetAction("<cm_TrgSortByCol2>","目标窗口: 按第 2 列排序")
  vim.SetAction("<cm_TrgSortByCol3>","目标窗口: 按第 3 列排序")
  vim.SetAction("<cm_TrgSortByCol4>","目标窗口: 按第 4 列排序")
  vim.SetAction("<cm_TrgSortByCol5>","目标窗口: 按第 5 列排序")
  vim.SetAction("<cm_TrgSortByCol6>","目标窗口: 按第 6 列排序")
  vim.SetAction("<cm_TrgSortByCol7>","目标窗口: 按第 7 列排序")
  vim.SetAction("<cm_TrgSortByCol8>","目标窗口: 按第 8 列排序")
  vim.SetAction("<cm_TrgSortByCol9>","目标窗口: 按第 9 列排序")
  vim.SetAction("<cm_TrgSortByCol10>","目标窗口: 按第 10 列排序")
  vim.SetAction("<cm_LeftSortByCol1>","左窗口: 按第 1 列排序")
  vim.SetAction("<cm_LeftSortByCol2>","左窗口: 按第 2 列排序")
  vim.SetAction("<cm_LeftSortByCol3>","左窗口: 按第 3 列排序")
  vim.SetAction("<cm_LeftSortByCol4>","左窗口: 按第 4 列排序")
  vim.SetAction("<cm_LeftSortByCol5>","左窗口: 按第 5 列排序")
  vim.SetAction("<cm_LeftSortByCol6>","左窗口: 按第 6 列排序")
  vim.SetAction("<cm_LeftSortByCol7>","左窗口: 按第 7 列排序")
  vim.SetAction("<cm_LeftSortByCol8>","左窗口: 按第 8 列排序")
  vim.SetAction("<cm_LeftSortByCol9>","左窗口: 按第 9 列排序")
  vim.SetAction("<cm_LeftSortByCol10>","左窗口: 按第 10 列排序")
  vim.SetAction("<cm_RightSortByCol1>","右窗口: 按第 1 列排序")
  vim.SetAction("<cm_RightSortByCol2>","右窗口: 按第 2 列排序")
  vim.SetAction("<cm_RightSortByCol3>","右窗口: 按第 3 列排序")
  vim.SetAction("<cm_RightSortByCol4>","右窗口: 按第 4 列排序")
  vim.SetAction("<cm_RightSortByCol5>","右窗口: 按第 5 列排序")
  vim.SetAction("<cm_RightSortByCol6>","右窗口: 按第 6 列排序")
  vim.SetAction("<cm_RightSortByCol7>","右窗口: 按第 7 列排序")
  vim.SetAction("<cm_RightSortByCol8>","右窗口: 按第 8 列排序")
  vim.SetAction("<cm_RightSortByCol9>","右窗口: 按第 9 列排序")
  vim.SetAction("<cm_RightSortByCol10>","右窗口: 按第 10 列排序")
  vim.SetAction("<cm_SrcCustomView1>","来源窗口: 自定义列视图 1")
  vim.SetAction("<cm_SrcCustomView2>","来源窗口: 自定义列视图 2")
  vim.SetAction("<cm_SrcCustomView3>","来源窗口: 自定义列视图 3")
  vim.SetAction("<cm_SrcCustomView4>","来源窗口: 自定义列视图 4")
  vim.SetAction("<cm_SrcCustomView5>","来源窗口: 自定义列视图 5")
  vim.SetAction("<cm_SrcCustomView6>","来源窗口: 自定义列视图 6")
  vim.SetAction("<cm_SrcCustomView7>","来源窗口: 自定义列视图 7")
  vim.SetAction("<cm_SrcCustomView8>","来源窗口: 自定义列视图 8")
  vim.SetAction("<cm_SrcCustomView9>","来源窗口: 自定义列视图 9")
  vim.SetAction("<cm_SrcCustomView10>","来源窗口: 自定义列视图 10")
  vim.SetAction("<cm_LeftCustomView1>","左窗口: 自定义列视图 1")
  vim.SetAction("<cm_LeftCustomView2>","左窗口: 自定义列视图 2")
  vim.SetAction("<cm_LeftCustomView3>","左窗口: 自定义列视图 3")
  vim.SetAction("<cm_LeftCustomView4>","左窗口: 自定义列视图 4")
  vim.SetAction("<cm_LeftCustomView5>","左窗口: 自定义列视图 5")
  vim.SetAction("<cm_LeftCustomView6>","左窗口: 自定义列视图 6")
  vim.SetAction("<cm_LeftCustomView7>","左窗口: 自定义列视图 7")
  vim.SetAction("<cm_LeftCustomView8>","左窗口: 自定义列视图 8")
  vim.SetAction("<cm_LeftCustomView9>","左窗口: 自定义列视图 9")
  vim.SetAction("<cm_LeftCustomView10>","左窗口: 自定义列视图 10")
  vim.SetAction("<cm_RightCustomView1>","右窗口: 自定义列视图 1")
  vim.SetAction("<cm_RightCustomView2>","右窗口: 自定义列视图 2")
  vim.SetAction("<cm_RightCustomView3>","右窗口: 自定义列视图 3")
  vim.SetAction("<cm_RightCustomView4>","右窗口: 自定义列视图 4")
  vim.SetAction("<cm_RightCustomView5>","右窗口: 自定义列视图 5")
  vim.SetAction("<cm_RightCustomView6>","右窗口: 自定义列视图 6")
  vim.SetAction("<cm_RightCustomView7>","右窗口: 自定义列视图 7")
  vim.SetAction("<cm_RightCustomView8>","右窗口: 自定义列视图 8")
  vim.SetAction("<cm_RightCustomView9>","右窗口: 自定义列视图 9")
  vim.SetAction("<cm_RightCustomView10>","右窗口: 自定义列视图 10")
  vim.SetAction("<cm_SrcNextCustomView>","来源窗口: 下一个自定义视图")
  vim.SetAction("<cm_SrcPrevCustomView>","来源窗口: 上一个自定义视图")
  vim.SetAction("<cm_TrgNextCustomView>","目标窗口: 下一个自定义视图")
  vim.SetAction("<cm_TrgPrevCustomView>","目标窗口: 上一个自定义视图")
  vim.SetAction("<cm_LeftNextCustomView>","左窗口: 下一个自定义视图")
  vim.SetAction("<cm_LeftPrevCustomView>","左窗口: 上一个自定义视图")
  vim.SetAction("<cm_RightNextCustomView>","右窗口: 下一个自定义视图")
  vim.SetAction("<cm_RightPrevCustomView>","右窗口: 上一个自定义视图")
  vim.SetAction("<cm_LoadAllOnDemandFields>","所有文件都按需加载备注")
  vim.SetAction("<cm_LoadSelOnDemandFields>","仅选中的文件按需加载备注")
  vim.SetAction("<cm_ContentStopLoadFields>","停止后台加载备注")
return
SendPos(Number)
{
	Global TC_SendPos := Number
	PostMessage 1075, %Number%, 0, , AHK_CLASS TTOTAL_CMD
}
;<cm_SrcComments>: >>来源窗口: 显示文件备注{{{2
<cm_SrcComments>:
	SendPos(300)
Return
;<cm_SrcShort>: >>来源窗口: 列表{{{2
<cm_SrcShort>:
	SendPos(301)
Return
;<cm_SrcLong>: >>来源窗口: 详细信息{{{2
<cm_SrcLong>:
	SendPos(302)
Return
;<cm_SrcTree>: >>来源窗口: 文件夹树{{{2
<cm_SrcTree>:
	SendPos(303)
;<cm_SrcQuickview>: >>来源窗口: 快速查看{{{2
<cm_SrcQuickview>:
	SendPos(304)
Return
;<cm_VerticalPanels>: >>纵向排列{{{2
<cm_VerticalPanels>:
	SendPos(305)
Return
;<cm_SrcQuickInternalOnly>: >>来源窗口: 快速查看(不用插件){{{2
<cm_SrcQuickInternalOnly>:
	SendPos(306)
Return
;<cm_SrcHideQuickview>: >>来源窗口: 关闭快速查看窗口{{{2
<cm_SrcHideQuickview>:
	SendPos(307)
Return
;<cm_SrcExecs>: >>来源窗口: 可执行文件{{{2
<cm_SrcExecs>:
	SendPos(311)
Return
;<cm_SrcAllFiles>: >>来源窗口: 所有文件{{{2
<cm_SrcAllFiles>:
	SendPos(312)
Return
;<cm_SrcUserSpec>: >>来源窗口: 上次选中的文件{{{2
<cm_SrcUserSpec>:
	SendPos(313)
Return
;<cm_SrcUserDef>: >>来源窗口: 自定义类型{{{2
<cm_SrcUserDef>:
	SendPos(314)
Return
;<cm_SrcByName>: >>来源窗口: 按文件名排序{{{2
<cm_SrcByName>:
	SendPos(321)
Return
;<cm_SrcByExt>: >>来源窗口: 按扩展名排序{{{2
<cm_SrcByExt>:
	SendPos(322)
Return
;<cm_SrcBySize>: >>来源窗口: 按大小排序{{{2
<cm_SrcBySize>:
	SendPos(323)
Return
;<cm_SrcByDateTime>: >>来源窗口: 按日期时间排序{{{2
<cm_SrcByDateTime>:
	SendPos(324)
Return
;<cm_SrcUnsorted>: >>来源窗口: 不排序{{{2
<cm_SrcUnsorted>:
	SendPos(325)
Return
;<cm_SrcNegOrder>: >>来源窗口: 反向排序{{{2
<cm_SrcNegOrder>:
	SendPos(330)
Return
;<cm_SrcOpenDrives>: >>来源窗口: 打开驱动器列表{{{2
<cm_SrcOpenDrives>:
	SendPos(331)
Return
;<cm_SrcThumbs>: >>来源窗口: 缩略图{{{2
<cm_SrcThumbs>:
	SendPos(269	)
Return
;<cm_SrcCustomViewMenu>: >>来源窗口: 自定义视图菜单{{{2
<cm_SrcCustomViewMenu>:
	SendPos(270)
Return
;<cm_SrcPathFocus>: >>来源窗口: 焦点置于路径上{{{2
<cm_SrcPathFocus>:
	SendPos(332)
Return
;左窗口 =========================================
Return
;<cm_LeftComments>: >>左窗口: 显示文件备注{{{2
<cm_LeftComments>:
	SendPos(100)
Return
;<cm_LeftShort>: >>左窗口: 列表{{{2
<cm_LeftShort>:
	SendPos(101)
Return
;<cm_LeftLong>: >>左窗口: 详细信息{{{2
<cm_LeftLong>:
	SendPos(102)
Return
;<cm_LeftTree>: >>左窗口: 文件夹树{{{2
<cm_LeftTree>:
	SendPos(103)
Return
;<cm_LeftQuickview>: >>左窗口: 快速查看{{{2
<cm_LeftQuickview>:
	SendPos(104)
Return
;<cm_LeftQuickInternalOnly>: >>左窗口: 快速查看(不用插件){{{2
<cm_LeftQuickInternalOnly>:
	SendPos(106)
Return
;<cm_LeftHideQuickview>: >>左窗口: 关闭快速查看窗口{{{2
<cm_LeftHideQuickview>:
	SendPos(107)
Return
;<cm_LeftExecs>: >>左窗口: 可执行文件{{{2
<cm_LeftExecs>:
	SendPos(111)
Return
;<cm_LeftAllFiles>: >>	左窗口: 所有文件{{{2
<cm_LeftAllFiles>:
	SendPos(112)
Return
;<cm_LeftUserSpec>: >>左窗口: 上次选中的文件{{{2
<cm_LeftUserSpec>:
	SendPos(113)
Return
;<cm_LeftUserDef>: >>左窗口: 自定义类型{{{2
<cm_LeftUserDef>:
	SendPos(114)
Return
;<cm_LeftByName>: >>左窗口: 按文件名排序{{{2
<cm_LeftByName>:
	SendPos(121)
Return
;<cm_LeftByExt>: >>左窗口: 按扩展名排序{{{2
<cm_LeftByExt>:
	SendPos(122)
Return
;<cm_LeftBySize>: >>左窗口: 按大小排序{{{2
<cm_LeftBySize>:
	SendPos(123)
Return
;<cm_LeftByDateTime>: >>左窗口: 按日期时间排序{{{2
<cm_LeftByDateTime>:
	SendPos(124)
Return
;<cm_LeftUnsorted>: >>左窗口: 不排序{{{2
<cm_LeftUnsorted>:
	SendPos(125)
Return
;<cm_LeftNegOrder>: >>左窗口: 反向排序{{{2
<cm_LeftNegOrder>:
	SendPos(130)
Return
;<cm_LeftOpenDrives>: >>左窗口: 打开驱动器列表{{{2
<cm_LeftOpenDrives>:
	SendPos(131)
Return
;<cm_LeftPathFocus>: >>左窗口: 焦点置于路径上{{{2
<cm_LeftPathFocus>:
	SendPos(132)
Return
;<cm_LeftDirBranch>: >>左窗口: 展开所有文件夹{{{2
<cm_LeftDirBranch>:
	SendPos(203)
Return
;<cm_LeftDirBranchSel>: >>	左窗口: 只展开选中的文件夹{{{2
<cm_LeftDirBranchSel>:
	SendPos(204)
Return
;<cm_LeftThumbs>: >>窗口: 缩略图{{{2
<cm_LeftThumbs>:
	SendPos(69)
Return
;<cm_LeftCustomViewMenu>: >>	窗口: 自定义视图菜单{{{2
<cm_LeftCustomViewMenu>:
	SendPos(70)
Return
;右窗口 =========================================
Return
;<cm_RightComments>: >>右窗口: 显示文件备注{{{2
<cm_RightComments>:
	SendPos(200)
Return
;<cm_RightShort>: >>右窗口: 列表{{{2
<cm_RightShort>:
	SendPos(201)
Return
;<cm_RightLong>: >> 详细信息{{{2
<cm_RightLong>:
	SendPos(202)
Return
;<cm_RightTre>: >>	右窗口: 文件夹树{{{2
<cm_RightTre>:
		SendPos(203)
Return
;<cm_RightQuickvie>: >>	右窗口: 快速查看{{{2
<cm_RightQuickvie>:
		SendPos(204)
Return
;<cm_RightQuickInternalOnl>: >>	右窗口: 快速查看(不用插件){{{2
<cm_RightQuickInternalOnl>:
		SendPos(206)
Return
;<cm_RightHideQuickvie>: >>	右窗口: 关闭快速查看窗口{{{2
<cm_RightHideQuickvie>:
		SendPos(207)
Return
;<cm_RightExec>: >>	右窗口: 可执行文件{{{2
<cm_RightExec>:
		SendPos(211)
Return
;<cm_RightAllFile>: >>	右窗口: 所有文件{{{2
<cm_RightAllFile>:
		SendPos(212)
Return
;<cm_RightUserSpe>: >>	右窗口: 上次选中的文件{{{2
<cm_RightUserSpe>:
		SendPos(213)
Return
;<cm_RightUserDe>: >>	右窗口: 自定义类型{{{2
<cm_RightUserDe>:
		SendPos(214)
Return
;<cm_RightByNam>: >>	右窗口: 按文件名排序{{{2
<cm_RightByNam>:
		SendPos(221)
Return
;<cm_RightByEx>: >>	右窗口: 按扩展名排序{{{2
<cm_RightByEx>:
		SendPos(222)
Return
;<cm_RightBySiz>: >>	右窗口: 按大小排序{{{2
<cm_RightBySiz>:
		SendPos(223)
Return
;<cm_RightByDateTim>: >>	右窗口: 按日期时间排序{{{2
<cm_RightByDateTim>:
		SendPos(224)
Return
;<cm_RightUnsorte>: >>	右窗口: 不排序{{{2
<cm_RightUnsorte>:
		SendPos(225)
Return
;<cm_RightNegOrde>: >>	右窗口: 反向排序{{{2
<cm_RightNegOrde>:
		SendPos(230)
Return
;<cm_RightOpenDrive>: >>	右窗口: 打开驱动器列表{{{2
<cm_RightOpenDrives>:
		SendPos(231)
Return
;<cm_RightPathFocu>: >>	右窗口: 焦点置于路径上{{{2
<cm_RightPathFocu>:
		SendPos(232)
Return
;<cm_RightDirBranch>: >>右窗口: 展开所有文件夹{{{2
<cm_RightDirBranch>:
	SendPos(2035)
Return
;<cm_RightDirBranchSel>: >>右窗口: 只展开选中的文件夹{{{2
<cm_RightDirBranchSel>:
	SendPos(2048)
Return
;<cm_RightThumb>: >>	右窗口: 缩略图{{{2
<cm_RightThumb>:
	SendPos(169)
Return
;<cm_RightCustomViewMen>: >>	右窗口: 自定义视图菜单{{{2
<cm_RightCustomViewMen>:
	SendPos(170)
Return
;文件操作 =========================================
Return
;<cm_List>: >>	查看(用查看程序){{{2
<cm_List>:
	SendPos(903)
Return
;<cm_ListInternalOnly>: >>查看(用查看程序, 但不用插件/多媒体){{{2
<cm_ListInternalOnly>:
	SendPos(1006)
Return
;<cm_Edit>: >>	编辑{{{2
<cm_Edit>:
		SendPos(904)
Return
;<cm_Copy>: >>复制{{{2
<cm_Copy>:
	SendPos(905)
Return
;<cm_CopySamepanel>: >>复制到当前窗口{{{2
<cm_CopySamepanel>:
	SendPos(3100)
Return
;<cm_CopyOtherpanel>: >>复制到另一窗口{{{2
<cm_CopyOtherpanel>:
	SendPos(3101)
Return
;<cm_RenMov>: >>重命名/移动{{{2
<cm_RenMov>:
	SendPos(906)
Return
;<cm_MkDir>: >>新建文件夹{{{2
<cm_MkDir>:
	SendPos(907)
Return
;<cm_Delete>: >>删除{{{2
<cm_Delete>:
	SendPos(908)
Return
;<cm_TestArchive>: >>测试压缩包{{{2
<cm_TestArchive>:
	SendPos(518)
Return
;<cm_PackFiles>: >>压缩文件{{{2
<cm_PackFiles>:
	SendPos(508)
Return
;<cm_UnpackFiles>: >>解压文件{{{2
<cm_UnpackFiles>:
	SendPos(509)
Return
;<cm_RenameOnly>: >>重命名(Shift+F6){{{2
<cm_RenameOnly>:
	SendPos(1002)
Return
;<cm_RenameSingleFile>: >>重命名当前文件{{{2
<cm_RenameSingleFile>:
	SendPos(1007)
Return
;<cm_MoveOnly>: >>移动(F6){{{2
<cm_MoveOnly>:
	SendPos(1005)
Return
;<cm_Properties>: >>显示属性{{{2
<cm_Properties>:
	SendPos(1003)
Return
;<cm_CreateShortcut>: >>创建快捷方式{{{2
<cm_CreateShortcut>:
	SendPos(1004)
Return
;<cm_Return>: >>模仿按 ENTER 键{{{2
<cm_Return>:
	SendPos(1001)
Return
;<cm_OpenAsUser>: >>以其他用户身份运行光标处的程序{{{2
<cm_OpenAsUser>:
	SendPos(2800)
Return
;<cm_Split>: >>分割文件{{{2
<cm_Split>:
	SendPos(560)
Return
;<cm_Combine>: >>合并文件{{{2
<cm_Combine>:
	SendPos(561)
Return
;<cm_Encode>: >>编码文件(MIME/UUE/XXE 格式){{{2
<cm_Encode>:
	SendPos(562)
Return
;<cm_Decode>: >>解码文件(MIME/UUE/XXE/BinHex 格式){{{2
<cm_Decode>:
	SendPos(563)
Return
;<cm_CRCcreate>: >>创建校验文件{{{2
<cm_CRCcreate>:
	SendPos(564)
Return
;<cm_CRCcheck>: >>验证校验和{{{2
<cm_CRCcheck>:
	SendPos(565)
Return
;<cm_SetAttrib>: >>更改属性{{{2
<cm_SetAttrib>:
	SendPos(502)
Return
;配置 =========================================
Return
;<cm_Config>: >>配置: 布局{{{2
<cm_Config>:
	SendPos(490)
Return
;<cm_DisplayConfig>: >>配置: 显示{{{2
<cm_DisplayConfig>:
	SendPos(486)
Return
;<cm_IconConfig>: >>配置: 图标{{{2
<cm_IconConfig>:
	SendPos(477)
Return
;<cm_FontConfig>: >>配置: 字体{{{2
<cm_FontConfig>:
	SendPos(492)
Return
;<cm_ColorConfig>: >>配置: 颜色{{{2
<cm_ColorConfig>:
	SendPos(494)
Return
;<cm_ConfTabChange>: >>配置: 制表符{{{2
<cm_ConfTabChange>:
	SendPos(497)
Return
;<cm_DirTabsConfig>: >>配置: 文件夹标签{{{2
<cm_DirTabsConfig>:
	SendPos(488)
Return
;<cm_CustomColumnConfig>: >>配置: 自定义列{{{2
<cm_CustomColumnConfig>:
	SendPos(483)
Return
;<cm_CustomColumnDlg>: >>更改当前自定义列{{{2
<cm_CustomColumnDlg>:
	SendPos(2920)
Return
;<cm_LanguageConfig>: >>配置: 语言{{{2
<cm_LanguageConfig>:
	SendPos(499)
Return
;<cm_Config2>: >>配置: 操作方式{{{2
<cm_Config2>:
	SendPos(516)
Return
;<cm_EditConfig>: >>配置: 编辑/查看{{{2
<cm_EditConfig>:
	SendPos(496)
Return
;<cm_CopyConfig>: >>配置: 复制/删除{{{2
<cm_CopyConfig>:
	SendPos(487)
Return
;<cm_RefreshConfig>: >>配置: 刷新{{{2
<cm_RefreshConfig>:
	SendPos(478)
Return
;<cm_QuickSearchConfig>: >>配置: 快速搜索{{{2
<cm_QuickSearchConfig>:
	SendPos(479)
Return
;<cm_FtpConfig>: >>配置: FTP{{{2
<cm_FtpConfig>:
	SendPos(489)
Return
;<cm_PluginsConfig>: >>配置: 插件{{{2
<cm_PluginsConfig>:
	SendPos(484)
Return
;<cm_ThumbnailsConfig>: >>配置: 缩略图{{{2
<cm_ThumbnailsConfig>:
	SendPos(482)
Return
;<cm_LogConfig>: >>配置: 日志文件{{{2
<cm_LogConfig>:
	SendPos(481)
Return
;<cm_IgnoreConfig>: >>配置: 隐藏文件{{{2
<cm_IgnoreConfig>:
	SendPos(480)
Return
;<cm_PackerConfig>: >>配置: 压缩程序{{{2
<cm_PackerConfig>:
	SendPos(491)
Return
;<cm_ZipPackerConfig>: >>配置: ZIP 压缩程序{{{2
<cm_ZipPackerConfig>:
	SendPos(485)
Return
;<cm_Confirmation>: >>配置: 其他/确认{{{2
<cm_Confirmation>:
	SendPos(495)
Return
;<cm_ConfigSavePos>: >>保存位置{{{2
<cm_ConfigSavePos>:
	SendPos(493)
Return
;<cm_ButtonConfig>: >>更改工具栏{{{2
<cm_ButtonConfig>:
	SendPos(498)
Return
;<cm_ConfigSaveSettings>: >>保存设置{{{2
<cm_ConfigSaveSettings>:
	SendPos(580)
Return
;<cm_ConfigChangeIniFiles>: >>直接修改配置文件{{{2
<cm_ConfigChangeIniFiles>:
	SendPos(581)
Return
;<cm_ConfigSaveDirHistory>: >>保存文件夹历史记录{{{2
<cm_ConfigSaveDirHistory>:
	SendPos(582)
Return
;<cm_ChangeStartMenu>: >>更改开始菜单{{{2
<cm_ChangeStartMenu>:
	SendPos(700)
Return
;网络 =========================================
Return
;<cm_NetConnect>: >>映射网络驱动器{{{2
<cm_NetConnect>:
	SendPos(512)
Return
;<cm_NetDisconnect>: >>断开网络驱动器{{{2
<cm_NetDisconnect>:
	SendPos(513)
Return
;<cm_NetShareDir>: >>共享当前文件夹{{{2
<cm_NetShareDir>:
	SendPos(514)
Return
;<cm_NetUnshareDir>: >>取消文件夹共享{{{2
<cm_NetUnshareDir>:
	SendPos(515)
Return
;<cm_AdministerServer>: >>显示系统共享文件夹{{{2
<cm_AdministerServer>:
	SendPos(2204)
Return
;<cm_ShowFileUser>: >>显示本地文件的远程用户{{{2
<cm_ShowFileUser>:
	SendPos(2203)
Return
;其他 =========================================
Return
;<cm_GetFileSpace>: >>计算占用空间{{{2
<cm_GetFileSpace>:
	SendPos(503)
Return
;<cm_VolumeId>: >>设置卷标{{{2
<cm_VolumeId>:
	SendPos(505)
Return
;<cm_VersionInfo>: >>版本信息{{{2
<cm_VersionInfo>:
	SendPos(510)
Return
;<cm_ExecuteDOS>: >>打开命令提示符窗口{{{2
<cm_ExecuteDOS>:
	SendPos(511)
Return
;<cm_CompareDirs>: >>比较文件夹{{{2
<cm_CompareDirs>:
	SendPos(533)
Return
;<cm_CompareDirsWithSubdirs>: >>比较文件夹(同时标出另一窗口没有的子文件夹){{{2
<cm_CompareDirsWithSubdirs>:
	SendPos(536)
Return
;<cm_ContextMenu>: >>显示快捷菜单{{{2
<cm_ContextMenu>:
	SendPos(2500)
Return
;<cm_ContextMenuInternal>: >>显示快捷菜单(内部关联){{{2
<cm_ContextMenuInternal>:
	SendPos(2927)
Return
;<cm_ContextMenuInternalCursor>: >>显示光标处文件的内部关联快捷菜单{{{2
<cm_ContextMenuInternalCursor>:
	SendPos(2928)
Return
;<cm_ShowRemoteMenu>: >>媒体中心遥控器播放/暂停键快捷菜单{{{2
<cm_ShowRemoteMenu>:
	SendPos(2930)
Return
;<cm_SyncChangeDir>: >>两边窗口同步更改文件夹{{{2
<cm_SyncChangeDir>:
	SendPos(2600)
Return
;<cm_EditComment>: >>编辑文件备注{{{2
<cm_EditComment>:
	SendPos(2700)
Return
;<cm_FocusLeft>: >>焦点置于左窗口{{{2
<cm_FocusLeft>:
	SendPos(4001)
Return
;<cm_FocusRight>: >>焦点置于右窗口{{{2
<cm_FocusRight>:
	SendPos(4002)
Return
;<cm_FocusCmdLine>: >>焦点置于命令行{{{2
<cm_FocusCmdLine>:
	SendPos(4003)
Return
;<cm_FocusButtonBar>: >>焦点置于工具栏{{{2
<cm_FocusButtonBar>:
	SendPos(4004)
Return
;<cm_CountDirContent>: >>计算所有文件夹占用的空间{{{2
<cm_CountDirContent>:
	SendPos(2014)
Return
;<cm_UnloadPlugins>: >>卸载所有插件{{{2
<cm_UnloadPlugins>:
	SendPos(2913)
Return
;<cm_DirMatch>: >>标出新文件, 隐藏相同者{{{2
<cm_DirMatch>:
	SendPos(534)
Return
;<cm_Exchange>: >>交换左右窗口{{{2
<cm_Exchange>:
	SendPos(531)
Return
;<cm_MatchSrc>: >>目标 = 来源{{{2
<cm_MatchSrc>:
	SendPos(532)
Return
;<cm_ReloadSelThumbs>: >>刷新选中文件的缩略图{{{2
<cm_ReloadSelThumbs>:
	SendPos(2918)
Return
;并口 =========================================
Return
;<cm_DirectCableConnect>: >>直接电缆连接{{{2
<cm_DirectCableConnect>:
	SendPos(2300)
Return
;<cm_NTinstallDriver>: >>加载 NT 并口驱动程序{{{2
<cm_NTinstallDriver>:
	SendPos(2301)
Return
;<cm_NTremoveDriver>: >>卸载 NT 并口驱动程序{{{2
<cm_NTremoveDriver>:
	SendPos(2302)
Return
;打印 =========================================
Return
;<cm_PrintDir>: >>打印文件列表{{{2
<cm_PrintDir>:
	SendPos(2027)
Return
;<cm_PrintDirSub>: >>打印文件列表(含子文件夹){{{2
<cm_PrintDirSub>:
	SendPos(2028)
Return
;<cm_PrintFile>: >>打印文件内容{{{2
<cm_PrintFile>:
	SendPos(504)
Return
;选择 =========================================
Return
;<cm_SpreadSelection>: >>选择一组文件{{{2
<cm_SpreadSelection>:
	SendPos(521)
Return
;<cm_SelectBoth>: >>选择一组: 文件和文件夹{{{2
<cm_SelectBoth>:
	SendPos(3311)
Return
;<cm_SelectFiles>: >>选择一组: 仅文件{{{2
<cm_SelectFiles>:
	SendPos(3312)
Return
;<cm_SelectFolders>: >>选择一组: 仅文件夹{{{2
<cm_SelectFolders>:
	SendPos(3313)
Return
;<cm_ShrinkSelection>: >>不选一组文件{{{2
<cm_ShrinkSelection>:
	SendPos(522)
Return
;<cm_ClearFiles>: >>不选一组: 仅文件{{{2
<cm_ClearFiles>:
	SendPos(3314)
Return
;<cm_ClearFolders>: >>不选一组: 仅文件夹{{{2
<cm_ClearFolders>:
	SendPos(3315)
Return
;<cm_ClearSelCfg>: >>不选一组: 文件和/或文件夹(视配置而定){{{2
<cm_ClearSelCfg>:
	SendPos(3316)
Return
;<cm_SelectAll>: >>全部选择: 文件和/或文件夹(视配置而定){{{2
<cm_SelectAll>:
	SendPos(523)
Return
;<cm_SelectAllBoth>: >>全部选择: 文件和文件夹{{{2
<cm_SelectAllBoth>:
	SendPos(3301)
Return
;<cm_SelectAllFiles>: >>全部选择: 仅文件{{{2
<cm_SelectAllFiles>:
	SendPos(3302)
Return
;<cm_SelectAllFolders>: >>全部选择: 仅文件夹{{{2
<cm_SelectAllFolders>:
	SendPos(3303)
Return
;<cm_ClearAll>: >>全部取消: 文件和文件夹{{{2
<cm_ClearAll>:
	SendPos(524)
Return
;<cm_ClearAllFiles>: >>全部取消: 仅文件{{{2
<cm_ClearAllFiles>:
	SendPos(3304)
Return
;<cm_ClearAllFolders>: >>全部取消: 仅文件夹{{{2
<cm_ClearAllFolders>:
	SendPos(3305)
Return
;<cm_ClearAllCfg>: >>全部取消: 文件和/或文件夹(视配置而定){{{2
<cm_ClearAllCfg>:
	SendPos(3306)
Return
;<cm_ExchangeSelection>: >>反向选择{{{2
<cm_ExchangeSelection>:
	SendPos(525)
Return
;<cm_ExchangeSelBoth>: >>反向选择: 文件和文件夹{{{2
<cm_ExchangeSelBoth>:
	SendPos(3321)
Return
;<cm_ExchangeSelFiles>: >>反向选择: 仅文件{{{2
<cm_ExchangeSelFiles>:
	SendPos(3322)
Return
;<cm_ExchangeSelFolders>: >>反向选择: 仅文件夹{{{2
<cm_ExchangeSelFolders>:
	SendPos(3323)
Return
;<cm_SelectCurrentExtension>: >>选择扩展名相同的文件{{{2
<cm_SelectCurrentExtension>:
	SendPos(527)
Return
;<cm_UnselectCurrentExtension>: >>不选扩展名相同的文件{{{2
<cm_UnselectCurrentExtension>:
	SendPos(528)
Return
;<cm_SelectCurrentName>: >>选择文件名相同的文件{{{2
<cm_SelectCurrentName>:
	SendPos(541)
Return
;<cm_UnselectCurrentName>: >>不选文件名相同的文件{{{2
<cm_UnselectCurrentName>:
	SendPos(542)
Return
;<cm_SelectCurrentNameExt>: >>选择文件名和扩展名相同的文件{{{2
<cm_SelectCurrentNameExt>:
	SendPos(543)
Return
;<cm_UnselectCurrentNameExt>: >>不选文件名和扩展名相同的文件{{{2
<cm_UnselectCurrentNameExt>:
	SendPos(544)
Return
;<cm_SelectCurrentPath>: >>选择同一路径下的文件(展开文件夹+搜索文件){{{2
<cm_SelectCurrentPath>:
	SendPos(537)
Return
;<cm_UnselectCurrentPath>: >>不选同一路径下的文件(展开文件夹+搜索文件){{{2
<cm_UnselectCurrentPath>:
	SendPos(538)
Return
;<cm_RestoreSelection>: >>恢复选择列表{{{2
<cm_RestoreSelection>:
	SendPos(529)
Return
;<cm_SaveSelection>: >>保存选择列表{{{2
<cm_SaveSelection>:
	SendPos(530)
Return
;<cm_SaveSelectionToFile>: >>导出选择列表{{{2
<cm_SaveSelectionToFile>:
	SendPos(2031)
Return
;<cm_SaveSelectionToFileA>: >>导出选择列表(ANSI){{{2
<cm_SaveSelectionToFileA>:
	SendPos(2041)
Return
;<cm_SaveSelectionToFileW>: >>导出选择列表(Unicode){{{2
<cm_SaveSelectionToFileW>:
	SendPos(2042)
Return
;<cm_SaveDetailsToFile>: >>导出详细信息{{{2
<cm_SaveDetailsToFile>:
	SendPos(2039)
Return
;<cm_SaveDetailsToFileA>: >>导出详细信息(ANSI){{{2
<cm_SaveDetailsToFileA>:
	SendPos(2043)
Return
;<cm_SaveDetailsToFileW>: >>导出详细信息(Unicode){{{2
<cm_SaveDetailsToFileW>:
	SendPos(2044)
Return
;<cm_LoadSelectionFromFile>: >>导入选择列表(从文件){{{2
<cm_LoadSelectionFromFile>:
	SendPos(2032)
Return
;<cm_LoadSelectionFromClip>: >>导入选择列表(从剪贴板){{{2
<cm_LoadSelectionFromClip>:
	SendPos(2033)
Return
;安全 =========================================
Return
;<cm_EditPermissionInfo>: >>设置权限(NTFS){{{2
<cm_EditPermissionInfo>:
	SendPos(2200)
Return
;<cm_EditAuditInfo>: >>审核文件(NTFS){{{2
<cm_EditAuditInfo>:
	SendPos(2201)
Return
;<cm_EditOwnerInfo>: >>获取所有权(NTFS){{{2
<cm_EditOwnerInfo>:
	SendPos(2202)
Return
;剪贴板 =========================================
Return
;<cm_CutToClipboard>: >>剪切选中的文件到剪贴板{{{2
<cm_CutToClipboard>:
	SendPos(2007)
Return
;<cm_CopyToClipboard>: >>复制选中的文件到剪贴板{{{2
<cm_CopyToClipboard>:
	SendPos(2008)
Return
;<cm_PasteFromClipboard>: >>从剪贴板粘贴到当前文件夹{{{2
<cm_PasteFromClipboard>:
	SendPos(2009)
Return
;<cm_CopyNamesToClip>: >>复制文件名{{{2
<cm_CopyNamesToClip>:
	SendPos(2017)
Return
;<cm_CopyFullNamesToClip>: >>复制文件名及完整路径{{{2
<cm_CopyFullNamesToClip>:
	SendPos(2018)
Return
;<cm_CopyNetNamesToClip>: >>复制文件名及网络路径{{{2
<cm_CopyNetNamesToClip>:
	SendPos(2021)
Return
;<cm_CopySrcPathToClip>: >>复制来源路径{{{2
<cm_CopySrcPathToClip>:
	SendPos(2029)
Return
;<cm_CopyTrgPathToClip>: >>复制目标路径{{{2
<cm_CopyTrgPathToClip>:
	SendPos(2030)
Return
;<cm_CopyFileDetailsToClip>: >>复制文件详细信息{{{2
<cm_CopyFileDetailsToClip>:
	SendPos(2036)
Return
;<cm_CopyFpFileDetailsToClip>: >>复制文件详细信息及完整路径{{{2
<cm_CopyFpFileDetailsToClip>:
	SendPos(2037)
Return
;<cm_CopyNetFileDetailsToClip>: >>复制文件详细信息及网络路径{{{2
<cm_CopyNetFileDetailsToClip>:
	SendPos(2038)
Return
;FTP =========================================
Return
;<cm_FtpConnect>: >>FTP 连接{{{2
<cm_FtpConnect>:
	SendPos(550)
Return
;<cm_FtpNew>: >>新建 FTP 连接{{{2
<cm_FtpNew>:
	SendPos(551)
Return
;<cm_FtpDisconnect>: >>断开 FTP 连接{{{2
<cm_FtpDisconnect>:
	SendPos(552)
Return
;<cm_FtpHiddenFiles>: >>显示隐藏文件{{{2
<cm_FtpHiddenFiles>:
	SendPos(553)
Return
;<cm_FtpAbort>: >>中止当前 FTP 命令{{{2
<cm_FtpAbort>:
	SendPos(554)
Return
;<cm_FtpResumeDownload>: >>续传{{{2
<cm_FtpResumeDownload>:
	SendPos(555)
Return
;<cm_FtpSelectTransferMode>: >>选择传输模式{{{2
<cm_FtpSelectTransferMode>:
	SendPos(556)
Return
;<cm_FtpAddToList>: >>添加到下载列表{{{2
<cm_FtpAddToList>:
	SendPos(557)
Return
;<cm_FtpDownloadList>: >>按列表下载{{{2
<cm_FtpDownloadList>:
	SendPos(558)
Return
;导航 =========================================
Return
;<cm_GotoPreviousDir>: >>后退{{{2
<cm_GotoPreviousDir>:
	SendPos(570)
Return
;<cm_GotoNextDir>: >>前进{{{2
<cm_GotoNextDir>:
	SendPos(571)
Return
;<cm_DirectoryHistory>: >>文件夹历史记录{{{2
<cm_DirectoryHistory>:
	Vim_HotkeyCount := 0
	SendPos(572)
Return
;<cm_GotoPreviousLocalDir>: >>后退(非 FTP){{{2
<cm_GotoPreviousLocalDir>:
	SendPos(573)
Return
;<cm_GotoNextLocalDir>: >>前进(非 FTP){{{2
<cm_GotoNextLocalDir>:
	SendPos(574)
Return
;<cm_DirectoryHotlist>: >>常用文件夹{{{2
<cm_DirectoryHotlist>:
	Vim_HotkeyCount := 0
	SendPos(526)
Return
;<cm_GoToRoot>: >>转到根文件夹{{{2
<cm_GoToRoot>:
	SendPos(2001)
Return
;<cm_GoToParent>: >>转到上层文件夹{{{2
<cm_GoToParent>:
	SendPos(2002)
Return
;<cm_GoToDir>: >>打开光标处的文件夹或压缩包{{{2
<cm_GoToDir>:
	SendPos(2003)
Return
;<cm_OpenDesktop>: >>桌面{{{2
<cm_OpenDesktop>:
	SendPos(2121)
Return
;<cm_OpenDrives>: >>我的电脑{{{2
<cm_OpenDrives>:
	SendPos(2122)
Return
;<cm_OpenControls>: >>控制面板{{{2
<cm_OpenControls>:
	SendPos(2123)
Return
;<cm_OpenFonts>: >>字体{{{2
<cm_OpenFonts>:
	SendPos(2124)
Return
;<cm_OpenNetwork>: >>网上邻居{{{2
<cm_OpenNetwork>:
	SendPos(2125)
Return
;<cm_OpenPrinters>: >>打印机{{{2
<cm_OpenPrinters>:
	SendPos(2126)
Return
;<cm_OpenRecycled>: >>回收站{{{2
<cm_OpenRecycled>:
	SendPos(2127)
Return
;<cm_CDtree>: >>更改文件夹{{{2
<cm_CDtree>:
	SendPos(500)
Return
;<cm_TransferLeft>: >>在左窗口打开光标处的文件夹或压缩包{{{2
<cm_TransferLeft>:
	SendPos(2024)
Return
;<cm_TransferRight>: >>在右窗口打开光标处的文件夹或压缩包{{{2
<cm_TransferRight>:
	SendPos(2025)
Return
;<cm_EditPath>: >>编辑来源窗口的路径{{{2
<cm_EditPath>:
	SendPos(2912)
Return
;<cm_GoToFirstFile>: >>光标移到列表中的第一个文件{{{2
<cm_GoToFirstFile>:
	SendPos(2050)
Return
;<cm_GotoNextDrive>: >>转到下一个驱动器{{{2
<cm_GotoNextDrive>:
	SendPos(2051)
Return
;<cm_GotoPreviousDrive>: >>转到上一个驱动器{{{2
<cm_GotoPreviousDrive>:
	SendPos(2052)
Return
;<cm_GotoNextSelected>: >>转到下一个选中的文件{{{2
<cm_GotoNextSelected>:
	SendPos(2053)
Return
;<cm_GotoPrevSelected>: >>转到上一个选中的文件{{{2
<cm_GotoPrevSelected>:
	SendPos(2054)
Return
;<cm_GotoDriveA>: >>转到驱动器 A{{{2
<cm_GotoDriveA>:
	SendPos(2061)
Return
;<cm_GotoDriveC>: >>转到驱动器 C{{{2
<cm_GotoDriveC>:
	SendPos(2063)
Return
;<cm_GotoDriveD>: >>转到驱动器 D{{{2
<cm_GotoDriveD>:
	SendPos(2064)
Return
;<cm_GotoDriveE>: >>转到驱动器 E{{{2
<cm_GotoDriveE>:
	SendPos(2065)
Return
;<cm_GotoDriveF>: >>可自定义其他驱动器{{{2
<cm_GotoDriveF>:
	SendPos(2066)
Return
;<cm_GotoDriveZ>: >>最多 26 个{{{2
<cm_GotoDriveZ>:
	SendPos(2086)
Return
;帮助 =========================================
Return
;<cm_HelpIndex>: >>帮助索引{{{2
<cm_HelpIndex>:
	SendPos(610)
Return
;<cm_Keyboard>: >>快捷键列表{{{2
<cm_Keyboard>:
	SendPos(620)
Return
;<cm_Register>: >>注册信息{{{2
<cm_Register>:
	SendPos(630)
Return
;<cm_VisitHomepage>: >>访问 Totalcmd 网站{{{2
<cm_VisitHomepage>:
	SendPos(640)
Return
;<cm_About>: >>关于 Total Commander{{{2
<cm_About>:
	SendPos(690)
Return
;窗口 =========================================
Return
;<cm_Exit>: >>退出 Total Commander{{{2
<cm_Exit>:
	SendPos(24340)
Return
;<cm_Minimize>: >>最小化 Total Commander{{{2
<cm_Minimize>:
	SendPos(2000)
Return
;<cm_Maximize>: >>最大化 Total Commander{{{2
<cm_Maximize>:
	SendPos(2015)
Return
;<cm_Restore>: >>恢复正常大小{{{2
<cm_Restore>:
	SendPos(2016)
Return
;命令行 =========================================
Return
;<cm_ClearCmdLine>: >>清除命令行{{{2
<cm_ClearCmdLine>:
	SendPos(2004)
Return
;<cm_NextCommand>: >>下一条命令{{{2
<cm_NextCommand>:
	SendPos(2005)
Return
;<cm_PrevCommand>: >>上一条命令{{{2
<cm_PrevCommand>:
	SendPos(2006)
Return
;<cm_AddPathToCmdline>: >>将路径复制到命令行{{{2
<cm_AddPathToCmdline>:
	SendPos(2019)
Return
;工具 =========================================
Return
;<cm_MultiRenameFiles>: >>批量重命名{{{2
<cm_MultiRenameFiles>:
	SendPos(2400)
Return
;<cm_SysInfo>: >>系统信息{{{2
<cm_SysInfo>:
	SendPos(506)
Return
;<cm_OpenTransferManager>: >>后台传输管理器{{{2
<cm_OpenTransferManager>:
	SendPos(559)
Return
;<cm_SearchFor>: >>搜索文件{{{2
<cm_SearchFor>:
	SendPos(501)
Return
;<cm_FileSync>: >>同步文件夹{{{2
<cm_FileSync>:
	SendPos(2020)
Return
;<cm_Associate>: >>文件关联{{{2
<cm_Associate>:
	SendPos(507)
Return
;<cm_InternalAssociate>: >>定义内部关联{{{2
<cm_InternalAssociate>:
	SendPos(519)
Return
;<cm_CompareFilesByContent>: >>比较文件内容{{{2
<cm_CompareFilesByContent>:
	SendPos(2022)
Return
;<cm_IntCompareFilesByContent>: >>使用内部比较程序{{{2
<cm_IntCompareFilesByContent>:
	SendPos(2040)
Return
;<cm_CommandBrowser>: >>浏览内部命令{{{2
<cm_CommandBrowser>:
	SendPos(2924)
Return
;视图 =========================================
Return
;<cm_VisButtonbar>: >>显示/隐藏: 工具栏{{{2
<cm_VisButtonbar>:
	SendPos(2901)
Return
;<cm_VisDriveButtons>: >>显示/隐藏: 驱动器按钮{{{2
<cm_VisDriveButtons>:
	SendPos(2902)
Return
;<cm_VisTwoDriveButtons>: >>显示/隐藏: 两个驱动器按钮栏{{{2
<cm_VisTwoDriveButtons>:
	SendPos(2903)
Return
;<cm_VisFlatDriveButtons>: >>切换: 平坦/立体驱动器按钮{{{2
<cm_VisFlatDriveButtons>:
	SendPos(2904)
Return
;<cm_VisFlatInterface>: >>切换: 平坦/立体用户界面{{{2
<cm_VisFlatInterface>:
	SendPos(2905)
Return
;<cm_VisDriveCombo>: >>显示/隐藏: 驱动器列表{{{2
<cm_VisDriveCombo>:
	SendPos(2906)
Return
;<cm_VisCurDir>: >>显示/隐藏: 当前文件夹{{{2
<cm_VisCurDir>:
	SendPos(2907)
Return
;<cm_VisBreadCrumbs>: >>显示/隐藏: 路径导航栏{{{2
<cm_VisBreadCrumbs>:
	SendPos(2926)
Return
;<cm_VisTabHeader>: >>显示/隐藏: 排序制表符{{{2
<cm_VisTabHeader>:
	SendPos(2908)
Return
;<cm_VisStatusbar>: >>显示/隐藏: 状态栏{{{2
<cm_VisStatusbar>:
	SendPos(2909)
Return
;<cm_VisCmdLine>: >>显示/隐藏: 命令行{{{2
<cm_VisCmdLine>:
	SendPos(2910)
Return
;<cm_VisKeyButtons>: >>显示/隐藏: 功能键按钮{{{2
<cm_VisKeyButtons>:
	SendPos(2911)
Return
;<cm_ShowHint>: >>显示文件提示{{{2
<cm_ShowHint>:
	SendPos(2914)
Return
;<cm_ShowQuickSearch>: >>显示快速搜索窗口{{{2
<cm_ShowQuickSearch>:
	SendPos(2915)
Return
;<cm_SwitchLongNames>: >>开启/关闭: 长文件名显示{{{2
<cm_SwitchLongNames>:
	SendPos(2010)
Return
;<cm_RereadSource>: >>刷新来源窗口{{{2
<cm_RereadSource>:
	SendPos(540)
Return
;<cm_ShowOnlySelected>: >>仅显示选中的文件{{{2
<cm_ShowOnlySelected>:
	SendPos(2023)
Return
;<cm_SwitchHidSys>: >>开启/关闭: 隐藏或系统文件显示{{{2
<cm_SwitchHidSys>:
	SendPos(2011)
Return
;<cm_Switch83Names>: >>开启/关闭: 8.3 式文件名小写显示{{{2
<cm_Switch83Names>:
	SendPos(2013)
Return
;<cm_SwitchDirSort>: >>开启/关闭: 文件夹按名称排序{{{2
<cm_SwitchDirSort>:
	SendPos(2012)
Return
;<cm_DirBranch>: >>展开所有文件夹{{{2
<cm_DirBranch>:
	SendPos(2026)
Return
;<cm_DirBranchSel>: >>只展开选中的文件夹{{{2
<cm_DirBranchSel>:
	SendPos(2046)
Return
;<cm_50Percent>: >>窗口分隔栏位于 50%{{{2
<cm_50Percent>:
	SendPos(909)
Return
;<cm_100Percent>: >>窗口分隔栏位于 100%{{{2
<cm_100Percent>:
	SendPos(910)
Return
;<cm_VisDirTabs>: >>显示/隐藏: 文件夹标签{{{2
<cm_VisDirTabs>:
	SendPos(2916)
Return
;<cm_VisXPThemeBackground>: >>显示/隐藏: XP 主题背景{{{2
<cm_VisXPThemeBackground>:
	SendPos(2923)
Return
;<cm_SwitchOverlayIcons>: >>开启/关闭: 叠置图标显示{{{2
<cm_SwitchOverlayIcons>:
	SendPos(2917)
Return
;<cm_VisHistHotButtons>: >>显示/隐藏: 文件夹历史记录和常用文件夹按钮{{{2
<cm_VisHistHotButtons>:
	SendPos(2919)
Return
;<cm_SwitchWatchDirs>: >>启用/禁用: 文件夹自动刷新{{{2
<cm_SwitchWatchDirs>:
	SendPos(2921)
Return
;<cm_SwitchIgnoreList>: >>启用/禁用: 自定义隐藏文件{{{2
<cm_SwitchIgnoreList>:
	SendPos(2922)
Return
;<cm_SwitchX64Redirection>: >>开启/关闭: 32 位 system32 目录重定向(64 位 Windows){{{2
<cm_SwitchX64Redirection>:
	SendPos(2925)
Return
;<cm_SeparateTreeOff>: >>关闭独立文件夹树面板{{{2
<cm_SeparateTreeOff>:
	SendPos(3200)
Return
;<cm_SeparateTree1>: >>一个独立文件夹树面板{{{2
<cm_SeparateTree1>:
	SendPos(3201)
Return
;<cm_SeparateTree2>: >>两个独立文件夹树面板{{{2
<cm_SeparateTree2>:
	SendPos(3202)
Return
;<cm_SwitchSeparateTree>: >>切换独立文件夹树面板状态{{{2
<cm_SwitchSeparateTree>:
	SendPos(3203)
Return
;<cm_ToggleSeparateTree1>: >>开启/关闭: 一个独立文件夹树面板{{{2
<cm_ToggleSeparateTree1>:
	SendPos(3204)
Return
;<cm_ToggleSeparateTree2>: >>开启/关闭: 两个独立文件夹树面板{{{2
<cm_ToggleSeparateTree2>:
	SendPos(3205)
Return
;用户 =========================================
Return
;<cm_UserMenu1>: >>用户菜单 1{{{2
<cm_UserMenu1>:
	SendPos(701)
Return
;<cm_UserMenu2>: >>用户菜单 2{{{2
<cm_UserMenu2>:
	SendPos(702)
Return
;<cm_UserMenu3>: >>用户菜单 3{{{2
<cm_UserMenu3>:
	SendPos(703)
Return
;<cm_UserMenu4>: >>...{{{2
<cm_UserMenu4>:
	SendPos(704)
Return
;<cm_UserMenu5>: >>5{{{2
<cm_UserMenu5>:
	SendPos(70)
Return
;<cm_UserMenu6>: >>6{{{2
<cm_UserMenu6>:
	SendPos(70)
Return
;<cm_UserMenu7>: >>7{{{2
<cm_UserMenu7>:
	SendPos(70)
Return
;<cm_UserMenu8>: >>8{{{2
<cm_UserMenu8>:
	SendPos(70)
Return
;<cm_UserMenu9>: >>9{{{2
<cm_UserMenu9>:
	SendPos(70)
Return
;<cm_UserMenu10>: >>可定义其他用户菜单{{{2
<cm_UserMenu10>:
	SendPos(710)
Return
;标签 =========================================
Return
;<cm_OpenNewTab>: >>新建标签{{{2
<cm_OpenNewTab>:
	SendPos(3001)
Return
;<cm_OpenNewTabBg>: >>新建标签(在后台){{{2
<cm_OpenNewTabBg>:
	SendPos(3002)
Return
;<cm_OpenDirInNewTab>: >>新建标签(并打开光标处的文件夹){{{2
<cm_OpenDirInNewTab>:
	SendPos(3003)
Return
;<cm_OpenDirInNewTabOther>: >>新建标签(在另一窗口打开文件夹){{{2
<cm_OpenDirInNewTabOther>:
	SendPos(3004)
Return
;<cm_SwitchToNextTab>: >>下一个标签(Ctrl+Tab){{{2
<cm_SwitchToNextTab>:
	SendPos(3005)
Return
;<cm_SwitchToPreviousTab>: >>上一个标签(Ctrl+Shift+Tab){{{2
<cm_SwitchToPreviousTab>:
	SendPos(3006)
Return
;<cm_CloseCurrentTab>: >>关闭当前标签{{{2
<cm_CloseCurrentTab>:
	SendPos(3007)
Return
;<cm_CloseAllTabs>: >>关闭所有标签{{{2
<cm_CloseAllTabs>:
	SendPos(3008)
Return
;<cm_DirTabsShowMenu>: >>显示标签菜单{{{2
<cm_DirTabsShowMenu>:
	SendPos(3009)
Return
;<cm_ToggleLockCurrentTab>: >>锁定/解锁当前标签{{{2
<cm_ToggleLockCurrentTab>:
	SendPos(3010)
Return
;<cm_ToggleLockDcaCurrentTab>: >>锁定/解锁当前标签(可更改文件夹){{{2
<cm_ToggleLockDcaCurrentTab>:
	SendPos(3012)
Return
;<cm_ExchangeWithTabs>: >>交换左右窗口及其标签{{{2
<cm_ExchangeWithTabs>:
	SendPos(535)
Return
;<cm_GoToLockedDir>: >>转到锁定标签的根文件夹{{{2
<cm_GoToLockedDir>:
	SendPos(3011)
Return
;<cm_SrcActivateTab1>: >>来源窗口: 激活标签 1{{{2
<cm_SrcActivateTab1>:
	SendPos(5001)
Return
;<cm_SrcActivateTab2>: >>来源窗口: 激活标签 2{{{2
<cm_SrcActivateTab2>:
	SendPos(5002)
Return
;<cm_SrcActivateTab3>: >>...{{{2
<cm_SrcActivateTab3>:
	SendPos(5003)
Return
;<cm_SrcActivateTab4>: >>最多 99 个{{{2
<cm_SrcActivateTab4>:
	SendPos(5004)
Return
;<cm_SrcActivateTab5>: >>5{{{2
<cm_SrcActivateTab5>:
	SendPos(5005)
Return
;<cm_SrcActivateTab6>: >>6{{{2
<cm_SrcActivateTab6>:
	SendPos(5006)
Return
;<cm_SrcActivateTab7>: >>7{{{2
<cm_SrcActivateTab7>:
	SendPos(5007)
Return
;<cm_SrcActivateTab8>: >>8{{{2
<cm_SrcActivateTab8>:
	SendPos(5008)
Return
;<cm_SrcActivateTab9>: >>9{{{2
<cm_SrcActivateTab9>:
	SendPos(5009)
Return
;<cm_SrcActivateTab10>: >>0{{{2
<cm_SrcActivateTab10>:
	SendPos(5010)
Return
;<cm_TrgActivateTab1>: >>目标窗口: 激活标签 1{{{2
<cm_TrgActivateTab1>:
	SendPos(5101)
Return
;<cm_TrgActivateTab2>: >>目标窗口: 激活标签 2{{{2
<cm_TrgActivateTab2>:
	SendPos(5102)
Return
;<cm_TrgActivateTab3>: >>...{{{2
<cm_TrgActivateTab3>:
	SendPos(5103)
Return
;<cm_TrgActivateTab4>: >>最多 99 个{{{2
<cm_TrgActivateTab4>:
	SendPos(5104)
Return
;<cm_TrgActivateTab5>: >>5{{{2
<cm_TrgActivateTab5>:
	SendPos(5105)
Return
;<cm_TrgActivateTab6>: >>6{{{2
<cm_TrgActivateTab6>:
	SendPos(5106)
Return
;<cm_TrgActivateTab7>: >>7{{{2
<cm_TrgActivateTab7>:
	SendPos(5107)
Return
;<cm_TrgActivateTab8>: >>8{{{2
<cm_TrgActivateTab8>:
	SendPos(5108)
Return
;<cm_TrgActivateTab9>: >>9{{{2
<cm_TrgActivateTab9>:
	SendPos(5109)
Return
;<cm_TrgActivateTab10>: >>0{{{2
<cm_TrgActivateTab10>:
	SendPos(5110)
Return
;<cm_LeftActivateTab1>: >>左窗口: 激活标签 1{{{2
<cm_LeftActivateTab1>:
	SendPos(5201)
Return
;<cm_LeftActivateTab2>: >>左窗口: 激活标签 2{{{2
<cm_LeftActivateTab2>:
	SendPos(5202)
Return
;<cm_LeftActivateTab3>: >>...{{{2
<cm_LeftActivateTab3>:
	SendPos(5203)
Return
;<cm_LeftActivateTab4>: >>最多 99 个{{{2
<cm_LeftActivateTab4>:
	SendPos(5204)
Return
;<cm_LeftActivateTab5>: >>5{{{2
<cm_LeftActivateTab5>:
	SendPos(5205)
Return
;<cm_LeftActivateTab6>: >>6{{{2
<cm_LeftActivateTab6>:
	SendPos(5206)
Return
;<cm_LeftActivateTab7>: >>7{{{2
<cm_LeftActivateTab7>:
	SendPos(5207)
Return
;<cm_LeftActivateTab8>: >>8{{{2
<cm_LeftActivateTab8>:
	SendPos(5208)
Return
;<cm_LeftActivateTab9>: >>9{{{2
<cm_LeftActivateTab9>:
	SendPos(5209)
Return
;<cm_LeftActivateTab10>: >>0{{{2
<cm_LeftActivateTab10>:
	SendPos(5210)
Return
;<cm_RightActivateTab1>: >>右窗口: 激活标签 1{{{2
<cm_RightActivateTab1>:
	SendPos(5301)
Return
;<cm_RightActivateTab2>: >>右窗口: 激活标签 2{{{2
<cm_RightActivateTab2>:
	SendPos(5302)
Return
;<cm_RightActivateTab3>: >>...{{{2
<cm_RightActivateTab3>:
	SendPos(5303)
Return
;<cm_RightActivateTab4>: >>最多 99 个{{{2
<cm_RightActivateTab4>:
	SendPos(5304)
Return
;<cm_RightActivateTab5>: >>5{{{2
<cm_RightActivateTab5>:
	SendPos(5305)
Return
;<cm_RightActivateTab6>: >>6{{{2
<cm_RightActivateTab6>:
	SendPos(5306)
Return
;<cm_RightActivateTab7>: >>7{{{2
<cm_RightActivateTab7>:
	SendPos(5307)
Return
;<cm_RightActivateTab8>: >>8{{{2
<cm_RightActivateTab8>:
	SendPos(5308)
Return
;<cm_RightActivateTab9>: >>9{{{2
<cm_RightActivateTab9>:
	SendPos(5309)
Return
;<cm_RightActivateTab10>: >>0{{{2
<cm_RightActivateTab10>:
	SendPos(5310)
Return
;排序 =========================================
Return
;<cm_SrcSortByCol1>: >>来源窗口: 按第 1 列排序{{{2
<cm_SrcSortByCol1>:
	SendPos(6001)
Return
;<cm_SrcSortByCol2>: >>来源窗口: 按第 2 列排序{{{2
<cm_SrcSortByCol2>:
	SendPos(6002)
Return
;<cm_SrcSortByCol3>: >>...{{{2
<cm_SrcSortByCol3>:
	SendPos(6003)
Return
;<cm_SrcSortByCol4>: >>最多 99 列{{{2
<cm_SrcSortByCol4>:
	SendPos(6004)
Return
;<cm_SrcSortByCol5>: >>5{{{2
<cm_SrcSortByCol5>:
	SendPos(6005)
Return
;<cm_SrcSortByCol6>: >>6{{{2
<cm_SrcSortByCol6>:
	SendPos(6006)
Return
;<cm_SrcSortByCol7>: >>7{{{2
<cm_SrcSortByCol7>:
	SendPos(6007)
Return
;<cm_SrcSortByCol8>: >>8{{{2
<cm_SrcSortByCol8>:
	SendPos(6008)
Return
;<cm_SrcSortByCol9>: >>9{{{2
<cm_SrcSortByCol9>:
	SendPos(6009)
Return
;<cm_SrcSortByCol10>: >>0{{{2
<cm_SrcSortByCol10>:
	SendPos(6010)
Return
;<cm_SrcSortByCol99>: >>9{{{2
<cm_SrcSortByCol99>:
	SendPos(6099)
Return
;<cm_TrgSortByCol1>: >>目标窗口: 按第 1 列排序{{{2
<cm_TrgSortByCol1>:
	SendPos(6101)
Return
;<cm_TrgSortByCol2>: >>目标窗口: 按第 2 列排序{{{2
<cm_TrgSortByCol2>:
	SendPos(6102)
Return
;<cm_TrgSortByCol3>: >>...{{{2
<cm_TrgSortByCol3>:
	SendPos(6103)
Return
;<cm_TrgSortByCol4>: >>最多 99 列{{{2
<cm_TrgSortByCol4>:
	SendPos(6104)
Return
;<cm_TrgSortByCol5>: >>5{{{2
<cm_TrgSortByCol5>:
	SendPos(6105)
Return
;<cm_TrgSortByCol6>: >>6{{{2
<cm_TrgSortByCol6>:
	SendPos(6106)
Return
;<cm_TrgSortByCol7>: >>7{{{2
<cm_TrgSortByCol7>:
	SendPos(6107)
Return
;<cm_TrgSortByCol8>: >>8{{{2
<cm_TrgSortByCol8>:
	SendPos(6108)
Return
;<cm_TrgSortByCol9>: >>9{{{2
<cm_TrgSortByCol9>:
	SendPos(6109)
Return
;<cm_TrgSortByCol10>: >>0{{{2
<cm_TrgSortByCol10>:
	SendPos(6110)
Return
;<cm_TrgSortByCol99>: >>9{{{2
<cm_TrgSortByCol99>:
	SendPos(6199)
Return
;<cm_LeftSortByCol1>: >>左窗口: 按第 1 列排序{{{2
<cm_LeftSortByCol1>:
	SendPos(6201)
Return
;<cm_LeftSortByCol2>: >>左窗口: 按第 2 列排序{{{2
<cm_LeftSortByCol2>:
	SendPos(6202)
Return
;<cm_LeftSortByCol3>: >>...{{{2
<cm_LeftSortByCol3>:
	SendPos(6203)
Return
;<cm_LeftSortByCol4>: >>最多 99 列{{{2
<cm_LeftSortByCol4>:
	SendPos(6204)
Return
;<cm_LeftSortByCol5>: >>5{{{2
<cm_LeftSortByCol5>:
	SendPos(6205)
Return
;<cm_LeftSortByCol6>: >>6{{{2
<cm_LeftSortByCol6>:
	SendPos(6206)
Return
;<cm_LeftSortByCol7>: >>7{{{2
<cm_LeftSortByCol7>:
	SendPos(6207)
Return
;<cm_LeftSortByCol8>: >>8{{{2
<cm_LeftSortByCol8>:
	SendPos(6208)
Return
;<cm_LeftSortByCol9>: >>9{{{2
<cm_LeftSortByCol9>:
	SendPos(6209)
Return
;<cm_LeftSortByCol10>: >>0{{{2
<cm_LeftSortByCol10>:
	SendPos(6210)
Return
;<cm_LeftSortByCol99>: >>9{{{2
<cm_LeftSortByCol99>:
	SendPos(6299)
Return
;<cm_RightSortByCol1>: >>右窗口: 按第 1 列排序{{{2
<cm_RightSortByCol1>:
	SendPos(6301)
Return
;<cm_RightSortByCol2>: >>右窗口: 按第 2 列排序{{{2
<cm_RightSortByCol2>:
	SendPos(6302)
Return
;<cm_RightSortByCol3>: >>...{{{2
<cm_RightSortByCol3>:
	SendPos(6303)
Return
;<cm_RightSortByCol4>: >>最多 99 列{{{2
<cm_RightSortByCol4>:
	SendPos(6304)
Return
;<cm_RightSortByCol5>: >>5{{{2
<cm_RightSortByCol5>:
	SendPos(6305)
Return
;<cm_RightSortByCol6>: >>6{{{2
<cm_RightSortByCol6>:
	SendPos(6306)
Return
;<cm_RightSortByCol7>: >>7{{{2
<cm_RightSortByCol7>:
	SendPos(6307)
Return
;<cm_RightSortByCol8>: >>8{{{2
<cm_RightSortByCol8>:
	SendPos(6308)
Return
;<cm_RightSortByCol9>: >>9{{{2
<cm_RightSortByCol9>:
	SendPos(6309)
Return
;<cm_RightSortByCol10>: >>0{{{2
<cm_RightSortByCol10>:
	SendPos(6310)
Return
;<cm_RightSortByCol99>: >>9{{{2
<cm_RightSortByCol99>:
	SendPos(6399)
Return
;自定义列视图 =========================================
Return
;<cm_SrcCustomView1>: >>来源窗口: 自定义列视图 1{{{2
<cm_SrcCustomView1>:
	SendPos(271)
Return
;<cm_SrcCustomView2>: >>来源窗口: 自定义列视图 2{{{2
<cm_SrcCustomView2>:
	SendPos(272)
Return
;<cm_SrcCustomView3>: >>...{{{2
<cm_SrcCustomView3>:
	SendPos(273)
Return
;<cm_SrcCustomView4>: >>最多 29 个{{{2
<cm_SrcCustomView4>:
	SendPos(274)
Return
;<cm_SrcCustomView5>: >>5{{{2
<cm_SrcCustomView5>:
	SendPos(275)
Return
;<cm_SrcCustomView6>: >>6{{{2
<cm_SrcCustomView6>:
	SendPos(276)
Return
;<cm_SrcCustomView7>: >>7{{{2
<cm_SrcCustomView7>:
	SendPos(277)
Return
;<cm_SrcCustomView8>: >>8{{{2
<cm_SrcCustomView8>:
	SendPos(278)
Return
;<cm_SrcCustomView9>: >>9{{{2
<cm_SrcCustomView9>:
	SendPos(279)
Return
;<cm_LeftCustomView1>: >>左窗口: 自定义列视图 1{{{2
<cm_LeftCustomView1>:
	SendPos(710)
Return
;<cm_LeftCustomView2>: >>左窗口: 自定义列视图 2{{{2
<cm_LeftCustomView2>:
	SendPos(72)
Return
;<cm_LeftCustomView3>: >>...{{{2
<cm_LeftCustomView3>:
	SendPos(73)
Return
;<cm_LeftCustomView4>: >>最多 29 个{{{2
<cm_LeftCustomView4>:
	SendPos(74)
Return
;<cm_LeftCustomView5>: >>5{{{2
<cm_LeftCustomView5>:
	SendPos(75)
Return
;<cm_LeftCustomView6>: >>6{{{2
<cm_LeftCustomView6>:
	SendPos(76)
Return
;<cm_LeftCustomView7>: >>7{{{2
<cm_LeftCustomView7>:
	SendPos(77)
Return
;<cm_LeftCustomView8>: >>8{{{2
<cm_LeftCustomView8>:
	SendPos(78)
Return
;<cm_LeftCustomView9>: >>9{{{2
<cm_LeftCustomView9>:
	SendPos(79)
Return
;<cm_RightCustomView1>: >>右窗口: 自定义列视图 1{{{2
<cm_RightCustomView1>:
	SendPos(171)
Return
;<cm_RightCustomView2>: >>右窗口: 自定义列视图 2{{{2
<cm_RightCustomView2>:
	SendPos(172)
Return
;<cm_RightCustomView3>: >>...{{{2
<cm_RightCustomView3>:
	SendPos(173)
Return
;<cm_RightCustomView4>: >>最多 29 个{{{2
<cm_RightCustomView4>:
	SendPos(174)
Return
;<cm_RightCustomView5>: >>5{{{2
<cm_RightCustomView5>:
	SendPos(175)
Return
;<cm_RightCustomView6>: >>6{{{2
<cm_RightCustomView6>:
	SendPos(176)
Return
;<cm_RightCustomView7>: >>7{{{2
<cm_RightCustomView7>:
	SendPos(177)
Return
;<cm_RightCustomView8>: >>8{{{2
<cm_RightCustomView8>:
	SendPos(178)
Return
;<cm_RightCustomView9>: >>9{{{2
<cm_RightCustomView9>:
	SendPos(179)
Return
;<cm_SrcNextCustomView>: >>来源窗口: 下一个自定义视图{{{2
<cm_SrcNextCustomView>:
	SendPos(5501)
Return
;<cm_SrcPrevCustomView>: >>来源窗口: 上一个自定义视图{{{2
<cm_SrcPrevCustomView>:
	SendPos(5502)
Return
;<cm_TrgNextCustomView>: >>目标窗口: 下一个自定义视图{{{2
<cm_TrgNextCustomView>:
	SendPos(5503)
Return
;<cm_TrgPrevCustomView>: >>目标窗口: 上一个自定义视图{{{2
<cm_TrgPrevCustomView>:
	SendPos(5504)
Return
;<cm_LeftNextCustomView>: >>左窗口: 下一个自定义视图{{{2
<cm_LeftNextCustomView>:
	SendPos(5505)
Return
;<cm_LeftPrevCustomView>: >>左窗口: 上一个自定义视图{{{2
<cm_LeftPrevCustomView>:
	SendPos(5506)
Return
;<cm_RightNextCustomView>: >>右窗口: 下一个自定义视图{{{2
<cm_RightNextCustomView>:
	SendPos(5507)
Return
;<cm_RightPrevCustomView>: >>右窗口: 上一个自定义视图{{{2
<cm_RightPrevCustomView>:
	SendPos(5508)
Return
;<cm_LoadAllOnDemandFields>: >>所有文件都按需加载备注{{{2
<cm_LoadAllOnDemandFields>:
	SendPos(5512)
Return
;<cm_LoadSelOnDemandFields>: >>仅选中的文件按需加载备注{{{2
<cm_LoadSelOnDemandFields>:
	SendPos(5513)
Return
;<cm_ContentStopLoadFields>: >>停止后台加载备注{{{2
<cm_ContentStopLoadFields>:
	SendPos(5514)
Return
