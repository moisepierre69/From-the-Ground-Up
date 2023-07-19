--[[ 
	From the Ground Up - Lua Programming
	File: fromthegroundup.lua

--]]

-- Variables for the game
local score = 0
local lives = 3

-- Function to move the player
function MovePlayer( direction )
	if direction == "up" then
		-- Move the player up
	elseif direction == "down" then
		-- Move the player down
	elseif direction == "left" then
		-- Move the player left
	elseif direction == "right" then
		-- Move the player right
	end
end

-- Function to draw the game on the screen
function DrawGame()
	-- Draw the game
end

-- Function to update the player position
function UpdatePlayerPosition()
	-- Update the player position
end

-- Function to handle input from the player
function HandleInput( key )
	if key == "up" then
		MovePlayer("up")
	elseif key == "down" then
		MovePlayer("down")
	elseif key == "left" then
		MovePlayer("left")
	elseif key == "right" then
		MovePlayer("right")
	end
end

-- Function to generate an enemy
function GenerateEnemy()
	-- Generate an enemy
end

-- Function to update enemy positions
function UpdateEnemyPositions()
	-- Update the enemy positions
end

-- Function to detect collisions
function DetectCollisions()
	-- Detect collisions
end

-- Function to update the score
function UpdateScore( points )
	score = score + points
end

-- Function to check for game over
function CheckGameOver()
	if lives <= 0 then
		-- Game over!
	end
end

-- Main game loop
while true do
	DrawGame()
	HandleInput()
	UpdateEnemyPositions()
	UpdatePlayerPosition()
	DetectCollisions()
	UpdateScore()
	CheckGameOver()
	GenerateEnemy()
end