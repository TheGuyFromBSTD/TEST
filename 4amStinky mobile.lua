
task.spawn(function()
     while task.wait(0.05) do
         local args = {
            [1] = 2,
            [2] = false
           }
        local otherargs = {
            [1] = 1,
            [2] = false
          }
         game:GetService("ReplicatedStorage"):WaitForChild("__remotes"):WaitForChild("BossService"):WaitForChild("AttackConv"):FireServer(unpack(args))
         game:GetService("ReplicatedStorage"):WaitForChild("__remotes"):WaitForChild("BossService"):WaitForChild("AttackConv"):FireServer(unpack(otherargs))
     end
end)
