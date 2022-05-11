loadstring(game:HttpGet("https://pastebin.com/raw/iqb45GrA"))()

-- Instances:

local DeviceAdapterUI = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Draggable = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local capFrame = Instance.new("Frame")
local mainFrame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local itemHolder = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Palette = Instance.new("ImageLabel")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local Crosshair = Instance.new("ImageLabel")
local Value = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local bar = Instance.new("Frame")
local Display = Instance.new("Frame")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local R = Instance.new("TextBox")
local TextLabel = Instance.new("TextLabel")
local Deco = Instance.new("Frame")
local G = Instance.new("TextBox")
local TextLabel_2 = Instance.new("TextLabel")
local B = Instance.new("TextBox")
local TextLabel_3 = Instance.new("TextLabel")
local Frame_3 = Instance.new("Frame")
local UIGridLayout = Instance.new("UIGridLayout")
local AdminDivs = Instance.new("TextButton")
local AdminPads = Instance.new("TextButton")
local BldBricks = Instance.new("TextButton")
local House = Instance.new("TextButton")
local Original = Instance.new("TextButton")
local ObbyBricks = Instance.new("TextButton")
local ObbyBox = Instance.new("TextButton")
local Everything = Instance.new("TextButton")
local TextButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local TextButton_2 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UICorner_5 = Instance.new("UICorner")

--Properties:

DeviceAdapterUI.Name = "DeviceAdapterUI"
DeviceAdapterUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = DeviceAdapterUI
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0772659704, 0, 0.298181832, 0)
Frame.Size = UDim2.new(0, 347, 0, 26)

Draggable.Name = "Draggable"
Draggable.Parent = Frame
Draggable.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Draggable.Position = UDim2.new(-0.00263512135, 0, -0.00951051712, 0)
Draggable.Size = UDim2.new(0, 349, 0, 200)

UICorner.Parent = Draggable

capFrame.Name = "capFrame"
capFrame.Parent = Draggable
capFrame.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
capFrame.BorderSizePixel = 0
capFrame.Position = UDim2.new(0, 0, 0.119999997, 0)
capFrame.Size = UDim2.new(0, 349, 0, 12)

mainFrame.Name = "mainFrame"
mainFrame.Parent = capFrame
mainFrame.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
mainFrame.Position = UDim2.new(0, 0, 0.119999997, 0)
mainFrame.Size = UDim2.new(0, 349, 0, 176)

UICorner_2.Parent = mainFrame

itemHolder.Name = "itemHolder"
itemHolder.Parent = capFrame
itemHolder.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
itemHolder.BorderSizePixel = 0
itemHolder.Position = UDim2.new(0.037249282, 0, 0.870000184, 0)
itemHolder.Size = UDim2.new(0, 322, 0, 158)

Frame_2.Parent = itemHolder
Frame_2.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0, 0, -0.0048018829, 0)
Frame_2.Size = UDim2.new(0.595512211, 0, 0.695066512, 0)

UIAspectRatioConstraint.Parent = Frame_2
UIAspectRatioConstraint.AspectRatio = 1.750

Palette.Name = "Palette"
Palette.Parent = Frame_2
Palette.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Palette.BackgroundTransparency = 1.000
Palette.Position = UDim2.new(0.057525903, 0, 0.0345480703, 0)
Palette.Size = UDim2.new(0.5, 0, 1, 0)
Palette.Image = "rbxassetid://2849458409"

UIAspectRatioConstraint_2.Parent = Palette

Crosshair.Name = "Crosshair"
Crosshair.Parent = Palette
Crosshair.AnchorPoint = Vector2.new(0.5, 0.5)
Crosshair.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Crosshair.BackgroundTransparency = 1.000
Crosshair.Position = UDim2.new(0.5, 0, 0.5, 0)
Crosshair.Size = UDim2.new(0, 16, 0, 16)
Crosshair.Image = "http://www.roblox.com/asset/?id=4940353167"

