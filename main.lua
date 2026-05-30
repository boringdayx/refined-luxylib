local luxylib = {
	Instances = {},
	ThemeChangedHooks = {},
	CurrentTheme = "Dark",
	Themes = {
		Dark = {
			MainBg = Color3.fromRGB(18, 18, 18),
			Stroke = Color3.fromRGB(121, 121, 121),
			Accent = Color3.fromRGB(172, 0, 0),
			Text = Color3.fromRGB(210, 210, 210),
			TextInactive = Color3.fromRGB(152, 152, 152),
			ToggleBgOff = Color3.fromRGB(30, 30, 30),
			ToggleBtnBg = Color3.fromRGB(22, 22, 22),
			ToggleDot = Color3.fromRGB(220, 220, 220),
			SectionTitle = Color3.fromRGB(254, 254, 254),
		},
		Light = {
			MainBg = Color3.fromRGB(245, 245, 250),
			Stroke = Color3.fromRGB(200, 200, 210),
			Accent = Color3.fromRGB(150, 50, 255),
			Text = Color3.fromRGB(40, 40, 45),
			TextInactive = Color3.fromRGB(130, 130, 140),
			ToggleBgOff = Color3.fromRGB(220, 220, 230),
			ToggleBtnBg = Color3.fromRGB(255, 255, 255),
			ToggleDot = Color3.fromRGB(255, 255, 255),
			SectionTitle = Color3.fromRGB(100, 100, 110),
		},
		Ocean = {
			MainBg = Color3.fromRGB(15, 20, 25),
			Stroke = Color3.fromRGB(40, 50, 60),
			Accent = Color3.fromRGB(0, 190, 255),
			Text = Color3.fromRGB(220, 230, 240),
			TextInactive = Color3.fromRGB(100, 120, 140),
			ToggleBgOff = Color3.fromRGB(25, 35, 45),
			ToggleBtnBg = Color3.fromRGB(20, 28, 35),
			ToggleDot = Color3.fromRGB(220, 240, 255),
			SectionTitle = Color3.fromRGB(150, 180, 210),
		},
		Cyberpunk = {
			MainBg = Color3.fromRGB(15, 10, 20),
			Stroke = Color3.fromRGB(50, 20, 60),
			Accent = Color3.fromRGB(255, 0, 128),
			Text = Color3.fromRGB(255, 220, 240),
			TextInactive = Color3.fromRGB(150, 90, 150),
			ToggleBgOff = Color3.fromRGB(35, 20, 45),
			ToggleBtnBg = Color3.fromRGB(25, 15, 35),
			ToggleDot = Color3.fromRGB(255, 200, 230),
			SectionTitle = Color3.fromRGB(200, 100, 180),
		},
		Matcha = {
			MainBg = Color3.fromRGB(18, 22, 18),
			Stroke = Color3.fromRGB(82, 139, 74),
			Accent = Color3.fromRGB(3, 189, 0),
			Text = Color3.fromRGB(220, 240, 220),
			TextInactive = Color3.fromRGB(120, 150, 120),
			ToggleBgOff = Color3.fromRGB(30, 40, 30),
			ToggleBtnBg = Color3.fromRGB(22, 28, 22),
			ToggleDot = Color3.fromRGB(220, 255, 220),
			SectionTitle = Color3.fromRGB(150, 180, 150),
		},
		Silver = {
			MainBg = Color3.fromRGB(25, 25, 25),
			Stroke = Color3.fromRGB(60, 60, 60),
			Accent = Color3.fromRGB(220, 220, 220),
			Text = Color3.fromRGB(240, 240, 240),
			TextInactive = Color3.fromRGB(120, 120, 120),
			ToggleBgOff = Color3.fromRGB(40, 40, 40),
			ToggleBtnBg = Color3.fromRGB(30, 30, 30),
			ToggleDot = Color3.fromRGB(240, 240, 240),
			SectionTitle = Color3.fromRGB(180, 180, 180),
		},
		White = {
			MainBg = Color3.fromRGB(255, 255, 255),
			Stroke = Color3.fromRGB(220, 220, 220),
			Accent = Color3.fromRGB(50, 50, 50),
			Text = Color3.fromRGB(20, 20, 20),
			TextInactive = Color3.fromRGB(140, 140, 140),
			ToggleBgOff = Color3.fromRGB(230, 230, 230),
			ToggleBtnBg = Color3.fromRGB(245, 245, 245),
			ToggleDot = Color3.fromRGB(255, 255, 255),
			SectionTitle = Color3.fromRGB(100, 100, 100),
		},
		Platinum = {
			MainBg = Color3.fromRGB(35, 35, 40),
			Stroke = Color3.fromRGB(80, 80, 90),
			Accent = Color3.fromRGB(180, 180, 255),
			Text = Color3.fromRGB(240, 240, 250),
			TextInactive = Color3.fromRGB(130, 130, 150),
			ToggleBgOff = Color3.fromRGB(45, 45, 50),
			ToggleBtnBg = Color3.fromRGB(38, 38, 43),
			ToggleDot = Color3.fromRGB(230, 230, 240),
			SectionTitle = Color3.fromRGB(160, 160, 210),
		},
		Crimson = {
			MainBg = Color3.fromRGB(20, 10, 10),
			Stroke = Color3.fromRGB(60, 20, 20),
			Accent = Color3.fromRGB(255, 60, 60),
			Text = Color3.fromRGB(255, 220, 220),
			TextInactive = Color3.fromRGB(150, 80, 80),
			ToggleBgOff = Color3.fromRGB(35, 15, 15),
			ToggleBtnBg = Color3.fromRGB(25, 12, 12),
			ToggleDot = Color3.fromRGB(255, 180, 180),
			SectionTitle = Color3.fromRGB(200, 100, 100),
		},
		Gold = {
			MainBg = Color3.fromRGB(25, 22, 15),
			Stroke = Color3.fromRGB(60, 50, 20),
			Accent = Color3.fromRGB(255, 210, 50),
			Text = Color3.fromRGB(255, 245, 220),
			TextInactive = Color3.fromRGB(150, 130, 90),
			ToggleBgOff = Color3.fromRGB(45, 35, 20),
			ToggleBtnBg = Color3.fromRGB(30, 25, 18),
			ToggleDot = Color3.fromRGB(255, 250, 200),
			SectionTitle = Color3.fromRGB(200, 180, 100),
		},
	},
}

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

function luxylib:ApplyThemeObj(Inst, Prop, ThemeType)
	table.insert(self.Instances, { Inst = Inst, Prop = Prop, Type = ThemeType })
	local palette = self.Themes[self.CurrentTheme]
	Inst[Prop] = palette[ThemeType]
	return Inst
end

function luxylib:ChangeTheme(ThemeName)
	self.CurrentTheme = ThemeName
	local palette = self.Themes[ThemeName]
	for _, obj in pairs(self.Instances) do
		if obj.Inst and obj.Inst.Parent then
			TweenService:Create(obj.Inst, TweenInfo.new(0.3), { [obj.Prop] = palette[obj.Type] }):Play()
		end
	end

	for _, hook in pairs(self.ThemeChangedHooks) do
		if hook.Inst and hook.Inst.Parent then
			hook.Func(ThemeName)
		end
	end
end

local NotifUI = Instance.new("ScreenGui")
NotifUI.Name = "LuxyNotifUI"
NotifUI.ResetOnSpawn = false
NotifUI.IgnoreGuiInset = true
-- 🔥 TIMPA: Set order paling tinggi agar notifikasi card tidak tertutup HUD game
NotifUI.DisplayOrder = 99999
NotifUI.Parent = LocalPlayer:WaitForChild("PlayerGui")

local NotifContainer = Instance.new("Frame", NotifUI)
NotifContainer.Name = "NotifContainer"
NotifContainer.Size = UDim2.new(0, 260, 1, -20)
NotifContainer.Position = UDim2.new(1, -20, 0, 10)
NotifContainer.AnchorPoint = Vector2.new(1, 0)
NotifContainer.BackgroundTransparency = 1
NotifContainer.ZIndex = 1000

local NotifLayout = Instance.new("UIListLayout", NotifContainer)
NotifLayout.SortOrder = Enum.SortOrder.LayoutOrder
NotifLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
NotifLayout.Padding = UDim.new(0, 10)

function luxylib:Notify(Data)
	local TitleStr = Data.Title or "Notification"
	local ContentStr = Data.Content or "Description here"
	local Duration = Data.Duration or 3

	local NCard = Instance.new("Frame", NotifContainer)
	NCard.Size = UDim2.new(1, 0, 0, 60)
	NCard.Position = UDim2.new(1, 300, 0, 0)
	NCard.BackgroundTransparency = 0.15
	NCard.ClipsDescendants = true
	NCard.ZIndex = 1001
	Instance.new("UICorner", NCard).CornerRadius = UDim.new(0, 8)
	luxylib:ApplyThemeObj(NCard, "BackgroundColor3", "ToggleBtnBg")

	local NStroke = Instance.new("UIStroke", NCard)
	NStroke.Thickness = 1
	NStroke.Transparency = 0.5
	luxylib:ApplyThemeObj(NStroke, "Color", "Stroke")

	local NIcon = Instance.new("ImageLabel", NCard)
	NIcon.Size = UDim2.new(0, 24, 0, 24)
	NIcon.Position = UDim2.new(0, 15, 0.5, -12)
	NIcon.BackgroundTransparency = 1
	NIcon.Image = "rbxassetid://10709771426"
	NIcon.ZIndex = 1002
	luxylib:ApplyThemeObj(NIcon, "ImageColor3", "Accent")

	local NTitle = Instance.new("TextLabel", NCard)
	NTitle.Size = UDim2.new(1, -55, 0, 18)
	NTitle.Position = UDim2.new(0, 50, 0, 10)
	NTitle.BackgroundTransparency = 1
	NTitle.Text = TitleStr
	NTitle.Font = Enum.Font.GothamBold
	NTitle.TextSize = 13
	NTitle.TextXAlignment = Enum.TextXAlignment.Left
	NTitle.ZIndex = 1002
	luxylib:ApplyThemeObj(NTitle, "TextColor3", "Text")

	local NDesc = Instance.new("TextLabel", NCard)
	NDesc.Size = UDim2.new(1, -55, 1, -30)
	NDesc.Position = UDim2.new(0, 50, 0, 28)
	NDesc.BackgroundTransparency = 1
	NDesc.Text = ContentStr
	NDesc.Font = Enum.Font.Gotham
	NDesc.TextSize = 11
	NDesc.TextWrapped = true
	NDesc.TextYAlignment = Enum.TextYAlignment.Top
	NDesc.TextXAlignment = Enum.TextXAlignment.Left
	NDesc.ZIndex = 1002
	luxylib:ApplyThemeObj(NDesc, "TextColor3", "TextInactive")

	local NBarBg = Instance.new("Frame", NCard)
	NBarBg.Size = UDim2.new(1, 0, 0, 3)
	NBarBg.Position = UDim2.new(0, 0, 1, -3)
	NBarBg.BorderSizePixel = 0
	NBarBg.ZIndex = 1002
	luxylib:ApplyThemeObj(NBarBg, "BackgroundColor3", "MainBg")

	local NBarFill = Instance.new("Frame", NBarBg)
	NBarFill.Size = UDim2.new(1, 0, 1, 0)
	NBarFill.BorderSizePixel = 0
	NBarFill.ZIndex = 1002
	luxylib:ApplyThemeObj(NBarFill, "BackgroundColor3", "Accent")

	TweenService:Create(
		NCard,
		TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
		{ Position = UDim2.new(0, 0, 0, 0) }
	):Play()
	TweenService:Create(NBarFill, TweenInfo.new(Duration, Enum.EasingStyle.Linear), { Size = UDim2.new(0, 0, 1, 0) })
		:Play()

	task.delay(Duration, function()
		local OutAnim = TweenService:Create(
			NCard,
			TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In),
			{ Position = UDim2.new(1, 300, 0, 0) }
		)
		OutAnim:Play()
		OutAnim.Completed:Wait()
		NCard:Destroy()
	end)
end

-- Ini adalah "otak" penyimpan data lu selama script jalan
local UI_Session = {
    Pos = UDim2.new(0.5, 0, 0.5, 0), -- Default ke tengah
    Size = UDim2.new(0, 650, 0, 530), -- Default ukuran
}

function luxylib:CreateWindow(TitleText)
	local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
	local Window = { Tabs = {}, SelectCloseFuncs = {}, DropdownCloseFuncs = {}, CurrentTab = nil }

	local LuxyUI = Instance.new("ScreenGui")
	LuxyUI.Name = "LuxyUI"
	LuxyUI.ResetOnSpawn = false
	LuxyUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	LuxyUI.IgnoreGuiInset = true
	-- 🔥 TIMPA: Set order paling tinggi agar UI utama selalu merender di atas inventory & HUD game
	LuxyUI.DisplayOrder = 99999 
	LuxyUI.Parent = PlayerGui

	local FloatingBtn = Instance.new("ImageButton", LuxyUI)
	FloatingBtn.Size = UDim2.new(0, 36, 0, 36)
	FloatingBtn.Position = UDim2.new(0.02, 0, 0.1, 0)
	FloatingBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	FloatingBtn.Image = "rbxassetid://95308792107685"
	FloatingBtn.AutoButtonColor = false
	FloatingBtn.ZIndex = 500
	Instance.new("UICorner", FloatingBtn).CornerRadius = UDim.new(0, 8)

	local FloatStroke = Instance.new("UIStroke", FloatingBtn)
	FloatStroke.Thickness = 1
	luxylib:ApplyThemeObj(FloatStroke, "Color", "Accent")

	local fDragging, fDragInput, fDragStart, fStartPos
	FloatingBtn.InputBegan:Connect(function(input)
		if
			input.UserInputType == Enum.UserInputType.MouseButton1
			or input.UserInputType == Enum.UserInputType.Touch
		then
			fDragging = true
			fDragStart = input.Position
			fStartPos = FloatingBtn.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					fDragging = false
				end
			end)
		end
	end)
	FloatingBtn.InputChanged:Connect(function(input)
		if
			input.UserInputType == Enum.UserInputType.MouseMovement
			or input.UserInputType == Enum.UserInputType.Touch
		then
			fDragInput = input
		end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if input == fDragInput and fDragging then
			local delta = input.Position - fDragStart
			FloatingBtn.Position = UDim2.new(
				fStartPos.X.Scale,
				fStartPos.X.Offset + delta.X,
				fStartPos.Y.Scale,
				fStartPos.Y.Offset + delta.Y
			)
		end
	end)

	local Main = Instance.new("Frame")
	-- Simpan ukuran & posisi terbaru di sini
	local currentSize = UDim2.new(0, 650, 0, 530)

	-- 🔥 TIMPA: Hitung posisi vertikal top secara dinamis agar tepat di tengah layar saat execute
	local Camera = workspace.CurrentCamera
	local Viewport = Camera and Camera.ViewportSize or Vector2.new(1000, 1000)
	local scaleX = Viewport.X / 690
	local scaleY = Viewport.Y / 570
	local initialScale = math.clamp(math.min(scaleX, scaleY, 1), 0.38, 1)
	local initialYOffset = (Viewport.Y / 2) - (530 * initialScale / 2)
	local currentPos = UDim2.new(0.5, 0, 0, initialYOffset)

	Main.Name = "Main"
	Main.Size = UDim2.new(0, 650, 0, 530)
	-- 🔥 TIMPA: Kembalikan AnchorPoint ke 0.5, 0 agar top bar tetap diam di posisi atas saat di-minimize!
	Main.AnchorPoint = Vector2.new(0.5, 0) 
	Main.Position = currentPos
	Main.BackgroundTransparency = 0.05
	Main.BorderSizePixel = 0
	Main.ClipsDescendants = true
	Main.ZIndex = 10
	Main.Parent = LuxyUI
	luxylib:ApplyThemeObj(Main, "BackgroundColor3", "MainBg")

	local MainScale = Instance.new("UIScale")
	MainScale.Name = "LuxyAutoScaler"
	MainScale.Parent = Main

	local function ScaleUI()
            local Camera = workspace.CurrentCamera
            if not Camera then
                return
            end
            local Viewport = Camera.ViewportSize

            local maxWidth = 650 + 40
            local maxHeight = 530 + 40

            local scaleX = Viewport.X / maxWidth
            local scaleY = Viewport.Y / maxHeight

            local finalScale = math.min(scaleX, scaleY, 1)

            -- 🔥 TIMPA: Batasi skala minimal di angka 0.38 agar muat di HP layar pendek
            MainScale.Scale = math.clamp(finalScale, 0.38, 1)
        end

	ScaleUI()
	workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(ScaleUI)

	local uiVisible = true
