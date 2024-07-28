Citizen.CreateThread(function()
    while true do

        local playerName = GetPlayerName(PlayerId())
        local playerId = GetPlayerServerId(PlayerId())

        local appId = 1266454423786229802
        -- local smallPic = "small"
        local bigPic = "big"
        
        SetDiscordAppId(appId)

        SetRichPresence("[".. playerId .."]".. playerName)

        SetDiscordRichPresenceAsset(bigPic)
        SetDiscordRichPresenceAssetText("EterLife")

        -- SetDiscordRichPresenceAsset(smallPic)
        -- SetDiscordRichPresenceAssetText('Small Text')

        SetDiscordRichPresenceAction(0, "Discord", "https://discord.gg/Rsq5sc3HPq")
        SetDiscordRichPresenceAction(1, "Play", "fivem://connect/104.234.180.52")
        
        Citizen.Wait(60000)
    end
end)