Value.Name = "Value"
Value.Parent = Frame_2
Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Value.BorderSizePixel = 0
Value.Position = UDim2.new(0.595587492, 0, 0.0467030667, 0)
Value.Size = UDim2.new(0.100000001, 0, 0.899999976, 0)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(11, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient.Rotation = 84
UIGradient.Parent = Value

bar.Name = "bar"
bar.Parent = Value
bar.AnchorPoint = Vector2.new(0.5, 0)
bar.BackgroundColor3 = Color3.fromRGB(76, 76, 76)
bar.BorderSizePixel = 0
bar.Position = UDim2.new(0.5, 0, 0, 0)
bar.Size = UDim2.new(1.10000002, 0, 0.0250000004, 0)

Display.Name = "Display"
Display.Parent = Frame_2
Display.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Display.BorderSizePixel = 0
Display.Position = UDim2.new(0.792225957, 0, 0.0295493156, 0)
Display.Size = UDim2.new(0.270222217, 0, 0.430674702, 0)

UIAspectRatioConstraint_3.Parent = Display

R.Name = "R"
R.Parent = Frame_2
R.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
R.BorderSizePixel = 0
R.Position = UDim2.new(0.826399088, 0, 0.511490285, 0)
R.Size = UDim2.new(0.176386878, 0, 0.107035622, 0)
R.Font = Enum.Font.SourceSans
R.Text = ""
R.TextColor3 = Color3.fromRGB(255, 255, 255)
R.TextScaled = true
R.TextSize = 14.000
R.TextWrapped = true

TextLabel.Parent = R
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(-0.558425307, 0, 0, 0)
TextLabel.Size = UDim2.new(0.558425188, 0, 1, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "R:"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

Deco.Name = "Deco"
Deco.Parent = Frame_2
Deco.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Deco.BackgroundTransparency = 1.000
Deco.Size = UDim2.new(1, 0, 1, 0)

G.Name = "G"
G.Parent = Frame_2
G.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
G.BorderSizePixel = 0
G.Position = UDim2.new(0.826399088, 0, 0.648685157, 0)
G.Size = UDim2.new(0.176386878, 0, 0.107035622, 0)
G.Font = Enum.Font.SourceSans
G.Text = ""
G.TextColor3 = Color3.fromRGB(255, 255, 255)
G.TextScaled = true
G.TextSize = 14.000
G.TextWrapped = true

TextLabel_2.Parent = G
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(-0.558425307, 0, 0, 0)
TextLabel_2.Size = UDim2.new(0.558425188, 0, 1, 0)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "G:"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

B.Name = "B"
B.Parent = Frame_2
B.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
B.BorderSizePixel = 0
B.Position = UDim2.new(0.826399088, 0, 0.792915642, 0)
B.Size = UDim2.new(0.176386878, 0, 0.107035622, 0)
B.Font = Enum.Font.SourceSans
B.Text = ""
B.TextColor3 = Color3.fromRGB(255, 255, 255)
B.TextScaled = true
B.TextSize = 14.000
B.TextWrapped = true

TextLabel_3.Parent = B
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(-0.558425307, 0, 0, 0)
TextLabel_3.Size = UDim2.new(0.558425188, 0, 1, 0)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "B:"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

Frame_3.Parent = Frame_2
Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_3.BackgroundTransparency = 1.000
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.0365048908, 0, 1.00000012, 0)
Frame_3.Size = UDim2.new(0, 192, 0, 51)

UIGridLayout.Parent = Frame_3
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0, 38, 0, 25)

AdminDivs.Name = "AdminDivs"
AdminDivs.Parent = Frame_3
AdminDivs.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
AdminDivs.BorderSizePixel = 0
AdminDivs.Position = UDim2.new(0.0348209739, 0, 1.34679699, 0)
AdminDivs.Size = UDim2.new(0.25, 0, 0.0990600288, 0)
AdminDivs.Font = Enum.Font.SourceSans
AdminDivs.Text = "AdminDivs"
AdminDivs.TextColor3 = Color3.fromRGB(255, 255, 255)
AdminDivs.TextScaled = true
AdminDivs.TextSize = 14.000
AdminDivs.TextWrapped = true

AdminPads.Name = "AdminPads"
AdminPads.Parent = Frame_3
AdminPads.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
AdminPads.BorderSizePixel = 0
AdminPads.Position = UDim2.new(0.0348209739, 0, 1.34679699, 0)
AdminPads.Size = UDim2.new(0.25, 0, 0.0990600288, 0)
AdminPads.Font = Enum.Font.SourceSans
AdminPads.Text = "AdminPads"
AdminPads.TextColor3 = Color3.fromRGB(255, 255, 255)
AdminPads.TextScaled = true
AdminPads.TextSize = 14.000
AdminPads.TextWrapped = true