FloatingBtn.MouseButton1Click:Connect(function()
    uiVisible = not uiVisible
    if uiVisible then
        Main.Visible = true
        -- 🔥 TIMPA: Gunakan posisi terakhir yang disimpan agar tidak kembali ke tengah layar
        Main.Position = currentPos 
        Main.Size = UDim2.new(0, 0, 0, 0) -- Mulai dari 0 untuk efek animasi pop-up
        
        local Camera = workspace.CurrentCamera
                if Camera then
                    local Viewport = Camera.ViewportSize
                    -- 🔥 TIMPA: Samakan batas minimal ke 0.38 di sini juga
                    local scale = math.clamp(math.min(Viewport.X / 690, Viewport.Y / 570), 0.38, 1)
                    local uiScale = Main:FindFirstChild("LuxyAutoScaler")
                    if uiScale then uiScale.Scale = scale end
                end

        -- 🔥 TIMPA: Tween ukuran ke currentSize (ukuran terakhir yang diatur user), bukan ke ukuran default (650, 530)
        TweenService:Create(Main, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = currentSize}):Play()
    else
        TweenService:Create(Main, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), {Size = UDim2.new(0, 0, 0, 0)}):Play()
        task.wait(0.3)
        if not uiVisible then Main.Visible = false end
    end
