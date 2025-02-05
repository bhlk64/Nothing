game.StarterGui:SetCore("SendNotification", {
Title = "Close Fluxus Interface",
Text = "Go in Help Tab to close interface"
});

local help = game:GetService("CoreGui").RobloxGui.SettingsClippingShield.SettingsShield.MenuContainer.PageViewClipper.PageView.PageViewInnerFrame:WaitForChild("Help").HelpFrameTouch

if help:FindFirstChild("TextButton") then
help.TextButton:Destroy()
end

local tb = Instance.new("TextButton")
tb.Parent =  help
tb.Size = UDim2.new(1,0,0.1,0)
tb.Text = "Show / Hide Fluxus Interface"

tb.MouseButton1Click:Connect(function()
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
end)
--Hide Fluxus Interface for Mobile