BldBricks.Name = "BldBricks"
BldBricks.Parent = Frame_3
BldBricks.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
BldBricks.BorderSizePixel = 0
BldBricks.Position = UDim2.new(0.0348209739, 0, 1.34679699, 0)
BldBricks.Size = UDim2.new(0.25, 0, 0.0990600288, 0)
BldBricks.Font = Enum.Font.SourceSans
BldBricks.Text = "BldBricks"
BldBricks.TextColor3 = Color3.fromRGB(255, 255, 255)
BldBricks.TextScaled = true
BldBricks.TextSize = 14.000
BldBricks.TextWrapped = true

House.Name = "House"
House.Parent = Frame_3
House.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
House.BorderSizePixel = 0
House.Position = UDim2.new(0.0348209739, 0, 1.34679699, 0)
House.Size = UDim2.new(0.25, 0, 0.0990600288, 0)
House.Font = Enum.Font.SourceSans
House.Text = "House"
House.TextColor3 = Color3.fromRGB(255, 255, 255)
House.TextScaled = true
House.TextSize = 14.000
House.TextWrapped = true

Original.Name = "Original"
Original.Parent = Frame_3
Original.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Original.BorderSizePixel = 0
Original.Position = UDim2.new(0.749274611, 0, 0.999060154, 0)
Original.Size = UDim2.new(0.25, 0, 0.100000001, 0)
Original.Font = Enum.Font.SourceSans
Original.Text = "Original"
Original.TextColor3 = Color3.fromRGB(255, 255, 255)
Original.TextScaled = true
Original.TextSize = 14.000
Original.TextWrapped = true

ObbyBricks.Name = "ObbyBricks"
ObbyBricks.Parent = Frame_3
ObbyBricks.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
ObbyBricks.BorderSizePixel = 0
ObbyBricks.Position = UDim2.new(0.0348210335, 0, 0.999060154, 0)
ObbyBricks.Size = UDim2.new(0.25, 0, 0.100000001, 0)
ObbyBricks.Font = Enum.Font.SourceSans
ObbyBricks.Text = "ObbyBricks"
ObbyBricks.TextColor3 = Color3.fromRGB(255, 255, 255)
ObbyBricks.TextScaled = true
ObbyBricks.TextSize = 14.000
ObbyBricks.TextWrapped = true

ObbyBox.Name = "ObbyBox"
ObbyBox.Parent = Frame_3
ObbyBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
ObbyBox.BorderSizePixel = 0
ObbyBox.Position = UDim2.new(0.0348210335, 0, 1.15420616, 0)
ObbyBox.Size = UDim2.new(0.25, 0, 0.100000001, 0)
ObbyBox.Font = Enum.Font.SourceSans
ObbyBox.Text = "ObbyBox"
ObbyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
ObbyBox.TextScaled = true
ObbyBox.TextSize = 14.000
ObbyBox.TextWrapped = true

Everything.Name = "Everything"
Everything.Parent = Frame_3
Everything.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Everything.BorderSizePixel = 0
Everything.Position = UDim2.new(0.0348209739, 0, 1.34679699, 0)
Everything.Size = UDim2.new(0.25, 0, 0.0990600288, 0)
Everything.Font = Enum.Font.SourceSans
Everything.Text = "Everything"
Everything.TextColor3 = Color3.fromRGB(255, 255, 255)
Everything.TextScaled = true
Everything.TextSize = 14.000
Everything.TextWrapped = true

TextButton.Parent = Draggable
TextButton.BackgroundColor3 = Color3.fromRGB(255, 96, 85)
TextButton.Position = UDim2.new(0, 5, 0, 5)
TextButton.Size = UDim2.new(0, 15, 0, 15)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = ""
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 10.000

UICorner_3.CornerRadius = UDim.new(1, 0)
UICorner_3.Parent = TextButton

TextButton_2.Parent = Draggable
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 192, 51)
TextButton_2.Position = UDim2.new(0, 25, 0, 5)
TextButton_2.Size = UDim2.new(0, 15, 0, 15)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = ""
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextSize = 10.000

UICorner_4.CornerRadius = UDim.new(1, 0)
UICorner_4.Parent = TextButton_2

UICorner_5.Parent = Frame

-- Scripts:

