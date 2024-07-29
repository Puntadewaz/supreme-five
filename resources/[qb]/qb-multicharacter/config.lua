Config = {}
Config.Interior = vector3(-1038.03, -2737.61, 20.17) -- Interior to load where characters are previewed
Config.DefaultSpawn = vector3(-1038.03, -2737.61, 20.17) -- Default spawn coords if you have start apartments disabled
Config.PedCoords = vector4(-1038.03, -2737.61, 20.17, 329.85) -- Create preview ped at these coordinates
Config.HiddenCoords = vector4(-325.86, -1044.7, 76.89, 62.92) -- Hides your actual ped while you are in selection
Config.CamCoords = vector4(-1036.12, -2735.2, 20.17, 144.7) -- Camera coordinates for character preview screen
Config.EnableDeleteButton = false -- Define if the player can delete the character or not
Config.customNationality = false -- Defines if Nationality input is custom of blocked to the list of Countries
Config.SkipSelection = false -- Skip the spawn selection and spawns the player at the last location

Config.DefaultNumberOfCharacters = 1 -- Define maximum amount of default characters (maximum 5 characters defined by default)
Config.PlayersNumberOfCharacters = { -- Define maximum amount of player characters by rockstar license (you can find this license in your server's database in the player table)
    { license = "license:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx", numberOfChars = 1 },
}