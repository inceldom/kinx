local UILib = loadstring(game:HttpGet('https://raw.githubusercontent.com/inceldom/kinx/main/ui'))()

local win = UILib:Window("KINX HUB",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)

local tab = win:Tab("Main")
local MarketPlaceService = game:GetService("MarketplaceService")

function checkgamepass(userid, gamepassid)
    local xy = MarketPlaceService:UserOwnsGamePassAsync(userid,gamepassid)
    return xy
end

tab:Button("Give All Guns", function()
	if checkgamepass(game.Players.LocalPlayer.UserId,96651) then

		local Weapon = {"M4A1"}
		for i,v in pairs(workspace.Prison_ITEMS.giver:GetChildren()) do
		    if v.Name == Weapon[1] then
		        local lol = workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
		    end
		end
	end
	local Weapon = {"AK-47"}
	for i,v in pairs(workspace.Prison_ITEMS.giver:GetChildren()) do
	    if v.Name == Weapon[1] then
	        local lol = workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
	    end
	end
	
	local Weapon = {"Remington 870"}
	for i,v in pairs(workspace.Prison_ITEMS.giver:GetChildren()) do
	    if v.Name == Weapon[1] then
	        local lol = workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
	    end
	end
	
	local Weapon = {"M9"}
	for i,v in pairs(workspace.Prison_ITEMS.giver:GetChildren()) do
	    if v.Name == Weapon[1] then
	        local lol = workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
	    end
	end
end)

tab:Button("Give All Mellee", function()
    local weapons = {"Crude Knife", "Sharpened stick", "Extendo mirror"}
	for i, v in pairs(game.ReplicatedStorage.Tools:GetChildren()) do
	    for j, k in pairs(weapons) do
	        if v.Name == k then
	            v:Clone().Parent = game.Players.LocalPlayer.Backpack
	        end
	    end
	end
end)

tab:Button("Mod all weapons", function()
    pcall(function()
		for i, v in pairs(game.Players.LocalPlayer.Backpack:children()) do 
			local gunstates = v:findFirstChild("GunStates")
			if gunstates then 
				local module = require(gunstates)
				module.Bullets = 10
				module.Spread = 0
				module.CurrentAmmo = 999
				module.StoredAmmo = 9999
				module.AutoFire = true
				module.Range = 10000
				module.FireRate = 0.001
				module.MaxAmmo = 999
				module.Damage = 100
			end
		end
		
		for i, v in pairs(game.Players.LocalPlayer.Character:children()) do 
			local gunstates = v:findFirstChild("GunStates")
			if gunstates then 
				local module = require(gunstates)
				module.Bullets = 100
				module.Spread = 0
				module.CurrentAmmo = 999
				module.StoredAmmo = 9999
				module.AutoFire = true
				module.Range = 10000
				module.FireRate = 0.00001
				module.MaxAmmo = 999
			end
		end
	end)
end)

tab:Button("Prisoner", function()
    workspace.Remote.TeamEvent:FireServer("Bright orange") 
end)

tab:Button("Criminal", function()
    local LP = game.Players.LocalPlayer
    local RE = LP.Character.HumanoidRootPart.Position
    LP.Character.HumanoidRootPart.CFrame = CFrame.new(-919.958, 95.327, 2138.189)
    wait(0.075)
    LP.Character.HumanoidRootPart.CFrame = CFrame.new(RE)
end)

tab:Button("Police", function()
    workspace.Remote.TeamEvent:FireServer("Bright blue")
end)

tab:Button("Neatral", function()
    workspace.Remote.TeamEvent:FireServer("Medium stone grey") 
end)

