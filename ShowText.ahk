ShowText(text, overTaskbar=0, size=40, color="red", x="center", y=550, manualRemove=0) {
	TransSplashText_Off()
	TransSplashText_On(text, "", color)
	SetTimer, RemoveText, 3000
} 
 
RemoveText: 
	SetTimer, RemoveText, Off 
	TransSplashText_Off()
return