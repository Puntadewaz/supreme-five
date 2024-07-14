local isLoggedIn = false
local isBleeding = 0
local advanceBleedTimer = 0
local blackoutTimer = 0

local onPainKiller = 0
local wasOnPainKillers = false

local onDrugs = 0
local wasOnDrugs = false

local WeaponClasses = {
    ['SMALL_CALIBER'] = 1,
    ['MEDIUM_CALIBER'] = 2,
    ['HIGH_CALIBER'] = 3,
    ['SHOTGUN'] = 4,
    ['CUTTING'] = 5,
    ['LIGHT_IMPACT'] = 6,
    ['HEAVY_IMPACT'] = 7,
    ['EXPLOSIVE'] = 8,
    ['FIRE'] = 9,
    ['SUFFOCATING'] = 10,
    ['OTHER'] = 11,
    ['WILDLIFE'] = 12,
    ['NOTHING'] = 13
}

local WoundStates = {
    'Irritated',
    'Fairly Painful',
    'Extremely Painful',
    'Unbearably Painful',
}

local BleedingStates = {
    'Minor Bleeding',
    'Significant Bleeding',
    'Major Bleeding',
    'Extreme Bleeding',
}

local MovementRate = {
    0.98,
    0.96,
    0.94,
    0.92,
}

local BodyParts = {
    ['HEAD'] = { label = 'Head', causeLimp = false, isDamaged = false, severity = 0 },
    ['NECK'] = { label = 'Neck', causeLimp = false, isDamaged = false, severity = 0 },
    ['SPINE'] = { label = 'Spine', causeLimp = true, isDamaged = false, severity = 0 },
    ['UPPER_BODY'] = { label = 'Upper Body', causeLimp = false, isDamaged = false, severity = 0 },
    ['LOWER_BODY'] = { label = 'Lower Body', causeLimp = true, isDamaged = false, severity = 0 },
    ['LARM'] = { label = 'Left Arm', causeLimp = false, isDamaged = false, severity = 0 },
    ['LHAND'] = { label = 'Left Hand', causeLimp = false, isDamaged = false, severity = 0 },
    ['LFINGER'] = { label = 'Left Hand Fingers', causeLimp = false, isDamaged = false, severity = 0 },
    ['LLEG'] = { label = 'Left Leg', causeLimp = true, isDamaged = false, severity = 0 },
    ['LFOOT'] = { label = 'Left Foot', causeLimp = true, isDamaged = false, severity = 0 },
    ['RARM'] = { label = 'Right Arm', causeLimp = false, isDamaged = false, severity = 0 },
    ['RHAND'] = { label = 'Right Hand', causeLimp = false, isDamaged = false, severity = 0 },
    ['RFINGER'] = { label = 'Right Hand Fingers', causeLimp = false, isDamaged = false, severity = 0 },
    ['RLEG'] = { label = 'Right Leg', causeLimp = true, isDamaged = false, severity = 0 },
    ['RFOOT'] = { label = 'Right Foot', causeLimp = true, isDamaged = false, severity = 0 },
}

local parts = {
    [0]     = 'NONE',
    [31085] = 'HEAD',
    [31086] = 'HEAD',
    [39317] = 'NECK',
    [57597] = 'SPINE',
    [23553] = 'SPINE',
    [24816] = 'SPINE',
    [24817] = 'SPINE',
    [24818] = 'SPINE',
    [10706] = 'UPPER_BODY',
    [64729] = 'UPPER_BODY',
    [11816] = 'LOWER_BODY',
    [45509] = 'LARM',
    [61163] = 'LARM',
    [18905] = 'LHAND',
    [4089] = 'LFINGER',
    [4090] = 'LFINGER',
    [4137] = 'LFINGER',
    [4138] = 'LFINGER',
    [4153] = 'LFINGER',
    [4154] = 'LFINGER',
    [4169] = 'LFINGER',
    [4170] = 'LFINGER',
    [4185] = 'LFINGER',
    [4186] = 'LFINGER',
    [26610] = 'LFINGER',
    [26611] = 'LFINGER',
    [26612] = 'LFINGER',
    [26613] = 'LFINGER',
    [26614] = 'LFINGER',
    [58271] = 'LLEG',
    [63931] = 'LLEG',
    [2108] = 'LFOOT',
    [14201] = 'LFOOT',
    [40269] = 'RARM',
    [28252] = 'RARM',
    [57005] = 'RHAND',
    [58866] = 'RFINGER',
    [58867] = 'RFINGER',
    [58868] = 'RFINGER',
    [58869] = 'RFINGER',
    [58870] = 'RFINGER',
    [64016] = 'RFINGER',
    [64017] = 'RFINGER',
    [64064] = 'RFINGER',
    [64065] = 'RFINGER',
    [64080] = 'RFINGER',
    [64081] = 'RFINGER',
    [64096] = 'RFINGER',
    [64097] = 'RFINGER',
    [64112] = 'RFINGER',
    [64113] = 'RFINGER',
    [36864] = 'RLEG',
    [51826] = 'RLEG',
    [20781] = 'RFOOT',
    [52301] = 'RFOOT',
}

