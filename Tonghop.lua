local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Thanh tiêu đề nhỏ
local miniBar = Instance.new("Frame")
miniBar.Size = UDim2.new(0, 200, 0, 40)
miniBar.Position = UDim2.new(0.1, 0, 0.1, 0)
miniBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
miniBar.Parent = screenGui

-- Tiêu đề "TBoy Roblox"
local miniTitle = Instance.new("TextLabel")
miniTitle.Size = UDim2.new(1, -60, 1, 0)
miniTitle.Position = UDim2.new(0, 10, 0, 0)
miniTitle.BackgroundTransparency = 1
miniTitle.Text = "Tong Hop Script"
miniTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
miniTitle.Font = Enum.Font.SourceSansBold
miniTitle.TextSize = 18
miniTitle.TextXAlignment = Enum.TextXAlignment.Left
miniTitle.Parent = miniBar

-- Nút "+"
local openButton = Instance.new("TextButton")
openButton.Size = UDim2.new(0, 30, 0, 30)
openButton.Position = UDim2.new(1, -60, 0.5, -15)
openButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
openButton.Text = "+"
openButton.TextColor3 = Color3.fromRGB(255, 255, 255)
openButton.Font = Enum.Font.SourceSansBold
openButton.TextSize = 18
openButton.Parent = miniBar

-- Nút "X"
local closeButtonMini = Instance.new("TextButton")
closeButtonMini.Size = UDim2.new(0, 30, 0, 30)
closeButtonMini.Position = UDim2.new(1, -30, 0.5, -15)
closeButtonMini.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
closeButtonMini.Text = "X"
closeButtonMini.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButtonMini.Font = Enum.Font.SourceSansBold
closeButtonMini.TextSize = 18
closeButtonMini.Parent = miniBar

-- Frame Menu chính
local menuFrame = Instance.new("Frame")
menuFrame.Size = UDim2.new(0, 300, 0, 350)
menuFrame.Position = UDim2.new(0.5, -150, 0.3, 0)
menuFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
menuFrame.Visible = false
menuFrame.Parent = screenGui

-- Nút "X" trong menu chính
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -35, 0, 5)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
closeButton.Text = "X"
closeButton.Parent = menuFrame

-- Danh sách button và script chạy
local buttonList = {
    {name = "Royx Hub", script = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/User/RoyxHub/main/script.lua"))()'},
    {name = "Trâu Roblox", script = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/User/TrauRoblox/main/script.lua"))()'},
    {name = "Cụt Tay Hub", script = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/User/CutTayHub/main/script.lua"))()'},
    {name = "Xero Hub", script = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/User/XeroHub/main/script.lua"))()'},
    {name = "Master Hub", script = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/User/MasterHub/main/script.lua"))()'},
    {name = "BlackTrap Hub", script = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/User/BlackTrapHub/main/script.lua"))()'},
    {name = "Zis Roblox", script = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/User/ZisRoblox/main/script.lua"))()'}
}

-- Tạo các button
for i, data in ipairs(buttonList) do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -20, 0, 40)
    button.Position = UDim2.new(0, 10, 0, 50 + (i - 1) * 45)
    button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    button.Text = data.name
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.SourceSansBold
    button.TextSize = 18
    button.Parent = menuFrame

    -- Khi nhấn vào button, script sẽ chạy
    button.MouseButton1Click:Connect(function()
        button.Text = "⏳ Đang tải..."
        local success, errorMsg = pcall(function()
            loadstring(data.script)()
        end)

        if success then
            button.Text = "✅ Chạy thành công!"
        else
            button.Text = "❌ Lỗi!"
        end

        wait(1.5)
        button.Text = data.name
    end)
end

-- Xử lý mở menu từ thanh tiêu đề nhỏ
openButton.MouseButton1Click:Connect(function()
    menuFrame.Visible = true
end)

-- Xử lý đóng menu từ menu chính
closeButton.MouseButton1Click:Connect(function()
    menuFrame.Visible = false
end)

-- Xử lý ẩn thanh tiêu đề nhỏ khi bấm "X"
closeButtonMini.MouseButton1Click:Connect(function()
    miniBar.Visible = false
end)
