-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------

Config = {}

Config.checkForUpdates = false -- Check for Updates?
Config.oldESX = false -- Does not apply to qb users (If set to true, won't check if player can carry item)

Config.axe = {
    prop = `prop_tool_pickaxe`, --Default: `prop_tool_pickaxe`
    breakChance = 30 -- When failing to mine rock, this is the percentage of a chance that your pickaxe will 'break'
}

Config.rocks = { -- Items obtained from mining
    { item = 'emerald', label = 'Emerald', price = {19000, 22000}, difficulty = {'medium', 'medium', 'easy'} },
    { item = 'diamond', label = 'Diamond', price = {15000, 18000}, difficulty = {'medium', 'easy', 'easy'} },
    { item = 'copper', label = 'Copper', price = {11000, 14000}, difficulty = {'medium', 'medium'} },
    { item = 'iron', label = 'Iron', price = {7000, 10000}, difficulty = {'easy', 'easy'} },
    { item = 'steel', label = 'Steel', price = {4000, 6000}, difficulty = {'easy', 'easy'} },
}


Config.miningAreas = {
    vec3(2977.45, 2741.62, 44.62), -- vec3 of locations for mining stones
    vec3(2982.64, 2750.89, 42.99),
    vec3(2994.92, 2750.43, 44.04),
    vec3(2958.21, 2725.44, 50.16),
    vec3(2946.3, 2725.36, 47.94),
    vec3(3004.01, 2763.27, 43.56),
    vec3(3001.79, 2791.01, 44.82)
}

Config.sellShop = {
    enabled = true, -- Enable spot to sell the things mined?
    coords = vector3(-251.3, 6209.43, 31.49), -- Location of buyer
    heading = 313.36, -- Heading of ped
    ped = 'cs_joeminuteman' -- Ped name here
}

RegisterNetEvent('wasabi_mining:notify')
AddEventHandler('wasabi_mining:notify', function(title, message, msgType)	
    -- Place notification system info here, ex: exports['mythic_notify']:SendAlert('inform', message)
    if not msgType then
        lib.notify({
            title = title,
            description = message,
            type = 'inform'
        })
    else
        lib.notify({
            title = title,
            description = message,
            type = msgType
        })
    end
end)
