SC029:: 
SendInput `` 
return 
 
+SC029 UP::
if shifted != true 
SendInput ~ 
else 
shifted = false 
return 
 
SC029 & a::
if CharSendMode = acute
	CharSend("á", "Á")
else if CharSendMode = umlaut
	CharSend("ä", "Ä")
else if CharSendMode = grave
	CharSend("à", "À") 
return  
  
SC029 & e::
if CharSendMode = acute
	CharSend("é", "É")  
else if CharSendMode = umlaut
	CharSend("ë", "Ë")  
else if CharSendMode = grave
	CharSend("è", "È") 
return  
  
SC029 & i::  
if CharSendMode = acute
	CharSend("í", "Í")  
else if CharSendMode = umlaut
	CharSend("ï", "Ï")  
else if CharSendMode = grave
	CharSend("ì", "Ì") 
return  
  
SC029 & o:: 
if CharSendMode = acute 
	CharSend("ó", "Ó")  
else if CharSendMode = umlaut
	CharSend("ö", "Ö")  
else if CharSendMode = grave
	CharSend("ò", "Ò")  
return  
  
SC029 & u::  
if CharSendMode = acute
	CharSend("ú", "Ú")  
else if CharSendMode = umlaut
	CharSend("ü", "Ü")  
else if CharSendMode = grave
	CharSend("ù", "Ù")  
return  

SC029 & y::
CharSend("Ψ", "Ψ")  
return  
  
SC029 & n::
CharSend("ñ", "Ñ")  
return  
  
SC029 & c::  
CharSend("ç", "Ç")  
return  
  
SC029 & 1::  
CharSend("¡", "¡")  
return  
  
SC029 & /::  
CharSend("¿", "¿")
return 
 
^SC029 UP:: 
SendInput ~ 
return 
 

SC029 & Left:: 
ShowText("Acute Mode", 1,20,"green")
CharSendMode = acute
return

SC029 & Right:: 
ShowText("Umlaut Mode", 1,20,"blue")
CharSendMode = umlaut
return

SC029 & Up:: 
ShowText("Grave Mode", 1,20,"purple")
CharSendMode = grave
return