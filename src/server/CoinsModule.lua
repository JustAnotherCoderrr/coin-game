local CoinsModule = {}

function CoinsModule:CreateCoins()


    local NewCoin = game.ReplicatedStorage.Coin:Clone()
	
	NewCoin.Parent = Workspace
	
	NewCoin.Position = Vector3.new(
		math.random(-100,100),
		5,
		math.random(-100,100)

	)

    Workspace.MoneySpawn:Play()
	
	NewCoin.Touched:Connect(function(part)
		
		print('Touched')
		local Humanoid = part.Parent:FindFirstChild('Humanoid')
		
		if Humanoid then
			
			local Plr = game.Players:GetPlayerFromCharacter(Humanoid.Parent)
			
			if Plr then
				
				Plr.Coins.Value = Plr.Coins.Value + 10
				
				NewCoin:Destroy()
			end
		end
	end)
	
	print('Spawned a new coin')

	wait(math.random(1,100))
	
	
	self:CreateCoins()
end

return CoinsModule