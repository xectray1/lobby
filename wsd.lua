if not (game:IsLoaded()) then game.Loaded:Wait(); end;
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/refs/heads/main/Library.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/refs/heads/main/addons/SaveManager.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/refs/heads/main/addons/ThemeManager.lua"))()
local Window = Library:CreateWindow({
    Title = "                         scripthookv       weird strict dad(lobby)",
    Center = true,
    AutoShow = true,
})

local Tabs = {
    Main = Window:AddTab("main"),
    ['settings'] = Window:AddTab('settings'),
}

local MainBox = Tabs.Main:AddLeftGroupbox("main")
MainBox:AddButton("teleport to chapter 1", function()
    queue_on_teleport[[
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xectray1/realloader/refs/heads/main/books.lua"))()
    ]]
    cloneref(game:GetService("TeleportService")):Teleport(14787381917, game.Players.LocalPlayer);
end);
MainBox:AddButton("teleport to chapter 2", function()
    queue_on_teleport[[
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xectray1/realloader/refs/heads/main/books.lua"))()
    ]]
    cloneref(game:GetService("TeleportService")):Teleport(15322497988, game.Players.LocalPlayer);
end);
MainBox:AddButton("teleport to chapter 3", function()
    queue_on_teleport[[
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xectray1/realloader/refs/heads/main/books.lua"))()
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/refs/heads/main/Library.lua"))()
    Library:Notify("chapter 3 not released sory", 5);
    ]]
    cloneref(game:GetService("TeleportService")):Teleport(16375066410, game.Players.LocalPlayer);
end);
MainBox:AddButton("teleport to chapter 4", function()
    queue_on_teleport[[
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xectray1/realloader/refs/heads/main/books.lua"))()
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/refs/heads/main/Library.lua"))()
    Library:Notify("chapter 4 not released sory", 5);
    ]]
    cloneref(game:GetService("TeleportService")):Teleport(17619037026, game.Players.LocalPlayer);
end);
MainBox:AddButton("teleport to book 2 chapter 1", function()
    queue_on_teleport[[
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xectray1/realloader/refs/heads/main/books.lua"))()
    ]]
    cloneref(game:GetService("TeleportService")):Teleport(71718624482170, game.Players.LocalPlayer);
end);
local MenuGroup = Tabs['settings']:AddLeftGroupbox('ui')
MenuGroup:AddLabel('toggle ui'):AddKeyPicker("uitoggle", { Default = 'End', NoUI = true, Text = 'UI Bind' })
MenuGroup:AddButton('Unload', function() Library:Unload() end)
Library.ToggleKeybind = Options.uitoggle
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ 'uitoggle' })
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:BuildConfigSection(Tabs['settings'])
ThemeManager:ApplyToTab(Tabs['settings'])
