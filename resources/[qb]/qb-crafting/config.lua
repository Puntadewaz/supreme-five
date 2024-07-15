Config = {
    EnableSkillCheck = false,
    ImageBasePath = "nui://qb-inventory/html/images/",
    item_bench = {
        object = `prop_tool_bench02`,
        xpType = 'craftingrep',
        recipes = {
            {
                item = 'lockpick',
                xpRequired = 0,
                xpGain = 1,
                requiredItems = {
                    { item = 'metalscrap', amount = 22 },
                    { item = 'plastic',    amount = 32 }
                }
            },
            -- {
            --     item = 'screwdriverset',
            --     xpRequired = 0,
            --     xpGain = 2,
            --     requiredItems = {
            --         { item = 'metalscrap', amount = 30 },
            --         { item = 'plastic',    amount = 42 }
            --     }
            -- },
            -- {
            --     item = 'electronickit',
            --     xpRequired = 0,
            --     xpGain = 3,
            --     requiredItems = {
            --         { item = 'metalscrap', amount = 30 },
            --         { item = 'plastic',    amount = 45 },
            --         { item = 'aluminum',   amount = 28 }
            --     }
            -- },
            -- {
            --     item = 'radioscanner',
            --     xpRequired = 0,
            --     xpGain = 4,
            --     requiredItems = {
            --         { item = 'electronickit', amount = 2 },
            --         { item = 'plastic',       amount = 52 },
            --         { item = 'steel',         amount = 40 }
            --     }
            -- },
            -- {
            --     item = 'gatecrack',
            --     xpRequired = 110,
            --     xpGain = 5,
            --     requiredItems = {
            --         { item = 'metalscrap',    amount = 10 },
            --         { item = 'plastic',       amount = 50 },
            --         { item = 'aluminum',      amount = 30 },
            --         { item = 'iron',          amount = 17 },
            --         { item = 'electronickit', amount = 2 }
            --     }
            -- },
            {
                item = 'handcuffs',
                xpRequired = 160,
                xpGain = 6,
                requiredItems = {
                    { item = 'metalscrap', amount = 36 },
                    { item = 'steel',      amount = 24 },
                    { item = 'aluminum',   amount = 28 }
                }
            },
            {
                item = 'repairkit',
                xpRequired = 200,
                xpGain = 7,
                requiredItems = {
                    { item = 'metalscrap', amount = 32 },
                    { item = 'steel',      amount = 43 },
                    { item = 'plastic',    amount = 61 }
                }
            },
            {
                item = 'pistol_ammo',
                xpRequired = 250,
                xpGain = 8,
                requiredItems = {
                    { item = 'metalscrap', amount = 50 },
                    { item = 'steel',      amount = 37 },
                    { item = 'copper',     amount = 26 }
                }
            },
            -- {
            --     item = 'ironoxide',
            --     xpRequired = 300,
            --     xpGain = 9,
            --     requiredItems = {
            --         { item = 'iron',  amount = 60 },
            --         { item = 'glass', amount = 30 }
            --     }
            -- },
            -- {
            --     item = 'aluminumoxide',
            --     xpRequired = 300,
            --     xpGain = 10,
            --     requiredItems = {
            --         { item = 'aluminum', amount = 60 },
            --         { item = 'glass',    amount = 30 }
            --     }
            -- },
            {
                item = 'armor',
                xpRequired = 350,
                xpGain = 11,
                requiredItems = {
                    { item = 'iron',     amount = 33 },
                    { item = 'steel',    amount = 44 },
                    { item = 'plastic',  amount = 55 },
                    { item = 'aluminum', amount = 22 }
                }
            },
            -- {
            --     item = 'drill',
            --     xpRequired = 1750,
            --     xpGain = 12,
            --     requiredItems = {
            --         { item = 'iron',             amount = 50 },
            --         { item = 'steel',            amount = 50 },
            --         { item = 'screwdriverset',   amount = 3 },
            --         { item = 'advancedlockpick', amount = 2 }
            --     }
            -- },
        }
    },
    item_bench = {
        object = `prop_kitch_pot_fry`,
        xpType = 'craftingrep',
        recipes = {
            {
                item = 'grilledchicken',
                xpRequired = 0,
                xpGain = 0,
                requiredItems = {
                    { item = 'chicken', amount = 1 },
                    { item = 'salt',    amount = 2 },
                    { item = 'lemon',    amount = 1 },
                }
            },
            {
                item = 'grilledfish',
                xpRequired = 0,
                xpGain = 0,
                requiredItems = {
                    { item = 'fish', amount = 1 },
                    { item = 'salt',    amount = 2 },
                    { item = 'kecap',    amount = 1 },
                    { item = 'lemon',    amount = 1 },
                }
            },
            {
                item = 'seafoodsoup',
                xpRequired = 0,
                xpGain = 0,
                requiredItems = {
                    { item = 'fish', amount = 1 },
                    { item = 'udang', amount = 5 },
                    { item = 'salt',    amount = 2 },
                    { item = 'sugar',    amount = 1 },
                }
            },
            {
                item = 'chickensoup',
                xpRequired = 0,
                xpGain = 0,
                requiredItems = {
                    { item = 'chicken', amount = 2 },
                    { item = 'salt',    amount = 2 },
                    { item = 'sugar',    amount = 1 },
                }
            },
            {
                item = 'lemontea',
                xpRequired = 0,
                xpGain = 0,
                requiredItems = {
                    { item = 'lemon', amount = 1 },
                    { item = 'tea',    amount = 2 },
                    { item = 'sugar',    amount = 1 },
                }
            },
            {
                item = 'milktea',
                xpRequired = 0,
                xpGain = 0,
                requiredItems = {
                    { item = 'milk', amount = 1 },
                    { item = 'tea',    amount = 2 },
                    { item = 'sugar',    amount = 1 },
                }
            },
        }
    },
    attachment_bench = {
        object = `prop_tool_bench02_ld`,
        xpType = 'attachmentcraftingrep',
        recipes = {
            {
                item = 'clip_attachment',
                xpRequired = 0,
                xpGain = 10,
                requiredItems = {
                    { item = 'metalscrap', amount = 140 },
                    { item = 'steel',      amount = 250 },
                    { item = 'rubber',     amount = 60 }
                }
            },
            {
                item = 'suppressor_attachment',
                xpRequired = 0,
                xpGain = 10,
                requiredItems = {
                    { item = 'metalscrap', amount = 165 },
                    { item = 'steel',      amount = 285 },
                    { item = 'rubber',     amount = 75 }
                }
            },
            {
                item = 'drum_attachment',
                xpRequired = 0,
                xpGain = 10,
                requiredItems = {
                    { item = 'metalscrap', amount = 230 },
                    { item = 'steel',      amount = 365 },
                    { item = 'rubber',     amount = 130 }
                }
            },
            {
                item = 'smallscope_attachment',
                xpRequired = 0,
                xpGain = 10,
                requiredItems = {
                    { item = 'metalscrap', amount = 255 },
                    { item = 'steel',      amount = 390 },
                    { item = 'rubber',     amount = 145 }
                }
            },
        }
    }
}
