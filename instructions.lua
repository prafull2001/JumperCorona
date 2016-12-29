local instructions = {}


function instructions.drawInstructions()

	

	instructionsBackground = display.newImage("Background/instructionsBackground.jpg")
	instructions = display.newText("*INSERT INSTRUCTIONS HERE*", display.contentCenterX, 70, native.systemFont, 30)

	myButtons.drawButtons()	


end


function instructions.cleanUp()

	backButton2:removeEventListener( "tap", myButtons.goBack)

end


function instructions.sayHello()
	print("instructions - Hello....")
end


return instructions
