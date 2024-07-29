local config = require "shared.config"
local callback = lib.callback
local core = Framework.core
---comment
---@param source number
---@param licenses string | table The key in Config.items
local function createLicense(source, licenses, rtn)

    if type(licenses) == 'string' then
        licenses = {licenses}
    end

    local mugshot = callback.await('bl_idcard:cb:getMugShot', source)

    if not mugshot then
        print('Mugshot for license creation not found. Source: ' .. source .. ' | ' .. GetPlayerName(source))
        return
    end

    local player = core.GetPlayer(source)

    local playerCharInfo = player.charinfo
    local charInfo = {
        id = player.id,
        dob = player.dob,
        firstName = playerCharInfo.firstname,
        lastName = playerCharInfo.lastname,
        sex = player.gender,
        imageURL = mugshot
    }

    for _, license in ipairs(licenses) do
        local configType = config.items[license]


        if configType then
            local idType = nil

            if configType.genderIdType then
                idType = configType.genderIdType[charInfo.sex]
            else
                idType = configType.idType
            end

            charInfo.idType = idType
            player.addItem(license, 1, charInfo)
            if rtn then
                return charInfo
            end
        else
            print('License type not found in config: ' .. license)
        end
    end
end
exports('createLicense', createLicense)

lib.addCommand('giveidcard', {
    help = 'Gives an item to a player',
    params = {
        {
            name = 'target',
            type = 'playerId',
            help = 'Target player\'s server id',
        },
        {
            name = 'license',
            type = 'string',
            help = 'License Name: [id_card, driver_license]',
        },
    },
    restricted = not config.Debug and 'group.admin'
}, function(source, args, raw)
    createLicense(args.target, args.license)
end)

CreateThread(function()
    local items = config.items
    for k, v in pairs(items) do
        core.RegisterUsableItem(k, function(source, _, metadata)
            local idType = metadata?.idType 
            if not idType then
                local player = core.GetPlayer(source)
                player.removeItem(k, 1)
                metadata = createLicense(source, k, true)
            end

            local target = callback.await('bl_idcard:use', source, k)

            if target then
                TriggerClientEvent('bl_idcard:open', target, metadata)
            end
        end)
    end
end)