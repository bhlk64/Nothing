function randomString()
	local length = math.random(10,20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end

PARENT = nil
if get_hidden_gui or gethui then
    local hiddenUI = get_hidden_gui or gethui
    local Main = Instance.new("ScreenGui")
    Main.Name = randomString()
    Main.Parent = hiddenUI()
    PARENT = Main
elseif (not is_sirhurt_closure) and (syn and syn.protect_gui) then
    local Main = Instance.new("ScreenGui")
    Main.Name = randomString()
    syn.protect_gui(Main)
    Main.Parent = COREGUI
    PARENT = Main
elseif COREGUI:FindFirstChild("RobloxGui") then
    PARENT = COREGUI.RobloxGui
else
    local Main = Instance.new("ScreenGui")
    Main.Name = randomString()
    Main.Parent = COREGUI
    PARENT = Main
end
hidden = PARENT.parent
--Getted hidden ui



game.StarterGui:SetCore("SendNotification", {
Title = "Close Delta Interface",
Text = "Press Right Alt To Clost Delta Interface"
});

local uis = game.UserInputService

uis.InputBegan:Connect(function(input)

if input.KeyCode == Enum.KeyCode.RightAlt then
for _,a in ipairs(hidden:GetChildren()) do
b = a:GetChildren()
for _,c in ipairs(b) do
if #b == 1 and c.ClassName == "ImageButton" then
a.Enabled = not a.Enabled
end
end
end
end
end)
--Hide Delta Interface
