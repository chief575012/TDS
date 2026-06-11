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
function TDS:Place(Tower,)

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
