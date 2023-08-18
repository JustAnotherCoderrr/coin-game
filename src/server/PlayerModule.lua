local PlayerModule = {}

function PlayerModule:PlayerAdded()

    local Players = game:GetService('Players')

    Players.PlayerAdded:Connect(function(NewPlayer)
    

        local Coins = Instance.new('IntValue')

        Coins.Name = 'Coins'
        Coins.Value = 10
        Coins.Parent = NewPlayer
    
    end)
end


return PlayerModule 