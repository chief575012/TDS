function claimRewards()
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("DailySpin"):WaitForChild("RF:RedeemReward"):InvokeServer()
end
