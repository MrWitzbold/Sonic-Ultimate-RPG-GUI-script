function make_draggable(gui)
	local UserInputService = game:GetService("UserInputService")

	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end

	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end

local main = Instance.new("ScreenGui")
local master = Instance.new("Frame")
local title = Instance.new("TextLabel")
local credits = Instance.new("TextLabel")
local get_all_rings_button = Instance.new("TextButton")
local get_all_chaos_emeralds = Instance.new("TextButton")
local get_all_ring_capsules_button = Instance.new("TextButton")
local remove_obby_spikes = Instance.new("TextButton")
local set_speed_button = Instance.new("TextButton")
local speed_textbox = Instance.new("TextBox")
local fly_button = Instance.new("TextButton")
local teleport_to_spawn_button = Instance.new("TextButton")
local ImageLabel = Instance.new("ImageLabel")
local teleport_to_master_gem = Instance.new("TextButton")
local teleport_to_spring_jumps = Instance.new("TextButton")
local teleport_to_start_of_obby = Instance.new("TextButton")
local teleport_to_end_of_obby = Instance.new("TextButton")
local teleport_to_secret_obby = Instance.new("TextButton")

--Properties:

main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

master.Name = "master"
master.Parent = main
master.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
master.BorderColor3 = Color3.fromRGB(0, 0, 0)
master.Position = UDim2.new(0.715225637, 0, 0.0712871253, 0)
master.Size = UDim2.new(0, 278, 0, 458)

title.Name = "title"
title.Parent = master
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.Size = UDim2.new(0, 278, 0, 50)
title.Font = Enum.Font.SourceSans
title.Text = "Sonic Ultimate RPG GUI"
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true

credits.Name = "credits"
credits.Parent = master
credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
credits.BorderColor3 = Color3.fromRGB(0, 0, 0)
credits.Position = UDim2.new(0.485611498, 0, 0.965065479, 0)
credits.Size = UDim2.new(0, 143, 0, 16)
credits.Font = Enum.Font.SourceSans
credits.Text = "discord.gg/4jFcGAaq2T"
credits.TextColor3 = Color3.fromRGB(0, 0, 0)
credits.TextScaled = true
credits.TextSize = 14.000
credits.TextWrapped = true

get_all_rings_button.Name = "get_all_rings_button"
get_all_rings_button.Parent = master
get_all_rings_button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
get_all_rings_button.BorderColor3 = Color3.fromRGB(0, 0, 0)
get_all_rings_button.Position = UDim2.new(0.0215827338, 0, 0.124454148, 0)
get_all_rings_button.Size = UDim2.new(0, 95, 0, 26)
get_all_rings_button.Font = Enum.Font.SourceSans
get_all_rings_button.Text = "Get all rings"
get_all_rings_button.TextColor3 = Color3.fromRGB(0, 0, 0)
get_all_rings_button.TextScaled = true
get_all_rings_button.TextSize = 14.000
get_all_rings_button.TextWrapped = true

get_all_chaos_emeralds.Name = "get_all_chaos_emeralds"
get_all_chaos_emeralds.Parent = master
get_all_chaos_emeralds.BackgroundColor3 = Color3.fromRGB(129, 255, 196)
get_all_chaos_emeralds.BorderColor3 = Color3.fromRGB(0, 0, 0)
get_all_chaos_emeralds.Position = UDim2.new(0.388489217, 0, 0.124454148, 0)
get_all_chaos_emeralds.Size = UDim2.new(0, 163, 0, 26)
get_all_chaos_emeralds.Font = Enum.Font.SourceSans
get_all_chaos_emeralds.Text = "Get all chaos emeralds"
get_all_chaos_emeralds.TextColor3 = Color3.fromRGB(0, 0, 0)
get_all_chaos_emeralds.TextScaled = true
get_all_chaos_emeralds.TextSize = 14.000
get_all_chaos_emeralds.TextWrapped = true

