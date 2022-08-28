if game:GetService("CoreGui"):FindFirstChild("ConsoleWindow") ~= null then
	_G.ConsoleAPI.PrintSystem("ERROR", "ConsoleAPI has already been injected! please eject the old copy first using _G.ConsoleAPI.Eject()")
	return
end

-- Instances:

local ConsoleWindow = Instance.new("ScreenGui")
local DevConsoleWindow = Instance.new("Frame")
local ResizeButton = Instance.new("ImageButton")
local DevConsoleUI = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local TopBar = Instance.new("ImageButton")
local WindowTitle = Instance.new("TextLabel")
local CloseButton = Instance.new("ImageButton")
local MinButton = Instance.new("ImageButton")
local MainView = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local ClientLog = Instance.new("ScrollingFrame")
local WindowingPadding = Instance.new("Frame")
local Field = Instance.new("Frame")
local image = Instance.new("ImageLabel")
local msg = Instance.new("TextBox")
local UIListLayout_3 = Instance.new("UIListLayout")
local Assets = Instance.new("Configuration")
local InputFrame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")

--Properties:

ConsoleWindow.Name = "ConsoleWindow"
ConsoleWindow.Parent = game:GetService("CoreGui")
ConsoleWindow.DisplayOrder = 999
ConsoleWindow.Enabled = false

DevConsoleWindow.Name = "DevConsoleWindow"
DevConsoleWindow.Parent = ConsoleWindow
DevConsoleWindow.Active = true
DevConsoleWindow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DevConsoleWindow.BackgroundTransparency = 0.360
DevConsoleWindow.BorderColor3 = Color3.fromRGB(29, 29, 29)
DevConsoleWindow.BorderSizePixel = 16
DevConsoleWindow.Position = UDim2.new(0, 218, 0, 404)
DevConsoleWindow.Size = UDim2.new(0, 600, 0, 300)

ResizeButton.Name = "ResizeButton"
ResizeButton.Parent = DevConsoleWindow
ResizeButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ResizeButton.BorderColor3 = Color3.fromRGB(26, 42, 52)
ResizeButton.Position = UDim2.new(1, 0, 1, 0)
ResizeButton.Size = UDim2.new(0, 16, 0, 16)
ResizeButton.Modal = true

DevConsoleUI.Name = "DevConsoleUI"
DevConsoleUI.Parent = DevConsoleWindow
DevConsoleUI.BackgroundColor3 = Color3.fromRGB(163, 161, 165)
DevConsoleUI.BackgroundTransparency = 1.000
DevConsoleUI.BorderColor3 = Color3.fromRGB(26, 42, 52)
DevConsoleUI.Size = UDim2.new(1, 0, 1, 0)

UIListLayout.Parent = DevConsoleUI
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 8)

TopBar.Name = "TopBar"
TopBar.Parent = DevConsoleUI
TopBar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TopBar.BackgroundTransparency = 0.500
TopBar.BorderColor3 = Color3.fromRGB(26, 42, 52)
TopBar.Size = UDim2.new(1, 0, 0, 30)
TopBar.AutoButtonColor = false

WindowTitle.Name = "WindowTitle"
WindowTitle.Parent = TopBar
WindowTitle.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
WindowTitle.BackgroundTransparency = 1.000
WindowTitle.BorderColor3 = Color3.fromRGB(26, 42, 52)
WindowTitle.Position = UDim2.new(0, 4, 0, 0)
WindowTitle.Size = UDim2.new(0, 113, 0, 30)
WindowTitle.Font = Enum.Font.SourceSans
WindowTitle.Text = "Roblox Console"
WindowTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
WindowTitle.TextSize = 18.000
WindowTitle.TextXAlignment = Enum.TextXAlignment.Left

