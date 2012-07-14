#SingleInstance force
#Persistent
#NoEnv

; Set the working and include directories
SetWorkingDir %A_ScriptDir%
#Include %A_ScriptDir%

; Initial Settings
CharSendMode = acute

#Include ShowText.ahk
#Include KeyBindings.ahk
#Include CharSend.ahk