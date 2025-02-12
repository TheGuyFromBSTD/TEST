local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local Window = DrRayLibrary:Load("Doomspire Defence", "Default")
local plr = game.Players.LocalPlayer
local stacking = false
local realstacking = false
local keep = true
local slot = "1"
local tower = ""

local TowerTab = DrRayLibrary.newTab("Towers", "rbxassetid://15226714131")

TowerTab.newToggle([["Stacking"]], "Thats so fake...", false, function(toggleState)
    realstacking = toggleState
end)

TowerTab.newToggle([[Stacking]], "Cranking 90s????", false, function(toggleState)
    stacking = toggleState
end)

TowerTab.newDropdown("Change Selected Slot", "(for the loadout changer)", {"1", "2", "3", "4", "5", "6"}, function(selectedOption)
    slot = selectedOption
end)

TowerTab.newDropdown("Change Tower (Starters)", "To change the tower in the selected slot", {"Battler", "Slingshotter", "Sword Master", "Paintballer", "Bomber", "Freezer"}, function(selectedOption)
    tower = selectedOption
end)

TowerTab.newDropdown("Change Tower (Intermediate)", "To change the tower in the selected slot", {"Baller", "Rocketeer", "Mr Tix", "Troweler", "Arsenal", "Raygunner", "Cloner", "Six-Shooter"}, function(selectedOption)
    tower = selectedOption
end)

TowerTab.newDropdown("Change Tower (Advanced)", "To change the tower in the selected slot", {"Spawn", "Pianist", "Heavy Gunner", "Boombox", "Hyperlaser", "Wizard", "Rockstar", "Shielder", "Corsair", "General", "Machinery", "Terminal Garage"}, function(selectedOption)
    tower = selectedOption
end)

TowerTab.newButton("Set Slot", "Make sure to only place owned towers", function()
    plr.Loadout[slot].Value = tower
end)

TowerTab.newButton("Place anywhere", "Thats right!", function()
    for i,v in pairs(workspace:GetDescendants()) do
        if v.Parent == workspace.Map:FindFirstChildOfClass("Folder").Area.TowerArea then continue end
        if v:IsDescendantOf(workspace.Map:FindFirstChildOfClass("Folder").Waypoints) then continue end
        if v:IsDescendantOf(workspace.Towers) then continue end
        if v:IsDescendantOf(workspace.Enemy) then continue end
        if v:IsA("BasePart") then
            v.Parent = workspace.Map:FindFirstChildOfClass("Folder").Area.TowerArea
        end
    end
end)

local MiscTab = DrRayLibrary.newTab("Misc", "rbxassetid://123835225269148")

MiscTab.newButton("Pause", "Freeze lil bro!", function()
    game:GetService("ReplicatedStorage").Events.Game.PauseGame:FireServer()
end)

MiscTab.newToggle([[Keep]], "if u teleport this stays", true, function(toggleState)
    keep = toggleState
end)

if #game.Players:GetChildren() < 2 then
    MiscTab.newButton("Set speed to 2", "Only with gamepass tho :(", function()
        while workspace.Info.GameSpeed.Value < 2 do
            game:GetService("ReplicatedStorage").Events.Game.ChangeSpeed:FireServer()
            task.wait(0.5)
        end
    end)
end

if workspace:FindFirstChild("Towers") then
    workspace.Towers.ChildAdded:Connect(function (child)
        if stacking == false then return end
        local placepart = Instance.new("Part")
        placepart.Size = Vector3.new(1,0.05,1)
        placepart.Anchored = true
        placepart.CanCollide = false
        placepart.Transparency = 1
        placepart.Position = child.Position + Vector3.new(0,1,0)
        placepart.Parent = workspace.Map:FindFirstChildOfClass("Folder").Area.TowerArea
    end)
    workspace.Towers.DescendantAdded:Connect(function(child)
        if realstacking == false then return end
        if child.Name == "RedBox" then
            child.Size = Vector3.new(0,0,0)
        end
    end)
end

game.Workspace.ChildAdded:Connect(function(child)
    if realstacking == false then return end
    local checkbox = child:FindFirstChild("CheckBox")
    if checkbox then
        checkbox.Size = Vector3.new(0,0,0)
    end
end)

Players.LocalPlayer.OnTeleport:Connect(function(State)
	if State == Enum.TeleportState.Started then
		if keep then
			queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/TheGuyFromBSTD/TEST/refs/heads/main/doomspiredefence.lua'))()")
		end
	end
end)