CloseButton.Name = "CloseButton"
CloseButton.Parent = TopBar
CloseButton.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
CloseButton.BackgroundTransparency = 1.000
CloseButton.BorderColor3 = Color3.fromRGB(0, 255, 0)
CloseButton.Position = UDim2.new(1, -22, 0, 7)
CloseButton.Size = UDim2.new(0, 15, 0, 15)
CloseButton.Image = "rbxasset://textures/DevConsole/Close.png"
CloseButton.MouseButton1Click:Connect(function() 
	_G.ConsoleAPI.DestroyConsole()
end)

MinButton.Name = "MinButton"
MinButton.Parent = TopBar
MinButton.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
MinButton.BackgroundTransparency = 1.000
MinButton.BorderColor3 = Color3.fromRGB(255, 0, 0)
MinButton.Position = UDim2.new(1, -52, 0, 7)
MinButton.Size = UDim2.new(0, 15, 0, 15)
MinButton.Image = "rbxasset://textures/DevConsole/Minimize.png"

MainView.Name = "MainView"
MainView.Parent = DevConsoleUI
MainView.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
MainView.BackgroundTransparency = 1.000
MainView.BorderColor3 = Color3.fromRGB(26, 42, 52)
MainView.Size = UDim2.new(1, 0, 1, 0)

UIListLayout_2.Parent = MainView
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 8)

ClientLog.Name = "ClientLog"
ClientLog.Parent = MainView
ClientLog.BackgroundColor3 = Color3.fromRGB(163, 161, 165)
ClientLog.BackgroundTransparency = 1.000
ClientLog.BorderColor3 = Color3.fromRGB(26, 42, 52)
ClientLog.Size = UDim2.new(1, 0, 1, -78)
ClientLog.CanvasSize = UDim2.new(0, 0, 999999, 0)
ClientLog.ScrollBarThickness = 0

WindowingPadding.Name = "WindowingPadding"
WindowingPadding.Parent = ClientLog
WindowingPadding.BackgroundColor3 = Color3.fromRGB(163, 161, 165)
WindowingPadding.BackgroundTransparency = 1.000
WindowingPadding.BorderColor3 = Color3.fromRGB(26, 42, 52)
WindowingPadding.Size = UDim2.new(1, 0, 0, 0)

Field.Name = "Field"
Field.Parent = ClientLog
Field.BackgroundColor3 = Color3.fromRGB(163, 161, 165)
Field.BackgroundTransparency = 1.000
Field.BorderColor3 = Color3.fromRGB(26, 42, 52)
Field.Size = UDim2.new(1, 0, 1, 0)

image.Name = "image"
image.Parent = Field
image.BackgroundColor3 = Color3.fromRGB(163, 161, 165)
image.BackgroundTransparency = 1.000
image.BorderColor3 = Color3.fromRGB(26, 42, 52)
image.Position = UDim2.new(0, 3, 0.5, -7)
image.Size = UDim2.new(0, 14, 0, 14)

msg.Name = "msg"
msg.Parent = Field
msg.Active = false
msg.BackgroundColor3 = Color3.fromRGB(163, 161, 165)
msg.BackgroundTransparency = 1.000
msg.BorderColor3 = Color3.fromRGB(26, 42, 52)
msg.Position = UDim2.new(0, 10, 0, 0)
msg.Size = UDim2.new(1, -5, 1, 0)
msg.ClearTextOnFocus = false
msg.Font = Enum.Font.Code
msg.MultiLine = true
msg.Text = ""
msg.TextColor3 = Color3.fromRGB(255, 255, 255)
msg.TextSize = 15.000
msg.TextWrapped = true
msg.TextXAlignment = Enum.TextXAlignment.Left
msg.TextYAlignment = Enum.TextYAlignment.Top

UIListLayout_3.Parent = ClientLog
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0, 2)

TextBox.Parent = InputFrame
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 1.000
TextBox.BorderColor3 = Color3.fromRGB(26, 42, 52)
TextBox.BorderSizePixel = 0
TextBox.Size = UDim2.new(1, 0, 1, 0)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "Input response here..."
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14.000
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left

