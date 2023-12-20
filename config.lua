Config = {}

Config.ToggleKillfeed = {
    enable = true,
    startHide = true,
    commandName = 'killfeed'
}

Config.time = 5000 -- in ms
Config.maxLines = 5
Config.Radius = {
    enable = true,
    Radius = 50.0
}

Config.showKillDistance = true

Config.NPCs = {
    enable = true,
    Label = "[NPC]",
    Names = {
        Male = {
            "Ahmed", "Mohammed", "Ali", "Omar", "Hassan",
            "Khaled", "Youssef", "Amir", "Nasser", "Sami",
            "Hamza", "Tariq", "Adel", "Karim", "Rami",
            "Fadi", "Bilal", "Zain", "Sultan", "Ziad",
            "Jad", "Elias", "Oliver", "Liam", "Ethan",
            "Aiden", "Noah", "Mason", "Caden", "Jackson",
            "Lucas", "Avery", "Jayden", "Logan", "Carter",
            "Muhammad", "Adam", "Daniel", "Ryan", "David",
            "Nathan", "Tyler", "Michael", "Christopher", "Matthew",
            "Benjamin", "Joseph", "Samuel", "Alexander", "William",
            "Jonathan", "Nicholas", "John", "Elijah", "Daniel"
        },
        Female = {
            "Aisha", "Fatima", "Layla", "Zahra", "Sara",
            "Leila", "Noura", "Yara", "Jana", "Mia",
            "Lina", "Maya", "Hana", "Amira", "Farida",
            "Amina", "Dana", "Rana", "Lamia", "Dalal",
            "Emma", "Sophia", "Olivia", "Ava", "Isabella",
            "Mia", "Amelia", "Harper", "Evelyn", "Abigail",
            "Emily", "Elizabeth", "Sofia", "Ella", "Madison",
            "Scarlett", "Grace", "Chloe", "Lily", "Aria",
            "Aubrey", "Zoe", "Hannah", "Nora", "Lillian",
            "Addison", "Eleanor", "Natalie", "Layla", "Lucy"
        }
    }


}

Config.Animals = {
    enable = true,
    Label = "[Animal]"
}

