Config = {}
Config.UsingTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Commission = 0.05                              -- Percent that goes to sales person from a full car sale 5%
Config.FinanceCommission = 0.20                       -- Percent that goes to sales person from a finance sale 20%
Config.PaymentWarning = 30                            -- time in minutes that player has to make payment before repo
Config.PaymentInterval = 168                           -- time in hours between payment being due
Config.MinimumDown = 30                               -- minimum percentage allowed down
Config.MaximumPayments = 40                           -- maximum payments allowed
Config.PreventFinanceSelling = true                  -- allow/prevent players from using /transfervehicle if financed
Config.FilterByMake = false                           -- adds a make list before selecting category in shops
Config.SortAlphabetically = true                      -- will sort make, category, and vehicle selection menus alphabetically
Config.HideCategorySelectForOne = true                -- will hide the category selection menu if a shop only sells one category of vehicle or a make has only one category
Config.Shops = {
    ['pdm'] = {
        ['Type'] = 'managed', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {      --polygon that surrounds the shop
                vector2(-56.727394104004, -1086.2325439453),
                vector2(-60.612808227539, -1096.7795410156),
                vector2(-58.26834487915, -1100.572265625),
                vector2(-35.927803039551, -1109.0034179688),
                vector2(-34.427627563477, -1108.5111083984),
                vector2(-33.9, -1108.96),
                vector2(-35.95, -1114.32),
                vector2(-31.58, -1115.21),
                vector2(-27.48, -1103.42),
                vector2(-33.342102050781, -1101.0377197266),
                vector2(-31.292987823486, -1095.3717041016)
            },
            ['minZ'] = 25.0,                                         -- min height of the shop zone
            ['maxZ'] = 28.0,                                         -- max height of the shop zone
            ['size'] = 2.75                                          -- size of the vehicles zones
        },
        ['Job'] = 'cardealer',                                            -- Name of job or none
        ['ShopLabel'] = 'Premium Deluxe Motorsport',                 -- Blip name
        ['showBlip'] = true,                                         -- true or false
        ['blipSprite'] = 326,                                        -- Blip sprite
        ['blipColor'] = 3,                                           -- Blip color
        ['TestDriveTimeLimit'] = 0.5,                                -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-45.67, -1098.34, 26.42),             -- Blip Location
        ['ReturnLocation'] = vector3(-44.74, -1082.58, 26.68),       -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5),   -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5), -- Spawn location for test drive
        ['FinanceZone'] = vector3(-29.53, -1103.67, 26.42),          -- Where the finance menu is located
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-45.65, -1093.66, 25.44, 69.5), -- where the vehicle will spawn on display
                defaultVehicle = 'ardent',                       -- Default display vehicle
                chosenVehicle = 'ardent',                        -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-48.27, -1101.86, 25.44, 294.5),
                defaultVehicle = 'schafter2',
                chosenVehicle = 'schafter2'
            },
            [3] = {
                coords = vector4(-39.6, -1096.01, 25.44, 66.5),
                defaultVehicle = 'coquette',
                chosenVehicle = 'coquette'
            },
            [4] = {
                coords = vector4(-51.21, -1096.77, 25.44, 254.5),
                defaultVehicle = 'vigero',
                chosenVehicle = 'vigero'
            },
            [5] = {
                coords = vector4(-40.18, -1104.13, 25.44, 338.5),
                defaultVehicle = 'rhapsody',
                chosenVehicle = 'rhapsody'
            },
            [6] = {
                coords = vector4(-43.31, -1099.02, 25.44, 52.5),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati'
            },
            [7] = {
                coords = vector4(-50.66, -1093.05, 25.44, 222.5),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati'
            },
            [8] = {
                coords = vector4(-44.28, -1102.47, 25.44, 298.5),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati'
            }
        },
    },
    ['luxury'] = {
        ['Type'] = 'managed', -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(265.75180053711, -261.88882446289),
                vector2(255.68733215332, -289.2214050293),
                vector2(235.65531921387, -282.04296875),
                vector2(235.40103149414, -259.87121582031),
                vector2(237.10316467285, -257.24993896484),
                vector2(238.64837646484, -255.6194152832),
                vector2(240.61259460449, -254.39166259766),
                vector2(242.81800842285, -253.71733093262),
                vector2(245.15008544922, -253.51358032227),
                vector2(247.85768127441, -253.85546875)

            },
            ['minZ'] = 53.975597381592,
            ['maxZ'] = 53.977657318115,
            ['size'] = 2.75    -- size of the vehicles zones
        },
        ['Job'] = 'cardealer', -- Name of job or none
        ['ShopLabel'] = 'Luxury Vehicle Shop',
        ['showBlip'] = true,   -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,     -- Blip color
        ['TestDriveTimeLimit'] = 1,
        ['Location'] = vector3(253.87, -266.15, 53.98),
        ['ReturnLocation'] = vector3(269.43, -322.08, 44.92),
        ['VehicleSpawn'] = vector4(297.13, -272.11, 53.98, 342.65),
        ['TestDriveSpawn'] = vector4(269.43, -322.08, 44.92, 237.85), -- Spawn location for test drive
        ['FinanceZone'] = vector3(250.15, -284.61, 53.98),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(250.32, -270.14, 53.58, 299.6),
                defaultVehicle = 'ocnlamtmc',
                chosenVehicle = 'ocnlamtmc'
            },
        }
    },                         -- Add your next table under this comma
    -- ['boats'] = {
    --     ['Type'] = 'free-use', -- no player interaction is required to purchase a vehicle
    --     ['Zone'] = {
    --         ['Shape'] = {      --polygon that surrounds the shop
    --             vector2(-729.39, -1315.84),
    --             vector2(-766.81, -1360.11),
    --             vector2(-754.21, -1371.49),
    --             vector2(-716.94, -1326.88)
    --         },
    --         ['minZ'] = 0.0,                                            -- min height of the shop zone
    --         ['maxZ'] = 5.0,                                            -- max height of the shop zone
    --         ['size'] = 6.2                                             -- size of the vehicles zones
    --     },
    --     ['Job'] = 'none',                                              -- Name of job or none
    --     ['ShopLabel'] = 'Marina Shop',                                 -- Blip name
    --     ['showBlip'] = true,                                           -- true or false
    --     ['blipSprite'] = 410,                                          -- Blip sprite
    --     ['blipColor'] = 3,                                             -- Blip color
    --     ['TestDriveTimeLimit'] = 1.5,                                  -- Time in minutes until the vehicle gets deleted
    --     ['Location'] = vector3(-738.25, -1334.38, 1.6),                -- Blip Location
    --     ['ReturnLocation'] = vector3(-714.34, -1343.31, 0.0),          -- Location to return vehicle, only enables if the vehicleshop has a job owned
    --     ['VehicleSpawn'] = vector4(-727.87, -1353.1, -0.17, 137.09),   -- Spawn location when vehicle is bought
    --     ['TestDriveSpawn'] = vector4(-722.23, -1351.98, 0.14, 135.33), -- Spawn location for test drive
    --     ['FinanceZone'] = vector3(-729.86, -1319.13, 1.6),
    --     ['ShowroomVehicles'] = {
    --         [1] = {
    --             coords = vector4(-727.05, -1326.59, 0.00, 229.5), -- where the vehicle will spawn on display
    --             defaultVehicle = 'seashark',                      -- Default display vehicle
    --             chosenVehicle = 'seashark'                        -- Same as default but is dynamically changed when swapping vehicles
    --         },
    --         [2] = {
    --             coords = vector4(-732.84, -1333.5, -0.50, 229.5),
    --             defaultVehicle = 'dinghy',
    --             chosenVehicle = 'dinghy'
    --         },
    --         [3] = {
    --             coords = vector4(-737.84, -1340.83, -0.50, 229.5),
    --             defaultVehicle = 'speeder',
    --             chosenVehicle = 'speeder'
    --         },
    --         [4] = {
    --             coords = vector4(-741.53, -1349.7, -2.00, 229.5),
    --             defaultVehicle = 'marquis',
    --             chosenVehicle = 'marquis'
    --         },
    --     },
    -- },
    -- ['air'] = {
    --     ['Type'] = 'free-use', -- no player interaction is required to purchase a vehicle
    --     ['Zone'] = {
    --         ['Shape'] = {      --polygon that surrounds the shop
    --             vector2(-1607.58, -3141.7),
    --             vector2(-1672.54, -3103.87),
    --             vector2(-1703.49, -3158.02),
    --             vector2(-1646.03, -3190.84)
    --         },
    --         ['minZ'] = 12.99,                                            -- min height of the shop zone
    --         ['maxZ'] = 16.99,                                            -- max height of the shop zone
    --         ['size'] = 7.0,                                              -- size of the vehicles zones
    --     },
    --     ['Job'] = 'none',                                                -- Name of job or none
    --     ['ShopLabel'] = 'Air Shop',                                      -- Blip name
    --     ['showBlip'] = true,                                             -- true or false
    --     ['blipSprite'] = 251,                                            -- Blip sprite
    --     ['blipColor'] = 3,                                               -- Blip color
    --     ['TestDriveTimeLimit'] = 1.5,                                    -- Time in minutes until the vehicle gets deleted
    --     ['Location'] = vector3(-1652.76, -3143.4, 13.99),                -- Blip Location
    --     ['ReturnLocation'] = vector3(-1628.44, -3104.7, 13.94),          -- Location to return vehicle, only enables if the vehicleshop has a job owned
    --     ['VehicleSpawn'] = vector4(-1617.49, -3086.17, 13.94, 329.2),    -- Spawn location when vehicle is bought
    --     ['TestDriveSpawn'] = vector4(-1625.19, -3103.47, 13.94, 330.28), -- Spawn location for test drive
    --     ['FinanceZone'] = vector3(-1619.52, -3152.64, 14.0),
    --     ['ShowroomVehicles'] = {
    --         [1] = {
    --             coords = vector4(-1651.36, -3162.66, 12.99, 346.89), -- where the vehicle will spawn on display
    --             defaultVehicle = 'volatus',                          -- Default display vehicle
    --             chosenVehicle = 'volatus'                            -- Same as default but is dynamically changed when swapping vehicles
    --         },
    --         [2] = {
    --             coords = vector4(-1668.53, -3152.56, 12.99, 303.22),
    --             defaultVehicle = 'luxor2',
    --             chosenVehicle = 'luxor2'
    --         },
    --         [3] = {
    --             coords = vector4(-1632.02, -3144.48, 12.99, 31.08),
    --             defaultVehicle = 'nimbus',
    --             chosenVehicle = 'nimbus'
    --         },
    --         [4] = {
    --             coords = vector4(-1663.74, -3126.32, 12.99, 275.03),
    --             defaultVehicle = 'frogger',
    --             chosenVehicle = 'frogger'
    --         },
    --     },
    -- },
    -- ['truck'] = {
    --     ['Type'] = 'free-use', -- no player interaction is required to purchase a car
    --     ['Zone'] = {
    --         ['Shape'] = {      --polygon that surrounds the shop
    --             vector2(856.91046142578, -1181.4660644532),
    --             vector2(922.666015625, -1178.8934326172),
    --             vector2(921.7074584961, -1153.4362792968),
    --             vector2(894.02233886718, -1153.185180664),
    --             vector2(894.08135986328, -1154.2734375),
    --             vector2(887.91284179688, -1154.3431396484),
    --             vector2(887.76403808594, -1155.2556152344),
    --             vector2(872.04608154296, -1155.3488769532),
    --             vector2(872.05163574218, -1139.1412353516),
    --             vector2(857.6060180664, -1139.501953125)
    --         },
    --         ['minZ'] = 22.0,                                         -- min height of the shop zone
    --         ['maxZ'] = 28.0,                                         -- max height of the shop zone
    --         ['size'] = 5.75                                          -- size of the vehicles zones
    --     },
    --     ['Job'] = 'none',                                            -- Name of job or none
    --     ['ShopLabel'] = 'Truck Motor Shop',                          -- Blip name
    --     ['showBlip'] = true,                                         -- true or false
    --     ['blipSprite'] = 477,                                        -- Blip sprite
    --     ['blipColor'] = 2,                                           -- Blip color
    --     ['TestDriveTimeLimit'] = 0.5,                                -- Time in minutes until the vehicle gets deleted
    --     ['Location'] = vector3(900.47, -1155.74, 25.16),             -- Blip Location
    --     ['ReturnLocation'] = vector3(900.47, -1155.74, 25.16),       -- Location to return vehicle, only enables if the vehicleshop has a job owned
    --     ['VehicleSpawn'] = vector4(909.35, -1181.58, 25.55, 177.57), -- Spawn location when vehicle is bought
    --     ['TestDriveSpawn'] = vector4(867.65, -1192.4, 25.37, 95.72), -- Spawn location for test drive
    --     ['FinanceZone'] = vector3(900.46, -1154.86, 25.16),
    --     ['ShowroomVehicles'] = {
    --         [1] = {
    --             coords = vector4(890.84, -1170.92, 25.08, 269.58), -- where the vehicle will spawn on display
    --             defaultVehicle = 'hauler',                         -- Default display vehicle
    --             chosenVehicle = 'hauler',                          -- Same as default but is dynamically changed when swapping vehicles
    --         },
    --         [2] = {
    --             coords = vector4(878.45, -1171.04, 25.05, 273.08),
    --             defaultVehicle = 'phantom',
    --             chosenVehicle = 'phantom'
    --         },
    --         [3] = {
    --             coords = vector4(880.44, -1163.59, 24.87, 273.08),
    --             defaultVehicle = 'mule',
    --             chosenVehicle = 'mule'
    --         },
    --         [4] = {
    --             coords = vector4(896.95, -1162.62, 24.98, 273.08),
    --             defaultVehicle = 'mixer',
    --             chosenVehicle = 'mixer'
    --         },
    --     },
    -- },
}
