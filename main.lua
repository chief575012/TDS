local Game = 5591597781
local Lobby = 0
function claimRewards()
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("DailySpin"):WaitForChild("RF:RedeemReward"):InvokeServer()
end
function JoinElevator(v)
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Elevators"):WaitForChild("RF:Enter"):InvokeServer(v)
  task.wait(0.05)
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Elevators"):WaitForChild("RF:SetSize"):InvokeServer(1)
end
function Ready()
game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(	"Difficulty","Ready")
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

  function TDS:Place()
  local args = {
	"Troops",
	"Place",
	{
		Rotation = CFrame.new(0, 0, 0, 1, -0, 0, 0, 1, -0, 0, 0, 1),
		Position = vector.create(5.346579551696777, 0.24998024106025696, 26.561914443969727)
	},
	"Scout"
}
game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
  end
  function TDS:Loadout(List)

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
