local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Frame Menu
local menuFrame = Instance.new("Frame")
menuFrame.Size = UDim2.new(0, 300, 0, 350)
menuFrame.Position = UDim2.new(0.5, -150, 0.3, 0)
menuFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
menuFrame.Parent = screenGui

-- Tiêu đề Menu
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 40)
titleLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
titleLabel.Text = "NOWXTEAMS Script Make By ChatGPT"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.TextSize = 20
titleLabel.Parent = menuFrame

-- Nút Đóng
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -35, 0, 5)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
closeButton.Text = "X"
closeButton.Parent = menuFrame

-- Danh sách button và script cần sao chép
local buttonList = {
    {name = "Kaitun Royx Hub", script = "loadstring(game:HttpGet("https://api.realaya.xyz/v1/files/l/73mkp0aqyfo4ypy8hvl0nz10lq49fey5.lua"))()"},
    {name = "W-AZURE", script = "getgenv().Team = "Marines"

getgenv().FixCrash = false -- Turn it On For Hopping Server, Improve Performance But Silent Aim On Mob And Player

getgenv().FixCrash2 = false -- Turn it On For Hopping Server, Improve Performance But Will Remove Speed Changer

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()"},
    {name = "chưa có", script = "loadstring(game:HttpGet('https://pastebin.com/raw/cuttayhub'))()"},
    {name = "chưa có", script = "loadstring(game:HttpGet('https://pastebin.com/raw/xerohub'))()"},
    {name = "chưa có", script = "loadstring(game:HttpGet('https://pastebin.com/raw/masterhub'))()"},
    {name = "chưa có", script = "loadstring(game:HttpGet('https://pastebin.com/raw/blacktraphub'))()"},
    {name = "chưa có", script = "loadstring(game:HttpGet('https://pastebin.com/raw/zisroblox'))()"}
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

    -- Xử lý khi nhấn vào button (sao chép script)
    button.MouseButton1Click:Connect(function()
        if setclipboard then
            setclipboard(data.script) -- Sao chép script vào clipboard
            button.Text = "✅ Đã sao chép!"
            wait(1.5)
            button.Text = data.name
        end
    end)
end

-- Xử lý đóng menu
closeButton.MouseButton1Click:Connect(function()
    menuFrame.Visible = false
end)
