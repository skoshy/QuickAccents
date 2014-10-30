#SingleInstance force
#Persistent
#NoEnv

Menu, Tray, Icon, Images\QuickAccents.ico

; Set the working and include directories
SetWorkingDir %A_ScriptDir%
#Include %A_ScriptDir%

; Initial Settings
CharSendMode = acute

#Include TransSplashText.ahk
#Include KeyBindings.ahk
#Include CharSend.ahk