local weapons = {
    --[[ Small Caliber ]]--
    [GetHashKey('WEAPON_PISTOL')] = WeaponClasses['SMALL_CALIBER'],
    [GetHashKey('WEAPON_COMBATPISTOL')] = WeaponClasses['SMALL_CALIBER'],
    [GetHashKey('WEAPON_APPISTOL')] = WeaponClasses['SMALL_CALIBER'],
    [GetHashKey('WEAPON_COMBATPDW')] = WeaponClasses['SMALL_CALIBER'],
    [GetHashKey('WEAPON_MACHINEPISTOL')] = WeaponClasses['SMALL_CALIBER'],
    [GetHashKey('WEAPON_MICROSMG')] = WeaponClasses['SMALL_CALIBER'],
    [GetHashKey('WEAPON_MINISMG')] = WeaponClasses['SMALL_CALIBER'],
    [GetHashKey('WEAPON_PISTOL_MK2')] = WeaponClasses['SMALL_CALIBER'],
    [GetHashKey('WEAPON_SNSPISTOL')] = WeaponClasses['SMALL_CALIBER'],
    [GetHashKey('WEAPON_SNSPISTOL_MK2')] = WeaponClasses['SMALL_CALIBER'],
    [GetHashKey('WEAPON_VINTAGEPISTOL')] = WeaponClasses['SMALL_CALIBER'],

    --[[ Medium Caliber ]]--
    [GetHashKey('WEAPON_ADVANCEDRIFLE')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_ASSAULTSMG')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_BULLPUPRIFLE')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_BULLPUPRIFLE_MK2')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_CARBINERIFLE')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_CARBINERIFLE_MK2')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_COMPACTRIFLE')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_DOUBLEACTION')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_GUSENBERG')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_HEAVYPISTOL')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_MARKSMANPISTOL')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_PISTOL50')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_REVOLVER')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_REVOLVER_MK2')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_SMG')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_SMG_MK2')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_SPECIALCARBINE')] = WeaponClasses['MEDIUM_CALIBER'],
    [GetHashKey('WEAPON_SPECIALCARBINE_MK2')] = WeaponClasses['MEDIUM_CALIBER'],

    --[[ High Caliber ]]--
    [GetHashKey('WEAPON_ASSAULTRIFLE')] = WeaponClasses['HIGH_CALIBER'],
    [GetHashKey('WEAPON_ASSAULTRIFLE_MK2')] = WeaponClasses['HIGH_CALIBER'],
    [GetHashKey('WEAPON_COMBATMG')] = WeaponClasses['HIGH_CALIBER'],
    [GetHashKey('WEAPON_COMBATMG_MK2')] = WeaponClasses['HIGH_CALIBER'],
    [GetHashKey('WEAPON_HEAVYSNIPER')] = WeaponClasses['HIGH_CALIBER'],
    [GetHashKey('WEAPON_HEAVYSNIPER_MK2')] = WeaponClasses['HIGH_CALIBER'],
    [GetHashKey('WEAPON_MARKSMANRIFLE')] = WeaponClasses['HIGH_CALIBER'],
    [GetHashKey('WEAPON_MARKSMANRIFLE_MK2')] = WeaponClasses['HIGH_CALIBER'],
    [GetHashKey('WEAPON_MG')] = WeaponClasses['HIGH_CALIBER'],
    [GetHashKey('WEAPON_MINIGUN')] = WeaponClasses['HIGH_CALIBER'],
    [GetHashKey('WEAPON_MUSKET')] = WeaponClasses['HIGH_CALIBER'],
    [GetHashKey('WEAPON_RAILGUN')] = WeaponClasses['HIGH_CALIBER'],

    --[[ Shotguns ]]--
    [GetHashKey('WEAPON_ASSAULTSHOTGUN')] = WeaponClasses['SHOTGUN'],
    [GetHashKey('WEAPON_BULLUPSHOTGUN')] = WeaponClasses['SHOTGUN'],
    [GetHashKey('WEAPON_DBSHOTGUN')] = WeaponClasses['SHOTGUN'],
    [GetHashKey('WEAPON_HEAVYSHOTGUN')] = WeaponClasses['SHOTGUN'],
    [GetHashKey('WEAPON_PUMPSHOTGUN')] = WeaponClasses['SHOTGUN'],
    [GetHashKey('WEAPON_PUMPSHOTGUN_MK2')] = WeaponClasses['SHOTGUN'],
    [GetHashKey('WEAPON_SAWNOFFSHOTGUN')] = WeaponClasses['SHOTGUN'],
    [GetHashKey('WEAPON_SWEEPERSHOTGUN')] = WeaponClasses['SHOTGUN'],

    --[[ Animals ]]--
    [4194021054] = WeaponClasses['WILDLIFE'], -- Animal
    [148160082] = WeaponClasses['WILDLIFE'], -- Cougar
    [1223143800] = WeaponClasses['WILDLIFE'], -- Barbed Wire
    
    --[[ Cutting Weapons ]]--
    [GetHashKey('WEAPON_BATTLEAXE')] = WeaponClasses['CUTTING'],
    [GetHashKey('WEAPON_BOTTLE')] = WeaponClasses['CUTTING'],
    [GetHashKey('WEAPON_DAGGER')] = WeaponClasses['CUTTING'],
    [GetHashKey('WEAPON_HATCHET')] = WeaponClasses['CUTTING'],
    [GetHashKey('WEAPON_KNIFE')] = WeaponClasses['CUTTING'],
    [GetHashKey('WEAPON_MACHETE')] = WeaponClasses['CUTTING'],
    [GetHashKey('WEAPON_SWITCHBLADE')] = WeaponClasses['CUTTING'],

    --[[ Light Impact ]]--
    [3794977420] = WeaponClasses['WILDLIFE'], -- Garbage Bag
    [2294779575] = WeaponClasses['WILDLIFE'], -- Briefcase
    [28811031] = WeaponClasses['WILDLIFE'], -- Briefcase 2
    [GetHashKey('WEAPON_BALL')] = WeaponClasses['LIGHT_IMPACT'],
    [GetHashKey('WEAPON_FLASHLIGHT')] = WeaponClasses['LIGHT_IMPACT'],
    [GetHashKey('WEAPON_KNUCKLE')] = WeaponClasses['LIGHT_IMPACT'],
    [GetHashKey('WEAPON_NIGHTSTICK')] = WeaponClasses['LIGHT_IMPACT'],
    [GetHashKey('WEAPON_SNOWBALL')] = WeaponClasses['LIGHT_IMPACT'],
    [GetHashKey('WEAPON_UNARMED')] = WeaponClasses['LIGHT_IMPACT'],
    [GetHashKey('WEAPON_PARACHUTE')] = WeaponClasses['LIGHT_IMPACT'],
    [GetHashKey('WEAPON_NIGHTVISION')] = WeaponClasses['LIGHT_IMPACT'],
    
    --[[ Heavy Impact ]]--
    [GetHashKey('WEAPON_BAT')] = WeaponClasses['HEAVY_IMPACT'],
    [GetHashKey('WEAPON_CROWBAR')] = WeaponClasses['HEAVY_IMPACT'],
    [GetHashKey('WEAPON_FIREEXTINGUISHER')] = WeaponClasses['HEAVY_IMPACT'],
    [GetHashKey('WEAPON_FIRWORK')] = WeaponClasses['HEAVY_IMPACT'],
    [GetHashKey('WEAPON_GOLFLCUB')] = WeaponClasses['HEAVY_IMPACT'],
    [GetHashKey('WEAPON_HAMMER')] = WeaponClasses['HEAVY_IMPACT'],
    [GetHashKey('WEAPON_PETROLCAN')] = WeaponClasses['HEAVY_IMPACT'],
    [GetHashKey('WEAPON_POOLCUE')] = WeaponClasses['HEAVY_IMPACT'],
    [GetHashKey('WEAPON_WRENCH')] = WeaponClasses['HEAVY_IMPACT'],
    
    --[[ Explosives ]]--
    [539292904] = WeaponClasses['EXPLOSIVE'], -- Explosion
    [GetHashKey('WEAPON_GRENADE')] = WeaponClasses['EXPLOSIVE'],
    [GetHashKey('WEAPON_COMPACTLAUNCHER')] = WeaponClasses['EXPLOSIVE'],
    [GetHashKey('WEAPON_HOMINGLAUNCHER')] = WeaponClasses['EXPLOSIVE'],
    [GetHashKey('WEAPON_PIPEBOMB')] = WeaponClasses['EXPLOSIVE'],
    [GetHashKey('WEAPON_PROXMINE')] = WeaponClasses['EXPLOSIVE'],
    [GetHashKey('WEAPON_RPG')] = WeaponClasses['EXPLOSIVE'],
    [GetHashKey('WEAPON_STICKYBOMB')] = WeaponClasses['EXPLOSIVE'],
    
    --[[ Other ]]--
    [3452007600] = WeaponClasses['OTHER'], -- Fall
    [3425972830] = WeaponClasses['OTHER'], -- Water Cannon
    [133987706] = WeaponClasses['OTHER'], -- Rammed
    [2741846334] = WeaponClasses['OTHER'], -- Ran Over
    [341774354] = WeaponClasses['OTHER'], -- Heli Crash
    [GetHashKey('WEAPON_STUNGUN')] = WeaponClasses['OTHER'],
    
    --[[ Fire ]]--
    [2461879995] = WeaponClasses['FIRE'], -- Electric Fence 
    [3750660587] = WeaponClasses['FIRE'], -- Fire
    [GetHashKey('WEAPON_MOLOTOV')] = WeaponClasses['FIRE'],
    [GetHashKey('WEAPON_FLARE')] = WeaponClasses['FIRE'],
    [GetHashKey('WEAPON_FLAREGUN')] = WeaponClasses['FIRE'],

    --[[ Suffocate ]]--
    [4284007675] = WeaponClasses['SUFFOCATING'], -- Drowning
    [1936677264] = WeaponClasses['SUFFOCATING'], -- Drowning Veh
    [910830060] = WeaponClasses['SUFFOCATING'], -- Exhaust
    [GetHashKey('WEAPON_BZGAS')] = WeaponClasses['SUFFOCATING'],
    [GetHashKey('WEAPON_SMOKEGRENADE')] = WeaponClasses['SUFFOCATING'],
}