local function TSMRYCG_fake_script() -- Frame_2.LocalScript 
	local script = Instance.new('LocalScript', Frame_2)

	local mouse = game.Players.LocalPlayer:GetMouse()
	local palette = script.Parent.Palette
	local display = script.Parent.Display
	local crosshair = palette.Crosshair
	local UIS = game:GetService("UserInputService")
	local Value = script.Parent.Value.UIGradient
	
	local currentcolor = Color3.new(1,1,1)
	local bar = Value.Parent.bar
	local barval = 1
	
	local labels = {}
	labels.R = script.Parent.R
	labels.G = script.Parent.G
	labels.B = script.Parent.B
	
	for i,v in pairs(labels)do
		local otherlabels = {unpack(labels)}
		otherlabels[i] = nil
		v.FocusLost:Connect(function(enter)
			if enter then else updatel() return end
			local c = tonumber(v.Text)
			c = math.clamp(c,0,255)
			v.Text = tostring(c)
			currentcolor = Color3.fromRGB(tonumber(labels.R.Text),tonumber(labels.G.Text),tonumber(labels.B.Text))
			local h,s,v = Color3.toHSV(currentcolor)
			barval = v
			bar.Position = UDim2.new(0.5,0,1-math.clamp(barval,0,1),0)
			Value.Color = ColorSequence.new(Color3.fromHSV(h,s,1),Color3.new(0,0,0))
			display.BackgroundColor3 = currentcolor
			updateCrosshair()
		end)
	end
	
	function converttofull(ang)
		local ang = math.deg(ang)
		local min = -180
		local dist = math.abs(ang-min)
		return 360-dist
	end
	
	function isonpalette()
		local p = Vector2.new(mouse.X,mouse.Y)
		local onp = p-palette.AbsolutePosition
		local monp = onp-(palette.AbsoluteSize/2)
		
		local mid = palette.AbsolutePosition+(palette.AbsoluteSize/2)
		local distFromMid = (mid-p).Magnitude
		
		if distFromMid>palette.AbsoluteSize.X/2 then 
			return false
		else
			return true
		end
	end
	function isonbar()
		local p = Vector2.new(mouse.X,mouse.Y)
		if p.X>bar.AbsolutePosition.X and p.X<bar.AbsolutePosition.X+bar.AbsoluteSize.X and p.Y>bar.AbsolutePosition.Y and p.Y<bar.AbsolutePosition.Y+bar.AbsoluteSize.Y then
			return true
		else
			return false
		end
	end
	function updatel()
		for i,v in pairs(labels)do
			v.Text = tostring(math.floor(currentcolor[i]*255))
		end
	end
	function update()
		local p = Vector2.new(mouse.X,mouse.Y)
		local onp = p-palette.AbsolutePosition
		local monp = onp-(palette.AbsoluteSize/2)
		
		local mid = palette.AbsolutePosition+(palette.AbsoluteSize/2)
		local distFromMid = (mid-p).Magnitude
		
		if distFromMid>palette.AbsoluteSize.X/2 then return end -- Mouse outside the palette reach
		
		local value = barval
		local saturation = distFromMid/(palette.AbsoluteSize.X/2)
		local hue = converttofull(math.atan2(monp.Y,monp.X))/360
		
		display.BackgroundColor3 = Color3.fromHSV(hue,saturation,value)
		currentcolor = Color3.fromHSV(hue,saturation,value)
		Value.Color = ColorSequence.new(Color3.fromHSV(hue,saturation,1),Color3.new(0,0,0))
		updateCrosshair()
	end
	function updateCrosshair()
		local hue,s,v = Color3.toHSV(currentcolor)
		local plane = CFrame.new(Vector3.new(0,0,0))*CFrame.Angles(0,math.rad((180+(hue*360))%360),0)*CFrame.new(0,0,-s/2)
		local p = Vector2.new(plane.X,plane.Z)
		crosshair.Position = UDim2.new(0.5-p.Y,0,0.5+p.X,0)
		
	end
	
	UIS.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			if isonpalette() then
				local v = Instance.new("BindableEvent")
				
				local b = mouse.Move:Connect(function()
					v:Fire()
				end)
				local b2 = UIS.InputEnded:Connect(function(i)
					if i.UserInputType == Enum.UserInputType.MouseButton1 then
						v:Fire()
					end
				end)
				repeat update() updatel() v.Event:Wait() until not UIS:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
				b:Disconnect()
				b2:Disconnect()
			elseif isonbar() then
				while UIS:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
					local mpos = mouse.Y-Value.Parent.AbsolutePosition.Y
					local y = mpos/Value.Parent.AbsoluteSize.Y
					y = math.clamp(y,0,1)
					bar.Position = UDim2.new(0.5,0,y,0)
					barval = 1-y
					local h,s,v = Color3.toHSV(currentcolor)
					currentcolor = Color3.fromHSV(h,s,barval)
					display.BackgroundColor3 = currentcolor
					updatel()
					game:GetService("RunService").RenderStepped:Wait()
				end
			end
		end
	end)
	updateCrosshair(currentcolor)
	updatel()
