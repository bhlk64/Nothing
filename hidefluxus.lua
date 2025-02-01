game.StarterGui:SetCore("SendNotification", {
Title = "Close Fluxus Interface",
Text = "Press Right Alt To Clost Fluxus Interface"
});

local uis = game.UserInputService
uis.InputBegan:Connect(function(input)

if input.KeyCode == Enum.KeyCode.RightAlt then
local cg = game.CoreGui
local sigma = cg:GetChildren()
for _, ala in pairs(sigma) do
if ala.ClassName == "ScreenGui" then
local kal = ala:GetChildren()
for _, ka in pairs(kal) do
if ka.Name == "Frame" then
local ll = ka:GetChildren()
for _, l in pairs(ll) do
if l.Name == "Logo" and l.ClassName == "ImageButton" and l.Image == "rbxassetid://13327193518" then
ala.Enabled = not ala.Enabled
end
end
end
end
end
end
end
end)
--Hide Fluxus Interface