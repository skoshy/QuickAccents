ShowText(text, overTaskbar=0, size=40, color="red", x="center", y=550, manualRemove=0) {
Gui, 1:Destroy 
Gui, 1:font, s%size% c%color% bold, Verdana 
Gui, 1:Add, Text, h%size% x0 y0 Center, %text% 
Gui, 1:Color, 1a1a1a 
Gui, 1:-Caption +ToolWindow 
Gui, 1:Show, Hide NoActivate x4000 y4000, showthistextandstuff1 
ControlGetPos,,,width,height,%text%,showthistextandstuff1 
WinSet, TransColor, 1a1a1a 180, showthistextandstuff1 
Gui 1:-Caption +ToolWindow +Alwaysontop 
Gui, 1:Show, NA 
if overTaskbar=1 
 { 
   SysGet, taskbarX, 16 
   WinGetPos,,taskbarY,,,ahk_class Shell_TrayWnd 
   x:=taskbarX-width-3 
   y:=taskbarY-height-3 
 } 
if x=center    
   x:=A_ScreenWidth/2-width/2 
WinMove, showthistextandstuff1,, %x%, %y%,%width%,%height% 
if manualRemove=0 
  SetTimer, RemoveText, 3000
} 
 
RemoveText: 
SetTimer, RemoveText, Off 
Gui, 1:Destroy
return