end
coroutine.wrap(TSMRYCG_fake_script)()
local function UIPK_fake_script() -- AdminDivs.LocalScript 
	local script = Instance.new('LocalScript', AdminDivs)

	script.Parent.MouseButton1Click:Connect(function()
		local frm = script.Parent.Parent.Parent
		local clr = Color3.fromRGB(tonumber(frm.R.Text), tonumber(frm.G.Text), tonumber(frm.B.Text))
	
		coroutine.wrap(function()
			colorAPI.colorAdminDivs(clr)
		end)()
	end)
end
coroutine.wrap(UIPK_fake_script)()
local function XSWT_fake_script() -- AdminPads.LocalScript 
	local script = Instance.new('LocalScript', AdminPads)

	script.Parent.MouseButton1Click:Connect(function()
		local frm = script.Parent.Parent.Parent
		local clr = Color3.fromRGB(tonumber(frm.R.Text), tonumber(frm.G.Text), tonumber(frm.B.Text))
	
		coroutine.wrap(function()
			colorAPI.colorPads(clr)
		end)()
	end)
end
coroutine.wrap(XSWT_fake_script)()
local function MYMO_fake_script() -- BldBricks.LocalScript 
	local script = Instance.new('LocalScript', BldBricks)

	script.Parent.MouseButton1Click:Connect(function()
		local frm = script.Parent.Parent.Parent
		local clr = Color3.fromRGB(tonumber(frm.R.Text), tonumber(frm.G.Text), tonumber(frm.B.Text))
	
		coroutine.wrap(function()
			colorAPI.colorBuildingBricks({
				DarkStoneGrey = clr,
				DeepBlue = clr,
				NY = clr,
				IW = clr,
				LimeGreen = clr,
				MSG = clr,
				RB = clr,
				RR = clr,
				TP = clr
			})
		end)()
	end)
end
coroutine.wrap(MYMO_fake_script)()
local function AHULVB_fake_script() -- House.LocalScript 
	local script = Instance.new('LocalScript', House)

	script.Parent.MouseButton1Click:Connect(function()
		local frm = script.Parent.Parent.Parent
		local clr = Color3.fromRGB(tonumber(frm.R.Text), tonumber(frm.G.Text), tonumber(frm.B.Text))
	
		coroutine.wrap(function()
			colorAPI.colorHouse({
				wallsC = clr,
				baseC = clr,
				roofC = clr,
				WANDDC = clr,
				stairsC = clr,
				floorC = clr,
				rooftsC = clr,
				chiC = clr
			})
		end)()
	end)
end
coroutine.wrap(AHULVB_fake_script)()
local function PYIUIT_fake_script() -- Original.LocalScript 
	local script = Instance.new('LocalScript', Original)

	script.Parent.MouseButton1Click:Connect(function()
		coroutine.wrap(function()
			colorAPI.colorObbyBox(colorAPI.transformToColor3(BrickColor.new("Teal")))
		end)()
	
		coroutine.wrap(function()
			colorAPI.colorObbyBricks(colorAPI.transformToColor3(BrickColor.new("Really red")))
		end)()
	
		coroutine.wrap(function()
			colorAPI.colorAdminDivs(colorAPI.transformToColor3(BrickColor.new("Dark stone grey")))
		end)()
	
		coroutine.wrap(function()
			colorAPI.colorPads(colorAPI.transformToColor3(BrickColor.new("Bright green")))
		end)()
	
		coroutine.wrap(function()
			colorAPI.colorBuildingBricks({
				DarkStoneGrey = colorAPI.transformToColor3(BrickColor.new("Dark stone grey")),
				DeepBlue = colorAPI.transformToColor3(BrickColor.new("Deep blue")),
				NY = colorAPI.transformToColor3(BrickColor.new("New Yeller")),
				IW = colorAPI.transformToColor3(BrickColor.new("Institutional white")),
				LimeGreen = colorAPI.transformToColor3(BrickColor.new("Lime green")),
				MSG = colorAPI.transformToColor3(BrickColor.new("Medium Stone grey")),
				RB = colorAPI.transformToColor3(BrickColor.new("Really black")),
				RR = colorAPI.transformToColor3(BrickColor.new("Really red")),
				TP = colorAPI.transformToColor3(BrickColor.new("Toothpaste"))
			})
		end)()
	
		coroutine.wrap(function()
			colorAPI.colorHouse({
				wallsC = colorAPI.transformToColor3(BrickColor.new("Brick yellow")),
				baseC = colorAPI.transformToColor3(BrickColor.new("Bright green")),
				roofC = colorAPI.transformToColor3(BrickColor.new("Bright red")),
				WANDDC = colorAPI.transformToColor3(BrickColor.new("Dark orange")),
				stairsC = colorAPI.transformToColor3(BrickColor.new("Dark stone grey")),
				floorC = colorAPI.transformToColor3(BrickColor.new("Medium blue")),
				rooftsC = colorAPI.transformToColor3(BrickColor.new("Reddish brown")),
				chiC = colorAPI.transformToColor3(BrickColor.new("Sand red"))
			})
		end)()
	end)
