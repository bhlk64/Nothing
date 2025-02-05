game.StarterGui:SetCore("SendNotification", {
Title = "Close Delta Interface",
Text = "Press Right Alt To Clost Delta Interface"
});

local uis = game.UserInputService
uis.InputBegan:Connect(function(input)

if input.KeyCode == Enum.KeyCode.RightAlt then
local cg = game.CoreGui
local sigma = cg:GetChildren()
for _, ala in pairs(sigma) do
if ala.ClassName == "Folder" then
local kal = ala:GetChildren()
for _, ka in pairs(kal) do
if ka.ClassName == "ScreenGui" then
local ll = ka:GetChildren()
for _, l in pairs(ll) do
if l.Name == "ImageButton" and l.ClassName == "ImageButton" and l.Image == "rbxasset://custom_gloop/new_logo.png" then
ka.Enabled = not ka.Enabled
end
end
end
end
end
end
end
end)
--Hide Delta Interface