end)

	local MainCorner = Instance.new("UICorner", Main)
	MainCorner.CornerRadius = UDim.new(0, 8)

	local MainStroke = Instance.new("UIStroke", Main)
	MainStroke.Thickness = 1
	MainStroke.Transparency = 0.5
	MainStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	luxylib:ApplyThemeObj(MainStroke, "Color", "Stroke")

	local TopBar = Instance.new("Frame", Main)
	TopBar.Name = "TopBar"
	TopBar.Size = UDim2.new(1, 0, 0, 30)
	TopBar.BackgroundTransparency = 1
	TopBar.ZIndex = 50

	local TopBarPadding = Instance.new("UIPadding", TopBar)
	TopBarPadding.PaddingLeft = UDim.new(0, 15)
	TopBarPadding.PaddingRight = UDim.new(0, 15)

	local Title = Instance.new("TextLabel", TopBar)
	Title.Name = "Title"
	Title.Size = UDim2.new(0.5, 0, 1, 0)
	Title.BackgroundTransparency = 1
	Title.Text = TitleText or "Luxy Hub | V6 God Tier"
	Title.Font = Enum.Font.GothamBold
	Title.TextSize = 15
	Title.TextXAlignment = Enum.TextXAlignment.Left
	Title.ZIndex = 51
	luxylib:ApplyThemeObj(Title, "TextColor3", "Text")

	local dragging, dragInput, dragStart, startPos
	TopBar.InputBegan:Connect(function(input)
		if
			input.UserInputType == Enum.UserInputType.MouseButton1
			or input.UserInputType == Enum.UserInputType.Touch
		then
			dragging = true
			dragStart = input.Position
			startPos = Main.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	TopBar.InputChanged:Connect(function(input)
		if
			input.UserInputType == Enum.UserInputType.MouseMovement
			or input.UserInputType == Enum.UserInputType.Touch
		then
			dragInput = input
		end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			local delta = input.Position - dragStart
			Main.Position =
				UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			currentPos = Main.Position -- 🔥 TIMPA: Simpan posisi terbaru setiap kali UI digeser
		end
	end)

	local ControlContainer = Instance.new("Frame", TopBar)
	ControlContainer.Name = "ControlContainer"
	ControlContainer.Size = UDim2.new(0.5, 0, 1, 0)
	ControlContainer.AnchorPoint = Vector2.new(1, 0)
	ControlContainer.Position = UDim2.new(1, 0, 0, 0)
	ControlContainer.BackgroundTransparency = 1
	ControlContainer.ZIndex = 51

	local ControlLayout = Instance.new("UIListLayout", ControlContainer)
	ControlLayout.FillDirection = Enum.FillDirection.Horizontal
	ControlLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
	ControlLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	ControlLayout.Padding = UDim.new(0, 10)
	ControlLayout.SortOrder = Enum.SortOrder.LayoutOrder

	local MinimizeBtn = Instance.new("ImageButton", ControlContainer)
	MinimizeBtn.Size = UDim2.new(0, 18, 0, 18)
	MinimizeBtn.BackgroundTransparency = 1
	MinimizeBtn.LayoutOrder = 2
	MinimizeBtn.Image = "rbxassetid://10734896206"
	MinimizeBtn.ZIndex = 51
	luxylib:ApplyThemeObj(MinimizeBtn, "ImageColor3", "Text")

	local MaximizeBtn = Instance.new("ImageButton", ControlContainer)
	MaximizeBtn.Size = UDim2.new(0, 18, 0, 18)
	MaximizeBtn.BackgroundTransparency = 1
	MaximizeBtn.LayoutOrder = 3
	MaximizeBtn.Image = "rbxassetid://10734886735"
	MaximizeBtn.ZIndex = 51
	luxylib:ApplyThemeObj(MaximizeBtn, "ImageColor3", "Text")

	local CloseBtn = Instance.new("ImageButton", ControlContainer)
	CloseBtn.Size = UDim2.new(0, 18, 0, 18)
	CloseBtn.BackgroundTransparency = 1
	CloseBtn.LayoutOrder = 4
	CloseBtn.Image = "rbxassetid://10747384394"
	CloseBtn.ZIndex = 51
	luxylib:ApplyThemeObj(CloseBtn, "ImageColor3", "Text")

	local function ApplyHover(btn, hoverColor)
		btn.MouseEnter:Connect(function()
			TweenService:Create(btn, TweenInfo.new(0.2), { ImageColor3 = hoverColor }):Play()
		end)
		btn.MouseLeave:Connect(function()
			local palette = luxylib.Themes[luxylib.CurrentTheme]
			TweenService:Create(btn, TweenInfo.new(0.2), { ImageColor3 = palette.Text }):Play()
		end)
	end
	ApplyHover(MinimizeBtn, Color3.fromRGB(250, 190, 50))
	ApplyHover(MaximizeBtn, Color3.fromRGB(50, 200, 90))
	ApplyHover(CloseBtn, Color3.fromRGB(255, 75, 75))

	local ProfileCard

	local isMinimized = false
	local preMinSize = Main.Size
	local preMinPos = Main.Position
	local isMinTweening = false

MinimizeBtn.MouseButton1Click:Connect(function()
    if isMinTweening then return end
    isMinTweening = true
    isMinimized = not isMinimized

    -- Toggle visibility ProfileCard (asumsikan variabelnya namanya ProfileCard)
    if ProfileCard then
        ProfileCard.Visible = not isMinimized 
    end

    -- Gunakan currentSize buat target unminimize
    local targetHeight = isMinimized and 30 or currentSize.Y.Offset
    
    TweenService:Create(Main, TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
        Size = UDim2.new(currentSize.X.Scale, currentSize.X.Offset, 0, targetHeight)
    }):Play()

    task.delay(0.4, function() isMinTweening = false end)
end)

	local isMaximized = false
	local preMaxSize = Main.Size
	local preMaxPos = Main.Position
	    MaximizeBtn.MouseButton1Click:Connect(function()
        if isMinimized then return end 
        isMaximized = not isMaximized
        if isMaximized then
            preMaxSize = Main.Size
            preMaxPos = Main.Position
            -- 🔥 TIMPA: Mengembalikan fullscreen ke koordinat atas tengah (0.5, 0, 0, 0) karena AnchorPoint kembali ke 0.5, 0
            TweenService:Create(Main, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {Size = UDim2.new(1, 0, 1, 0), Position = UDim2.new(0.5, 0, 0, 0)}):Play()
            TweenService:Create(MainCorner, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {CornerRadius = UDim.new(0, 0)}):Play()
        else
            TweenService:Create(Main, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {Size = preMaxSize, Position = preMaxPos}):Play()
            TweenService:Create(MainCorner, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {CornerRadius = UDim.new(0, 8)}):Play()
        end
    end)

	local ModalOverlay = Instance.new("Frame", Main)
	ModalOverlay.Size = UDim2.new(1, 0, 1, 0)
	ModalOverlay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	ModalOverlay.BackgroundTransparency = 1
	ModalOverlay.Visible = false
	ModalOverlay.ZIndex = 998

	local ModalBox = Instance.new("Frame", ModalOverlay)
	ModalBox.Size = UDim2.new(0, 300, 0, 150)
	ModalBox.AnchorPoint = Vector2.new(0.5, 0.5)
	ModalBox.Position = UDim2.new(0.5, 0, 0.5, 20)
	ModalBox.BackgroundTransparency = 1
	ModalBox.ZIndex = 999
	Instance.new("UICorner", ModalBox).CornerRadius = UDim.new(0, 10)
	luxylib:ApplyThemeObj(ModalBox, "BackgroundColor3", "MainBg")

	local ModalStroke = Instance.new("UIStroke", ModalBox)
	ModalStroke.Thickness = 1
	ModalStroke.Transparency = 1
	luxylib:ApplyThemeObj(ModalStroke, "Color", "Stroke")

	local ModalTitle = Instance.new("TextLabel", ModalBox)
	ModalTitle.Size = UDim2.new(1, 0, 0, 40)
	ModalTitle.BackgroundTransparency = 1
	ModalTitle.Text = "Exit Luxy Hub?"
	ModalTitle.Font = Enum.Font.GothamBold
	ModalTitle.TextSize = 16
	ModalTitle.TextTransparency = 1
	ModalTitle.ZIndex = 999
	luxylib:ApplyThemeObj(ModalTitle, "TextColor3", "Text")

	local ModalDesc = Instance.new("TextLabel", ModalBox)
	ModalDesc.Size = UDim2.new(1, -40, 0, 40)
	ModalDesc.Position = UDim2.new(0, 20, 0, 40)
	ModalDesc.BackgroundTransparency = 1
	ModalDesc.Text = "Are you sure you want to exit? You will need to re-execute the script."
	ModalDesc.TextWrapped = true
	ModalDesc.Font = Enum.Font.Gotham
	ModalDesc.TextSize = 12
	ModalDesc.TextTransparency = 1
	ModalDesc.ZIndex = 999
	luxylib:ApplyThemeObj(ModalDesc, "TextColor3", "TextInactive")

	local CancelBtn = Instance.new("TextButton", ModalBox)
	CancelBtn.Size = UDim2.new(0, 110, 0, 36)
	CancelBtn.Position = UDim2.new(0, 30, 1, -50)
	CancelBtn.Text = "Cancel"
	CancelBtn.Font = Enum.Font.GothamMedium
	CancelBtn.TextSize = 13
	CancelBtn.AutoButtonColor = false
	CancelBtn.BackgroundTransparency = 1
	CancelBtn.TextTransparency = 1
	CancelBtn.ZIndex = 999
	Instance.new("UICorner", CancelBtn).CornerRadius = UDim.new(0, 6)
	luxylib:ApplyThemeObj(CancelBtn, "BackgroundColor3", "ToggleBgOff")
	luxylib:ApplyThemeObj(CancelBtn, "TextColor3", "Text")

	local ConfirmBtn = Instance.new("TextButton", ModalBox)
	ConfirmBtn.Size = UDim2.new(0, 110, 0, 36)
	ConfirmBtn.Position = UDim2.new(1, -140, 1, -50)
	ConfirmBtn.Text = "Yes, Exit"
	ConfirmBtn.Font = Enum.Font.GothamMedium
	ConfirmBtn.TextSize = 13
	ConfirmBtn.AutoButtonColor = false
	ConfirmBtn.BackgroundTransparency = 1
	ConfirmBtn.TextTransparency = 1
	ConfirmBtn.ZIndex = 999
	Instance.new("UICorner", ConfirmBtn).CornerRadius = UDim.new(0, 6)
	luxylib:ApplyThemeObj(ConfirmBtn, "BackgroundColor3", "Accent")
	ConfirmBtn.TextColor3 = Color3.fromRGB(255, 255, 255)

	CloseBtn.MouseButton1Click:Connect(function()
		ModalOverlay.Visible = true
		TweenService:Create(ModalOverlay, TweenInfo.new(0.3), { BackgroundTransparency = 0.5 }):Play()
		TweenService:Create(
			ModalBox,
			TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
			{ Position = UDim2.new(0.5, 0, 0.5, 0), BackgroundTransparency = 0 }
		):Play()
		TweenService:Create(ModalStroke, TweenInfo.new(0.3), { Transparency = 0.5 }):Play()
		TweenService:Create(ModalTitle, TweenInfo.new(0.3), { TextTransparency = 0 }):Play()
		TweenService:Create(ModalDesc, TweenInfo.new(0.3), { TextTransparency = 0 }):Play()
		TweenService:Create(CancelBtn, TweenInfo.new(0.3), { BackgroundTransparency = 0, TextTransparency = 0 }):Play()
		TweenService:Create(ConfirmBtn, TweenInfo.new(0.3), { BackgroundTransparency = 0.2, TextTransparency = 0 })
			:Play()
	end)

	CancelBtn.MouseButton1Click:Connect(function()
		TweenService:Create(ModalOverlay, TweenInfo.new(0.3), { BackgroundTransparency = 1 }):Play()
		TweenService:Create(
			ModalBox,
			TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In),
			{ Position = UDim2.new(0.5, 0, 0.5, 20), BackgroundTransparency = 1 }
		):Play()
		TweenService:Create(ModalStroke, TweenInfo.new(0.3), { Transparency = 1 }):Play()
		TweenService:Create(ModalTitle, TweenInfo.new(0.3), { TextTransparency = 1 }):Play()
		TweenService:Create(ModalDesc, TweenInfo.new(0.3), { TextTransparency = 1 }):Play()
		TweenService:Create(CancelBtn, TweenInfo.new(0.3), { BackgroundTransparency = 1, TextTransparency = 1 }):Play()
		TweenService:Create(ConfirmBtn, TweenInfo.new(0.3), { BackgroundTransparency = 1, TextTransparency = 1 }):Play()
		task.wait(0.3)
		ModalOverlay.Visible = false
	end)

	ConfirmBtn.MouseButton1Click:Connect(function()
		TweenService:Create(
			Main,
			TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In),
			{ Size = UDim2.new(0, 0, 0, 0) }
		):Play()
		TweenService:Create(FloatingBtn, TweenInfo.new(0.3), { Size = UDim2.new(0, 0, 0, 0) }):Play()
		task.wait(0.3)
		LuxyUI:Destroy()
	end)

	local ResizeGrip = Instance.new("TextButton", Main)
	ResizeGrip.Size = UDim2.new(0, 15, 0, 15)
	ResizeGrip.Position = UDim2.new(1, 0, 1, 0)
	ResizeGrip.AnchorPoint = Vector2.new(1, 1)
	ResizeGrip.BackgroundTransparency = 1
	ResizeGrip.Text = ""
	ResizeGrip.ZIndex = 100

	local resizing, rDragStart, startSize
	ResizeGrip.InputBegan:Connect(function(input)
		if
			input.UserInputType == Enum.UserInputType.MouseButton1
			or input.UserInputType == Enum.UserInputType.Touch
		then
			if isMinimized or isMaximized then
				return
			end
			resizing = true
			rDragStart = input.Position
			startSize = Main.Size
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					resizing = false
				end
			end)
		end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if
			resizing
			and (
				input.UserInputType == Enum.UserInputType.MouseMovement
				or input.UserInputType == Enum.UserInputType.Touch
			)
		then
			local delta = input.Position - rDragStart
			local newX = math.clamp(startSize.X.Offset + delta.X, 500, 1000)
			local newY = math.clamp(startSize.Y.Offset + delta.Y, 350, 800)
			Main.Size = UDim2.new(0, newX, 0, newY)
			currentSize = Main.Size
		end
	end)

	local Sidebar = Instance.new("ScrollingFrame", Main)
	Sidebar.Name = "Sidebar"
	Sidebar.Size = UDim2.new(0, 180, 1, -95)
	Sidebar.Position = UDim2.new(0, 0, 0, 30)
	Sidebar.BackgroundTransparency = 1
	Sidebar.BorderSizePixel = 0
	Sidebar.ScrollBarThickness = 0
	Sidebar.CanvasSize = UDim2.new(0, 0, 0, 0)
	Sidebar.AutomaticCanvasSize = Enum.AutomaticSize.Y

	local SidebarPadding = Instance.new("UIPadding", Sidebar)
	SidebarPadding.PaddingTop = UDim.new(0, 10)
	SidebarPadding.PaddingBottom = UDim.new(0, 10)
	SidebarPadding.PaddingLeft = UDim.new(0, 10)
	SidebarPadding.PaddingRight = UDim.new(0, 10)

	local SidebarLayout = Instance.new("UIListLayout", Sidebar)
	SidebarLayout.SortOrder = Enum.SortOrder.LayoutOrder
	SidebarLayout.Padding = UDim.new(0, 5)

	local SidebarDivider = Instance.new("Frame", Main)
	SidebarDivider.Name = "SidebarDivider"
	SidebarDivider.Size = UDim2.new(0, 1, 1, -80)
	SidebarDivider.AnchorPoint = Vector2.new(0, 0.5)
	SidebarDivider.Position = UDim2.new(0, 180, 0.5, 15)
	SidebarDivider.BackgroundTransparency = 0.7
	SidebarDivider.BorderSizePixel = 0
	luxylib:ApplyThemeObj(SidebarDivider, "BackgroundColor3", "Stroke")

	ProfileCard = Instance.new("Frame", Main)
	ProfileCard.Size = UDim2.new(0, 160, 0, 50)
	ProfileCard.Position = UDim2.new(0, 10, 1, -60)
	ProfileCard.BackgroundTransparency = 0.55
	Instance.new("UICorner", ProfileCard).CornerRadius = UDim.new(0, 8)
	luxylib:ApplyThemeObj(ProfileCard, "BackgroundColor3", "ToggleBtnBg")

	local ProfStroke = Instance.new("UIStroke", ProfileCard)
	ProfStroke.Transparency = 0.85
	luxylib:ApplyThemeObj(ProfStroke, "Color", "Stroke")

	local AvatarImg = Instance.new("ImageLabel", ProfileCard)
	AvatarImg.Size = UDim2.new(0, 36, 0, 36)
	AvatarImg.Position = UDim2.new(0, 7, 0.5, -18)
	AvatarImg.BackgroundTransparency = 1
	AvatarImg.Image = "rbxthumb://type=AvatarHeadShot&id=" .. LocalPlayer.UserId .. "&w=150&h=150"
	Instance.new("UICorner", AvatarImg).CornerRadius = UDim.new(1, 0)

	local PlayerName = Instance.new("TextLabel", ProfileCard)
	PlayerName.Size = UDim2.new(1, -105, 0, 16)
	PlayerName.Position = UDim2.new(0, 50, 0, 8)
	PlayerName.BackgroundTransparency = 1
	PlayerName.Text = LocalPlayer.Name
	PlayerName.Font = Enum.Font.GothamBold
	PlayerName.TextSize = 12
	PlayerName.TextXAlignment = Enum.TextXAlignment.Left
	PlayerName.TextTruncate = Enum.TextTruncate.AtEnd
	luxylib:ApplyThemeObj(PlayerName, "TextColor3", "Text")

	local ExecNameText = "Unknown"
	pcall(function()
		if identifyexecutor then
			ExecNameText = identifyexecutor()
		else
			ExecNameText = "Roblox Studio"
		end
	end)

	local ExecutorLabel = Instance.new("TextLabel", ProfileCard)
	ExecutorLabel.Size = UDim2.new(1, -105, 0, 14)
	ExecutorLabel.Position = UDim2.new(0, 50, 0, 26)
	ExecutorLabel.BackgroundTransparency = 1
	ExecutorLabel.Text = ExecNameText
	ExecutorLabel.Font = Enum.Font.Gotham
	ExecutorLabel.TextSize = 10
	ExecutorLabel.TextXAlignment = Enum.TextXAlignment.Left
	luxylib:ApplyThemeObj(ExecutorLabel, "TextColor3", "Accent")

	local ThemePanel = Instance.new("Frame", Main)
	ThemePanel.Name = "ThemePanel"
	ThemePanel.AnchorPoint = Vector2.new(0, 1)
	ThemePanel.Position = UDim2.new(0, 10, 1, -65)
	ThemePanel.Size = UDim2.new(0, 160, 0, 0)
	ThemePanel.BackgroundTransparency = 0.55
	ThemePanel.ClipsDescendants = true
	ThemePanel.ZIndex = 50
	Instance.new("UICorner", ThemePanel).CornerRadius = UDim.new(0, 8)
	luxylib:ApplyThemeObj(ThemePanel, "BackgroundColor3", "ToggleBtnBg")

	local TPStroke = Instance.new("UIStroke", ThemePanel)
	TPStroke.Transparency = 0.85
	luxylib:ApplyThemeObj(TPStroke, "Color", "Stroke")

	local TPPadding = Instance.new("UIPadding", ThemePanel)
	TPPadding.PaddingTop = UDim.new(0, 8)
	TPPadding.PaddingBottom = UDim.new(0, 8)
	TPPadding.PaddingLeft = UDim.new(0, 8)
	TPPadding.PaddingRight = UDim.new(0, 8)

	local TPLayout = Instance.new("UIListLayout", ThemePanel)
	TPLayout.SortOrder = Enum.SortOrder.LayoutOrder
	TPLayout.Padding = UDim.new(0, 4)

	local ThemeOrder =
		{ "Dark", "Light", "Ocean", "Cyberpunk", "Matcha", "Silver", "White", "Platinum", "Crimson", "Gold" }
	for i, tName in ipairs(ThemeOrder) do
		local tBtn = Instance.new("TextButton", ThemePanel)
		tBtn.Size = UDim2.new(1, 0, 0, 26)
		tBtn.BackgroundTransparency = 1
		tBtn.Text = tName
		tBtn.Font = Enum.Font.GothamMedium
		tBtn.TextSize = 11
		tBtn.AutoButtonColor = false
		tBtn.LayoutOrder = i
		Instance.new("UICorner", tBtn).CornerRadius = UDim.new(0, 4)
		luxylib:ApplyThemeObj(tBtn, "BackgroundColor3", "ToggleBgOff")
		luxylib:ApplyThemeObj(tBtn, "TextColor3", "TextInactive")

		tBtn.MouseEnter:Connect(function()
			TweenService:Create(tBtn, TweenInfo.new(0.2), { BackgroundTransparency = 0.8 }):Play()
		end)
		tBtn.MouseLeave:Connect(function()
			TweenService:Create(tBtn, TweenInfo.new(0.2), { BackgroundTransparency = 1 }):Play()
		end)

		tBtn.MouseButton1Click:Connect(function()
			luxylib:ChangeTheme(tName)
			for _, tabData in pairs(Window.Tabs) do
				if tabData.Page.Visible then
					local palette = luxylib.Themes[tName]
					TweenService:Create(tabData.Icon, TweenInfo.new(0.3), { ImageColor3 = palette.Accent }):Play()
					TweenService:Create(tabData.TitleLabel, TweenInfo.new(0.3), { TextColor3 = palette.Text }):Play()
				end
			end
		end)
	end

	local ThemeBtn = Instance.new("ImageButton", ProfileCard)
	ThemeBtn.Size = UDim2.new(0, 20, 0, 20)
	ThemeBtn.AnchorPoint = Vector2.new(1, 0.5)
	ThemeBtn.Position = UDim2.new(1, -12, 0.5, 0)
	ThemeBtn.BackgroundTransparency = 1
	ThemeBtn.Image = "rbxassetid://10734910430"
	luxylib:ApplyThemeObj(ThemeBtn, "ImageColor3", "TextInactive")

	ThemeBtn.MouseEnter:Connect(function()
		local palette = luxylib.Themes[luxylib.CurrentTheme]
		TweenService
			:Create(ThemeBtn, TweenInfo.new(0.2), { ImageColor3 = palette.Accent, Size = UDim2.new(0, 22, 0, 22) })
			:Play()
	end)
	ThemeBtn.MouseLeave:Connect(function()
		local palette = luxylib.Themes[luxylib.CurrentTheme]
		local warnaBalik = isThemeOpen and palette.Accent or palette.TextInactive
		TweenService:Create(ThemeBtn, TweenInfo.new(0.2), { ImageColor3 = warnaBalik, Size = UDim2.new(0, 20, 0, 20) })
			:Play()
	end)

	local isThemeOpen = false
	ThemeBtn.MouseButton1Click:Connect(function()
		isThemeOpen = not isThemeOpen
		local palette = luxylib.Themes[luxylib.CurrentTheme]
		if isThemeOpen then
			local targetH = TPLayout.AbsoluteContentSize.Y + 16
			TweenService:Create(
				ThemePanel,
				TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
				{ Size = UDim2.new(0, 160, 0, targetH) }
			):Play()
			TweenService:Create(ThemeBtn, TweenInfo.new(0.3), { ImageColor3 = palette.Accent }):Play()
		else
			TweenService:Create(
				ThemePanel,
				TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.In),
				{ Size = UDim2.new(0, 160, 0, 0) }
			):Play()
			TweenService:Create(ThemeBtn, TweenInfo.new(0.3), { ImageColor3 = palette.TextInactive }):Play()
		end
	end)

	local ContentContainer = Instance.new("Frame", Main)
	ContentContainer.Name = "ContentContainer"
	ContentContainer.Size = UDim2.new(1, -181, 1, -30)
	ContentContainer.Position = UDim2.new(0, 181, 0, 30)
	ContentContainer.BackgroundTransparency = 1
	ContentContainer.BorderSizePixel = 0
	ContentContainer.ClipsDescendants = true

	function Window:CreateTab(TabName, IconID)
		local TabBtn = Instance.new("TextButton", Sidebar)
		TabBtn.Name = "TabBtn_" .. TabName
		TabBtn.Size = UDim2.new(1, 0, 0, 32)
		TabBtn.BackgroundTransparency = 0.98
		TabBtn.Text = ""
		TabBtn.AutoButtonColor = false
		Instance.new("UICorner", TabBtn).CornerRadius = UDim.new(0, 6)
		luxylib:ApplyThemeObj(TabBtn, "BackgroundColor3", "Text")

		local Indicator = Instance.new("Frame", TabBtn)
		Indicator.Name = "Indicator"
		Indicator.Size = UDim2.new(0, 3, 0, 16)
		Indicator.AnchorPoint = Vector2.new(0, 0.5)
		Indicator.Position = UDim2.new(0, 4, 0.5, 0)
		Indicator.BackgroundTransparency = 1
		Indicator.BorderSizePixel = 0
		Instance.new("UICorner", Indicator).CornerRadius = UDim.new(1, 0)
		luxylib:ApplyThemeObj(Indicator, "BackgroundColor3", "Accent")

		local Icon = Instance.new("ImageLabel", TabBtn)
		Icon.Name = "Icon"
		Icon.Size = UDim2.new(0, 16, 0, 16)
		Icon.AnchorPoint = Vector2.new(0, 0.5)
		Icon.Position = UDim2.new(0, 14, 0.5, 0)
		Icon.BackgroundTransparency = 1
		Icon.Image = IconID or ""
		luxylib:ApplyThemeObj(Icon, "ImageColor3", "TextInactive")

		local TitleLabel = Instance.new("TextLabel", TabBtn)
		TitleLabel.Name = "TitleLabel"
		TitleLabel.Size = UDim2.new(1, -40, 1, 0)
		TitleLabel.Position = UDim2.new(0, 40, 0, 0)
		TitleLabel.BackgroundTransparency = 1
		TitleLabel.Text = TabName
		TitleLabel.Font = Enum.Font.GothamMedium
		TitleLabel.TextSize = 13
		TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
		TitleLabel.TextTruncate = Enum.TextTruncate.AtEnd
		luxylib:ApplyThemeObj(TitleLabel, "TextColor3", "TextInactive")

		local Page = Instance.new("ScrollingFrame", ContentContainer)
		Page.Name = "Page_" .. TabName
		Page.Size = UDim2.new(1, 0, 1, 0)
		Page.Position = UDim2.new(0, 0, 1, 0)
		Page.BackgroundTransparency = 1
		Page.BorderSizePixel = 0
		Page.ScrollBarThickness = 2
		Page.CanvasSize = UDim2.new(0, 0, 0, 0)
		-- 🔥 TIMPA: Gunakan AutomaticCanvasSize bawaan Roblox agar tinggi scroll otomatis menyesuaikan isi dropdown secara dinamis
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y
		luxylib:ApplyThemeObj(Page, "ScrollBarImageColor3", "Stroke")

		local PagePadding = Instance.new("UIPadding", Page)
		PagePadding.PaddingTop = UDim.new(0, 15)
		PagePadding.PaddingBottom = UDim.new(0, 15)
		PagePadding.PaddingLeft = UDim.new(0, 15)
		PagePadding.PaddingRight = UDim.new(0, 15)

		local PageLayout = Instance.new("UIListLayout", Page)
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder
		PageLayout.Padding = UDim.new(0, 8)

		local TabData = {
			Button = TabBtn,
			Indicator = Indicator,
			Icon = Icon,
			TitleLabel = TitleLabel,
			Page = Page,
		}
		table.insert(Window.Tabs, TabData)

		TabBtn.MouseButton1Click:Connect(function()
			if Window.CurrentTab == TabData then
				return
			end
			local palette = luxylib.Themes[luxylib.CurrentTheme]

			for _, v in pairs(Window.Tabs) do
				TweenService:Create(v.Button, TweenInfo.new(0.2), { BackgroundTransparency = 0.98 }):Play()
				TweenService:Create(v.Indicator, TweenInfo.new(0.2), { BackgroundTransparency = 1 }):Play()
				TweenService:Create(v.Icon, TweenInfo.new(0.2), { ImageColor3 = palette.TextInactive }):Play()
				TweenService:Create(v.TitleLabel, TweenInfo.new(0.2), { TextColor3 = palette.TextInactive }):Play()

				if v.Page.Visible then
					v.Page.Visible = false
				end
			end

			Window.CurrentTab = TabData
			Page.Visible = true
			Page.Position = UDim2.new(0, 0, 0, 0)
			Page.CanvasPosition = Vector2.new(0, 0)

			TweenService:Create(TabBtn, TweenInfo.new(0.2), { BackgroundTransparency = 0.9 }):Play()
			TweenService:Create(Indicator, TweenInfo.new(0.2), { BackgroundTransparency = 0 }):Play()
			TweenService:Create(Icon, TweenInfo.new(0.2), { ImageColor3 = palette.Accent }):Play()
			TweenService:Create(TitleLabel, TweenInfo.new(0.2), { TextColor3 = palette.Text }):Play()

			for _, closeFunc in pairs(Window.SelectCloseFuncs) do
				closeFunc()
			end
		end)

		if #Window.Tabs == 1 then
			Window.CurrentTab = TabData
			Page.Visible = true
			Page.Position = UDim2.new(0, 0, 0, 0)
			TabBtn.BackgroundTransparency = 0.9
			Indicator.BackgroundTransparency = 0
			local palette = luxylib.Themes[luxylib.CurrentTheme]
			Icon.ImageColor3 = palette.Accent
			TitleLabel.TextColor3 = palette.Text
		end

		local Tab = {}
		function Tab:CreateSection(SectionName)
			local SectionLabel = Instance.new("Frame", Page)
			SectionLabel.Size = UDim2.new(1, 0, 0, 30)
			SectionLabel.BackgroundTransparency = 1

			local Title = Instance.new("TextLabel", SectionLabel)
			Title.Size = UDim2.new(1, -10, 1, 0)
			Title.Position = UDim2.new(0, 5, 0, 0)
			Title.BackgroundTransparency = 1
			Title.Text = SectionName
			Title.Font = Enum.Font.GothamBold
			Title.TextSize = 14
			Title.TextXAlignment = Enum.TextXAlignment.Left
			luxylib:ApplyThemeObj(Title, "TextColor3", "SectionTitle")

			Instance.new("UIPadding", SectionLabel).PaddingTop = UDim.new(0, 15)
		end

		function Tab:CreateThemeDropdown(DropdownName)
			local Expanded = false

			local DropdownContainer = Instance.new("Frame", Page)
			DropdownContainer.Size = UDim2.new(1, 0, 0, 36)
			DropdownContainer.BackgroundTransparency = 0.55
			DropdownContainer.ClipsDescendants = true
			Instance.new("UICorner", DropdownContainer).CornerRadius = UDim.new(0, 8)
			luxylib:ApplyThemeObj(DropdownContainer, "BackgroundColor3", "ToggleBtnBg")

			local ContainerStroke = Instance.new("UIStroke", DropdownContainer)
			ContainerStroke.Thickness = 1
			ContainerStroke.Transparency = 0.85
			ContainerStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			luxylib:ApplyThemeObj(ContainerStroke, "Color", "Stroke")

			local Header = Instance.new("TextButton", DropdownContainer)
			Header.Size = UDim2.new(1, 0, 0, 36)
			Header.BackgroundTransparency = 1
			Header.AutoButtonColor = false
			Header.Text = ""

			local Title = Instance.new("TextLabel", Header)
			Title.Size = UDim2.new(1, -60, 1, 0)
			Title.Position = UDim2.new(0, 15, 0, 0)
			Title.BackgroundTransparency = 1
			Title.Text = DropdownName or "Select Theme"
			Title.Font = Enum.Font.GothamMedium
			Title.TextSize = 13
			Title.TextXAlignment = Enum.TextXAlignment.Left
			luxylib:ApplyThemeObj(Title, "TextColor3", "Text")

			local Arrow = Instance.new("ImageLabel", Header)
			Arrow.Size = UDim2.new(0, 16, 0, 16)
			Arrow.AnchorPoint = Vector2.new(1, 0.5)
			Arrow.Position = UDim2.new(1, -15, 0.5, 0)
			Arrow.BackgroundTransparency = 1
			Arrow.Image = "rbxassetid://10709790948"
			luxylib:ApplyThemeObj(Arrow, "ImageColor3", "TextInactive")

			local ContentArea = Instance.new("Frame", DropdownContainer)
			ContentArea.Size = UDim2.new(1, 0, 0, 0)
			ContentArea.Position = UDim2.new(0, 0, 0, 36)
			ContentArea.BackgroundTransparency = 1

			local ContentPadding = Instance.new("UIPadding", ContentArea)
			ContentPadding.PaddingTop = UDim.new(0, 8)
			ContentPadding.PaddingBottom = UDim.new(0, 12)
			ContentPadding.PaddingLeft = UDim.new(0, 12)
			ContentPadding.PaddingRight = UDim.new(0, 12)

			local ContentLayout = Instance.new("UIListLayout", ContentArea)
			ContentLayout.SortOrder = Enum.SortOrder.LayoutOrder
			ContentLayout.Padding = UDim.new(0, 4)

			local function ToggleDropdown()
				Expanded = not Expanded
				local palette = luxylib.Themes[luxylib.CurrentTheme]

				if Expanded then
					local TargetHeight = 36 + 20 + ContentLayout.AbsoluteContentSize.Y
					TweenService:Create(
						DropdownContainer,
						TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
						{ Size = UDim2.new(1, 0, 0, TargetHeight) }
					):Play()
					TweenService
						:Create(ContainerStroke, TweenInfo.new(0.3), { Color = palette.Accent, Transparency = 0.5 })
						:Play()
					TweenService:Create(Arrow, TweenInfo.new(0.3), { ImageColor3 = palette.Accent, Rotation = 180 })
						:Play()
					TweenService:Create(Title, TweenInfo.new(0.3), { TextColor3 = palette.Accent }):Play()
				else
					TweenService:Create(
						DropdownContainer,
						TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
						{ Size = UDim2.new(1, 0, 0, 36) }
					):Play()
					TweenService
						:Create(ContainerStroke, TweenInfo.new(0.3), { Color = palette.Stroke, Transparency = 0.85 })
						:Play()
					TweenService:Create(Arrow, TweenInfo.new(0.3), { ImageColor3 = palette.TextInactive, Rotation = 0 })
						:Play()
					TweenService:Create(Title, TweenInfo.new(0.3), { TextColor3 = palette.Text }):Play()
				end
			end

			Header.MouseButton1Click:Connect(ToggleDropdown)

			local ThemeOrder =
				{ "Dark", "Light", "Ocean", "Cyberpunk", "Matcha", "Silver", "White", "Platinum", "Crimson", "Gold" }
			for _, tName in ipairs(ThemeOrder) do
				local tBtn = Instance.new("TextButton", ContentArea)
				tBtn.Size = UDim2.new(1, 0, 0, 30)
				tBtn.BackgroundTransparency = 1
				tBtn.Text = tName
				tBtn.Font = Enum.Font.GothamMedium
				tBtn.TextSize = 12
				tBtn.AutoButtonColor = false
				Instance.new("UICorner", tBtn).CornerRadius = UDim.new(0, 4)
				luxylib:ApplyThemeObj(tBtn, "BackgroundColor3", "ToggleBgOff")
				luxylib:ApplyThemeObj(tBtn, "TextColor3", "TextInactive")

				tBtn.MouseEnter:Connect(function()
					TweenService:Create(tBtn, TweenInfo.new(0.2), { BackgroundTransparency = 0 }):Play()
				end)
				tBtn.MouseLeave:Connect(function()
					TweenService:Create(tBtn, TweenInfo.new(0.2), { BackgroundTransparency = 1 }):Play()
				end)

				tBtn.MouseButton1Click:Connect(function()
					luxylib:ChangeTheme(tName)

					for _, tabData in pairs(Window.Tabs) do
						if tabData.Page.Visible then
							local palette = luxylib.Themes[tName]
							TweenService:Create(tabData.Icon, TweenInfo.new(0.3), { ImageColor3 = palette.Accent })
								:Play()
							TweenService:Create(tabData.TitleLabel, TweenInfo.new(0.3), { TextColor3 = palette.Text })
								:Play()
						end
					end

					ToggleDropdown()
				end)
			end
		end

		function Tab:CreateChangelog(TitleText, ContentText)
			local Expanded = false

			local LogContainer = Instance.new("TextButton", Page)
			LogContainer.Size = UDim2.new(1, 0, 0, 36)
			LogContainer.BackgroundTransparency = 0.55
			LogContainer.AutoButtonColor = false
			LogContainer.Text = ""
			LogContainer.ClipsDescendants = true
			Instance.new("UICorner", LogContainer).CornerRadius = UDim.new(0, 8)
			luxylib:ApplyThemeObj(LogContainer, "BackgroundColor3", "ToggleBtnBg")

			local LogStroke = Instance.new("UIStroke", LogContainer)
			LogStroke.Thickness = 1
			LogStroke.Transparency = 0.85
			LogStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			luxylib:ApplyThemeObj(LogStroke, "Color", "Stroke")

			local Header = Instance.new("Frame", LogContainer)
			Header.Size = UDim2.new(1, 0, 0, 36)
			Header.BackgroundTransparency = 1

			local Title = Instance.new("TextLabel", Header)
			Title.Size = UDim2.new(1, -40, 1, 0)
			Title.Position = UDim2.new(0, 15, 0, 0)
			Title.BackgroundTransparency = 1
			Title.Text = TitleText
			Title.Font = Enum.Font.GothamMedium
			Title.TextSize = 13
			Title.TextXAlignment = Enum.TextXAlignment.Left
			luxylib:ApplyThemeObj(Title, "TextColor3", "Text")

			local Arrow = Instance.new("ImageLabel", Header)
			Arrow.Size = UDim2.new(0, 16, 0, 16)
			Arrow.AnchorPoint = Vector2.new(1, 0.5)
			Arrow.Position = UDim2.new(1, -15, 0.5, 0)
			Arrow.BackgroundTransparency = 1
			Arrow.Image = "rbxassetid://10709790948"
			luxylib:ApplyThemeObj(Arrow, "ImageColor3", "TextInactive")

			local ContentArea = Instance.new("Frame", LogContainer)
			ContentArea.Size = UDim2.new(1, 0, 0, 0)
			ContentArea.Position = UDim2.new(0, 0, 0, 36)
			ContentArea.BackgroundTransparency = 1

			local ContentPadding = Instance.new("UIPadding", ContentArea)
			ContentPadding.PaddingTop = UDim.new(0, 5)
			ContentPadding.PaddingBottom = UDim.new(0, 10)
			ContentPadding.PaddingLeft = UDim.new(0, 15)
			ContentPadding.PaddingRight = UDim.new(0, 15)

			local ContentLayout = Instance.new("UIListLayout", ContentArea)
			ContentLayout.SortOrder = Enum.SortOrder.LayoutOrder
			ContentLayout.Padding = UDim.new(0, 6)

			local lines = {}
			for s in string.gmatch(ContentText, "[^\r\n]+") do
				table.insert(lines, s)
			end

			for _, lineText in ipairs(lines) do
				local LogCard = Instance.new("Frame", ContentArea)
				LogCard.Size = UDim2.new(1, 0, 0, 26)
				LogCard.BackgroundTransparency = 0.5
				Instance.new("UICorner", LogCard).CornerRadius = UDim.new(0, 4)
				luxylib:ApplyThemeObj(LogCard, "BackgroundColor3", "ToggleBgOff")

				local CardStroke = Instance.new("UIStroke", LogCard)
				CardStroke.Thickness = 1
				CardStroke.Transparency = 0.8
				luxylib:ApplyThemeObj(CardStroke, "Color", "Stroke")

				local LogLineText = Instance.new("TextLabel", LogCard)
				LogLineText.Size = UDim2.new(1, -20, 1, 0)
				LogLineText.Position = UDim2.new(0, 10, 0, 0)
				LogLineText.BackgroundTransparency = 1
				LogLineText.Text = lineText
				LogLineText.Font = Enum.Font.GothamMedium
				LogLineText.TextSize = 11
				LogLineText.TextXAlignment = Enum.TextXAlignment.Left
				luxylib:ApplyThemeObj(LogLineText, "TextColor3", "TextInactive")
			end

			local function ToggleLog()
				Expanded = not Expanded
				local palette = luxylib.Themes[luxylib.CurrentTheme]

				if Expanded then
					local TargetHeight = 36 + 15 + ContentLayout.AbsoluteContentSize.Y
					TweenService:Create(
						LogContainer,
						TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
						{ Size = UDim2.new(1, 0, 0, TargetHeight) }
					):Play()
					TweenService:Create(Arrow, TweenInfo.new(0.3), { Rotation = 180, ImageColor3 = palette.Accent })
						:Play()
					TweenService:Create(LogStroke, TweenInfo.new(0.3), { Color = palette.Accent, Transparency = 0.5 })
						:Play()
				else
					TweenService:Create(
						LogContainer,
						TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
						{ Size = UDim2.new(1, 0, 0, 36) }
					):Play()
					TweenService:Create(Arrow, TweenInfo.new(0.3), { Rotation = 0, ImageColor3 = palette.TextInactive })
						:Play()
					TweenService:Create(LogStroke, TweenInfo.new(0.3), { Color = palette.Stroke, Transparency = 0.85 })
						:Play()
				end
			end

			LogContainer.MouseButton1Click:Connect(ToggleLog)
			ContentLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				if Expanded then
					local TargetHeight = 36 + 15 + ContentLayout.AbsoluteContentSize.Y
					TweenService:Create(
						LogContainer,
						TweenInfo.new(0.2, Enum.EasingStyle.Sine),
						{ Size = UDim2.new(1, 0, 0, TargetHeight) }
					):Play()
				end
			end)
		end

		function Tab:CreateToggle(ToggleName, Description, Default, Callback)
			local State = Default or false
			local CallbackFunc = Callback or function() end
			local HasDesc = type(Description) == "string" and Description ~= ""

			local ToggleBtn = Instance.new("TextButton", Page)
			ToggleBtn.Active = false
			ToggleBtn.Size = UDim2.new(1, 0, 0, HasDesc and 52 or 36)
			ToggleBtn.AutoButtonColor = false
			ToggleBtn.Text = ""
			ToggleBtn.BackgroundTransparency = 0.2
			Instance.new("UICorner", ToggleBtn).CornerRadius = UDim.new(0, 8)
			luxylib:ApplyThemeObj(ToggleBtn, "BackgroundColor3", "ToggleBtnBg")

			local ToggleStroke = Instance.new("UIStroke", ToggleBtn)
			ToggleStroke.Thickness = 1
			ToggleStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

			ToggleStroke.Color = luxylib.Themes[luxylib.CurrentTheme].Stroke
			ToggleStroke.Transparency = 0.85

			local function UpdateStrokeVisual(isActive, themeName)
				local palette = luxylib.Themes[themeName or luxylib.CurrentTheme]
				if isActive then
					TweenService:Create(
						ToggleStroke,
						TweenInfo.new(0.3, Enum.EasingStyle.Quint),
						{ Color = palette.Accent, Transparency = 0.85 }
					):Play()
				else
					TweenService:Create(
						ToggleStroke,
						TweenInfo.new(0.3, Enum.EasingStyle.Quint),
						{ Color = palette.Stroke, Transparency = 0.88 }
					):Play()
				end
			end

			UpdateStrokeVisual(State, luxylib.CurrentTheme)
			table.insert(luxylib.ThemeChangedHooks, {
				Inst = ToggleBtn,
				Func = function(tName)
					UpdateStrokeVisual(State, tName)
				end,
			})

			local Title = Instance.new("TextLabel", ToggleBtn)
			Title.Size = UDim2.new(1, -60, 0, 16)
			Title.Position = UDim2.new(0, 15, 0, HasDesc and 10 or 10)
			if not HasDesc then
				Title.Size = UDim2.new(1, -60, 1, 0)
				Title.Position = UDim2.new(0, 15, 0, 0)
			end
			Title.BackgroundTransparency = 1
			Title.Text = ToggleName
			Title.Font = Enum.Font.GothamMedium
			Title.TextSize = 13
			Title.TextXAlignment = Enum.TextXAlignment.Left
			luxylib:ApplyThemeObj(Title, "TextColor3", "Text")

			if HasDesc then
				local DescLabel = Instance.new("TextLabel", ToggleBtn)
				DescLabel.Size = UDim2.new(1, -60, 0, 14)
				DescLabel.Position = UDim2.new(0, 15, 0, 26)
				DescLabel.BackgroundTransparency = 1
				DescLabel.Text = Description
				DescLabel.Font = Enum.Font.Gotham
				DescLabel.TextSize = 11
				DescLabel.TextXAlignment = Enum.TextXAlignment.Left
				luxylib:ApplyThemeObj(DescLabel, "TextColor3", "TextInactive")
			end

			local SwitchBg = Instance.new("Frame", ToggleBtn)
			SwitchBg.Size = UDim2.new(0, 36, 0, 18)
			SwitchBg.AnchorPoint = Vector2.new(1, 0.5)
			SwitchBg.Position = UDim2.new(1, -15, 0.5, 0)
			Instance.new("UICorner", SwitchBg).CornerRadius = UDim.new(1, 0)
			luxylib:ApplyThemeObj(SwitchBg, "BackgroundColor3", State and "Accent" or "ToggleBgOff")

			local Dot = Instance.new("Frame", SwitchBg)
			Dot.Size = UDim2.new(0, 14, 0, 14)
			Dot.AnchorPoint = Vector2.new(0, 0.5)
			Dot.Position = UDim2.new(0, State and 20 or 2, 0.5, 0)
			Dot.ZIndex = 2
			Instance.new("UICorner", Dot).CornerRadius = UDim.new(1, 0)
			luxylib:ApplyThemeObj(Dot, "BackgroundColor3", "ToggleDot")

			ToggleBtn.MouseButton1Click:Connect(function()
				State = not State
				CallbackFunc(State)
				local palette = luxylib.Themes[luxylib.CurrentTheme]

				UpdateStrokeVisual(State)

				if State then
					TweenService
						:Create(
							Dot,
							TweenInfo.new(0.3, Enum.EasingStyle.Quint),
							{ Position = UDim2.new(0, 20, 0.5, 0) }
						)
						:Play()
					TweenService
						:Create(
							SwitchBg,
							TweenInfo.new(0.3, Enum.EasingStyle.Quint),
							{ BackgroundColor3 = palette.Accent }
						)
						:Play()
				else
					TweenService
						:Create(Dot, TweenInfo.new(0.3, Enum.EasingStyle.Quint), { Position = UDim2.new(0, 2, 0.5, 0) })
						:Play()
					TweenService:Create(
						SwitchBg,
						TweenInfo.new(0.3, Enum.EasingStyle.Quint),
						{ BackgroundColor3 = palette.ToggleBgOff }
					):Play()
				end

				for _, obj in pairs(luxylib.Instances) do
					if obj.Inst == SwitchBg then
						obj.Type = State and "Accent" or "ToggleBgOff"
					end
				end
			end)
		end

		function Tab:CreateButton(ButtonName, Description, IconID, Callback)
			local CallbackFunc = Callback or function() end
			local HasDesc = type(Description) == "string" and Description ~= ""

			local ButtonContainer = Instance.new("TextButton", Page)
			ButtonContainer.Active = false -- 🔥 TAMBAHKAN BARIS INI
			ButtonContainer.Size = UDim2.new(1, 0, 0, HasDesc and 52 or 36)
			ButtonContainer.BackgroundTransparency = 0.55
			ButtonContainer.AutoButtonColor = false
			ButtonContainer.Text = ""
			Instance.new("UICorner", ButtonContainer).CornerRadius = UDim.new(0, 8)
			luxylib:ApplyThemeObj(ButtonContainer, "BackgroundColor3", "ToggleBtnBg")

			local BtnStroke = Instance.new("UIStroke", ButtonContainer)
			BtnStroke.Thickness = 1
			BtnStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			BtnStroke.Color = luxylib.Themes[luxylib.CurrentTheme].Stroke
			BtnStroke.Transparency = 0.85

			local function UpdateBtnStrokeVisual(isActive, themeName)
				local palette = luxylib.Themes[themeName or luxylib.CurrentTheme]
				if isActive then
					TweenService:Create(
						BtnStroke,
						TweenInfo.new(0.3, Enum.EasingStyle.Quint),
						{ Color = palette.Accent, Transparency = 0.5 }
					):Play()
				else
					TweenService:Create(
						BtnStroke,
						TweenInfo.new(0.5, Enum.EasingStyle.Sine),
						{ Color = palette.Stroke, Transparency = 0.85 }
					):Play()
				end
			end

			UpdateBtnStrokeVisual(false, luxylib.CurrentTheme)
			table.insert(luxylib.ThemeChangedHooks, {
				Inst = ButtonContainer,
				Func = function(tName)
					UpdateBtnStrokeVisual(false, tName)
				end,
			})

			local Title = Instance.new("TextLabel", ButtonContainer)
			Title.Size = UDim2.new(1, -60, 0, 16)
			Title.Position = UDim2.new(0, 15, 0, HasDesc and 10 or 10)
			if not HasDesc then
				Title.Size = UDim2.new(1, -60, 1, 0)
				Title.Position = UDim2.new(0, 15, 0, 0)
			end
			Title.BackgroundTransparency = 1
			Title.Text = ButtonName
			Title.Font = Enum.Font.GothamMedium
			Title.TextSize = 13
			Title.TextXAlignment = Enum.TextXAlignment.Left
			luxylib:ApplyThemeObj(Title, "TextColor3", "Text")

			if HasDesc then
				local DescLabel = Instance.new("TextLabel", ButtonContainer)
				DescLabel.Size = UDim2.new(1, -60, 0, 14)
				DescLabel.Position = UDim2.new(0, 15, 0, 26)
				DescLabel.BackgroundTransparency = 1
				DescLabel.Text = Description
				DescLabel.Font = Enum.Font.Gotham
				DescLabel.TextSize = 11
				DescLabel.TextXAlignment = Enum.TextXAlignment.Left
				luxylib:ApplyThemeObj(DescLabel, "TextColor3", "TextInactive")
			end

			local ActionKey = Instance.new("Frame", ButtonContainer)
			ActionKey.Size = UDim2.new(0, 30, 0, 30)
			ActionKey.AnchorPoint = Vector2.new(1, 0.5)
			ActionKey.Position = UDim2.new(1, -3, 0.5, 0)
			Instance.new("UICorner", ActionKey).CornerRadius = UDim.new(0, 6)
			luxylib:ApplyThemeObj(ActionKey, "BackgroundColor3", "ToggleBgOff")

			local KeyStroke = Instance.new("UIStroke", ActionKey)
			KeyStroke.Thickness = 1
			KeyStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			KeyStroke.Color = luxylib.Themes[luxylib.CurrentTheme].Stroke
			KeyStroke.Transparency = 0.7

			local Icon = Instance.new("ImageLabel", ActionKey)
			Icon.Size = UDim2.new(0, 18, 0, 18)
			Icon.AnchorPoint = Vector2.new(0.5, 0.5)
			Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
			Icon.BackgroundTransparency = 1
			Icon.Image = IconID or "rbxassetid://10734933056"
			luxylib:ApplyThemeObj(Icon, "ImageColor3", "TextInactive")

			ButtonContainer.MouseEnter:Connect(function()
				local palette = luxylib.Themes[luxylib.CurrentTheme]
				TweenService:Create(ActionKey, TweenInfo.new(0.2), {
					BackgroundColor3 = Color3.fromRGB(
						math.clamp(palette.ToggleBgOff.R * 255 + 12, 0, 255),
						math.clamp(palette.ToggleBgOff.G * 255 + 12, 0, 255),
						math.clamp(palette.ToggleBgOff.B * 255 + 12, 0, 255)
					),
				}):Play()
				TweenService:Create(KeyStroke, TweenInfo.new(0.2), { Color = palette.Accent, Transparency = 0.4 })
					:Play()
				TweenService:Create(Icon, TweenInfo.new(0.2), { ImageColor3 = palette.Text }):Play()
			end)

			ButtonContainer.MouseLeave:Connect(function()
				local palette = luxylib.Themes[luxylib.CurrentTheme]
				TweenService:Create(ActionKey, TweenInfo.new(0.2), { BackgroundColor3 = palette.ToggleBgOff }):Play()
				TweenService:Create(KeyStroke, TweenInfo.new(0.2), { Color = palette.Stroke, Transparency = 0.7 })
					:Play()
				TweenService:Create(Icon, TweenInfo.new(0.2), { ImageColor3 = palette.TextInactive }):Play()
			end)

			ButtonContainer.MouseButton1Click:Connect(function()
				CallbackFunc()
			end)

			ButtonContainer.MouseButton1Down:Connect(function()
				local palette = luxylib.Themes[luxylib.CurrentTheme]
				TweenService
					:Create(ActionKey, TweenInfo.new(0.05, Enum.EasingStyle.Sine), { Size = UDim2.new(0, 26, 0, 26) })
					:Play()
				TweenService:Create(
					Icon,
					TweenInfo.new(0.05, Enum.EasingStyle.Sine),
					{ Size = UDim2.new(0, 14, 0, 14), ImageColor3 = palette.Accent }
				):Play()
				TweenService:Create(
					KeyStroke,
					TweenInfo.new(0.05, Enum.EasingStyle.Sine),
					{ Color = palette.Accent, Transparency = 0.2 }
				):Play()
				UpdateBtnStrokeVisual(true)
			end)

			local function ResetButtonAnim()
				local palette = luxylib.Themes[luxylib.CurrentTheme]
				TweenService:Create(
					ActionKey,
					TweenInfo.new(0.3, Enum.EasingStyle.Bounce),
					{ Size = UDim2.new(0, 30, 0, 30), BackgroundColor3 = palette.ToggleBgOff }
				):Play()
				TweenService:Create(
					Icon,
					TweenInfo.new(0.3, Enum.EasingStyle.Bounce),
					{ Size = UDim2.new(0, 18, 0, 18), ImageColor3 = palette.TextInactive }
				):Play()
				TweenService:Create(
					KeyStroke,
					TweenInfo.new(0.3, Enum.EasingStyle.Sine),
					{ Color = palette.Stroke, Transparency = 0.7 }
				):Play()
				UpdateBtnStrokeVisual(false)
			end

			ButtonContainer.MouseButton1Up:Connect(ResetButtonAnim)
		end

		function Tab:CreateSlider(SliderName, Min, Max, Default, Callback)
			local CallbackFunc = Callback or function() end
			local Value = math.clamp(Default or Min, Min, Max)

			local SliderContainer = Instance.new("TextButton", Page)
			SliderContainer.Active = false
			SliderContainer.Size = UDim2.new(1, 0, 0, 42)
			SliderContainer.BackgroundTransparency = 0.55
			SliderContainer.AutoButtonColor = false
			SliderContainer.Text = ""
			Instance.new("UICorner", SliderContainer).CornerRadius = UDim.new(0, 8)
			luxylib:ApplyThemeObj(SliderContainer, "BackgroundColor3", "ToggleBtnBg")

			local SliderStroke = Instance.new("UIStroke", SliderContainer)
			SliderStroke.Thickness = 1
			SliderStroke.Transparency = 0.85
			SliderStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			luxylib:ApplyThemeObj(SliderStroke, "Color", "Stroke")

			local Title = Instance.new("TextLabel", SliderContainer)
			Title.Size = UDim2.new(1, -100, 0, 20)
			Title.Position = UDim2.new(0, 15, 0, 5)
			Title.BackgroundTransparency = 1
			Title.Text = SliderName
			Title.Font = Enum.Font.GothamMedium
			Title.TextSize = 13
			Title.TextXAlignment = Enum.TextXAlignment.Left
			luxylib:ApplyThemeObj(Title, "TextColor3", "Text")

			local ValueCard = Instance.new("Frame", SliderContainer)
			ValueCard.Size = UDim2.new(0, 35, 0, 20)
			ValueCard.AnchorPoint = Vector2.new(1, 0)
			ValueCard.Position = UDim2.new(1, -15, 0, 5)
			ValueCard.BackgroundTransparency = 0.5
			ValueCard.BorderSizePixel = 0
			Instance.new("UICorner", ValueCard).CornerRadius = UDim.new(0, 4)
			luxylib:ApplyThemeObj(ValueCard, "BackgroundColor3", "ToggleBgOff")

			local CardStroke = Instance.new("UIStroke", ValueCard)
			CardStroke.Thickness = 1
			CardStroke.Transparency = 0.8
			luxylib:ApplyThemeObj(CardStroke, "Color", "Stroke")

			local ValueInput = Instance.new("TextBox", ValueCard)
			ValueInput.Size = UDim2.new(1, 0, 1, 0)
			ValueInput.BackgroundTransparency = 1
			ValueInput.Text = tostring(Value)
			ValueInput.Font = Enum.Font.GothamMedium
			ValueInput.TextSize = 12
			ValueInput.ClearTextOnFocus = false
			luxylib:ApplyThemeObj(ValueInput, "TextColor3", "Text")

			local SliderBg = Instance.new("Frame", SliderContainer)
			SliderBg.Size = UDim2.new(1, -30, 0, 4)
			SliderBg.AnchorPoint = Vector2.new(0.5, 1)
			SliderBg.Position = UDim2.new(0.5, 0, 1, -8)
			SliderBg.BorderSizePixel = 0
			Instance.new("UICorner", SliderBg).CornerRadius = UDim.new(1, 0)
			luxylib:ApplyThemeObj(SliderBg, "BackgroundColor3", "ToggleBgOff")

			local SliderFill = Instance.new("Frame", SliderBg)
			local SizeScale = (Value - Min) / (Max - Min)
			SliderFill.Size = UDim2.new(SizeScale, 0, 1, 0)
			SliderFill.BorderSizePixel = 0
			Instance.new("UICorner", SliderFill).CornerRadius = UDim.new(1, 0)
			luxylib:ApplyThemeObj(SliderFill, "BackgroundColor3", "Accent")

			local Dot = Instance.new("Frame", SliderFill)
			Dot.Size = UDim2.new(0, 12, 0, 12)
			Dot.AnchorPoint = Vector2.new(1, 0.5)
			Dot.Position = UDim2.new(1, 6, 0.5, 0)
			Instance.new("UICorner", Dot).CornerRadius = UDim.new(1, 0)
			luxylib:ApplyThemeObj(Dot, "BackgroundColor3", "ToggleDot")

			local DotStroke = Instance.new("UIStroke", Dot)
			DotStroke.Thickness = 1
			luxylib:ApplyThemeObj(DotStroke, "Color", "Stroke")

			local Dragging = false
			local function UpdateSlider(Input)
				local Percent =
					math.clamp((Input.Position.X - SliderBg.AbsolutePosition.X) / SliderBg.AbsoluteSize.X, 0, 1)
				Value = math.floor(Min + ((Max - Min) * Percent))
				ValueInput.Text = tostring(Value)
				TweenService
					:Create(
						SliderFill,
						TweenInfo.new(0.05, Enum.EasingStyle.Sine),
						{ Size = UDim2.new(Percent, 0, 1, 0) }
					)
					:Play()
				CallbackFunc(Value)
			end

			SliderContainer.InputBegan:Connect(function(Input)
				if
					Input.UserInputType == Enum.UserInputType.MouseButton1
					or Input.UserInputType == Enum.UserInputType.Touch
				then
					Dragging = true
					UpdateSlider(Input)
					TweenService
						:Create(Dot, TweenInfo.new(0.2, Enum.EasingStyle.Quint), { Size = UDim2.new(0, 16, 0, 16) })
						:Play()
				end
			end)

			UserInputService.InputChanged:Connect(function(Input)
				if
					Dragging
					and (
						Input.UserInputType == Enum.UserInputType.MouseMovement
						or Input.UserInputType == Enum.UserInputType.Touch
					)
				then
					UpdateSlider(Input)
				end
			end)

			UserInputService.InputEnded:Connect(function(Input)
				if
					Input.UserInputType == Enum.UserInputType.MouseButton1
					or Input.UserInputType == Enum.UserInputType.Touch
				then
					if Dragging then
						Dragging = false
						TweenService
							:Create(Dot, TweenInfo.new(0.2, Enum.EasingStyle.Quint), { Size = UDim2.new(0, 12, 0, 12) })
							:Play()
					end
				end
			end)

			SliderContainer.MouseEnter:Connect(function()
				if not Dragging then
					TweenService
						:Create(Dot, TweenInfo.new(0.2, Enum.EasingStyle.Quint), { Size = UDim2.new(0, 16, 0, 16) })
						:Play()
				end
			end)
			SliderContainer.MouseLeave:Connect(function()
				if not Dragging then
					TweenService
						:Create(Dot, TweenInfo.new(0.2, Enum.EasingStyle.Quint), { Size = UDim2.new(0, 12, 0, 12) })
						:Play()
				end
			end)

			ValueInput.FocusLost:Connect(function()
				local Num = tonumber(ValueInput.Text)
				if Num then
					Value = math.clamp(math.floor(Num), Min, Max)
					local NewScale = (Value - Min) / (Max - Min)
					TweenService:Create(
						SliderFill,
						TweenInfo.new(0.3, Enum.EasingStyle.Quint),
						{ Size = UDim2.new(NewScale, 0, 1, 0) }
					):Play()
					CallbackFunc(Value)
				end
				ValueInput.Text = tostring(Value)
			end)
		end

		function Tab:CreateInput(InputName, Description, Placeholder, ExtraIcon, ExtraCallback, TextCallback)
			if type(ExtraIcon) == "function" then
				TextCallback = ExtraIcon
				ExtraIcon = nil
				ExtraCallback = nil
			end

			local CallbackFunc = TextCallback or function() end
			local HasDesc = type(Description) == "string" and Description ~= ""

			local InputContainer = Instance.new("TextButton", Page)
			InputContainer.Active = false
			InputContainer.Size = UDim2.new(1, 0, 0, HasDesc and 52 or 36)
			InputContainer.BackgroundTransparency = 0.55
			InputContainer.AutoButtonColor = false
			InputContainer.Text = ""
			Instance.new("UICorner", InputContainer).CornerRadius = UDim.new(0, 8)
			luxylib:ApplyThemeObj(InputContainer, "BackgroundColor3", "ToggleBtnBg")

			local InputStroke = Instance.new("UIStroke", InputContainer)
			InputStroke.Thickness = 1
			InputStroke.Transparency = 0.85
			InputStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			luxylib:ApplyThemeObj(InputStroke, "Color", "Stroke")

			local Title = Instance.new("TextLabel", InputContainer)
			Title.Size = UDim2.new(1, ExtraIcon and -200 or -170, 0, 16)
			Title.Position = UDim2.new(0, 15, 0, HasDesc and 10 or 10)
			if not HasDesc then
				Title.Size = UDim2.new(1, ExtraIcon and -200 or -170, 1, 0)
				Title.Position = UDim2.new(0, 15, 0, 0)
			end
			Title.BackgroundTransparency = 1
			Title.Text = InputName
			Title.Font = Enum.Font.GothamMedium
			Title.TextSize = 13
			Title.TextXAlignment = Enum.TextXAlignment.Left
			luxylib:ApplyThemeObj(Title, "TextColor3", "Text")

			if HasDesc then
				local DescLabel = Instance.new("TextLabel", InputContainer)
				DescLabel.Size = UDim2.new(1, ExtraIcon and -200 or -170, 0, 14)
				DescLabel.Position = UDim2.new(0, 15, 0, 26)
				DescLabel.BackgroundTransparency = 1
				DescLabel.Text = Description
				DescLabel.Font = Enum.Font.Gotham
				DescLabel.TextSize = 11
				DescLabel.TextXAlignment = Enum.TextXAlignment.Left
				luxylib:ApplyThemeObj(DescLabel, "TextColor3", "TextInactive")
			end

			local TextBoxCard = Instance.new("Frame", InputContainer)
			TextBoxCard.Size = UDim2.new(0, ExtraIcon and 180 or 150, 0, 26)
			TextBoxCard.AnchorPoint = Vector2.new(1, 0.5)
			TextBoxCard.Position = UDim2.new(1, -10, 0.5, 0)
			TextBoxCard.BackgroundTransparency = 0.5
			Instance.new("UICorner", TextBoxCard).CornerRadius = UDim.new(0, 6)
			luxylib:ApplyThemeObj(TextBoxCard, "BackgroundColor3", "ToggleBgOff")

			local CardStroke = Instance.new("UIStroke", TextBoxCard)
			CardStroke.Thickness = 1
			CardStroke.Transparency = 0.7
			luxylib:ApplyThemeObj(CardStroke, "Color", "Stroke")

			local TextBox = Instance.new("TextBox", TextBoxCard)
			TextBox.Size = UDim2.new(1, ExtraIcon and -36 or -16, 1, 0)
			TextBox.Position = UDim2.new(0, 8, 0, 0)
			TextBox.BackgroundTransparency = 1
			TextBox.Text = ""
			TextBox.PlaceholderText = Placeholder or "Type here..."
			TextBox.Font = Enum.Font.GothamMedium
			TextBox.TextSize = 11
			TextBox.TextXAlignment = Enum.TextXAlignment.Left
			TextBox.ClearTextOnFocus = false
			TextBox.ClipsDescendants = true
			luxylib:ApplyThemeObj(TextBox, "TextColor3", "Text")
			luxylib:ApplyThemeObj(TextBox, "PlaceholderColor3", "TextInactive")

			TextBox.Focused:Connect(function()
				local palette = luxylib.Themes[luxylib.CurrentTheme]
				TweenService:Create(CardStroke, TweenInfo.new(0.3), { Color = palette.Accent, Transparency = 0.3 })
					:Play()
			end)

			TextBox.FocusLost:Connect(function()
				local palette = luxylib.Themes[luxylib.CurrentTheme]
				TweenService:Create(CardStroke, TweenInfo.new(0.3), { Color = palette.Stroke, Transparency = 0.7 })
					:Play()
				CallbackFunc(TextBox.Text)
			end)
			-- [🔥 FIX FOCUSLOST BUG] Wajib instant save biar tombol kebaca walau belum pencet enter!
			TextBox:GetPropertyChangedSignal("Text"):Connect(function()
				CallbackFunc(TextBox.Text)
			end)
			-- 🔥 TIMPA: Deteksi perubahan teks secara instan (real-time) saat di-paste tanpa perlu menekan Enter
			TextBox:GetPropertyChangedSignal("Text"):Connect(function()
				CallbackFunc(TextBox.Text)
			end)

			if ExtraIcon then
				local ExtraBtn = Instance.new("ImageButton", TextBoxCard)
				ExtraBtn.Size = UDim2.new(0, 20, 0, 20)
				ExtraBtn.Position = UDim2.new(1, -4, 0.5, 0)
				ExtraBtn.AnchorPoint = Vector2.new(1, 0.5)
				ExtraBtn.BackgroundTransparency = 1
				ExtraBtn.Image = ExtraIcon
				luxylib:ApplyThemeObj(ExtraBtn, "ImageColor3", "Accent")

				ExtraBtn.MouseButton1Click:Connect(function()
					TweenService:Create(ExtraBtn, TweenInfo.new(0.1), { Size = UDim2.new(0, 16, 0, 16) }):Play()
					task.wait(0.1)
					TweenService:Create(ExtraBtn, TweenInfo.new(0.1), { Size = UDim2.new(0, 20, 0, 20) }):Play()
					if ExtraCallback then
						ExtraCallback(TextBox.Text)
					end
				end)
			end
		end

		function Tab:CreateDropdown(DropdownName)
			local Expanded = false

			local DropdownContainer = Instance.new("Frame", Page)
			DropdownContainer.Name = "Dropdown_" .. DropdownName
			DropdownContainer.Size = UDim2.new(1, 0, 0, 36)
			DropdownContainer.BackgroundTransparency = 0.55
			DropdownContainer.ClipsDescendants = true
			Instance.new("UICorner", DropdownContainer).CornerRadius = UDim.new(0, 8)
			luxylib:ApplyThemeObj(DropdownContainer, "BackgroundColor3", "ToggleBtnBg")

			local ContainerStroke = Instance.new("UIStroke", DropdownContainer)
			ContainerStroke.Thickness = 1
			ContainerStroke.Transparency = 0.85
			ContainerStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			luxylib:ApplyThemeObj(ContainerStroke, "Color", "Stroke")

			local Header = Instance.new("TextButton", DropdownContainer)
			Header.Active = false
			Header.Size = UDim2.new(1, 0, 0, 36)
			Header.BackgroundTransparency = 1
			Header.AutoButtonColor = false
			Header.Text = ""

			local Title = Instance.new("TextLabel", Header)
			Title.Size = UDim2.new(1, -60, 1, 0)
			Title.Position = UDim2.new(0, 15, 0, 0)
			Title.BackgroundTransparency = 1
			Title.Text = DropdownName
			Title.Font = Enum.Font.GothamMedium
			Title.TextSize = 13
			Title.TextXAlignment = Enum.TextXAlignment.Left
			luxylib:ApplyThemeObj(Title, "TextColor3", "Text")

			local Arrow = Instance.new("ImageLabel", Header)
			Arrow.Size = UDim2.new(0, 16, 0, 16)
			Arrow.AnchorPoint = Vector2.new(1, 0.5)
			Arrow.Position = UDim2.new(1, -15, 0.5, 0)
			Arrow.BackgroundTransparency = 1
			Arrow.Image = "rbxassetid://10709791523"
			luxylib:ApplyThemeObj(Arrow, "ImageColor3", "TextInactive")

			local ContentArea = Instance.new("Frame", DropdownContainer)
			ContentArea.Size = UDim2.new(1, 0, 0, 0)
			ContentArea.Position = UDim2.new(0, 0, 0, 36)
			ContentArea.BackgroundTransparency = 1

			local ContentPadding = Instance.new("UIPadding", ContentArea)
			ContentPadding.PaddingTop = UDim.new(0, 8)
			ContentPadding.PaddingBottom = UDim.new(0, 2)
			ContentPadding.PaddingLeft = UDim.new(0, 12)
			ContentPadding.PaddingRight = UDim.new(0, 12)

			local ContentLayout = Instance.new("UIListLayout", ContentArea)
			ContentLayout.SortOrder = Enum.SortOrder.LayoutOrder
			ContentLayout.Padding = UDim.new(0, 6)

			local function ToggleDropdown()
				Expanded = not Expanded
				local palette = luxylib.Themes[luxylib.CurrentTheme]

				if Expanded then
					local TargetHeight = 36 + 16 + ContentLayout.AbsoluteContentSize.Y
					TweenService:Create(
						DropdownContainer,
						TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
						{ Size = UDim2.new(1, 0, 0, TargetHeight) }
					):Play()
					TweenService
						:Create(ContainerStroke, TweenInfo.new(0.3), { Color = palette.Accent, Transparency = 0.5 })
						:Play()
					TweenService:Create(Arrow, TweenInfo.new(0.3), { ImageColor3 = palette.Accent, Rotation = 180 })
						:Play()
					TweenService:Create(Title, TweenInfo.new(0.3), { TextColor3 = palette.Accent }):Play()
				else
					TweenService:Create(
						DropdownContainer,
						TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
						{ Size = UDim2.new(1, 0, 0, 36) }
					):Play()
					TweenService
						:Create(ContainerStroke, TweenInfo.new(0.3), { Color = palette.Stroke, Transparency = 0.85 })
						:Play()
					TweenService:Create(Arrow, TweenInfo.new(0.3), { ImageColor3 = palette.TextInactive, Rotation = 0 })
						:Play()
					TweenService:Create(Title, TweenInfo.new(0.3), { TextColor3 = palette.Text }):Play()
				end
			end

			Header.MouseButton1Click:Connect(ToggleDropdown)

			local function ForceCloseDropdown()
				if Expanded then
					Expanded = false
					local palette = luxylib.Themes[luxylib.CurrentTheme]
					TweenService:Create(DropdownContainer, TweenInfo.new(0.2), { Size = UDim2.new(1, 0, 0, 36) }):Play()
					TweenService
						:Create(ContainerStroke, TweenInfo.new(0.2), { Color = palette.Stroke, Transparency = 0.85 })
						:Play()
					TweenService:Create(Arrow, TweenInfo.new(0.2), { ImageColor3 = palette.TextInactive, Rotation = 0 })
						:Play()
					TweenService:Create(Title, TweenInfo.new(0.2), { TextColor3 = palette.Text }):Play()
				end
			end
			table.insert(Window.DropdownCloseFuncs, ForceCloseDropdown)

			ContentLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				if Expanded then
					local TargetHeight = 36 + 16 + ContentLayout.AbsoluteContentSize.Y
					TweenService:Create(
						DropdownContainer,
						TweenInfo.new(0.2, Enum.EasingStyle.Sine),
						{ Size = UDim2.new(1, 0, 0, TargetHeight) }
					):Play()
				end
			end)

			local DropdownObj = {}
			function DropdownObj:CreateToggle(...)
				local oldPage = Page
				Page = ContentArea
				Tab.CreateToggle(Tab, ...)
				Page = oldPage
			end
			function DropdownObj:CreateButton(...)
				local oldPage = Page
				Page = ContentArea
				Tab.CreateButton(Tab, ...)
				Page = oldPage
			end
			function DropdownObj:CreateSlider(...)
				local oldPage = Page
				Page = ContentArea
				Tab.CreateSlider(Tab, ...)
				Page = oldPage
			end
			function DropdownObj:CreateInput(...)
				local oldPage = Page
				Page = ContentArea
				Tab.CreateInput(Tab, ...)
				Page = oldPage
			end
			function DropdownObj:CreateSelect(...)
				local oldPage = Page
				Page = ContentArea
				Tab.CreateSelect(Tab, ...)
				Page = oldPage
			end
			return DropdownObj
		end

		function Tab:CreateSelect(SelectName, Description, Options, Default, Callback)
			local CallbackFunc = Callback or function() end
			local OptionsList = Options or {}
			local Expanded = false
			local HasDesc = type(Description) == "string" and Description ~= ""

			local SelectedItems = {}
			if type(Default) == "table" then
				for _, v in pairs(Default) do
					table.insert(SelectedItems, v)
				end
			elseif type(Default) == "string" and Default ~= "None" and Default ~= "" then
				table.insert(SelectedItems, Default)
			end

			local TriggerBtn = Instance.new("TextButton", Page)
			TriggerBtn.Active = false
			TriggerBtn.Size = UDim2.new(1, 0, 0, HasDesc and 52 or 36)
			TriggerBtn.BackgroundTransparency = 0.55
			TriggerBtn.AutoButtonColor = false
			TriggerBtn.Text = ""
			Instance.new("UICorner", TriggerBtn).CornerRadius = UDim.new(0, 8)
			luxylib:ApplyThemeObj(TriggerBtn, "BackgroundColor3", "ToggleBtnBg")

			local TriggerStroke = Instance.new("UIStroke", TriggerBtn)
			TriggerStroke.Thickness = 1
			TriggerStroke.Transparency = 0.85
			TriggerStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			luxylib:ApplyThemeObj(TriggerStroke, "Color", "Stroke")

			local Title = Instance.new("TextLabel", TriggerBtn)
			Title.Size = UDim2.new(0.5, -15, 0, 16)
			Title.Position = UDim2.new(0, 15, 0, HasDesc and 10 or 10)
			if not HasDesc then
				Title.Size = UDim2.new(0.5, -15, 1, 0)
				Title.Position = UDim2.new(0, 15, 0, 0)
			end
			Title.BackgroundTransparency = 1
			Title.Text = SelectName
			Title.Font = Enum.Font.GothamMedium
			Title.TextSize = 13
			Title.TextXAlignment = Enum.TextXAlignment.Left
			luxylib:ApplyThemeObj(Title, "TextColor3", "Text")

			if HasDesc then
				local DescLabel = Instance.new("TextLabel", TriggerBtn)
				DescLabel.Size = UDim2.new(0.5, -15, 0, 14)
				DescLabel.Position = UDim2.new(0, 15, 0, 26)
				DescLabel.BackgroundTransparency = 1
				DescLabel.Text = Description
				DescLabel.Font = Enum.Font.Gotham
				DescLabel.TextSize = 11
				DescLabel.TextXAlignment = Enum.TextXAlignment.Left
				luxylib:ApplyThemeObj(DescLabel, "TextColor3", "TextInactive")
			end

			local SelectedText = Instance.new("TextLabel", TriggerBtn)
			SelectedText.Size = UDim2.new(0.5, -35, 1, 0)
			SelectedText.Position = UDim2.new(0.5, 0, 0, 0)
			SelectedText.BackgroundTransparency = 1
			SelectedText.Font = Enum.Font.GothamMedium
			SelectedText.TextSize = 12
			SelectedText.TextXAlignment = Enum.TextXAlignment.Right
			luxylib:ApplyThemeObj(SelectedText, "TextColor3", "TextInactive")

			local Arrow = Instance.new("ImageLabel", TriggerBtn)
			Arrow.Size = UDim2.new(0, 16, 0, 16)
			Arrow.AnchorPoint = Vector2.new(1, 0.5)
			Arrow.Position = UDim2.new(1, -15, 0.5, 0)
			Arrow.BackgroundTransparency = 1
			Arrow.Image = "rbxassetid://10709790948"
			luxylib:ApplyThemeObj(Arrow, "ImageColor3", "TextInactive")

			local function UpdateTriggerText()
				-- Jika kosong ATAU hanya memilih "Any" / "All", otomatis tampilkan "--"
				if #SelectedItems == 0 or (#SelectedItems == 1 and (SelectedItems[1] == "Any" or SelectedItems[1] == "All")) then
					SelectedText.Text = "--"
				elseif #SelectedItems == 1 then
					SelectedText.Text = SelectedItems[1]
				else
					SelectedText.Text = tostring(#SelectedItems) .. " Selected"
				end
			end
			UpdateTriggerText()

			local ContainerParent = ContentContainer

			local CloseArea = Instance.new("TextButton", ContainerParent)
			CloseArea.Size = UDim2.new(1, 0, 1, 0)
			CloseArea.BackgroundTransparency = 1
			CloseArea.Text = ""
			CloseArea.ZIndex = 9
			CloseArea.Visible = false

			local SidePanel = Instance.new("Frame", ContainerParent)
			SidePanel.Name = "SidePanel_" .. SelectName
			SidePanel.Size = UDim2.new(0.55, -10, 1, -10)
			SidePanel.Position = UDim2.new(1, 10, 0, 5)
			SidePanel.BackgroundTransparency = 0.05
			SidePanel.ZIndex = 10
			Instance.new("UICorner", SidePanel).CornerRadius = UDim.new(0, 8)
			luxylib:ApplyThemeObj(SidePanel, "BackgroundColor3", "ToggleBgOff")

			local PanelStroke = Instance.new("UIStroke", SidePanel)
			PanelStroke.Thickness = 1
			PanelStroke.Transparency = 0.85
			luxylib:ApplyThemeObj(PanelStroke, "Color", "Stroke")

			local SearchContainer = Instance.new("Frame", SidePanel)
			SearchContainer.Size = UDim2.new(1, -20, 0, 30)
			SearchContainer.Position = UDim2.new(0, 10, 0, 10)
			SearchContainer.BackgroundTransparency = 0.5
			SearchContainer.ZIndex = 11
			Instance.new("UICorner", SearchContainer).CornerRadius = UDim.new(0, 6)
			luxylib:ApplyThemeObj(SearchContainer, "BackgroundColor3", "ToggleBtnBg")

			local SearchStroke = Instance.new("UIStroke", SearchContainer)
			SearchStroke.Thickness = 1
			SearchStroke.Transparency = 0.8
			luxylib:ApplyThemeObj(SearchStroke, "Color", "Stroke")

			local SearchIcon = Instance.new("ImageLabel", SearchContainer)
			SearchIcon.Size = UDim2.new(0, 14, 0, 14)
			SearchIcon.AnchorPoint = Vector2.new(0, 0.5)
			SearchIcon.Position = UDim2.new(0, 10, 0.5, 0)
			SearchIcon.BackgroundTransparency = 1
			SearchIcon.Image = "rbxassetid://10709761217"
			SearchIcon.ZIndex = 11
			luxylib:ApplyThemeObj(SearchIcon, "ImageColor3", "TextInactive")

			local SearchInput = Instance.new("TextBox", SearchContainer)
			SearchInput.Size = UDim2.new(1, -34, 1, 0)
			SearchInput.Position = UDim2.new(0, 30, 0, 0)
			SearchInput.BackgroundTransparency = 1
			SearchInput.Text = ""
			SearchInput.PlaceholderText = "Search..."
			SearchInput.Font = Enum.Font.GothamMedium
			SearchInput.TextSize = 12
			SearchInput.TextXAlignment = Enum.TextXAlignment.Left
			SearchInput.ZIndex = 11
			SearchInput.ClearTextOnFocus = false
			luxylib:ApplyThemeObj(SearchInput, "TextColor3", "Text")
			luxylib:ApplyThemeObj(SearchInput, "PlaceholderColor3", "TextInactive")

			SearchInput.Focused:Connect(function()
				local palette = luxylib.Themes[luxylib.CurrentTheme]
				TweenService:Create(SearchStroke, TweenInfo.new(0.3), { Color = palette.Accent, Transparency = 0.3 })
					:Play()
			end)

			SearchInput.FocusLost:Connect(function()
				local palette = luxylib.Themes[luxylib.CurrentTheme]
				TweenService:Create(SearchStroke, TweenInfo.new(0.3), { Color = palette.Stroke, Transparency = 0.8 })
					:Play()
			end)

		local ItemList = Instance.new("ScrollingFrame", SidePanel)
		ItemList.Size = UDim2.new(1, 0, 1, -55)
		ItemList.Position = UDim2.new(0, 10, 0, 50)
		ItemList.BackgroundTransparency = 1
		ItemList.BorderSizePixel = 0
		ItemList.ScrollBarThickness = 2
		ItemList.ZIndex = 11

		-- 🔥 TIMPA: Gunakan AutomaticCanvasSize bawaan Roblox agar list pencarian tidak seret saat di-scroll
		ItemList.AutomaticCanvasSize = Enum.AutomaticSize.Y
		ItemList.CanvasSize = UDim2.new(0, 0, 0, 0)
		luxylib:ApplyThemeObj(ItemList, "ScrollBarImageColor3", "Stroke")

		local ListPadding = Instance.new("UIPadding", ItemList)
		ListPadding.PaddingLeft = UDim.new(0, 1)
		ListPadding.PaddingRight = UDim.new(0, 20)
		ListPadding.PaddingTop = UDim.new(0, 5)

		ListPadding.PaddingBottom = UDim.new(0, 5)

		local ListLayout = Instance.new("UIListLayout", ItemList)
		ListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		ListLayout.Padding = UDim.new(0, 6)

			local OptionButtons = {}

			local function ClosePanel()
				Expanded = false
				CloseArea.Visible = false
				local palette = luxylib.Themes[luxylib.CurrentTheme]
				TweenService:Create(
					SidePanel,
					TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
					{ Position = UDim2.new(1, 10, 0, 5) }
				):Play()
				TweenService:Create(Arrow, TweenInfo.new(0.3), { Rotation = 0, ImageColor3 = palette.TextInactive })
					:Play()
				TweenService:Create(TriggerStroke, TweenInfo.new(0.3), { Transparency = 0.85, Color = palette.Stroke })
					:Play()
			end

			table.insert(Window.SelectCloseFuncs, ClosePanel)
			CloseArea.MouseButton1Click:Connect(ClosePanel)

			local function RefreshOptions()
				for _, btn in pairs(OptionButtons) do
					btn:Destroy()
				end
				table.clear(OptionButtons)

				local FilterText = string.lower(SearchInput.Text)

				for _, opt in ipairs(OptionsList) do
					if FilterText == "" or string.find(string.lower(opt), FilterText) then
						local OptBtn = Instance.new("TextButton", ItemList)
						OptBtn.Active = false
						OptBtn.Size = UDim2.new(1, 0, 0, 32)
						OptBtn.BackgroundTransparency = 0.95
						OptBtn.AutoButtonColor = false
						OptBtn.Text = ""
						OptBtn.ZIndex = 12
						Instance.new("UICorner", OptBtn).CornerRadius = UDim.new(0, 6)
						luxylib:ApplyThemeObj(OptBtn, "BackgroundColor3", "ToggleBtnBg")

						local OptStroke = Instance.new("UIStroke", OptBtn)
						OptStroke.Thickness = 1
						OptStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

						local Indicator = Instance.new("Frame", OptBtn)
						local isSelected = table.find(SelectedItems, opt) ~= nil
						Indicator.Size = UDim2.new(0, 3, 0, isSelected and 16 or 0)
						Indicator.AnchorPoint = Vector2.new(0, 0.5)
						Indicator.Position = UDim2.new(0, 4, 0.5, 0)
						Indicator.BorderSizePixel = 0
						Indicator.ZIndex = 12
						Indicator.BackgroundTransparency = 0
						Instance.new("UICorner", Indicator).CornerRadius = UDim.new(1, 0)
						luxylib:ApplyThemeObj(Indicator, "BackgroundColor3", "Accent")

						local ItemTitle = Instance.new("TextLabel", OptBtn)
						ItemTitle.Size = UDim2.new(1, -30, 1, 0)
						ItemTitle.Position = UDim2.new(0, 15, 0, 0)
						ItemTitle.BackgroundTransparency = 1
						ItemTitle.Text = opt
						ItemTitle.Font = Enum.Font.GothamMedium
						ItemTitle.TextSize = 12
						ItemTitle.TextXAlignment = Enum.TextXAlignment.Left
						ItemTitle.ZIndex = 12

						if isSelected then
							OptStroke.Transparency = 0.95
							luxylib:ApplyThemeObj(OptStroke, "Color", "Accent")
							luxylib:ApplyThemeObj(ItemTitle, "TextColor3", "Accent")
							OptBtn.BackgroundTransparency = 0.55
						else
							OptStroke.Transparency = 0.85
							luxylib:ApplyThemeObj(OptStroke, "Color", "Stroke")
							luxylib:ApplyThemeObj(ItemTitle, "TextColor3", "Text")
							OptBtn.BackgroundTransparency = 0.95
						end

						OptBtn.MouseButton1Click:Connect(function()
							local palette = luxylib.Themes[luxylib.CurrentTheme]
							local idx = table.find(SelectedItems, opt)

							if idx then
								table.remove(SelectedItems, idx)
								TweenService:Create(
									Indicator,
									TweenInfo.new(0.3, Enum.EasingStyle.Quint),
									{ Size = UDim2.new(0, 3, 0, 0) }
								):Play()
								TweenService
									:Create(
										OptStroke,
										TweenInfo.new(0.3),
										{ Transparency = 0.85, Color = palette.Stroke }
									)
									:Play()
								TweenService:Create(ItemTitle, TweenInfo.new(0.3), { TextColor3 = palette.Text }):Play()
								TweenService:Create(OptBtn, TweenInfo.new(0.3), { BackgroundTransparency = 0.95 })
									:Play()
							else
								table.insert(SelectedItems, opt)
								TweenService:Create(
									Indicator,
									TweenInfo.new(0.3, Enum.EasingStyle.Quint),
									{ Size = UDim2.new(0, 3, 0, 16) }
								):Play()
								TweenService
									:Create(
										OptStroke,
										TweenInfo.new(0.3),
										{ Transparency = 0.95, Color = palette.Accent }
									)
									:Play()
								TweenService:Create(ItemTitle, TweenInfo.new(0.3), { TextColor3 = palette.Accent })
									:Play()
								TweenService:Create(OptBtn, TweenInfo.new(0.3), { BackgroundTransparency = 0.55 })
									:Play()
							end

							UpdateTriggerText()
							CallbackFunc(SelectedItems)
						end)

						table.insert(OptionButtons, OptBtn)
					end
				end
			end

			RefreshOptions()

			SearchInput:GetPropertyChangedSignal("Text"):Connect(RefreshOptions)

			TriggerBtn.MouseButton1Click:Connect(function()
				Expanded = not Expanded
				local palette = luxylib.Themes[luxylib.CurrentTheme]

				if Expanded then
					CloseArea.Visible = true
					TweenService:Create(
						SidePanel,
						TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
						{ Position = UDim2.new(0.45, 5, 0, 5) }
					):Play()
					TweenService:Create(Arrow, TweenInfo.new(0.3), { Rotation = 90, ImageColor3 = palette.Accent })
						:Play()
					TweenService
						:Create(TriggerStroke, TweenInfo.new(0.3), { Transparency = 0.5, Color = palette.Accent })
						:Play()
				else
					ClosePanel()
				end
			end)

			local SelectObj = {}
			function SelectObj:Refresh(NewOptions)
				OptionsList = NewOptions
				RefreshOptions()
			end
			return SelectObj
		end

		return Tab
	end

	return Window
end

-- ==========================================
-- [🔮] IN-GAME DYNAMIC PREDICTION HUD (DRAGGABLE, RESIZABLE & AUTO-WRAPPING)
-- ==========================================

local PredictHUD_UI = nil
local PredictHUD = nil

function luxylib:UpdatePredictHUD(brainrot, rarity, mutation, cps)
	-- Jika toggle dimatikan, kirim argumen pertama nil/false untuk menyembunyikan HUD
	if not brainrot then
		if PredictHUD then
			PredictHUD.Visible = false
		end
		return
	end
	
	local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
	
	-- Buat ScreenGui khusus dengan DisplayOrder maksimal (2147483647) agar selalu di atas gamepass/inventory
	if not PredictHUD_UI then
		PredictHUD_UI = Instance.new("ScreenGui")
		PredictHUD_UI.Name = "LuxyPredictHUD_UI"
		PredictHUD_UI.ResetOnSpawn = false
		PredictHUD_UI.IgnoreGuiInset = true
		PredictHUD_UI.DisplayOrder = 2147483647 -- Limit maksimum 32-bit integer Roblox
		PredictHUD_UI.Parent = PlayerGui
	end
	
	-- Buat Frame HUD jika belum ada
	if not PredictHUD then
		PredictHUD = Instance.new("Frame")
		PredictHUD.Name = "PredictHUD"
		-- 🔥 TIMPA: Dipertinggi sedikit menjadi 125 untuk menampung baris Cash/Sec baru
		PredictHUD.Size = UDim2.new(0, 210, 0, 125) 
		PredictHUD.Position = UDim2.new(0.02, 0, 0.22, 0) -- Pas di bawah floating button kiri
		PredictHUD.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
		PredictHUD.BackgroundTransparency = 0.15
		PredictHUD.BorderSizePixel = 0
		PredictHUD.ZIndex = 400
		PredictHUD.Active = true
		PredictHUD.ClipsDescendants = true -- Agar resize memotong elemen dengan rapi
		PredictHUD.Parent = PredictHUD_UI
		
		local Corner = Instance.new("UICorner", PredictHUD)
		Corner.CornerRadius = UDim.new(0, 8)
		
		local Stroke = Instance.new("UIStroke", PredictHUD)
		Stroke.Thickness = 1
		Stroke.Color = Color3.fromRGB(121, 121, 121)
		Stroke.Transparency = 0.5
		
		local Title = Instance.new("TextLabel", PredictHUD)
		Title.Name = "HUD_Title"
		Title.Size = UDim2.new(1, 0, 0, 20)
		Title.BackgroundTransparency = 1
		Title.Text = "🔮 PREDICTION HUD"
		Title.Font = Enum.Font.GothamBold
		Title.TextSize = 11
		Title.TextColor3 = Color3.fromRGB(172, 0, 0) -- Luxy Red Accent
		Title.ZIndex = 401
		
		local Layout = Instance.new("UIListLayout", PredictHUD)
		Layout.SortOrder = Enum.SortOrder.LayoutOrder
		Layout.Padding = UDim.new(0, 4)
		
		local Padding = Instance.new("UIPadding", PredictHUD)
		Padding.PaddingLeft = UDim.new(0, 12)
		Padding.PaddingRight = UDim.new(0, 12)
		Padding.PaddingTop = UDim.new(0, 8)
		Padding.PaddingBottom = UDim.new(0, 8)
		
		local L_Brainrot = Instance.new("TextLabel", PredictHUD)
		L_Brainrot.Name = "L_Brainrot"
		L_Brainrot.Size = UDim2.new(1, -12, 0, 18) -- Sisakan sedikit padding kanan agar tidak menabrak grip
		L_Brainrot.BackgroundTransparency = 1
		L_Brainrot.Font = Enum.Font.GothamMedium
		L_Brainrot.TextSize = 11
		L_Brainrot.TextColor3 = Color3.fromRGB(210, 210, 210)
		L_Brainrot.TextXAlignment = Enum.TextXAlignment.Left
		L_Brainrot.RichText = true
		L_Brainrot.TextWrapped = true -- AKTIFKAN TEXT WRAP AGAR TULISAN PANJANG TURUN KE BAWAH
		L_Brainrot.AutomaticSize = Enum.AutomaticSize.Y -- TINGGI OTOMATIS MENYESUAIKAN JIKA WRAP
		L_Brainrot.ZIndex = 401
		
		local L_Rarity = Instance.new("TextLabel", PredictHUD)
		L_Rarity.Name = "L_Rarity"
		L_Rarity.Size = UDim2.new(1, -12, 0, 18)
		L_Rarity.BackgroundTransparency = 1
		L_Rarity.Font = Enum.Font.GothamMedium
		L_Rarity.TextSize = 11
		L_Rarity.TextColor3 = Color3.fromRGB(210, 210, 210)
		L_Rarity.TextXAlignment = Enum.TextXAlignment.Left
		L_Rarity.RichText = true
		L_Rarity.TextWrapped = true
		L_Rarity.AutomaticSize = Enum.AutomaticSize.Y
		L_Rarity.ZIndex = 401
		
		local L_Mutation = Instance.new("TextLabel", PredictHUD)
		L_Mutation.Name = "L_Mutation"
		L_Mutation.Size = UDim2.new(1, -12, 0, 18)
		L_Mutation.BackgroundTransparency = 1
		L_Mutation.Font = Enum.Font.GothamMedium
		L_Mutation.TextSize = 11
		L_Mutation.TextColor3 = Color3.fromRGB(210, 210, 210)
		L_Mutation.TextXAlignment = Enum.TextXAlignment.Left
		L_Mutation.RichText = true
		L_Mutation.TextWrapped = true
		L_Mutation.AutomaticSize = Enum.AutomaticSize.Y
		L_Mutation.ZIndex = 401

		-- 🔥 TIMPA: Tambahkan Label Baru untuk Cash Per Second (CPS)
		local L_CPS = Instance.new("TextLabel", PredictHUD)
		L_CPS.Name = "L_CPS"
		L_CPS.Size = UDim2.new(1, -12, 0, 18)
		L_CPS.BackgroundTransparency = 1
		L_CPS.Font = Enum.Font.GothamMedium
		L_CPS.TextSize = 11
		L_CPS.TextColor3 = Color3.fromRGB(210, 210, 210)
		L_CPS.TextXAlignment = Enum.TextXAlignment.Left
		L_CPS.RichText = true
		L_CPS.TextWrapped = true
		L_CPS.AutomaticSize = Enum.AutomaticSize.Y
		L_CPS.ZIndex = 401

		-- Fitur Drag-and-Drop mulus
		local draggingHUD, dragInputHUD, dragStartHUD, startPosHUD
		PredictHUD.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				draggingHUD = true
				dragStartHUD = input.Position
				startPosHUD = PredictHUD.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						draggingHUD = false
					end
				end)
			end
		end)
		PredictHUD.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInputHUD = input
			end
		end)
		UserInputService.InputChanged:Connect(function(input)
			if input == dragInputHUD and draggingHUD then
				local delta = input.Position - dragStartHUD
				PredictHUD.Position = UDim2.new(
					startPosHUD.X.Scale,
					startPosHUD.X.Offset + delta.X,
					startPosHUD.Y.Scale,
					startPosHUD.Y.Offset + delta.Y
				)
			end
		end)

		-- RESIZE GRIP: Tombol penyeret ukuran di pojok kanan bawah
		local ResizeGrip = Instance.new("TextButton", PredictHUD)
		ResizeGrip.Name = "ResizeGrip"
		ResizeGrip.Size = UDim2.new(0, 15, 0, 15)
		ResizeGrip.Position = UDim2.new(1, 0, 1, 0)
		ResizeGrip.AnchorPoint = Vector2.new(1, 1)
		ResizeGrip.BackgroundTransparency = 1
		ResizeGrip.Text = "◢"
		ResizeGrip.Font = Enum.Font.GothamBold
		ResizeGrip.TextSize = 10
		ResizeGrip.TextColor3 = Color3.fromRGB(121, 121, 121)
		ResizeGrip.ZIndex = 402

		local resizingHUD, rDragStartHUD, startSizeHUD
		ResizeGrip.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				resizingHUD = true
				rDragStartHUD = input.Position
				startSizeHUD = PredictHUD.Size
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						resizingHUD = false
					end
				end)
			end
		end)
		UserInputService.InputChanged:Connect(function(input)
			if resizingHUD and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
				local delta = input.Position - rDragStartHUD
				local newX = math.clamp(startSizeHUD.X.Offset + delta.X, 180, 500)
				local newY = math.clamp(startSizeHUD.Y.Offset + delta.Y, 95, 300)
				PredictHUD.Size = UDim2.new(0, newX, 0, newY)
			end
		end)
	end
	
	-- Update Teks
	PredictHUD.Visible = true
	PredictHUD.L_Brainrot.Text = "<b>BRAINROT:</b> " .. tostring(brainrot):upper()
	PredictHUD.L_Rarity.Text = "<b>RARITY:</b> " .. tostring(rarity):upper()
	PredictHUD.L_Mutation.Text = "<b>MUTATION:</b> " .. tostring(mutation):upper()
	-- 🔥 TIMPA: Tampilkan teks estimasi Cash Per Second terbaru
	PredictHUD.L_CPS.Text = "<b>CASH/SEC:</b> " .. tostring(cps or "N/A"):upper()