tab:Button("Taze all", function()
    local function kill(a)
	    local A_1 = 
	    {
	        [1] = {
				["RayObject"] = Ray.new(Vector3.new(829.838562, 101.489998, 2331.25635), Vector3.new(-30.6540909, -5.42795324, 95.0308533)), 
				["Distance"] = 15.355997085571, 
				["Cframe"] = CFrame.new(826.616699, 100.8508, 2340.11279, 0.964640439, -0.00993416365, -0.263382077, 9.31322575e-10, 0.999289393, -0.0376908854, 0.263569355, 0.0363581516, 0.963954985), 
				["Hit"] = a.Character.Torso
	    	}
	    }
	    local A_2 = game.Players.LocalPlayer.Backpack["Taser"]
	    local Event = game:GetService("ReplicatedStorage").ShootEvent
	    Event:FireServer(A_1, A_2)
	end
	
	for i,v in pairs(game.Players:GetChildren())do
	    if v.Name ~= game.Players.LocalPlayer.Name then
	        kill(v)
	    end
	end
end)

tab:Button("Kill all", function()
    workspace.Remote.TeamEvent:FireServer("Medium stone grey")
	 
	game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
	 
	wait(0.5)
	local function kill(a)
		local arg1 =
		{
			[1] = {
				["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)),
				["Distance"] = 3.2524313926697,
				["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576),
				["Hit"] = a.Character.Head
			},
			[2] = {
				["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-392.481476, -8.44939327, -76.7261353)),
				["Distance"] = 3.2699294090271,
				["Cframe"] = CFrame.new(840.290466, 101.184189, 2267.93506, 0.0964837447, 0.0589403138, -0.993587971, 4.65661287e-10, 0.998245299, 0.0592165813, 0.995334625, -0.00571343815, 0.0963144377),
				["Hit"] = a.Character.Head
			},
			[3] = {
				["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-389.21701, -2.50536323, -92.2163162)),
				["Distance"] = 3.1665518283844,
				["Cframe"] = CFrame.new(840.338867, 101.236496, 2267.80371, 0.0166504811, 0.0941716284, -0.995416701, 1.16415322e-10, 0.995554805, 0.0941846818, 0.999861419, -0.00156822044, 0.0165764652),
				["Hit"] = a.Character.Head
			},
			[4] = {
				["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-393.353973, 3.13988972, -72.5452042)),
				["Distance"] = 3.3218522071838,
				["Cframe"] = CFrame.new(840.277222, 101.285957, 2267.9707, 0.117109694, 0.118740402, -0.985994935, -1.86264515e-09, 0.992826641, 0.119563118, 0.993119001, -0.0140019981, 0.116269611),
				["Hit"] = a.Character.Head
			},
			[5] = {
				["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
				["Distance"] = 3.222757101059,
				["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
				["Hit"] = a.Character.Head
			}
		}
		for i = 1, 3 do
			game:GetService("ReplicatedStorage").ShootEvent:FireServer(arg1, game.Players.LocalPlayer.Backpack["Remington 870"])
		end
	end
	 
	for i,v in pairs(game.Players:GetChildren())do
		if v.Name ~= game.Players.LocalPlayer.Name then
			kill(v)
		end
	end

	wait(1)
	workspace.Remote.TeamEvent:FireServer("Bright orange")
end)

tab:Slider("WalkSpeed",0,1000,30, function(t)
    game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = t
end)

tab:Slider("Jump Power",0,1000,30, function(t)
    game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = t
end)

local tele1 = win:Tab("Teleports")

local function teleport(cords)
	local coordinate = string.split(cords, ",")
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(tonumber(coordinate[1]), tonumber(coordinate[2]), tonumber(coordinate[3]))
end


tele1:Button("Prison Entrance", function()
	teleport("474.655701, 98.1900101, 2250.36841")
end)

tele1:Button("Gaurd Room", function()
	teleport("798.664368, 99.9900055, 2264.11157")
end)

tele1:Button( "Criminal Base", function()
	teleport("-942.058838, 94.1287842, 2056.36914")
end)

tele1:Button( "Yard", function()
	teleport("767.570129, 97.9999466, 2461.25659")
end)

tele1:Button( "Prison Cells", function()
	teleport("916.622131, 99.9899902, 2465.79858")
end)

tele1:Button( "Cafe", function()
	teleport("960.83783, 99.9899597, 2340.33911")
end)

tele1:Button( "Main Tower", function()
	teleport("823.287292, 130.039948, 2587.73975")
end)

tele1:Button( "Kitchen", function()
	teleport("941.972778, 99.9899597, 2222.83716")
end)

tele1:Button( "Police Garage", function()
	teleport("614.918396, 98.2000275, 2512.02368")
end)

local tele3 = win:Tab("Aimobt")

local aimbotsettings = {
    enabled = false,
    freeforall = false,
    radius = 2500,
    wallcheck = true
}

local players = game:GetService("Players")
local client = players.LocalPlayer
local inputservice = game:GetService("UserInputService")
local mouse = client:GetMouse()
local runservice = game:GetService("RunService")
local aim = false

function GetMouse()
    return Vector2.new(mouse.X, mouse.Y)
end

inputservice.InputBegan:Connect(function(key)
    if key.UserInputType == Enum.UserInputType.MouseButton2 then
        aim = true
    end
end)

inputservice.InputEnded:Connect(function(key)
    if key.UserInputType == Enum.UserInputType.MouseButton2 then
        aim = false
    end
end)

function FreeForAll(targetplayer)
    if aimbotsettings.freeforall == false then
        if client.Team == targetplayer.Team then return false
        else return true end
    else return true end
end

function NotObstructing(destination, ignore)
    if aimbotsettings.wallcheck then
        Origin = workspace.CurrentCamera.CFrame.p
        CheckRay = Ray.new(Origin, destination- Origin)
        Hit = workspace:FindPartOnRayWithIgnoreList(CheckRay, ignore)
        return Hit == nil
    else
        return true
    end
end

function GetClosestToCuror()
    MousePos = GetMouse()
    Radius = aimbotsettings.radius
    Closest = math.huge
    Target = nil
    for _,v in pairs(game:GetService("Players"):GetPlayers()) do
        if FreeForAll(v) then
            if v.Character:FindFirstChild("Head") and v ~= game.Players.LocalPlayer then
                Point,OnScreen = workspace.CurrentCamera:WorldToViewportPoint(v.Character.Head.Position)
                clientchar = client.Character
                if OnScreen and NotObstructing(v.Character.Head.Position,{clientchar,v.Character}) then
                    Distance = (Vector2.new(Point.X,Point.Y) - MousePos).magnitude
                    if Distance < math.min(Radius,Closest) then
                        Closest = Distance
                        Target = v
                    end
                end
            end
        end
    end
    return Target
end 

runservice.RenderStepped:Connect(function()
    if aimbotsettings.enabled == false or aim == false then return end
    ClosestPlayer = GetClosestToCuror()
    if ClosestPlayer then
        workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.p,ClosestPlayer.Character.Head.CFrame.p)
    end
end)

-- Enables/Disables aimbot. Essentially its the main toggle.
tele3:Toggle( "Enabled", nil, function(value)
    aimbotsettings.enabled = value
end)

-- Enables/Disables wallcheck. It locks on only if the enemy is not obstructed by a part.
tele3:Toggle( "Wall Check", true, function(value)
    aimbotsettings.wallcheck = value
end)

-- Determines if it should only lock onto players who are on the same team or not. Sometimes can get fucked so turning it on is the way to go.
tele3:Toggle( "Free For All", nil, function(value)
    aimbotsettings.freeforall = value
end)

-- Customize the aimbot pixel range. Pretty much how far away your cursor has to be to lock onto a target.
-- I did it with a slider but I also left the code if you want to instead do it with a textbox.

tele3:Slider( "Aimbot Pixel Range", 2500, 0, 10000, function(value)
    aimbotsettings.radius = tonumber(value)
end)


local tele5 = win:Tab("Esp")

local ESPEnabled = false
local DistanceEnabled = true
local TracersEnabled = true

pcall(function()
	
	Camera = game:GetService("Workspace").CurrentCamera
	RunService = game:GetService("RunService")
	camera = workspace.CurrentCamera
	Bottom = Vector2.new(camera.ViewportSize.X/2, camera.ViewportSize.Y)

	function GetPoint(vector3)
		local vector, onScreen = camera:WorldToScreenPoint(vector3)
		return {Vector2.new(vector.X,vector.Y),onScreen,vector.Z}
	end
	
	function MakeESP(model)
		local CurrentParent = model.Parent
	
		local TopL = Drawing.new("Line")
		local BottomL = Drawing.new("Line")
		local LeftL = Drawing.new("Line")
		local RightL = Drawing.new("Line")
		local Tracer = Drawing.new("Line")
		local Display = Drawing.new("Text")

        coroutine.resume(coroutine.create(function()
			while model.Parent == CurrentParent do
				
				local Distance = (Camera.CFrame.Position - model.HumanoidRootPart.Position).Magnitude
                local GetP = GetPoint(model.Head.Position)
                local headps = model.Head.CFrame
                
				if ESPEnabled and GetP[2] then
					
                    -- Calculate Cords
                    local topright = headps * CFrame.new(3,0.5, 0)
                    local topleft = headps * CFrame.new(-3,0.5, 0)
                    local bottomleft = headps * CFrame.new(-3,-7,0)
                    local bottomright = headps * CFrame.new(3,-7,0)
					topright = GetPoint(topright.p)[1]
					topleft = GetPoint(topleft.p)[1]
					bottomleft = GetPoint(bottomleft.p)[1]
					bottomright = GetPoint(bottomright.p)[1]

                    local teamcolor = game:GetService("Players")[model.Name].TeamColor.Color or Color3.fromRGB(0,0,0)
                    TopL.Color, BottomL.Color, RightL.Color, LeftL.Color = teamcolor, teamcolor, teamcolor, teamcolor
                    TopL.From, BottomL.From, RightL.From, LeftL.From = topleft, bottomleft, topright, topleft
                    TopL.To, BottomL.To, RightL.To, LeftL.To = topright, bottomright, bottomright, bottomleft
					TopL.Visible, BottomL.Visible, RightL.Visible, LeftL.Visible = true, true, true, true
				else
					TopL.Visible, BottomL.Visible, RightL.Visible, LeftL.Visible = false, false, false, false
                end
                
				if ESPEnabled and TracersEnabled and GetP[2] then
					Tracer.Color = game:GetService("Players")[model.Name].TeamColor.Color or Color3.fromRGB(0,0,0)
					Tracer.From = Bottom
					Tracer.To = GetPoint(headps.p)[1]
					Tracer.Thickness = 1.5
					Tracer.Visible = true
				else
					Tracer.Visible = false
                end
                
				if ESPEnabled and DistanceEnabled and GetP[2] then
					Display.Visible = true
					Display.Position = GetPoint(headps.p + Vector3.new(0,0.5,0))[1]
					Display.Center = true
					Display.Text = tostring(math.floor(Distance)).." studs"
				else
					Display.Visible = false
                end
                
				RunService.RenderStepped:Wait()
			end
	
			TopL:Remove()
			BottomL:Remove()
			RightL:Remove()
			LeftL:Remove()
			Tracer:Remove()
			Display:Remove()
        
        end))
    end
    
	for _, Player in next, game:GetService("Players"):GetChildren() do
		if Player.Name ~= game.Players.LocalPlayer.Name then
			MakeESP(Player.Character)
			Player.CharacterAdded:Connect(function()
				delay(0.5, function()
					MakeESP(Player.Character)
				end)
			end)
		end	
	end
	
	game:GetService("Players").PlayerAdded:Connect(function(player)
        player.CharacterAdded:Connect(function()
            delay(0.5, function()
                MakeESP(player.Character)
            end)
		end)
	end)
	
end)

-- Enables/Disables ESP. Main toggle
tele5:Toggle( "Enabled", nil, function(value)
    ESPEnabled = value
end)

-- Toggles tracers
tele5:Toggle( "Tracers", true, function(value)
    TracersEnabled = value
end)

-- Toggles distance display
tele5:Toggle( "Distance Display", true, function(value)
    DistanceEnabled = value
end)

---------------------------------------------------------------------------------------------------

-- Other Func
-- Add UI
local Settings = win:Tab("Settings")


Settings:Label("UI Toggle Key:  Right-Ctrl")

Settings:Button("Copy Discord Invite", function()
    setclipboard("https://discord.gg/psu")
    UILib:Notification("Notification", "Copied!", "Okay")
end)