Config.Weapons = {
    -- Melees
    [GetHashKey("WEAPON_DAGGER")] = "WEAPON_DAGGER",
    [GetHashKey("WEAPON_BAT")] = "WEAPON_BAT",
    [GetHashKey("WEAPON_BOTTLE")] = "WEAPON_BOTTLE",
    [GetHashKey("WEAPON_CROWBAR")] = "WEAPON_CROWBAR",
    [GetHashKey("WEAPON_UNARMED")] = "WEAPON_UNARMED",
    [GetHashKey("WEAPON_FLASHLIGHT")] = "WEAPON_FLASHLIGHT",
    [GetHashKey("WEAPON_GOLFCLUB")] = "WEAPON_GOLFCLUB",
    [GetHashKey("WEAPON_HAMMER")] = "WEAPON_HAMMER",
    [GetHashKey("WEAPON_HATCHET")] = "WEAPON_HATCHET",
    [GetHashKey("WEAPON_KNUCKLE")] = "WEAPON_KNUCKLE",
    [GetHashKey("WEAPON_KNIFE")] = "WEAPON_KNIFE",
    [GetHashKey("WEAPON_MACHETE")] = "WEAPON_MACHETE",
    [GetHashKey("WEAPON_SWITCHBLADE")] = "WEAPON_SWITCHBLADE",
    [GetHashKey("WEAPON_NIGHTSTICK")] = "WEAPON_NIGHTSTICK",
    [GetHashKey("WEAPON_WRENCH")] = "WEAPON_WRENCH",
    [GetHashKey("WEAPON_BATTLEAXE")] = "WEAPON_BATTLEAXE",
    [GetHashKey("WEAPON_POOLCUE")] = "WEAPON_POOLCUE",
    [GetHashKey("WEAPON_STONE_HATCHET")] = "WEAPON_STONE_HATCHET",
    [GetHashKey("WEAPON_CANDYCANE")] = "WEAPON_CANDYCANE",

    -- Pistols
    [GetHashKey("WEAPON_PISTOL")] = "WEAPON_PISTOL",
    [GetHashKey("WEAPON_PISTOL_MK2")] = "WEAPON_PISTOL_MK2",
    [GetHashKey("WEAPON_COMBATPISTOL")] = "WEAPON_COMBATPISTOL",
    [GetHashKey("WEAPON_APPISTOL")] = "WEAPON_APPISTOL",
    [GetHashKey("WEAPON_STUNGUN")] = "WEAPON_STUNGUN",
    [GetHashKey("WEAPON_PISTOL50")] = "WEAPON_PISTOL50",
    [GetHashKey("WEAPON_SNSPISTOL")] = "WEAPON_SNSPISTOL",
    [GetHashKey("WEAPON_SNSPISTOL_MK2")] = "WEAPON_SNSPISTOL_MK2",
    [GetHashKey("WEAPON_HEAVYPISTOL")] = "WEAPON_HEAVYPISTOL",
    [GetHashKey("WEAPON_VINTAGEPISTOL")] = "WEAPON_VINTAGEPISTOL",
    [GetHashKey("WEAPON_FLAREGUN")] = "WEAPON_FLAREGUN",
    [GetHashKey("WEAPON_MARKSMANPISTOL")] = "WEAPON_MARKSMANPISTOL",
    [GetHashKey("WEAPON_REVOLVER")] = "WEAPON_REVOLVER",
    [GetHashKey("WEAPON_REVOLVER_MK2")] = "WEAPON_REVOLVER_MK2",
    [GetHashKey("WEAPON_DOUBLEACTION")] = "WEAPON_DOUBLEACTION",
    [GetHashKey("WEAPON_RAYPISTOL")] = "WEAPON_RAYPISTOL",
    [GetHashKey("WEAPON_CERAMICPISTOL")] = "WEAPON_CERAMICPISTOL",
    [GetHashKey("WEAPON_NAVYREVOLVER")] = "WEAPON_NAVYREVOLVER",
    [GetHashKey("WEAPON_GADGETPISTOL")] = "WEAPON_GADGETPISTOL",
    [GetHashKey("WEAPON_STUNGUN_MP")] = "WEAPON_STUNGUN_MP",
    [GetHashKey("WEAPON_PISTOLXM3")] = "WEAPON_PISTOLXM3",

    -- SMG
    [GetHashKey("WEAPON_MICROSMG")] = "WEAPON_MICROSMG",
    [GetHashKey("WEAPON_SMG")] = "WEAPON_SMG",
    [GetHashKey("WEAPON_SMG_MK2")] = "WEAPON_SMG_MK2",
    [GetHashKey("WEAPON_ASSAULTSMG")] = "WEAPON_ASSAULTSMG",
    [GetHashKey("WEAPON_COMBATPDW")] = "WEAPON_COMBATPDW",
    [GetHashKey("WEAPON_MACHINEPISTOL")] = "WEAPON_MACHINEPISTOL",
    [GetHashKey("WEAPON_MINISMG")] = "WEAPON_MINISMG",
    [GetHashKey("WEAPON_RAYCARBINE")] = "WEAPON_RAYCARBINE",
    [GetHashKey("WEAPON_TEPISTOL")] = "WEAPON_TEPISTOL",

    -- Shotguns
    [GetHashKey("WEAPON_PUMPSHOTGUN")] = "WEAPON_PUMPSHOTGUN",
    [GetHashKey("WEAPON_PUMPSHOTGUN_MK2")] = "WEAPON_PUMPSHOTGUN_MK2",
    [GetHashKey("WEAPON_SAWNOFFSHOTGUN")] = "WEAPON_SAWNOFFSHOTGUN",
    [GetHashKey("WEAPON_ASSAULTSHOTGUN")] = "WEAPON_ASSAULTSHOTGUN",
    [GetHashKey("WEAPON_BULLPUPSHOTGUN")] = "WEAPON_BULLPUPSHOTGUN",
    [GetHashKey("WEAPON_MUSKET")] = "WEAPON_MUSKET",
    [GetHashKey("WEAPON_HEAVYSHOTGUN")] = "WEAPON_HEAVYSHOTGUN",
    [GetHashKey("WEAPON_DBSHOTGUN")] = "WEAPON_DBSHOTGUN",
    [GetHashKey("WEAPON_AUTOSHOTGUN")] = "WEAPON_AUTOSHOTGUN",
    [GetHashKey("WEAPON_COMBATSHOTGUN")] = "WEAPON_COMBATSHOTGUN",

    -- Assault Rifles
    [GetHashKey("WEAPON_ASSAULTRIFLE")] = "WEAPON_ASSAULTRIFLE",
    [GetHashKey("WEAPON_ASSAULTRIFLE_MK2")] = "WEAPON_ASSAULTRIFLE_MK2",
    [GetHashKey("WEAPON_CARBINERIFLE")] = "WEAPON_CARBINERIFLE",
    [GetHashKey("WEAPON_CARBINERIFLE_MK2")] = "WEAPON_CARBINERIFLE_MK2",
    [GetHashKey("WEAPON_ADVANCEDRIFLE")] = "WEAPON_ADVANCEDRIFLE",
    [GetHashKey("WEAPON_SPECIALCARBINE")] = "WEAPON_SPECIALCARBINE",
    [GetHashKey("WEAPON_SPECIALCARBINE_MK2")] = "WEAPON_SPECIALCARBINE_MK2",
    [GetHashKey("WEAPON_BULLPUPRIFLE")] = "WEAPON_BULLPUPRIFLE",
    [GetHashKey("WEAPON_BULLPUPRIFLE_MK2")] = "WEAPON_BULLPUPRIFLE_MK2",
    [GetHashKey("WEAPON_COMPACTRIFLE")] = "WEAPON_COMPACTRIFLE",
    [GetHashKey("WEAPON_MILITARYRIFLE")] = "WEAPON_MILITARYRIFLE",
    [GetHashKey("WEAPON_HEAVYRIFLE")] = "WEAPON_HEAVYRIFLE",
    [GetHashKey("WEAPON_TACTICALRIFLE")] = "WEAPON_TACTICALRIFLE",

    -- Light Machine Guns
    [GetHashKey("WEAPON_MG")] = "WEAPON_MG",
    [GetHashKey("WEAPON_COMBATMG")] = "WEAPON_COMBATMG",
    [GetHashKey("WEAPON_COMBATMG_MK2")] = "WEAPON_COMBATMG_MK2",
    [GetHashKey("WEAPON_GUSENBERG")] = "WEAPON_GUSENBERG",

    -- Sniper Rifles
    [GetHashKey("WEAPON_SNIPERRIFLE")] = "WEAPON_SNIPERRIFLE",
    [GetHashKey("WEAPON_HEAVYSNIPER")] = "WEAPON_HEAVYSNIPER",
    [GetHashKey("WEAPON_HEAVYSNIPER_MK2")] = "WEAPON_HEAVYSNIPER_MK2",
    [GetHashKey("WEAPON_MARKSMANRIFLE")] = "WEAPON_MARKSMANRIFLE",
    [GetHashKey("WEAPON_MARKSMANRIFLE_MK2")] = "WEAPON_MARKSMANRIFLE_MK2",
    [GetHashKey("WEAPON_PRECISIONRIFLE")] = "WEAPON_PRECISIONRIFLE",

    -- Heavy Weapons
    [GetHashKey("WEAPON_RPG")] = "WEAPON_RPG",
    [GetHashKey("WEAPON_GRENADELAUNCHER")] = "WEAPON_GRENADELAUNCHER",
    [GetHashKey("WEAPON_GRENADELAUNCHER_SMOKE")] = "WEAPON_GRENADELAUNCHER_SMOKE",
    [GetHashKey("WEAPON_MINIGUN")] = "WEAPON_MINIGUN",
    [GetHashKey("WEAPON_FIREWORK")] = "WEAPON_FIREWORK",
    [GetHashKey("WEAPON_RAILGUN")] = "WEAPON_RAILGUN",
    [GetHashKey("WEAPON_HOMINGLAUNCHER")] = "WEAPON_HOMINGLAUNCHER",
    [GetHashKey("WEAPON_COMPACTLAUNCHER")] = "WEAPON_COMPACTLAUNCHER",
    [GetHashKey("WEAPON_RAYMINIGUN")] = "WEAPON_RAYMINIGUN",
    [GetHashKey("WEAPON_EMPLAUNCHER")] = "WEAPON_EMPLAUNCHER",
    [GetHashKey("WEAPON_RAILGUNXM3")] = "WEAPON_RAILGUNXM3",

    -- Throwables
    [GetHashKey("WEAPON_GRENADE")] = "WEAPON_GRENADE",
    [GetHashKey("WEAPON_BZGAS")] = "WEAPON_BZGAS",
    [GetHashKey("WEAPON_MOLOTOV")] = "WEAPON_MOLOTOV",
    [GetHashKey("WEAPON_STICKYBOMB")] = "WEAPON_STICKYBOMB",
    [GetHashKey("WEAPON_PROXMINE")] = "WEAPON_PROXMINE",
    [GetHashKey("WEAPON_SNOWBALL")] = "WEAPON_SNOWBALL",
    [GetHashKey("WEAPON_PIPEBOMB")] = "WEAPON_PIPEBOMB",
    [GetHashKey("WEAPON_BALL")] = "WEAPON_BALL",
    [GetHashKey("WEAPON_SMOKEGRENADE")] = "WEAPON_SMOKEGRENADE",
    [GetHashKey("WEAPON_FLARE")] = "WEAPON_FLARE",
    [GetHashKey("WEAPON_ACIDPACKAGE")] = "WEAPON_ACIDPACKAGE",

    -- Miscellaneous
    [GetHashKey("WEAPON_PETROLCAN")] = "WEAPON_PETROLCAN",
    [GetHashKey("GADGET_PARACHUTE")] = "GADGET_PARACHUTE",
    [GetHashKey("WEAPON_FIREEXTINGUISHER")] = "WEAPON_FIREEXTINGUISHER",
    [GetHashKey("WEAPON_HAZARDCAN")] = "WEAPON_HAZARDCAN",
    [GetHashKey("WEAPON_FERTILIZERCAN")] = "WEAPON_FERTILIZERCAN",

    -- Others
    [0] = "unknown",
    [GetHashKey('WEAPON_ANIMAL')] = "animal",
    [GetHashKey('WEAPON_COUGAR')] = "cougar",
    [GetHashKey('WEAPON_EXPLOSION')] = "explosion",
    [GetHashKey('WEAPON_FALL')] = "fall",
    [GetHashKey('WEAPON_FIRE')] = "fire",
    [GetHashKey('WEAPON_RUN_OVER_BY_CAR')] = "vehicle",
    [GetHashKey('WEAPON_RAMMED_BY_CAR')] = "rammed",
    [GetHashKey('WEAPON_ELECTRIC_FENCE')] = "electric",
    [GetHashKey('WEAPON_DROWNING')] = "drowning",
}