local injured = {}
local legCount = 0
local armcount = 0
local headCount = 0

function IsInjuryCausingLimp()
    for k, v in pairs(BodyParts) do
        if v.causeLimp and v.isDamaged then
            return true
        end
    end

    return false
end

function IsInjuredOrBleeding()
    if isBleeding > 0 then
        return true
    else
        for k, v in pairs(BodyParts) do
            if v.isDamaged then
                return true
            end
        end
    end

    return false
end

function GetDamagingWeapon(ped)
    for k, v in pairs(weapons) do
        if HasPedBeenDamagedByWeapon(ped, k, 0) then
            return v
        end
    end

    return nil
end

function ProcessRunStuff(ped)
    if IsInjuryCausingLimp() and not (onPainKiller > 0)  then
        RequestAnimSet("move_m@injured")
        while not HasAnimSetLoaded("move_m@injured") do
            Citizen.Wait(0)
        end
        SetPedMovementClipset(ped, "move_m@injured", 1 )
        SetPlayerSprint(PlayerId(), false)

        local level = 0
        for k, v in pairs(injured) do
            if v.severity > level then
                level = v.severity
            end
        end

        SetPedMoveRateOverride(ped, MovementRate[level])

        if wasOnPainKillers then
            SetPedToRagdoll(PlayerPedId(), 1500, 2000, 3, true, true, false)
            wasOnPainKillers = false
            exports['mythic_notify']:DoCustomHudText('inform', 'You\'ve Realized Doing Drugs Does Not Fix All Your Problems', 5000)
        end
    else
        SetPedMoveRateOverride(ped, 1.0)
        ResetPedMovementClipset(ped, 0)
        if DecorGetInt(ped, 'player_thirst') > 25 or onPainKiller > 0 then
            SetPlayerSprint(PlayerId(), true)
        end

        if not wasOnPainKillers and (onPainKiller > 0) then wasOnPainKillers = true end

        if onPainKiller > 0 then
            onPainKiller = onPainKiller - 1
        end
    end