end

-- ==========================================
-- [⚡] DYNAMIC VISUAL ENGINE (EXTREME POTATO) - ULTRA BURIK & ANTI CRASH
-- ==========================================
function luxylib:SetPotatoMode(state)
    task.spawn(function()
        local Lighting = game:GetService("Lighting")
        local Workspace = game:GetService("Workspace")
        local Terrain = Workspace:FindFirstChildOfClass("Terrain")

        if state then
            if self.VisualConnections.Potato then self.VisualConnections.Potato:Disconnect() end

            -- 1. Matikan Lighting Global Secara Ekstrem
            settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
            Lighting.GlobalShadows = false
            Lighting.EnvironmentDiffuseScale = 0
            Lighting.EnvironmentSpecularScale = 0
            Lighting.Brightness = 2 -- Dinaikin sedikit biar lu ga buta pas map jadi polos
            Lighting.FogEnd = 9e9

            -- [🔥 FIX CRASH]: Semua manipulasi Terrain wajib di-pcall satu per satu!
            if Terrain then
                pcall(function() Terrain.WaterWaveSize = 0 end)
                pcall(function() Terrain.WaterWaveSpeed = 0 end)
                pcall(function() Terrain.WaterReflectance = 0 end)
                pcall(function() Terrain.WaterTransparency = 0 end)
                pcall(function() Terrain.Decoration = false end)
            end

            -- 2. FUNGSI PEMBANTAIAN MUTLAK (ULTRA BURIK)
            local function AnnihilateVisuals(obj)
                pcall(function()
                    if obj:IsA("BasePart") and not obj:IsA("Terrain") then
                        -- Bikin licin
                        obj.Material = Enum.Material.SmoothPlastic
                        obj.Reflectance = 0
                        obj.CastShadow = false
                        
                        -- [🔥 TARGET: BRAINROT & MAP TEXTURES]: Hapus wujud asli model 3D
                        if obj:IsA("MeshPart") then
                            obj.TextureID = "" 
                        end
                    elseif obj:IsA("SpecialMesh") then
                        obj.TextureId = "" 
                    elseif obj:IsA("SurfaceAppearance") then
                        -- Hancurkan sistem tekstur HD/PBR bawaan Roblox
                        obj:Destroy() 
                    elseif obj:IsA("Decal") or obj:IsA("Texture") then
                        obj.Transparency = 1 
                    elseif obj:IsA("ParticleEmitter") or obj:IsA("Trail") or obj:IsA("Beam") or obj:IsA("Smoke") or obj:IsA("Fire") or obj:IsA("Sparkles") or obj:IsA("Highlight") then
                        -- Matikan SEMUA VFX termasuk Highlight/Outline
                        obj.Enabled = false 
                    elseif obj:IsA("PostEffect") or obj:IsA("Atmosphere") or obj:IsA("Sky") then
                        obj.Enabled = false 
                    elseif obj:IsA("Light") then
                        -- Matikan PointLight/SpotLight biar GPU ga hitung pantulan cahaya
                        obj.Enabled = false 
                    end
                end)
            end

            -- 3. Eksekusi Chunking O(N) ke seluruh map (Bebas Freeze)
            local allObjects = Workspace:GetDescendants()
            for i, obj in ipairs(allObjects) do
                AnnihilateVisuals(obj)
                -- Bernapas setiap 500 objek agar frame tidak drop saat rendering dipaksa ulang
                if i % 500 == 0 then task.wait() end 
            end

            for _, obj in ipairs(Lighting:GetChildren()) do
                AnnihilateVisuals(obj)
            end

            -- 4. Satpam Real-Time O(1) (Bikin Brainrot/VFX baru auto burik saat muncul)
            self.VisualConnections.Potato = Workspace.DescendantAdded:Connect(function(obj)
                AnnihilateVisuals(obj)
            end)

        else
            -- MATIKAN POTATO MODE
            if self.VisualConnections.Potato then 
                self.VisualConnections.Potato:Disconnect() 
                self.VisualConnections.Potato = nil 
            end
            Lighting.GlobalShadows = true
            settings().Rendering.QualityLevel = Enum.QualityLevel.Automatic
        end
    end)
