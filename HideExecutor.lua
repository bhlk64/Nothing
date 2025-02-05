local uis = game:GetService("UserInputService")

--Check Delta
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
exec = "Delta"
end
end
end
end
end
end

--Check Fluxus
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
exec = "Fluxus"
end
end
end
end
end
end

if uis.TouchEnable and exec == "Delta" then
loadstring(game:HttpGet("https://raw.githubusercontent.com/bhlk64/Nothing/refs/heads/main/hidedeltamobile.lua"))()
elseif uis.TouchEnable and exec == "Fluxus" then
loadstring(game:HttpGet("https://raw.githubusercontent.com/bhlk64/Nothing/refs/heads/main/hidefluxusmobile.lua"))()
elseif uis.KeyboardEnabled and exec == "Delta" then
loadstring(game:HttpGet("https://raw.githubusercontent.com/bhlk64/Nothing/refs/heads/main/hidedelta.lua"))()
elseif uis.KeyboardEnabled and exec == "Fluxus" then
loadstring(game:HttpGet("https://raw.githubusercontent.com/bhlk64/Nothing/refs/heads/main/hidefluxus.lua"))()
end