get_all_ring_capsules_button.Name = "get_all_ring_capsules_button"
get_all_ring_capsules_button.Parent = master
get_all_ring_capsules_button.BackgroundColor3 = Color3.fromRGB(115, 255, 166)
get_all_ring_capsules_button.BorderColor3 = Color3.fromRGB(0, 0, 0)
get_all_ring_capsules_button.Position = UDim2.new(0.0215827338, 0, 0.194323137, 0)
get_all_ring_capsules_button.Size = UDim2.new(0, 129, 0, 26)
get_all_ring_capsules_button.Font = Enum.Font.SourceSans
get_all_ring_capsules_button.Text = "Get all ring capsules"
get_all_ring_capsules_button.TextColor3 = Color3.fromRGB(0, 0, 0)
get_all_ring_capsules_button.TextScaled = true
get_all_ring_capsules_button.TextSize = 14.000
get_all_ring_capsules_button.TextWrapped = true

remove_obby_spikes.Name = "remove_obby_spikes"
remove_obby_spikes.Parent = master
remove_obby_spikes.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
remove_obby_spikes.BorderColor3 = Color3.fromRGB(0, 0, 0)
remove_obby_spikes.Position = UDim2.new(0.507194221, 0, 0.194323137, 0)
remove_obby_spikes.Size = UDim2.new(0, 129, 0, 26)
remove_obby_spikes.Font = Enum.Font.SourceSans
remove_obby_spikes.Text = "Remove obby spikes"
remove_obby_spikes.TextColor3 = Color3.fromRGB(0, 0, 0)
remove_obby_spikes.TextScaled = true
remove_obby_spikes.TextSize = 14.000
remove_obby_spikes.TextWrapped = true

set_speed_button.Name = "set_speed_button"
set_speed_button.Parent = master
set_speed_button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
set_speed_button.BorderColor3 = Color3.fromRGB(0, 0, 0)
set_speed_button.Position = UDim2.new(0.0215827227, 0, 0.264192134, 0)
set_speed_button.Size = UDim2.new(0, 129, 0, 26)
set_speed_button.Font = Enum.Font.SourceSans
set_speed_button.Text = "Set speed"
set_speed_button.TextColor3 = Color3.fromRGB(0, 0, 0)
set_speed_button.TextScaled = true
set_speed_button.TextSize = 14.000
set_speed_button.TextWrapped = true

speed_textbox.Name = "speed_textbox"
speed_textbox.Parent = master
speed_textbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
speed_textbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
speed_textbox.Position = UDim2.new(0.514388502, 0, 0.264192134, 0)
speed_textbox.Size = UDim2.new(0, 127, 0, 26)
speed_textbox.ClearTextOnFocus = false
speed_textbox.Font = Enum.Font.SourceSans
speed_textbox.PlaceholderColor3 = Color3.fromRGB(56, 56, 56)
speed_textbox.PlaceholderText = "write a speed here"
speed_textbox.Text = ""
speed_textbox.TextColor3 = Color3.fromRGB(0, 0, 0)
speed_textbox.TextScaled = true
speed_textbox.TextSize = 14.000
speed_textbox.TextWrapped = true

fly_button.Name = "fly_button"
fly_button.Parent = master
fly_button.BackgroundColor3 = Color3.fromRGB(255, 250, 167)
fly_button.BorderColor3 = Color3.fromRGB(0, 0, 0)
fly_button.Position = UDim2.new(0.0287769791, 0, 0.334061146, 0)
fly_button.Size = UDim2.new(0, 262, 0, 26)
fly_button.Font = Enum.Font.SourceSans
fly_button.Text = "Epic Sonic Fly"
fly_button.TextColor3 = Color3.fromRGB(0, 0, 0)
fly_button.TextScaled = true
fly_button.TextSize = 14.000
fly_button.TextWrapped = true

teleport_to_spawn_button.Name = "teleport_to_spawn_button"
teleport_to_spawn_button.Parent = master
teleport_to_spawn_button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
teleport_to_spawn_button.BorderColor3 = Color3.fromRGB(0, 0, 0)
teleport_to_spawn_button.Position = UDim2.new(0.0287769791, 0, 0.423580766, 0)
teleport_to_spawn_button.Size = UDim2.new(0, 262, 0, 26)
teleport_to_spawn_button.Font = Enum.Font.SourceSans
teleport_to_spawn_button.Text = "Teleport to spawn"
teleport_to_spawn_button.TextColor3 = Color3.fromRGB(0, 0, 0)
teleport_to_spawn_button.TextScaled = true
teleport_to_spawn_button.TextSize = 14.000
teleport_to_spawn_button.TextWrapped = true

