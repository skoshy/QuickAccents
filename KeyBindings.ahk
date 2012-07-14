`:: 
SendInput `` 
return 
 
+` UP::
if shifted != true 
SendInput ~ 
else 
shifted = false 
return 
 
` & a::
if CharSendMode = acute
	CharSend("á", "Á")
else if CharSendMode = umlaut
	CharSend("ä", "Ä")
else if CharSendMode = grave
	CharSend("à", "À") 
return  
  
` & e::
if CharSendMode = acute
	CharSend("é", "É")  
else if CharSendMode = umlaut
	CharSend("ë", "Ë")  
else if CharSendMode = grave
	CharSend("è", "È") 
return  
  
` & i::  
if CharSendMode = acute
	CharSend("í", "Í")  
else if CharSendMode = umlaut
	CharSend("ï", "Ï")  
else if CharSendMode = grave
	CharSend("ì", "Ì") 
return  
  
` & o:: 
if CharSendMode = acute 
	CharSend("ó", "Ó")  
else if CharSendMode = umlaut
	CharSend("ö", "Ö")  
else if CharSendMode = grave
	CharSend("ò", "Ò")  
return  
  
` & u::  
if CharSendMode = acute
	CharSend("ú", "Ú")  
else if CharSendMode = umlaut
	CharSend("ü", "Ü")  
else if CharSendMode = grave
	CharSend("ù", "Ù")  
return  

` & y::
CharSend("Ψ", "Ψ")  
return  
  
` & n::
CharSend("ñ", "Ñ")  
return  
  
` & c::  
CharSend("ç", "Ç")  
return  
  
` & 1::  
CharSend("¡", "¡")  
return  
  
` & /::  
CharSend("¿", "¿")  
return 
 
^` UP:: 
SendInput ~ 
return 
 

` & Left:: 
ShowText("Acute Mode", 1,20,"green") 
CharSendMode = acute
return

` & Right:: 
ShowText("Umlaut Mode", 1,20,"blue") 
CharSendMode = umlaut
return

` & Up:: 
ShowText("Grave Mode", 1,20,"purple") 
CharSendMode = grave
return