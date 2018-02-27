--Title: Local Variables
--Name: Ryoma Scott
--Course: ICS2O
--This program displays a rectangle and shows its area

--create my local variables
local areaText
local textSize 
local myRectangle
local widthOfRectangle = 150
local heightOfRectangle = 100
local areaOfRectangle
local myCircle
local widthOfCircle = 150
local heightOfCircle = 100
local areaOfCircle

--set the background colour of my screen. Remember that colours are between 0 and 1.
display.setDefault ("background", 0/255, 0/255, 255/255)

-- to remove status bar
display.setStatusBar (display.HiddenStatusBar)

--draw the rectangle that is half the width and the height of the screen size.
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)
myCircle = display.newCirc(0, 0, widthOfRectangle, heightOfCircle)

--anchor the rectangle in the top left corner of the screen and set it (x,y) position.
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 20
myRectangle.y = 20

myCircle.anchorX = 1
--set the width of the border
myRectangle.strokeWidth = 20

--set the colour of the rectangle
myRectangle:setFillColor(0.7, 0.1, 0.3)

--set the colour of the border
myRectangle:setStrokeColor(0, 1, 0)

--calculate the area
areaOfRectangle = widthOfRectangle * heightOfRectangle

--write the area on the screen. Take into consideration the size of the font when 
--positioning it on the screen,
areaText = display.newText("the area of this rectangle with a width of \n" ..
    widthOfRectangle .. "and a height of" .. heightOfRectangle .. " is " ..
    areaOfRectangle .. " pixels².", 1, 1, Arial, 25)

--anchor the text and set its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 20
areaText.y = display.contentHeight/2

--set the colour of the newText
areaText:setTextColor(1, 1, 1)