ImageLabel.Parent = master
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(-0.564748228, 0, 0.524017453, 0)
ImageLabel.Size = UDim2.new(0, 157, 0, 218)
ImageLabel.Image = "http://www.roblox.com/asset/?id=10088831894"
ImageLabel.ImageTransparency = 0.100

teleport_to_master_gem.Name = "teleport_to_master_gem"
teleport_to_master_gem.Parent = master
teleport_to_master_gem.BackgroundColor3 = Color3.fromRGB(203, 255, 245)
teleport_to_master_gem.BorderColor3 = Color3.fromRGB(0, 0, 0)
teleport_to_master_gem.Position = UDim2.new(0.0287769791, 0, 0.493449748, 0)
teleport_to_master_gem.Size = UDim2.new(0, 262, 0, 26)
teleport_to_master_gem.Font = Enum.Font.SourceSans
teleport_to_master_gem.Text = "Teleport to Master Gem"
teleport_to_master_gem.TextColor3 = Color3.fromRGB(0, 0, 0)
teleport_to_master_gem.TextScaled = true
teleport_to_master_gem.TextSize = 14.000
teleport_to_master_gem.TextWrapped = true

teleport_to_spring_jumps.Name = "teleport_to_spring_jumps"
teleport_to_spring_jumps.Parent = master
teleport_to_spring_jumps.BackgroundColor3 = Color3.fromRGB(203, 255, 245)
teleport_to_spring_jumps.BorderColor3 = Color3.fromRGB(0, 0, 0)
teleport_to_spring_jumps.Position = UDim2.new(0.0323741026, 0, 0.563318729, 0)
teleport_to_spring_jumps.Size = UDim2.new(0, 262, 0, 26)
teleport_to_spring_jumps.Font = Enum.Font.SourceSans
teleport_to_spring_jumps.Text = "Teleport to Spring Jumps"
teleport_to_spring_jumps.TextColor3 = Color3.fromRGB(0, 0, 0)
teleport_to_spring_jumps.TextScaled = true
teleport_to_spring_jumps.TextSize = 14.000
teleport_to_spring_jumps.TextWrapped = true

teleport_to_start_of_obby.Name = "teleport_to_start_of_obby"
teleport_to_start_of_obby.Parent = master
teleport_to_start_of_obby.BackgroundColor3 = Color3.fromRGB(203, 255, 245)
teleport_to_start_of_obby.BorderColor3 = Color3.fromRGB(0, 0, 0)
teleport_to_start_of_obby.Position = UDim2.new(0.0323741026, 0, 0.633187711, 0)
teleport_to_start_of_obby.Size = UDim2.new(0, 262, 0, 26)
teleport_to_start_of_obby.Font = Enum.Font.SourceSans
teleport_to_start_of_obby.Text = "Teleport to Obby"
teleport_to_start_of_obby.TextColor3 = Color3.fromRGB(0, 0, 0)
teleport_to_start_of_obby.TextScaled = true
teleport_to_start_of_obby.TextSize = 14.000
teleport_to_start_of_obby.TextWrapped = true

teleport_to_end_of_obby.Name = "teleport_to_end_of_obby"
teleport_to_end_of_obby.Parent = master
teleport_to_end_of_obby.BackgroundColor3 = Color3.fromRGB(203, 255, 245)
teleport_to_end_of_obby.BorderColor3 = Color3.fromRGB(0, 0, 0)
teleport_to_end_of_obby.Position = UDim2.new(0.0323741026, 0, 0.775109112, 0)
teleport_to_end_of_obby.Size = UDim2.new(0, 262, 0, 26)
teleport_to_end_of_obby.Font = Enum.Font.SourceSans
teleport_to_end_of_obby.Text = "Finish obby"
teleport_to_end_of_obby.TextColor3 = Color3.fromRGB(0, 0, 0)
teleport_to_end_of_obby.TextScaled = true
teleport_to_end_of_obby.TextSize = 14.000
teleport_to_end_of_obby.TextWrapped = true

