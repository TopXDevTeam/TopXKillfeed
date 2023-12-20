local hideKillFeed = Config.ToggleKillfeed.startHide;
local ArgsIndexes = {
    Fatal = 6,
    Weapon = 7
}

Citizen.CreateThread(function()
    Citizen.Wait(2500)
    if GetGameBuildNumber() < 2060 then
        ArgsIndexes.Fatal = 4
        ArgsIndexes.Weapon = 5
    end
end)

local function showKillFeed(Killer, Victim, Weapon, Headshot, Distance, VictimIsPlayer, KillerIsPlayer)
    if not hideKillFeed or not Config.ToggleKillfeed.enable then
        SendNUIMessage({
            type = 'showKillFeed',
            Killer = Killer,
            Victim = Victim,
            Weapon = Weapon,
            Headshot = Headshot,
            Distance = Distance,
            VictimIsPlayer = VictimIsPlayer,
            KillerIsPlayer = KillerIsPlayer,

            Killfeed = {
                time = Config.time,
                maxLines = Config.maxLines,
                Distance = Config.showKillDistance
            }
        })
    end
end

local function GetPedName(ped)
    local pedType = GetPedType(ped)
    if Config.Animals.enable and pedType == 28 then
        return Config.Animals.Label
    else
        if IsPedAPlayer(ped) then
            return GetPlayerName(NetworkGetPlayerIndexFromPed(ped))
        else
            if IsPedMale(ped) then
                if Config.NPCs.enable then
                    return Config.NPCs.Label .. " " ..
                        Config.NPCs.Names.Male[math.random(1, #Config.NPCs.Names.Male)] ..
                        " " .. Config.NPCs.Names.Male[math.random(1, #Config.NPCs.Names.Male)]
                end
            else
                if Config.NPCs.enable then
                    return Config.NPCs.Label .. " " ..
                        Config.NPCs.Names.Female[math.random(1, #Config.NPCs.Names.Female)] ..
                        " " .. Config.NPCs.Names.Male[math.random(1, #Config.NPCs.Names.Male)]
                end
            end
        end
    end
end

local function GetWeaponName(weaponHash)
    local weaponName = Config.Weapons[weaponHash]
    return weaponName or "unknown"
end

RegisterCommand(Config.ToggleKillfeed.commandName, function()
    if Config.ToggleKillfeed.enable then
        hideKillFeed = not hideKillFeed
    else
        hideKillFeed = false
    end
end, false)

RegisterNetEvent("TopXKillfeed:client:showKillFeed")
AddEventHandler('TopXKillfeed:client:showKillFeed',
    function(Killer, Victim, Weapon, Headshot, Distance, VictimIsPlayer, KillerIsPlayer)
        showKillFeed(Killer, Victim, Weapon, Headshot, Distance, VictimIsPlayer, KillerIsPlayer)
    end)

AddEventHandler('gameEventTriggered', function(event, args)
    if event == "CEventNetworkEntityDamage" then
        local victim = args[1]
        local killer = args[2]
        local isFatal = args[ArgsIndexes.Fatal]
        local weaponHash = args[ArgsIndexes.Weapon]
        local headshot = false;

        local found, bone = GetPedLastDamageBone(victim)
        if found and (bone == 31086 or bone == 39317) then
            headshot = true
        end

        local victimName = GetPedName(victim)
        local killerName = GetPedName(killer)
        local weaponName = GetWeaponName(weaponHash)

        if victimName == "**Invalid**" or killerName == "**Invalid**" then return end

        if not IsEntityAPed(victim) then return end

        if isFatal ~= 0 then
            local victimCoords = GetEntityCoords(victim)
            local killerCoords = GetEntityCoords(killer)

            local killDistance = GetDistanceBetweenCoords(victimCoords, killerCoords, true)

            if Config.Radius.enable then
                local playerPed = GetPlayerPed(-1)
                local distance = GetDistanceBetweenCoords(GetEntityCoords(playerPed), victimCoords, true)

                if distance <= Config.Radius.Radius then
                    TriggerEvent("TopXKillfeed:client:showKillFeed", killerName, victimName, weaponName, headshot,
                        math.floor(killDistance), GetPlayerPed(-1) == victim,
                        GetPlayerPed(-1) == killer, victimCoords
                    )
                end
            else
                TriggerEvent("TopXKillfeed:client:showKillFeed", killerName, victimName, weaponName, headshot,
                    math.floor(killDistance), GetPlayerPed(-1) == victim,
                    GetPlayerPed(-1) == killer, victimCoords
                )
            end
        end
    end
end)
