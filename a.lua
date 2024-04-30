local kiwi = {}
function kiwi.runc(code)
	game.Players:Chat(code)
end

function kiwi.notify(text)
	kiwi.runc(":chatnotifyc me 0 200 0 [🥝] "..text)
end

function kiwi.servernotify(text)
	kiwi.runc(":chatnotifyc all 0 200 0 [🥝] "..text)
end

function kiwi.rank()
	--[[local spos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	wait(0.05)
	repeat
		for i,v in pairs(workspace.SecureParts.AdminPads:GetChildren()) do
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Head.CFrame
			wait()
		end
		wait()
	until workspace.SecureParts.AdminPads:FindFirstChild(game.Players.LocalPlayer.Name.."'s admin")
	task.wait()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spos]]
	local plrcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			local cooldown = .1
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(13.7, 25.05, 106.492)
			wait(cooldown)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9.7, 25.05, 106.492)
			wait(cooldown)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5.7, 25.05, 106.492)
			wait(cooldown)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1.7, 25.05, 106.492)
			wait(cooldown)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2.3, 25.05, 106.492)
			wait(cooldown)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6.3, 25.05, 106.492)
			wait(cooldown)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.3, 25.05, 106.492)
			wait(cooldown)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-14.3, 25.05, 106.492)
			wait(cooldown)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-18.3, 25.05, 106.492)
			wait(cooldown)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = plrcframe
end

function kiwi.tpto(x, y, z)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(x, y, z)
end

function kiwi.chat(message)
	local args = {
		[1] = message,
		[2] = "All"
	}

	game.Players:Chat(message)
	game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
end

function kiwi.disablekillbricks()
	for _, killbrick in pairs(workspace.SecureParts.Lava:GetChildren()) do
		killbrick:FindFirstChild("TouchInterest"):Destroy()
	end
end

function kiwi.resetadminusers()
	--upcomming
end

function kiwi.resetbuildkit()
	--upcomming
end



--CHECKIF's

function kiwi:isadmin()

end

function kiwi:ispermadmin()

end

function kiwi:iseuthed()

end

function kiwi:ismeshes()

end

function kiwi:istherednames()

end
return kiwi