end
coroutine.wrap(PYIUIT_fake_script)()
local function BNTO_fake_script() -- ObbyBricks.LocalScript 
	local script = Instance.new('LocalScript', ObbyBricks)

	script.Parent.MouseButton1Click:Connect(function()
		local frm = script.Parent.Parent.Parent
		local clr = Color3.fromRGB(tonumber(frm.R.Text), tonumber(frm.G.Text), tonumber(frm.B.Text))
		
		coroutine.wrap(function()
			colorAPI.colorObbyBricks(clr)
		end)()
	end)
end
coroutine.wrap(BNTO_fake_script)()
local function VSOXOO_fake_script() -- ObbyBox.LocalScript 
	local script = Instance.new('LocalScript', ObbyBox)

	script.Parent.MouseButton1Click:Connect(function()
		local frm = script.Parent.Parent.Parent
		local clr = Color3.fromRGB(tonumber(frm.R.Text), tonumber(frm.G.Text), tonumber(frm.B.Text))
	
		coroutine.wrap(function()
			colorAPI.colorObbyBox(clr)
		end)()
	end)
end
coroutine.wrap(VSOXOO_fake_script)()
local function LQNBJWL_fake_script() -- Everything.LocalScript 
	local script = Instance.new('LocalScript', Everything)

	script.Parent.MouseButton1Click:Connect(function()
		local frm = script.Parent.Parent.Parent
		local clr = Color3.fromRGB(tonumber(frm.R.Text), tonumber(frm.G.Text), tonumber(frm.B.Text))
	
		coroutine.wrap(function()
			colorAPI.colorObbyBox(clr)
		end)()
	
		coroutine.wrap(function()
			colorAPI.colorObbyBricks(clr)
		end)()
	
		coroutine.wrap(function()
			colorAPI.colorAdminDivs(clr)
		end)()
	
		coroutine.wrap(function()
			colorAPI.colorPads(clr)
		end)()
	
		coroutine.wrap(function()
			colorAPI.colorBuildingBricks({
				DarkStoneGrey = clr,
				DeepBlue = clr,
				NY = clr,
				IW = clr,
				LimeGreen = clr,
				MSG = clr,
				RB = clr,
				TP = clr
			})
		end)()
	
		coroutine.wrap(function()
			colorAPI.colorHouse({
				wallsC = clr,
				baseC = clr,
				roofC = clr,
				WANDDC = clr,
				stairsC = clr,
				floorC = clr,
				rooftsC = clr,
				chiC = clr
			})
		end)()
	end)
end
coroutine.wrap(LQNBJWL_fake_script)()
local function FORMKD_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(FORMKD_fake_script)()
local function AUNSE_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	script.Parent.MouseButton1Click:Connect(function()
		if script.Parent.Parent.capFrame.Visible then
			script.Parent.Parent.Size = UDim2.new(0, 102,0, 26)
			script.Parent.Parent.Parent.Size = UDim2.new(0, 102,0, 26)
			script.Parent.Parent.capFrame.Visible = false
		else
			script.Parent.Parent.Size = UDim2.new(0, 349,0, 200)
			script.Parent.Parent.Parent.Size = UDim2.new(0, 347,0, 26)
			script.Parent.Parent.capFrame.Visible = true
		end
	end)
end
coroutine.wrap(AUNSE_fake_script)()
local function LQUQFHZ_fake_script() -- Frame.MgD 
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
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
coroutine.wrap(LQUQFHZ_fake_script)()
