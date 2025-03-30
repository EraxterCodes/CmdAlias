CmdAliasDB = CmdAliasDB or {}

local function ExecuteAlias(translation)
    if translation:sub(1, 1) == "/" then
        ChatFrame1:AddMessage("Executing alias: " .. translation)
        ChatFrame1.editBox:SetText(translation)
        ChatEdit_SendText(ChatFrame1.editBox, 1)
    else
        SendChatMessage(translation, "SAY")
    end
end

local function RegisterAlias(command, translation)
    local aliasName = "CMDALIAS_" .. command:upper()
    _G["SLASH_" .. aliasName .. "1"] = "/" .. command
    SlashCmdList[aliasName] = function()
        ExecuteAlias(translation)
    end
end

local function LoadAliases()
    for command, translation in pairs(CmdAliasDB) do
        RegisterAlias(command, translation)
    end
end

SLASH_CMDALIAS1 = "/alias"
SlashCmdList["CMDALIAS"] = function(msg)
    if msg == "reset" then
        CmdAliasDB = {}
        ChatFrame1:AddMessage("All aliases have been reset.")
        return
    end
    
    local command, translation = strsplit(" ", msg, 2)
    if command and translation then
        CmdAliasDB[command] = translation
        RegisterAlias(command, translation)
        ChatFrame1:AddMessage("Alias set: " .. command .. " -> " .. translation)
    elseif command then
        CmdAliasDB[command] = nil
        ChatFrame1:AddMessage("Alias removed: " .. command)
    else
        ChatFrame1:AddMessage("Usage: /alias <shortcut> <command>")
        ChatFrame1:AddMessage("To reset all aliases, use: /alias reset")
    end
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_LOGIN" then
        LoadAliases()
    end
end)
