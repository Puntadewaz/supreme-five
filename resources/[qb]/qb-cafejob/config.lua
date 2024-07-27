Config = {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add setr UseTarget true)

Config.Locations = {                -- Edit the various interaction points for players or create new ones
    ['duty'] = {
        vector3(-593.99, -1052.64, 22.34),
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

Config.VehicleSettings = { -- Enable or disable vehicle extras when pulling them from the ambulance job vehicle spawner
    ['car1'] = {           -- Model name
        ['extras'] = {
            ['1'] = false, -- on/off
            ['2'] = true,
            ['3'] = true,
            ['4'] = true,
            ['5'] = true,
            ['6'] = true,
            ['7'] = true,
            ['8'] = true,
            ['9'] = true,
            ['10'] = true,
            ['11'] = true,
            ['12'] = true,
        }
    },
    ['car2'] = {
        ['extras'] = {
            ['1'] = false,
            ['2'] = true,
            ['3'] = true,
            ['4'] = true,
            ['5'] = true,
            ['6'] = true,
            ['7'] = true,
            ['8'] = true,
            ['9'] = true,
            ['10'] = true,
            ['11'] = true,
            ['12'] = true,
        }
    }
}