end

function ProcessDamage(ped)
    if not IsEntityDead(ped) or not (onDrugs > 0) then
        for k, v in pairs(injured) do
            if (v.part == 'LLEG' and v.severity > 1) or (v.part == 'RLEG' and v.severity > 1) or (v.part == 'LFOOT' and v.severity > 2) or (v.part == 'RFOOT' and v.severity > 2) then
                if legCount >= 15 then
                    if not IsPedRagdoll(ped) and IsPedOnFoot(ped) then
                        local chance = math.random(100)
                        if (IsPedRunning(ped) or IsPedSprinting(ped)) then
                            if chance <= 50 then
                                exports['mythic_notify']:DoCustomHudText('inform', 'You\'re Having A Hard Time Running', 5000)
                                ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.08) -- change this float to increase/decrease camera shake
                                SetPedToRagdollWithFall(PlayerPedId(), 1500, 2000, 1, GetEntityForwardVector(ped), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
                            end
                        else
                            if chance <= 15 then
                                exports['mythic_notify']:DoCustomHudText('inform', 'You\'re Having A Hard Using Your Legs', 5000)
                                ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.08) -- change this float to increase/decrease camera shake
                                SetPedToRagdollWithFall(PlayerPedId(), 1500, 2000, 1, GetEntityForwardVector(ped), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
                            end
                        end
                    end
                    legCount = 0
                else
                    legCount = legCount + 1
                end
            elseif (v.part == 'LARM' and v.severity > 1) or (v.part == 'LHAND' and v.severity > 1) or (v.part == 'LFINGER' and v.severity > 2) or (v.part == 'RARM' and v.severity > 1) or (v.part == 'RHAND' and v.severity > 1) or (v.part == 'RFINGER' and v.severity > 2) then
                if armcount >= 30 then
                    local chance = math.random(100)

                    armcount = 0
                else
                    armcount = armcount + 1
                end
            elseif (v.part == 'HEAD' and v.severity > 2) then
                if headCount >= 30 then
                    local chance = math.random(100)

                    if chance <= 15 then
                        exports['mythic_notify']:DoCustomHudText('inform', 'You Suddenly Black Out', 5000)
                        SetFlash(0, 0, 100, 10000, 100)
                        
                        DoScreenFadeOut(100)
                        while not IsScreenFadedOut() do
                            Citizen.Wait(0)
                        end

                        if not IsPedRagdoll(ped) and IsPedOnFoot(ped) and not IsPedSwimming(ped) then
                            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.08) -- change this float to increase/decrease camera shake
                            SetPedToRagdoll(ped, 5000, 1, 2)
                        end

                        Citizen.Wait(5000)
                        DoScreenFadeIn(250)
                    end
                    headCount = 0
                else
                    headCount = headCount + 1
                end
            end
        end

        if wasOnDrugs then
            SetPedToRagdoll(PlayerPedId(), 1500, 2000, 3, true, true, false)
            wasOnDrugs = false
            exports['mythic_notify']:DoCustomHudText('inform', 'You\'ve Realized Doing Drugs Does Not Fix All Your Problems', 5000)
        end
    else
        onDrugs = onDrugs - 1

        if not wasOnDrugs then
            wasOnDrugs = true
        end
    end