end

function luxylib:SetRTXMode(state)
    -- [🔥 FIX]: Bungkus ke task.spawn
    task.spawn(function()
        local Lighting = game:GetService("Lighting")
        local Workspace = game:GetService("Workspace")
        local Terrain = Workspace:FindFirstChildOfClass("Terrain")

        if state then
            settings().Rendering.QualityLevel = Enum.QualityLevel.Level21
            Lighting.GlobalShadows = true
            Lighting.ShadowSoftness = 0.2
            Lighting.Brightness = 3
            Lighting.EnvironmentDiffuseScale = 1.2
            Lighting.EnvironmentSpecularScale = 1.5 
            
            Lighting.Ambient = Color3.fromRGB(130, 145, 165) 
            Lighting.OutdoorAmbient = Color3.fromRGB(180, 190, 210) 
            Lighting.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
            Lighting.ColorShift_Top = Color3.fromRGB(255, 240, 245)

            if Terrain then
                Terrain.WaterWaveSize = 0.8
                Terrain.WaterWaveSpeed = 10
                Terrain.WaterReflectance = 1
                Terrain.WaterTransparency = 0.6
                Terrain.Decoration = true
            end

            for _, effect in ipairs(Lighting:GetChildren()) do
                if (effect:IsA("PostEffect") or effect:IsA("Atmosphere")) and effect.Name:match("Luxy") then
                    effect:Destroy()
                end
            end

            local cc = Instance.new("ColorCorrectionEffect")
            cc.Name = "LuxyColor"
            cc.Brightness = 0.05
            cc.Contrast = 0.15 
            cc.Saturation = 0.65 
            cc.TintColor = Color3.fromRGB(255, 245, 255) 
            cc.Parent = Lighting

            local bloom = Instance.new("BloomEffect")
            bloom.Name = "LuxyBloom"
            bloom.Intensity = 0.5
            bloom.Size = 40
            bloom.Threshold = 2
            bloom.Parent = Lighting

            local sun = Instance.new("SunRaysEffect")
            sun.Name = "LuxySunRays"
            sun.Intensity = 0.25
            sun.Spread = 0.75
            sun.Parent = Lighting

            local atmos = Instance.new("Atmosphere")
            atmos.Name = "LuxyAtmosphere"
            atmos.Density = 0.25
            atmos.Offset = 0.25
            atmos.Color = Color3.fromRGB(150, 180, 220)
            atmos.Decay = Color3.fromRGB(255, 180, 200)
            atmos.Glare = 0.2
            atmos.Haze = 0.4
            atmos.Parent = Lighting
            
            local dof = Instance.new("DepthOfFieldEffect")
            dof.Name = "LuxyDOF"
            dof.FarIntensity = 0.25
            dof.FocusDistance = 25
            dof.InFocusRadius = 40
            dof.NearIntensity = 0
            dof.Parent = Lighting
        else
            -- Hapus efek RTX
            for _, effect in ipairs(Lighting:GetChildren()) do
                if (effect:IsA("PostEffect") or effect:IsA("Atmosphere")) and effect.Name:match("Luxy") then
                    effect:Destroy()
                end
            end
        end
    end)
end

return luxylib