teleport_to_secret_obby.Name = "teleport_to_secret_obby"
teleport_to_secret_obby.Parent = master
teleport_to_secret_obby.BackgroundColor3 = Color3.fromRGB(203, 255, 245)
teleport_to_secret_obby.BorderColor3 = Color3.fromRGB(0, 0, 0)
teleport_to_secret_obby.Position = UDim2.new(0.0323741026, 0, 0.705240071, 0)
teleport_to_secret_obby.Size = UDim2.new(0, 262, 0, 26)
teleport_to_secret_obby.Font = Enum.Font.SourceSans
teleport_to_secret_obby.Text = "Teleport to Secret Obby"
teleport_to_secret_obby.TextColor3 = Color3.fromRGB(0, 0, 0)
teleport_to_secret_obby.TextScaled = true
teleport_to_secret_obby.TextSize = 14.000
teleport_to_secret_obby.TextWrapped = true

-- Scripts:

local function CEXUI_fake_script() -- get_all_rings_button.LocalScript 
	local script = Instance.new('LocalScript', get_all_rings_button)

	function run()
		local rings = {}
		local initial_player_position = game.Players.LocalPlayer.Character.Head.Position
		
		for i,v in pairs(workspace.Rings:GetChildren()) do
			if v:IsA("Model") and v.Name == "Rings" then
				for j,w in pairs(v:GetChildren()) do
					table.insert(rings, w)
				end
			end
		end
		
		for i,v in pairs(rings) do
			local new_crame = CFrame.new(v.Position.X, v.Position.Y, v.Position.Z)
			game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(new_crame)
			wait(0.001)
		end
		
		wait(5)
		local new_cframe = CFrame.new(initial_player_position.X, initial_player_position.Y, initial_player_position.Z)
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(new_cframe)
	end
	
	script.Parent.MouseButton1Click:Connect(run)
end
coroutine.wrap(CEXUI_fake_script)()
local function SNGRM_fake_script() -- get_all_chaos_emeralds.LocalScript 
	local script = Instance.new('LocalScript', get_all_chaos_emeralds)

	function run()
		local chaos_emeralds = {}
		local initial_player_position = game.Players.LocalPlayer.Character.Head.Position
		
		for i,v in pairs(workspace.ChaosEmeralds:GetChildren()) do
			table.insert(chaos_emeralds, v)
		end
		
		for i,v in pairs(chaos_emeralds) do
			local new_cframe = CFrame.new(v.Position.X, v.Position.Y, v.Position.Z)
			game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(new_cframe)
			wait(0.001)
		end
		
		wait(5)
		local new_cframe = CFrame.new(initial_player_position.X, initial_player_position.Y, initial_player_position.Z)
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(new_cframe)
	end
	
	script.Parent.MouseButton1Click:Connect(run)
end
coroutine.wrap(SNGRM_fake_script)()
local function DLDDM_fake_script() -- get_all_ring_capsules_button.LocalScript 
	local script = Instance.new('LocalScript', get_all_ring_capsules_button)

	function run()
		local ring_capsule_bases = {}
		local initial_player_position = game.Players.LocalPlayer.Character.Head.Position
		
		for i,v in pairs(workspace.RingCapsules:GetChildren()) do
			print(v.Name)
			for j,w in pairs(v:GetChildren()) do
				if w.Name == "CapsuleBase" then
					table.insert(ring_capsule_bases, w)
				end
			end
		end
		
		for i,v in pairs(ring_capsule_bases) do
			local new_cframe = CFrame.new(v.Position.X, v.Position.Y, v.Position.Z)
			game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(new_cframe)
			wait(0.001)
		end
		
		wait(5)
		local new_cframe = CFrame.new(initial_player_position.X, initial_player_position.Y, initial_player_position.Z)
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(new_cframe)
	end
	
	script.Parent.MouseButton1Click:Connect(run)
end
coroutine.wrap(DLDDM_fake_script)()
local function VYDR_fake_script() -- remove_obby_spikes.LocalScript 
	local script = Instance.new('LocalScript', remove_obby_spikes)

	function run()
		for i,v in pairs(workspace["Cyan Obby"]:GetChildren()) do
			if v.Name:match("Spike") then
				v:Remove()
			end
		end
	end
	
	script.Parent.MouseButton1Click:Connect(run)