end

function CheckDamage(ped, bone, weapon)
    if weapon == nil then return end

    if parts[bone] ~= nil then
        if not BodyParts[parts[bone]].isDamaged then
            BodyParts[parts[bone]].isDamaged = true
            BodyParts[parts[bone]].severity = 1
            exports['mythic_notify']:DoHudText('inform', 'Your ' .. BodyParts[parts[bone]].label .. ' feels ' .. WoundStates[BodyParts[parts[bone]].severity])

            if weapon == WeaponClasses['SMALL_CALIBER'] or weapon == WeaponClasses['MEDIUM_CALIBER'] or weapon == WeaponClasses['CUTTING'] or weapon == WeaponClasses['WILDLIFE'] or weapon == WeaponClasses['OTHER'] or weapon == WeaponClasses['LIGHT_IMPACT'] then
                if isBleeding < 4 then
                    isBleeding = tonumber(isBleeding) + 1
                end
            elseif weapon == WeaponClasses['HIGH_CALIBER'] or weapon == WeaponClasses['HEAVY_IMPACT'] or weapon == WeaponClasses['SHOTGUN'] or weapon == WeaponClasses['EXPLOSIVE'] then
                if isBleeding < 3 then
                    isBleeding = tonumber(isBleeding) + 2
                elseif isBleeding < 4 then
                    isBleeding = tonumber(isBleeding) + 1
                end
            end

            table.insert(injured, {
                part = parts[bone],
                label = BodyParts[parts[bone]].label,
                severity = BodyParts[parts[bone]].severity
            })

            TriggerServerEvent('mythic_hospital:server:SyncInjuries', {
                limbs = BodyParts,
                isBleeding = tonumber(isBleeding)
            })
        else
            if weapon == WeaponClasses['SMALL_CALIBER'] or weapon == WeaponClasses['MEDIUM_CALIBER'] or weapon == WeaponClasses['CUTTING'] or weapon == WeaponClasses['WILDLIFE'] or weapon == WeaponClasses['OTHER'] or weapon == WeaponClasses['LIGHT_IMPACT'] then
                if isBleeding < 4 then
                    isBleeding = tonumber(isBleeding) + 1
                end
            elseif weapon == WeaponClasses['HIGH_CALIBER'] or weapon == WeaponClasses['HEAVY_IMPACT'] or weapon == WeaponClasses['SHOTGUN'] or weapon == WeaponClasses['EXPLOSIVE'] then
                if isBleeding < 3 then
                    isBleeding = tonumber(isBleeding) + 2
                elseif isBleeding < 4 then
                    isBleeding = tonumber(isBleeding) + 1
                end
            end

            if BodyParts[parts[bone]].severity < 4 then
                BodyParts[parts[bone]].severity = BodyParts[parts[bone]].severity + 1

                TriggerServerEvent('mythic_hospital:server:SyncInjuries', {
                    limbs = BodyParts,
                    isBleeding = tonumber(isBleeding)
                })

                exports['mythic_notify']:DoHudText('inform', 'Your ' .. BodyParts[parts[bone]].label .. ' feels ' .. WoundStates[BodyParts[parts[bone]].severity])

                for k, v in pairs(injured) do
                    if v.parts == parts[bone] then
                        v.severity = BodyParts[parts[bone]].severity
                    end
                end
            else

            end
        end
    else
        print('Bone Not In Index - Report This! - ' .. bone)
    end
