-- Zones for Menus
Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.BossMenus = {
    police = {
        vector3(447.16, -974.31, 30.47),
    },
    ambulance = {
        vector3(1145.63, -1560.07, 35.38),
    },
    cardealer = {
        vector3(-32.48, -1115.46, 26.42),
    },
    mechanic = {
        vector3(-205.14, -1334.91, 34.33),
    },
    cafe = {
        vector3(-2191.13, -400.29, 16.7),
    },
    taxi = {
        vector3(387.28, -1601.34, 29.29),
    },
}

Config.GangMenus = {
    lostmc = {
        vector3(0, 0, 0),
    },
    ballas = {
        vector3(0, 0, 0),
    },
    vagos = {
        vector3(0, 0, 0),
    },
    cartel = {
        vector3(0, 0, 0),
    },
    families = {
        vector3(0, 0, 0),
    },
}
