local sus = {}

local BallsGames = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Green = Instance.new("Frame")
local Red = Instance.new("Frame")
local Blue = Instance.new("Frame")
local Yellow = Instance.new("Frame")
local Pit = Instance.new("Frame")
local TimeLabel = Instance.new("TextLabel")
local Ball = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local End = Instance.new("ScreenGui")
local Frame1 = Instance.new("Frame")
local Win = Instance.new("TextLabel")
local Desc = Instance.new("TextLabel")
BallsGames.Name = "BallsGames"
BallsGames.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
BallsGames.IgnoreGuiInset = true
BallsGames.Enabled = false

Frame.Parent = BallsGames
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Size = UDim2.new(1, 0, 1, 0)

Green.Name = "Green"
Green.Parent = Frame
Green.BackgroundColor3 = Color3.fromRGB(13, 225, 13)
Green.BorderColor3 = Color3.fromRGB(0, 0, 0)
Green.BorderSizePixel = 0
Green.Position = UDim2.new(0.816347241, 0, 0.336110383, 0)
Green.Size = UDim2.new(0.183150187, 0, 0.325520843, 0)

Red.Name = "Red"
Red.Parent = Frame
Red.BackgroundColor3 = Color3.fromRGB(225, 0, 0)
Red.BorderColor3 = Color3.fromRGB(0, 0, 0)
Red.BorderSizePixel = 0
Red.Position = UDim2.new(0.407774657, 0, -5.71807213e-05, 0)
Red.Size = UDim2.new(0.183150187, 0, 0.325520843, 0)

Blue.Name = "Blue"
Blue.Parent = Frame
Blue.BackgroundColor3 = Color3.fromRGB(17, 27, 225)
Blue.BorderColor3 = Color3.fromRGB(0, 0, 0)
Blue.BorderSizePixel = 0
Blue.Position = UDim2.new(0.407774806, 0, 0.673529804, 0)
Blue.Size = UDim2.new(0.183150187, 0, 0.325520843, 0)

Yellow.Name = "Yellow"
Yellow.Parent = Frame
Yellow.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
Yellow.BorderColor3 = Color3.fromRGB(0, 0, 0)
Yellow.BorderSizePixel = 0
Yellow.Position = UDim2.new(-6.5528955e-05, 0, 0.337195039, 0)
Yellow.Size = UDim2.new(0.183150187, 0, 0.325520843, 0)

Pit.Name = "Pit"
Pit.Parent = Frame
Pit.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Pit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Pit.BorderSizePixel = 0
Pit.Position = UDim2.new(0.309663385, 0, 0.335071713, 0)
Pit.Size = UDim2.new(0.379487187, 0, 0.326822907, 0)

TimeLabel.Name = "TimeLabel"
TimeLabel.Parent = Frame
TimeLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TimeLabel.BackgroundTransparency = 1.000
TimeLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TimeLabel.BorderSizePixel = 0
TimeLabel.Size = UDim2.new(0.128937736, 0, 0.229166672, 0)
TimeLabel.Font = Enum.Font.SourceSans
TimeLabel.Text = "5"
TimeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TimeLabel.TextScaled = true
TimeLabel.TextSize = 14.000
TimeLabel.TextWrapped = true

Ball.Name = "Ball"
Ball.Parent = script
Ball.AnchorPoint = Vector2.new(0.5, 0.5)
Ball.BackgroundColor3 = Color3.fromRGB(13, 225, 13)
Ball.BorderColor3 = Color3.fromRGB(0, 0, 0)
Ball.BorderSizePixel = 0
Ball.Position = UDim2.new(0.5, 0, 0.5, 0)
Ball.Size = UDim2.new(0.100000001, 0, 0.200000003, 0)
Ball.ZIndex = 2

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Ball

End.Name = "End"
End.Enabled = false
End.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
End.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame1.Parent = End
Frame1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame1.BorderSizePixel = 0
Frame1.Position = UDim2.new(0.316827446, 0, 0.3359375, 0)
Frame1.Size = UDim2.new(0.366300374, 0, 0.326822907, 0)