end

RegisterNetEvent('mythic_hospital:client:SyncBleed')
AddEventHandler('mythic_hospital:client:SyncBleed', function(bleedStatus)
    isBleeding = tonumber(bleedStatus)
end)

RegisterNetEvent('mythic_hospital:client:FieldTreatLimbs')
AddEventHandler('mythic_hospital:client:FieldTreatLimbs', function()
    for k, v in pairs(BodyParts) do
        v.isDamaged = false
        v.severity = 1
    end

    for k, v in pairs(injured) do
        if v.parts == parts[bone] then
            v.severity = BodyParts[parts[bone]].severity
        end
    end
end)

RegisterNetEvent('mythic_hospital:client:ResetLimbs')
AddEventHandler('mythic_hospital:client:ResetLimbs', function()
    for k, v in pairs(BodyParts) do
        v.isDamaged = false
        v.severity = 0
    end

    injured = {}
end)

RegisterNetEvent('mythic_hospital:client:FieldTreatBleed')
AddEventHandler('mythic_hospital:client:FieldTreatBleed', function()
    if isBleeding > 1 then
        isBleeding = tonumber(isBleeding) - 1
    end
end)

RegisterNetEvent('mythic_hospital:client:ReduceBleed')
AddEventHandler('mythic_hospital:client:ReduceBleed', function()
    if isBleeding > 0 then
        isBleeding = tonumber(isBleeding) - 1
    end
end)