local dragThread = coroutine.create(function()
	local mouse = game.Players.LocalPlayer:GetMouse()
	
	local IsDragging = false
	local dragInput
	local StartingPoint
	local oldPos

	local DRAGGER_SIZE = 30
	local DRAGGER_TRANSPARENCY = .5

	local function update(input)
		local delta = input.Position - StartingPoint
		DevConsoleWindow.Position = UDim2.new(oldPos.X.Scale, oldPos.X.Offset + delta.X, oldPos.Y.Scale, oldPos.Y.Offset + delta.Y)
	end

	TopBar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			IsDragging = true
			StartingPoint = input.Position
			oldPos = DevConsoleWindow.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					IsDragging = false
				end
			end)
		end
	end)

	TopBar.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			dragInput = input
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == dragInput and IsDragging then
			update(input)
		end
	end)
	
	local ResizeButton = resizer.ResizeButton
	
	local minSize = Vector2.new(240, 160)
	
	local startDrag, startSize

	local function finishResize(tr)
		ResizeButton.BackgroundTransparency = tr
		duic.Parent = ResizeButton
		startDrag = nil
	end
	ResizeButton.MouseButton1Down:Connect(function()
		if not startDrag then
			startSize = obj.AbsoluteSize			
			startDrag = Vector2.new(mouse.X, mouse.Y)
			ResizeButton.BackgroundTransparency = 1
			ResizeButton.Position = UDim2.new(0,0,0,0)
		end
	end)	
	ResizeButton.MouseMoved:Connect(function()
		if startDrag then		
			local m = Vector2.new(mouse.X, mouse.Y)
			local mouseMoved = Vector2.new(m.X - startDrag.X, m.Y - startDrag.Y)
			
			local s = startSize + mouseMoved
			local sx = math.max(minSize.X, s.X) 
			local sy = math.max(minSize.Y, s.Y)
			
			obj.Size = UDim2.fromOffset(sx, sy)
			
		end
	end)
	ResizeButton.MouseEnter:Connect(function()
		finishResize(DRAGGER_TRANSPARENCY)				
	end)
	ResizeButton.MouseLeave:Connect(function()
		finishResize(1)
	end)		
	ResizeButton.MouseButton1Up:Connect(function()
		finishResize(DRAGGER_TRANSPARENCY)
	end)
end)
coroutine.resume(dragThread)

local resizeThread = coroutine.create(function()
	local resizing = false
	local startPoint, oldPoint, curInput

	function ScaleWindow(i)
		local dlt = i.Position - startPoint
		DevConsoleWindow.Size = UDim2.new(oldPoint.X.Scale, oldPoint.X.Offset + dlt.X, oldPoint.Y.Scale, oldPoint.Y.Offset + dlt.Y)
	end

	ResizeButton.InputBegan:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 then
			resizing = true
			startPoint = i.Position
			oldPoint = DevConsoleWindow.Size
			
			i.Changed:Connect(function()
				if i.UserInputState == Enum.UserInputState.End then
					resizing = false
				end
			end)
		end
	end)

	ResizeButton.InputChanged:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseMovement then
			curInput = i
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(i)
		if curInput == i and resizing then
			ScaleWindow(i)
		end
	end)
end)
coroutine.resume(resizeThread)

_G.ConsoleAPI = {}

_G.ConsoleAPI.Eject = function()
	ConsoleWindow:Destroy()
	_G.ConsoleAPI = nil;
end
	
_G.ConsoleAPI.CreateConsole = function()
	ConsoleWindow.Enabled = true
end

_G.ConsoleAPI.DestroyConsole = function()
	ConsoleWindow.Enabled = false
end

_G.ConsoleAPI.Clear = function()
	msg.Text = ""
end

_G.ConsoleAPI.Title = function(data)
	WindowTitle.Text = data
end

_G.ConsoleAPI.PrintRaw = function(data)
	_G.ConsoleAPI.CreateConsole()
	msg.Text = msg.Text .. data
end

_G.ConsoleAPI.PrintSystem = function(system, data)
	_G.ConsoleAPI.CreateConsole()
	_G.ConsoleAPI.PrintRaw("[" .. system .. "] " .. data .. "\n")
end
