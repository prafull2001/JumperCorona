local credits = {}


function credits.drawCredits()

	creditsTheme = audio.loadStream("Music/creditsTheme.ogg")
	creditsThemeChannel = audio.play( creditsTheme, { channel=3, loops=-1, fadein= 0 } )

	creditsBackground = display.newImage("Background/creditsBackground.jpg")
	credits = display.newText("*INSERT CREDITS HERE*", display.contentCenterX, 70, native.systemFont, 30)

	myButtons.drawButtons()


end


function credits.cleanUp()

	backButton3:removeEventListener( "tap", myButtons.goBack)	

end


function credits.sayHello()
	print("instructions - Hello....")
end


return credits