RegisterNetEvent('mythic_hospital:client:RemoveBleed')
AddEventHandler('mythic_hospital:client:RemoveBleed', function()
    isBleeding = 0
end)

RegisterNetEvent('mythic_hospital:client:UsePainKiller')
AddEventHandler('mythic_hospital:client:UsePainKiller', function(tier)
    if tier < 4 then
        onPainKiller = 90 * tier
    end

    exports['mythic_notify']:DoCustomHudText('inform', 'You feel the pain subside temporarily', 5000)
end)

RegisterNetEvent('mythic_hospital:client:UseAdrenaline')
AddEventHandler('mythic_hospital:client:UseAdrenaline', function(tier)
    if tier < 4 then
        onDrugs = 180 * tier
    end

    exports['mythic_notify']:DoCustomHudText('inform', 'You\'re Able To Ignore Your Body Failing', 5000)
end)  
    
Citizen.CreateThread(function()
	local player = PlayerPedId()
	while isLoggedIn do
		if not IsEntityDead(player) and not (#injured == 0) then
			if #injured > 0 then
				local str = ''
				if #injured > 1 and #injured < 3 then
					for k, v in pairs(injured) do
						str = str .. 'Your ' .. v.label .. ' feels ' .. WoundStates[v.severity]
						if k < #injured then
							str = str .. ' | '
						end
					end
				elseif #injured > 2 then
					str = 'You Feel Multiple Pains'
				else
					str = 'Your ' .. injured[1].label .. ' feels ' .. WoundStates[injured[1].severity]
				end
		
				exports['mythic_notify']:DoCustomHudText('inform', str, 15000)
			end

			if isBleeding > 0 then
				if blackoutTimer >= 10 then
					exports['mythic_notify']:DoCustomHudText('inform', 'You Suddenly Black Out', 5000)
					SetFlash(0, 0, 100, 7000, 100)
						
					DoScreenFadeOut(500)
					while not IsScreenFadedOut() do
						Citizen.Wait(0)
					end
			
					if not IsPedRagdoll(player) and IsPedOnFoot(player) and not IsPedSwimming(player) then
						ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.08) -- change this float to increase/decrease camera shake
						SetPedToRagdollWithFall(PlayerPedId(), 10000, 12000, 1, GetEntityForwardVector(player), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					end
			
					Citizen.Wait(5000)
					DoScreenFadeIn(500)
					blackoutTimer = 0
				end
			
				if isBleeding == 1 then
					SetFlash(0, 0, 100, 100, 100)
				elseif isBleeding == 2 then
					SetFlash(0, 0, 100, 250, 100)
				elseif isBleeding == 3 then
					SetFlash(0, 0, 100, 500, 100)
					--Function.Call(Hash.SET_FLASH, 0, 0, 100, 500, 100);
				elseif isBleeding == 4 then
					SetFlash(0, 0, 100, 500, 100)
					--Function.Call(Hash.SET_FLASH, 0, 0, 100, 500, 100);
				end
			
				exports['mythic_notify']:DoCustomHudText('inform', 'You Have ' .. BleedingStates[isBleeding], 25000)
			
				ApplyDamageToPed(player, tonumber(isBleeding) * 4, false)
				blackoutTimer = blackoutTimer + 1
				advanceBleedTimer = advanceBleedTimer + 1
			
				if advanceBleedTimer >= 10 then
					if isBleeding < 4 then
						isBleeding = tonumber(isBleeding) + 1
					end
					advanceBleedTimer = 0
				end
			end
		end

		Citizen.Wait(30000)
	end
end)

Citizen.CreateThread(function()
	local player = PlayerPedId()
	local lastBone = nil
	while isLoggedIn do
		local hit, bone = GetPedLastDamageBone(player)
		if hit and bone ~= lastBone and parts[bone] ~= 'NONE' then
			lastBone = bone
			CheckDamage(player, bone, GetDamagingWeapon(player))
		end
		Citizen.Wait(333)

		ProcessRunStuff(player)
		Citizen.Wait(333)

		ProcessDamage(player)
		Citizen.Wait(333)
	end
end)