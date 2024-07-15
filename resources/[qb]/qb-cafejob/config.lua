Config = {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add setr UseTarget true)

Config.Locations = {                -- Edit the various interaction points for players or create new ones
    ['duty'] = {
        vector3(-586.43, -1050.09, 21.53),
    },
    ['vehicle'] = {
        vector4(-607.94, -1059.36, 21.79, 86.17),
    },
    ['stash'] = {
        vector3(-590.36, -1067.36, 21.45),
        vector3(-590.43, -1058.66, 21.52)
    },
}

Config.AuthorizedVehicles = { -- Grade is key, don't add same vehicle in multiple grades. Higher rank can see lower
    [0] = {
        -- ['pizzaboy'] = 'Cafe Motor',
        ['taco'] = 'Foodtruck'
    }
}
