local Game = 5591597781
local Lobby = 0
function claimRewards()
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("DailySpin"):WaitForChild("RF:RedeemReward"):InvokeServer()
end
function JoinElevator(v)
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Elevators"):WaitForChild("RF:Enter"):InvokeServer(v)
  task.wait(0.05)
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Elevators"):WaitForChild("RF:SetSize"):InvokeServer(1)
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Elevators"):WaitForChild("RF:SetReady"):InvokeServer(1)

end
function checkLobby() 
	if game.PlaceId == Lobby then
		return true
	else
		return false
	end
function CheckGame()
	if game.PlaceId == Game then
			return true
		else
			return false
		end
function Ready()
game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer("Difficulty","Ready")
  end
function CheckMap(Maps)
if game.PlaceId == Game then 
repeat task.wait() until workspace:GetAttribute("Map")
    if workspace:GetAttribute("Map") == Maps then 
      return true
    else
      return false
  end
end
function PickMode(Mode)

game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer("Difficulty",
	"Vote",Mode)
  end

  function TDS:Place(Tower,Wave,Rotation,Position,Time)
		local Time = game:GetService("ReplicatedStorage").State.Timer.Time 
    repeat task.wait() until Time.Value < Time 
game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer({
	"Troops",
	"Place",
	{
		Rotation = Rotation,
		Position = Position
	},
	Tower
})
  end
  function TDS:Loadout(List)
	if CheckPlace() then return end -- equipping is a lobby action
	task.spawn(function()
		local owned = RemoteFunction:InvokeServer("Session", "Search", "Inventory.Troops")
		if type(owned) ~= "table" then Log("Error", "Loadout: inventory read failed") return end
		for name, data in pairs(owned) do
			if data.Equipped then RemoteEvent:FireServer("Inventory", "Unequip", "Tower", name) end
		end
		for _, name in ipairs(info) do
			RemoteEvent:FireServer("Inventory", "Equip", "tower", name)
		end
	end)
end

  function TDS:Upgrade(Tower,Time,Path)
    local Time = game:GetService("ReplicatedStorage").State.Timer.Time 
    repeat task.wait() until Time.Value < Time 
    repeat  local Remote = game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(	"Troops",
	"Upgrade",
	"Set",
	{
		Troop = workspace:WaitForChild("Towers"):WaitForChild(Tower),
		Path = 1
	})
    until Remote == true
  end
