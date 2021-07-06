touchedPart = game.Workspace.TouchedPart --script.Parent:WaitForChild("TouchedPart")

local RESET_SECONDS = 2
local isTouched = false

touchedPart.Touched:Connect(function()
	if not isTouched then
		isTouched = true
		touchedPart.BrickColor = BrickColor.Random()
		wait(RESET_SECONDS)
		isTouched = false
	end
end)