end
coroutine.wrap(VYDR_fake_script)()
local function YBMZPI_fake_script() -- set_speed_button.LocalScript 
	local script = Instance.new('LocalScript', set_speed_button)

	function run()
		for i,v in pairs(workspace["Cyan Obby"]:GetChildren()) do
			if v.Name:match("Spike") then
				v:Remove()
			end
		end
	end
	
	script.Parent.MouseButton1Click:Connect(run)
end
coroutine.wrap(YBMZPI_fake_script)()
local function VCWK_fake_script() -- fly_button.LocalScript 
	local script = Instance.new('LocalScript', fly_button)

	function run()
		local fly_toggle = nil
		if workspace:FindFirstChild("fly_toggle") then
			fly_toggle = Instance.new("BoolValue")
			fly_toggle.Name = "fly_toggle"
			fly_toggle.Value = false
		else
			fly_toggle = workspace:FindFirstChild("fly_toggle")
		end
		
		if fly_toggle.Value == false then
			fly_toggle.Value = true
		else
			fly_toggle.Value = false
		end
		
		if fly_toggle.Value == true then
			
		end
	end
	
	script.Parent.MouseButton1Click:Connect(run)
end
coroutine.wrap(VCWK_fake_script)()
local function UPYYJTV_fake_script() -- teleport_to_spawn_button.LocalScript 
	local script = Instance.new('LocalScript', teleport_to_spawn_button)

	function run()
		local position = Vector3.new(-184.74169921875, 5.481446266174316, -51.138580322265625)
		local new_cframe = CFrame.new(position.X, position.Y, position.Z)
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(new_cframe)
	end
	
	script.Parent.MouseButton1Click:Connect(run)
end
coroutine.wrap(UPYYJTV_fake_script)()
local function IDCCJ_fake_script() -- teleport_to_master_gem.LocalScript 
	local script = Instance.new('LocalScript', teleport_to_master_gem)

	function run()
		local position = Vector3.new(611.5463256835938, 60.41120910644531, -49.63101577758789)
		local new_cframe = CFrame.new(position.X, position.Y, position.Z)
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(new_cframe)
	end
	
	script.Parent.MouseButton1Click:Connect(run)
end
coroutine.wrap(IDCCJ_fake_script)()
local function GIJY_fake_script() -- teleport_to_spring_jumps.LocalScript 
	local script = Instance.new('LocalScript', teleport_to_spring_jumps)

	function run()
		local position = Vector3.new(-176.05703735351562, 8.445710182189941, 694.1231079101562)
		local new_cframe = CFrame.new(position.X, position.Y, position.Z)
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(new_cframe)
	end
	
	script.Parent.MouseButton1Click:Connect(run)
end
coroutine.wrap(GIJY_fake_script)()
local function JADM_fake_script() -- teleport_to_start_of_obby.LocalScript 
	local script = Instance.new('LocalScript', teleport_to_start_of_obby)

	function run()
		local position = Vector3.new(-3894.881103515625, 203.16790771484375, 680.3040161132812)
		local new_cframe = CFrame.new(position.X, position.Y, position.Z)
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(new_cframe)
	end
	
	script.Parent.MouseButton1Click:Connect(run)
end
coroutine.wrap(JADM_fake_script)()
local function QRDS_fake_script() -- teleport_to_end_of_obby.LocalScript 
	local script = Instance.new('LocalScript', teleport_to_end_of_obby)

	function run()
		local position = Vector3.new(-4777.0166015625, 210.69525146484375, -1110.1759033203125)
		local new_cframe = CFrame.new(position.X, position.Y, position.Z)
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(new_cframe)
	end
	
	script.Parent.MouseButton1Click:Connect(run)
end
coroutine.wrap(QRDS_fake_script)()
local function RWSR_fake_script() -- teleport_to_secret_obby.LocalScript 
	local script = Instance.new('LocalScript', teleport_to_secret_obby)

	function run()
		local position = Vector3.new(-4777.0166015625, 210.69525146484375, -1110.1759033203125)
		local new_cframe = CFrame.new(position.X, position.Y, position.Z)
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(new_cframe)
	end
	
	script.Parent.MouseButton1Click:Connect(run)
end
coroutine.wrap(RWSR_fake_script)()

main.ResetOnSpawn = false
make_draggable(master)