Win.Name = "Win"
Win.Parent = Frame1
Win.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Win.BackgroundTransparency = 1.000
Win.BorderColor3 = Color3.fromRGB(0, 0, 0)
Win.BorderSizePixel = 0
Win.Size = UDim2.new(1, 0, 0.637450218, 0)
Win.Font = Enum.Font.SourceSans
Win.Text = "Victory"
Win.TextColor3 = Color3.fromRGB(33, 225, 39)
Win.TextScaled = true
Win.TextSize = 14.000
Win.TextWrapped = true

Desc.Name = "Desc"
Desc.Parent = Frame1
Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Desc.BackgroundTransparency = 1.000
Desc.BorderColor3 = Color3.fromRGB(0, 0, 0)
Desc.BorderSizePixel = 0
Desc.Position = UDim2.new(0.205426276, 0, 0.490871966, 0)
Desc.Size = UDim2.new(0.588, 0, 0.374502003, 0)
Desc.Font = Enum.Font.SourceSans
Desc.Text = "YIPEEEEEEEEE"
Desc.TextColor3 = Color3.fromRGB(33, 225, 39)
Desc.TextScaled = true
Desc.TextSize = 14.000
Desc.TextWrapped = true

local plr = game.Players.LocalPlayer

local ui = Frame
local endscreen = End
local mouse = game.Players.LocalPlayer:GetMouse()
local colors = {
	[1] = {Name = "Green", Color = Color3.fromRGB(13, 225, 13)},
	[2] = {Name = "Red", Color = Color3.fromRGB(255, 0, 0)},
	[3] = {Name = "Blue", Color = Color3.fromRGB(17, 27, 225)},
	[4] = {Name = "Yellow", Color = Color3.fromRGB(255, 255, 0)}
}
local timer = 3

function sus.startball()
    if _G.Busy == true then return end
    _G.Busy = true
	_G.Won = false
    local ballsneeded = math.random(1)
    local ballsdone = 0
    timer = 3
    Pit:ClearAllChildren()
	for i=1, ballsneeded do
		local ball = Ball:Clone()
		Instance.new("UIDragDetector", ball)
		Instance.new("UIStroke", ball).Color = Color3.new(1, 1, 1)
		local color = colors[math.random(1,4)]
		ball.Parent = Pit
		ball.Name = color.Name
		ball.Position = UDim2.fromScale(1, 1)
		ball.BackgroundColor3 = color.Color
		ball.UIDragDetector.DragEnd:Connect(function(pos)
			for i,v in pairs(plr.PlayerGui:GetGuiObjectsAtPosition(mouse.X, mouse.Y)) do
				if v.Name == ball.Name and v.Parent == ui then
					if ball:FindFirstChild("UIDragDetector") then
						ball.UIStroke.Color = Color3.fromRGB(0, 0, 0)
						ball.UIDragDetector:Destroy()
						timer += 1
						ballsdone += 1
						ui.TimeLabel.Text = tostring(timer)
					end
				end
			end
		end)
	end
	BallsGames.Enabled = true
	while task.wait(1) do
		timer -= 1
		ui.TimeLabel.Text = tostring(timer)
		if ballsdone >= ballsneeded then
            _G.Busy = false
			_G.Won = true
			BallsGames.Enabled = false
			endscreen.Enabled = true
			endscreen.Frame.Win.Text = "Victory Royale"
			Desc.Text = "YIPPPEEEE"
			Desc.TextColor3 = Color3.fromRGB(0, 170, 0)
			endscreen.Frame.Win.TextColor3 = Color3.fromRGB(0, 170, 0)
            task.spawn(function ()
                task.wait(2)
                endscreen.Enabled = false
            end)
			break
		end
		if ballsdone < ballsneeded then
			if timer <= 0 then
                _G.Busy = false
				_G.Won = false
                BallsGames.Enabled = false
				endscreen.Enabled = true
				endscreen.Frame.Win.Text = "Loser :((("
				Desc.Text = "L BOZO"
				Desc.TextColor3 = Color3.fromRGB(170, 0, 0)
				endscreen.Frame.Win.TextColor3 = Color3.fromRGB(170, 0, 0)
                task.spawn(function ()
                    task.wait(2)
                    endscreen.Enabled = false
                end)
				break
			end
		end
	end
end

return sus
