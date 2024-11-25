local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")
local cam = workspace.CurrentCamera
local sound = Instance.new("Sound", game.ReplicatedStorage)
local distorsion = Instance.new("DistortionSoundEffect", sound)

local screengui = Instance.new("ScreenGui", plr.PlayerGui)
local menu = Instance.new("Frame", screengui)
local background = Instance.new("ImageLabel", menu)
local UIAspect = Instance.new("UIAspectRatioConstraint", menu)
local UIDetect = Instance.new("UIDragDetector", menu)

local topbar = Instance.new("Frame", menu)
local top1 = Instance.new("Frame", topbar)
local topText = Instance.new("TextLabel", topbar)

local btn = Instance.new("TextButton", menu)

local cornerM = Instance.new("UICorner", menu)
cornerM.CornerRadius = UDim.new(0, 20)
local cornerIm = Instance.new("UICorner", background)
cornerIm.CornerRadius = UDim.new(0, 20)
local cornerTop = Instance.new("UICorner", topbar)
cornerTop.CornerRadius = UDim.new(0, 20)

local strokeM = Instance.new("UIStroke", menu)
strokeM.Color = Color3.fromRGB(0, 0, 0)
strokeM.LineJoinMode = Enum.LineJoinMode.Round
local strokeBtn = Instance.new("UIStroke", btn)
strokeBtn.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
strokeBtn.Color = Color3.fromRGB(0, 0, 0)
strokeBtn.LineJoinMode = Enum.LineJoinMode.Round

UIAspect.AspectRatio = 2.702
menu.AnchorPoint = Vector2.new(0.5, 0.5)
menu.Size = UDim2.new(0.223, 0, 0.158, 0)
menu.Position = UDim2.new(0.5, 0, 0.499, 0)

background.Image = "rbxassetid://9057831604"
background.ImageColor3 = Color3.fromRGB(50, 50, 50)
background.ScaleType = Enum.ScaleType.Crop
background.ZIndex = 2
background.Size = UDim2.new(1, 0, 1, 0)
background.Position = UDim2.new(0, 0, 0, 0)

topbar.AnchorPoint = Vector2.new(0.5, 0.5)
topbar.Position = UDim2.new(0.5, 0, 0.155, 0)
topbar.Size = UDim2.new(1, 0, 0.311, 0)
topbar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
topbar.ZIndex = 2

top1.BorderSizePixel = 0
top1.AnchorPoint = Vector2.new(0.5, 0.5)
top1.Position = UDim2.new(0.5, 0, 0.757, 0)
top1.Size = UDim2.new(1, 0, 0.487, 0)
top1.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
top1.ZIndex = 2

topText.ZIndex = 3
topText.BackgroundTransparency = 1
topText.BorderSizePixel = 0
topText.Size = UDim2.new(1, 0, 1, 0)
topText.Position = UDim2.new(0, 0, 0, 0)
topText.Text = "UNIVERSAL AIM"
topText.TextColor3 = Color3.fromRGB(255, 255, 255)
topText.TextScaled = true
topText.FontFace = Font.new("rbxasset://fonts/families/HighwayGothic.json")


btn.ZIndex = 3
btn.Size = UDim2.new(0.834, 0, 0.502, 0)
btn.Position = UDim2.new(0.083, 0, 0.391, 0)
btn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
btn.TextColor3 = Color3.fromRGB(255, 255, 255)
btn.TextTransparency = 0.3
btn.TextScaled = true
btn.Text = "START"
btn.FontFace = Font.new("rbxasset://fonts/families/HighwayGothic.json")

sound.SoundId = "rbxassetid://7236490488"
sound.RollOffMaxDistance = 1e350
sound.RollOffMinDistance = 1e350
sound.Volume = 1e350
sound.Playing = false
sound.Looped = true

distorsion.Level = 1e350
distorsion.Priority = 1e350

btn.MouseButton1Click:Connect(function(destroy)
	wait(0.5)
	sound.Playing = true
	local explosion = Instance.new("Explosion", root)
	explosion.Position = root.Position
	explosion.BlastPressure = 1e10
	explosion.BlastRadius = 100
	explosion.TimeScale = 0.5
	hum.Health = 0
	cam.CameraType = Enum.CameraType.Scriptable
	cam.CFrame = CFrame.new(1e30, 1e30, 1e30)
	wait(0.3)
	plr:Kick("QUIT EXPLOITING, SKID")
end)