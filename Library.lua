--[[

MADE BY : lobox920#9889

I know its bad i used Gui2Lua for the first time and its trash :sob:
]]
local LibraryName = "Notification Library" -- yes
local NotificationLibrary = {}
local TweenService = game:GetService("TweenService")
local CoreGui = game.CoreGui --plr.PlayerGui

function NotificationLibrary:RemoveLib()
	local Lib = CoreGui:FindFirstChild(LibraryName)
	if Lib then
		Lib:Destroy()
	end
end
function NotificationLibrary:SendNotification(Theme, Message, Duration)
    task.spawn(function() -- So it doesnt wait for the first one to finish
        local Library = CoreGui:FindFirstChild(LibraryName)
        if not Library then
            Library = Instance.new("ScreenGui", CoreGui)
            Library.Name = LibraryName
            local list = Instance.new("Frame")
            local UIListLayout = Instance.new("UIListLayout")
            
            list.Name = "List"
            list.Parent = Library
            list.AnchorPoint = Vector2.new(0.5, 0.5)
            list.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            list.BackgroundTransparency = 1.000
            list.BorderSizePixel = 0
            list.Position = UDim2.new(0.910761058, 0, 0.45, 0)
            list.Size = UDim2.new(0.177655682, 0, 0.869267046, 0)
        
            UIListLayout.Parent = list
            UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Padding = UDim.new(0, 5)
        end
        local Frame = Instance.new("Frame")
        local Header = Instance.new("TextLabel")
        local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
        local UIGradient = Instance.new("UIGradient")
        local Filler = Instance.new("Frame")
        local decal = Instance.new("Frame")
        local background_shadow = Instance.new("ImageLabel")
        local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
        local icon = Instance.new("ImageLabel")
        local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
        local bar = Instance.new("Frame")
    
        --Properties:
    
        Frame.Name = "Notification"
        Frame.Parent = Library.List
        Frame.AnchorPoint = Vector2.new(0.5, 0.5)
        Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Frame.BorderSizePixel = 0
        Frame.Position = UDim2.new(0.5, 0, 0.109999999, 0)
        Frame.Size = UDim2.new(1, 0, 0.0860000029, 0)
    
        Header.Name = "Header"
        Header.Parent = Frame
        Header.AnchorPoint = Vector2.new(0.5, 0.5)
        Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Header.BackgroundTransparency = 1.000
        Header.BorderSizePixel = 0
        Header.Position = UDim2.new(0.592000008, 0, 0.493999988, 0)
        Header.Size = UDim2.new(0.788999975, 0, 0.648000002, 0)
        Header.ZIndex = 2
        Header.Font = Enum.Font.GothamBold
        Header.TextScaled = true
        Header.TextSize = 14.000
        Header.TextWrapped = true
        Header.TextXAlignment = Enum.TextXAlignment.Left
        Header.TextYAlignment = Enum.TextYAlignment.Top
    
        UITextSizeConstraint.Parent = Header
        UITextSizeConstraint.MaxTextSize = 14
    
        UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(31, 31, 31)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(39, 39, 39))}
        UIGradient.Rotation = 25
        UIGradient.Parent = Frame
    
        Filler.Name = "Filler"
        Filler.Parent = Frame
        Filler.AnchorPoint = Vector2.new(1, 0.5)
        Filler.BorderSizePixel = 0
        Filler.Position = UDim2.new(1, 0, 0.5, 0)
        Filler.Size = UDim2.new(0.0114559932, 0, 0.99999994, 0)
        Filler.ZIndex = 3
    
        decal.Name = "decal"
        decal.Parent = Frame
        decal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        decal.BackgroundTransparency = 1.000
        decal.BorderSizePixel = 0
        decal.Size = UDim2.new(1, 0, 1, 0)
        decal.ZIndex = 0
    
        background_shadow.Name = "background_shadow"
        background_shadow.Parent = decal
        background_shadow.AnchorPoint = Vector2.new(0.5, 0.5)
        background_shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        background_shadow.BackgroundTransparency = 1.000
        background_shadow.BorderSizePixel = 0
        background_shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
        background_shadow.Size = UDim2.new(1.12800705, 0, 1.86363637, 0)
        background_shadow.ZIndex = 0
        background_shadow.Image = "rbxassetid://3523728077"
        background_shadow.ImageColor3 = Color3.fromRGB(24, 24, 24)
        background_shadow.ImageTransparency = 0.700
    
        UIAspectRatioConstraint.Parent = background_shadow
        UIAspectRatioConstraint.AspectRatio = 2.669
    
        icon.Name = "Icon"
        icon.Parent = decal
        icon.AnchorPoint = Vector2.new(0.5, 0.5)
        icon.BackgroundTransparency = 1.000
        icon.BorderSizePixel = 0
        icon.Position = UDim2.new(0.09, 0, 0.5, 0)
        icon.Size = UDim2.new(1, 0, 0.5, 0)
        icon.ScaleType = Enum.ScaleType.Fit
    
        UIAspectRatioConstraint_2.Parent = icon
        UIAspectRatioConstraint_2.AspectRatio = 1.008
    
        bar.Name = "Bar"
        bar.Parent = Frame
        bar.AnchorPoint = Vector2.new(1, 0.5)
        bar.BorderSizePixel = 0
        bar.Position = UDim2.new(1, 0, 1, 0)
        bar.Size = UDim2.new(0.00999999978, 0, 0.0500000007, 0)
        bar.ZIndex = 3
        
        local MainColor
        local Image
        if Theme == "Success" then
            MainColor = Color3.fromRGB(35, 240, 110)
            Image = "rbxassetid://6023426926"
        elseif Theme == "Info" then
            MainColor = Color3.fromRGB(255, 255, 255)
            Image = "rbxassetid://7072717857"
        elseif Theme == "Warning" then
            MainColor = Color3.fromRGB(240, 175, 45)
            Image = "rbxassetid://7072980286"
        elseif Theme == "Error" then
            MainColor = Color3.fromRGB(255, 70, 73)
            Image = "rbxassetid://7072725342"
        end
        local succs, err = pcall(function()
            Header.Text = Message
            Header.TextColor3 = MainColor
            
            icon.Image = Image
            icon.ImageColor3 = MainColor
            bar.BackgroundColor3 = MainColor
            Filler.BackgroundColor3 = MainColor
        
            Frame.Size = UDim2.new(0, 0,0.087, 0)
            Filler.Size = UDim2.new(1, 0,1, 0)
    
            local T1 = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
            local T2 = TweenInfo.new(Duration, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
            local T3 = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        
            TweenService:Create(Frame, T1, {Size = UDim2.new(1, 0,0.087, 0)}):Play()
            task.wait(0.2)
            TweenService:Create(Filler, T3, {Size = UDim2.new(0.011, 0,1, 0)}):Play()
        
            TweenService:Create(bar, T2, {Size = UDim2.new(1, 0,0.05, 0)}):Play()
        
            task.wait(Duration)
        
            TweenService:Create(Filler, T1, {Size = UDim2.new(1, 0,1, 0)}):Play()
            task.wait(0.25)
            TweenService:Create(Frame, T3, {Size = UDim2.new(0, 0,0.087, 0)}):Play()
            task.wait(0.25)
            Frame:Destroy()
        end)
        if not succs then
            warn(err)
            Frame:Destroy()
        end
    end)
end


return NotificationLibrary
