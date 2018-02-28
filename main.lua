--Title: Local Variables
--Name: Ryoma Scott
--Course: ICS2O
--This program displays a rectangle and shows its area

--create my local variables
local areaTextRect
local areaTextCircle
local textSize 
local myRectangle
local widthOfRectangle = 150
local heightOfRectangle = 100
local areaOfRectangle
local myCircle
local radiusOfCircle = 75
local areaOfCircle

--set the background colour of my screen. Remember that colours are between 0 and 1.
display.setDefault ("background", 0/255, 0/255, 255/255)

-- to remove status bar
display.setStatusBar (display.HiddenStatusBar)

--draw the rectangle that is half the width and the height of the screen size.
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)

myCircle = display.newCircle(0, 0, radiusOfCircle)

--anchor the rectangle in the top left corner of the screen and set it (x,y) position.
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 20
myRectangle.y = 20

myCircle.anchorX = -1
myCircle.anchorY = -1
myCircle.x = 250
myCircle.y = -10

--set the width of the border
myRectangle.strokeWidth = 20

myCircle.strokeWidth = 10

--set the colour of the rectangle
myRectangle:setFillColor(0.7, 0.1, 0.3)

myCircle:setFillColor(0.7, 0.1, 0.3)

--set the colour of the border
myRectangle:setStrokeColor(0, 1, 0)

myCircle:setStrokeColor(1, 2, 1)

--calculate the area
areaOfRectangle = widthOfRectangle * heightOfRectangle

areaOfCircle = 3.14 * radiusOfCircle * radiusOfCircle

--write the area on the screen. Take into consideration the size of the font when 
--positioning it on the screen,
areaTextRect = display.newText("The area of this rectangle with a width of \n" ..
    widthOfRectangle .. " and a height of " .. heightOfRectangle .. " is " ..
    areaOfRectangle .. " pixels².", 1, 1, Arial, 25)

areaTextCircle = display.newText("The area of this circle with a radius of \n" ..
	radiusOfCircle .. " multiplied by " .. 3.14 .. " is " ..
	areaOfCircle .. " pixels².", 1, 1, Arial, 25)

--anchor the text and set its (x,y) position
areaTextRect.anchorX = 0
areaTextRect.anchorY = 0
areaTextRect.x = 20
areaTextRect.y = display.contentHeight/2

areaTextCircle.anchorX = -1
areaTextCircle.anchorY = -1
areaTextCircle.x = 10
areaTextCircle.y = display.contentHeight/2+100

--set the colour of the newText
areaTextRect:setTextColor(1, 1, 1)

areaTextCircle:setTextColor(1, 1, 1)