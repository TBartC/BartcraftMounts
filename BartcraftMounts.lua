-- BartcraftMounts.lua
-- v0.9-dev
-- TBC 2.4.3 compatible. No DBC edits.

BartcraftMountsDB = BartcraftMountsDB or {}

local BARTCRAFT_MOUNTS = {
    {458, "Deprecated Horse Summoning (Mount)", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {459, "Deprecated Wolf Summoning (Mount)", "Interface\\Icons\\Ability_Mount_BlackDireWolf"},
    {458, "Brown Horse Summoning", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {468, "Deptecated White Stallion Summoning (Mount)", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {471, "Deprecated Palomino Summoning (Mount)", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {472, "Deprecated Pinto Summoning (Mount)", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {578, "Horn of the Black Wolf", "Interface\\Icons\\Ability_Mount_BlackDireWolf"},
    {581, "Deprecated Summon Winter Wolf (Mount)", "Interface\\Icons\\Ability_Mount_BlackDireWolf"},
    {580, "Deprecated Summon Redwolf (Mount)", "Interface\\Icons\\Ability_Mount_BlackDireWolf"},
    {579, "Deprecated Summon Brown Wolf (Mount)", "Interface\\Icons\\Ability_Mount_BlackDireWolf"},
    {580, "Horn of the Timber Wolf", "Interface\\Icons\\Ability_Mount_BlackDireWolf"},
    {581, "Horn of the Winter Wolf", "Interface\\Icons\\Ability_Mount_BlackDireWolf"},
    {459, "Horn of the Gray Wolf", "Interface\\Icons\\Ability_Mount_BlackDireWolf"},
    {470, "Black Stallion Bridle", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {471, "Palomino", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {472, "Pinto Bridle", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {468, "White Stallion", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {6648, "Chestnut Mare Bridle", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {458, "Brown Horse Bridle", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {579, "Horn of the Red Wolf", "Interface\\Icons\\Ability_Mount_BlackDireWolf"},
    {6653, "Horn of the Dire Wolf", "Interface\\Icons\\Ability_Mount_BlackDireWolf"},
    {6654, "Horn of the Brown Wolf", "Interface\\Icons\\Ability_Mount_BlackDireWolf"},
    {6777, "Gray Ram", "Interface\\Icons\\Ability_Mount_MountainRam"},
    {6899, "Brown Ram", "Interface\\Icons\\Ability_Mount_MountainRam"},
    {6898, "White Ram", "Interface\\Icons\\Ability_Mount_MountainRam"},
    {6896, "Harness: Black Ram", "Interface\\Icons\\Ability_Mount_MountainRam"},
    {6897, "Harness: Blue Ram", "Interface\\Icons\\Ability_Mount_MountainRam"},
    {10873, "Red Mechanostrider", "Interface\\Icons\\Ability_Mount_MechaStrider"},
    {8980, "Horn of the Skeletal Mount", "Interface\\Icons\\Ability_Mount_Undeadhorse"},
    {16084, "Whistle of the Mottled Red Raptor", "Interface\\Icons\\Ability_Mount_Raptor"},
    {8395, "Whistle of the Emerald Raptor", "Interface\\Icons\\Ability_Mount_Raptor"},
    {10795, "Old Whistle of the Ivory Raptor", "Interface\\Icons\\Ability_Mount_Raptor"},
    {10798, "Old Whistle of the Obsidian Raptor", "Interface\\Icons\\Ability_Mount_Raptor"},
    {10796, "Whistle of the Turquoise Raptor", "Interface\\Icons\\Ability_Mount_Raptor"},
    {10799, "Whistle of the Violet Raptor", "Interface\\Icons\\Ability_Mount_Raptor"},
    {10969, "Blue Mechanostrider", "Interface\\Icons\\Ability_Mount_MechaStrider"},
    {10787, "Reins of the Night saber", "Interface\\Icons\\Ability_Mount_BlackPanther"},
    {10792, "Reins of the Spotted Nightsaber", "Interface\\Icons\\Ability_Mount_BlackPanther"},
    {10793, "Reins of the Striped Nightsaber", "Interface\\Icons\\Ability_Mount_BlackPanther"},
    {10790, "Reins of the Bengal Tiger", "Interface\\Icons\\Ability_Mount_JungleTiger"},
    {8394, "Reins of the Striped Frostsaber", "Interface\\Icons\\Ability_Mount_WhiteTiger"},
    {10789, "Reins of the Spotted Frostsaber", "Interface\\Icons\\Ability_Mount_WhiteTiger"},
    {10788, "Reins of the Leopard", "Interface\\Icons\\Ability_Mount_JungleTiger"},
    {16056, "Reins of the Frostsaber", "Interface\\Icons\\Ability_Mount_WhiteTiger"},
    {16055, "Reins of the Nightsaber", "Interface\\Icons\\Ability_Mount_BlackPanther"},
    {16058, "Reins of the Primal Leopard", "Interface\\Icons\\Ability_Mount_JungleTiger"},
    {16059, "Reins of the Tawny Sabercat", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {16060, "Reins of the Golden Sabercat", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {16080, "Horn of the Red Wolf", "Interface\\Icons\\Ability_Mount_BlackDireWolf"},
    {16081, "Horn of the Arctic Wolf", "Interface\\Icons\\Ability_Mount_BlackDireWolf"},
    {16083, "White Stallion Bridle", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {16082, "Palomino Bridle", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {17229, "Reins of the Winterspring Frostsaber", "Interface\\Icons\\Ability_Mount_WhiteTiger"},
    {17450, "Whistle of the Ivory Raptor", "Interface\\Icons\\Ability_Mount_Raptor"},
    {17453, "Green Mechanostrider", "Interface\\Icons\\Ability_Mount_MechaStrider"},
    {17454, "Unpainted Mechanostrider", "Interface\\Icons\\Ability_Mount_MechaStrider"},
    {17455, "Purple Mechanostrider", "Interface\\Icons\\Ability_Mount_MechaStrider"},
    {17456, "Red & Blue Mechanostrider", "Interface\\Icons\\Ability_Mount_MechaStrider"},
    {17458, "Fluorescent Green Mechanostrider", "Interface\\Icons\\Ability_Mount_MechaStrider"},
    {15779, "White Mechanostrider Mod A", "Interface\\Icons\\Ability_Mount_MechaStrider"},
    {17459, "Icy Blue Mechanostrider Mod A", "Interface\\Icons\\Ability_Mount_MechaStrider"},
    {17461, "Black Ram", "Interface\\Icons\\Ability_Mount_MountainRam"},
    {17460, "Frost Ram", "Interface\\Icons\\Ability_Mount_MountainRam"},
    {17462, "Red Skeletal Horse", "Interface\\Icons\\Ability_Mount_Undeadhorse"},
    {17463, "Blue Skeletal Horse", "Interface\\Icons\\Ability_Mount_Undeadhorse"},
    {17464, "Brown Skeletal Horse", "Interface\\Icons\\Ability_Mount_Undeadhorse"},
    {17465, "Green Skeletal Warhorse", "Interface\\Icons\\Ability_Mount_Undeadhorse"},
    {17481, "Deathcharger's Reins", "Interface\\Icons\\Ability_Mount_Undeadhorse"},
    {18363, "Kodo Mount", "Interface\\Icons\\Ability_Mount_Kodo_01"},
    {18989, "Gray Kodo", "Interface\\Icons\\Ability_Mount_Kodo_01"},
    {18990, "Brown Kodo", "Interface\\Icons\\Ability_Mount_Kodo_01"},
    {18991, "Green Kodo", "Interface\\Icons\\Ability_Mount_Kodo_01"},
    {18992, "Teal Kodo", "Interface\\Icons\\Ability_Mount_Kodo_01"},
    {458, "Knight-Lieutenant's Steed", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {16082, "Commander's Steed", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {6654, "Blood Guard's Mount", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {16081, "zzUNUSEDLieutenant General's Mount", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {17481, "Test Epic Mount", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {22717, "Black War Steed Bridle", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {22723, "Reins of the Black War Tiger", "Interface\\Icons\\Ability_Mount_JungleTiger"},
    {22719, "Black Battlestrider", "Interface\\Icons\\Ability_Mount_MechaStrider"},
    {22720, "Black War Ram", "Interface\\Icons\\Ability_Mount_MountainRam"},
    {22724, "Horn of the Black War Wolf", "Interface\\Icons\\Ability_Mount_BlackDireWolf"},
    {22721, "Whistle of the Black War Raptor", "Interface\\Icons\\Ability_Mount_Raptor"},
    {22718, "Black War Kodo", "Interface\\Icons\\Ability_Mount_Kodo_01"},
    {22722, "Red Skeletal Warhorse", "Interface\\Icons\\Ability_Mount_Undeadhorse"},
    {23221, "Reins of the Swift Frostsaber", "Interface\\Icons\\Ability_Mount_WhiteTiger"},
    {23219, "Reins of the Swift Mistsaber", "Interface\\Icons\\Ability_Mount_BlackPanther"},
    {23220, "Reins of the Swift Dawnsaber", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {23225, "Swift Green Mechanostrider", "Interface\\Icons\\Ability_Mount_MechaStrider"},
    {23223, "Swift White Mechanostrider", "Interface\\Icons\\Ability_Mount_MechaStrider"},
    {23222, "Swift Yellow Mechanostrider", "Interface\\Icons\\Ability_Mount_MechaStrider"},
    {23227, "Swift Palomino", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {23229, "Swift Brown Steed", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {23228, "Swift White Steed", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {23240, "Swift White Ram", "Interface\\Icons\\Ability_Mount_MountainRam"},
    {23238, "Swift Brown Ram", "Interface\\Icons\\Ability_Mount_MountainRam"},
    {23239, "Swift Gray Ram", "Interface\\Icons\\Ability_Mount_MountainRam"},
    {23241, "Swift Blue Raptor", "Interface\\Icons\\Ability_Mount_Raptor"},
    {23242, "Swift Olive Raptor", "Interface\\Icons\\Ability_Mount_Raptor"},
    {23243, "Swift Orange Raptor", "Interface\\Icons\\Ability_Mount_Raptor"},
    {23246, "Purple Skeletal Warhorse", "Interface\\Icons\\Ability_Mount_Undeadhorse"},
    {23247, "Great White Kodo", "Interface\\Icons\\Ability_Mount_Kodo_01"},
    {23249, "Great Brown Kodo", "Interface\\Icons\\Ability_Mount_Kodo_01"},
    {23248, "Great Gray Kodo", "Interface\\Icons\\Ability_Mount_Kodo_01"},
    {23250, "Horn of the Swift Brown Wolf", "Interface\\Icons\\Ability_Mount_BlackDireWolf"},
    {23251, "Horn of the Swift Timber Wolf", "Interface\\Icons\\Ability_Mount_BlackDireWolf"},
    {23252, "Horn of the Swift Gray Wolf", "Interface\\Icons\\Ability_Mount_BlackDireWolf"},
    {23338, "Reins of the Swift Stormsaber", "Interface\\Icons\\Ability_Mount_BlackPanther"},
    {23509, "Horn of the Frostwolf Howler", "Interface\\Icons\\Ability_Mount_BlackDireWolf"},
    {23510, "Stormpike Battle Charger", "Interface\\Icons\\Ability_Mount_Charger"},
    {24242, "Swift Razzashi Raptor", "Interface\\Icons\\Ability_Mount_Raptor"},
    {24252, "Swift Zulian Tiger", "Interface\\Icons\\Ability_Mount_JungleTiger"},
    {24576, "Foror's Fabled Steed", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {25675, "Reindeer Reins (TEST)", "Interface\\Icons\\INV_Misc_Bell_01"},
    {25953, "Blue Qiraji Resonating Crystal", "Interface\\Icons\\INV_Misc_QirajiCrystal_05"},
    {26054, "Red Qiraji Resonating Crystal", "Interface\\Icons\\INV_Misc_QirajiCrystal_05"},
    {26056, "Green Qiraji Resonating Crystal", "Interface\\Icons\\INV_Misc_QirajiCrystal_05"},
    {26055, "Yellow Qiraji Resonating Crystal", "Interface\\Icons\\INV_Misc_QirajiCrystal_05"},
    {3363, "Nether Drake Reins", "Interface\\Icons\\Ability_Mount_NetherDrakePurple"},
    {29059, "Skeletal Steed Reins", "Interface\\Icons\\Ability_Mount_Undeadhorse"},
    {30174, "Riding Turtle", "Interface\\Icons\\INV_Misc_Fish_Turtle_02"},
    {32235, "Golden Gryphon", "Interface\\Icons\\Ability_Mount_Gryphon_01"},
    {32239, "Ebon Gryphon", "Interface\\Icons\\Ability_Mount_Gryphon_01"},
    {32240, "Snowy Gryphon", "Interface\\Icons\\Ability_Mount_Gryphon_01"},
    {32242, "Swift Blue Gryphon", "Interface\\Icons\\Ability_Mount_Gryphon_01"},
    {32243, "Tawny Windrider", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {32244, "Blue Windrider", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {32245, "Green Windrider", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {32246, "Swift Red Windrider", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {32289, "Swift Red Gryphon", "Interface\\Icons\\Ability_Mount_Gryphon_01"},
    {32290, "Swift Green Gryphon", "Interface\\Icons\\Ability_Mount_Gryphon_01"},
    {32292, "Swift Purple Gryphon", "Interface\\Icons\\Ability_Mount_Gryphon_01"},
    {32295, "Swift Green Windrider", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {32296, "Swift Yellow Windrider", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {32297, "Swift Purple Windrider", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {32345, "Peep's Whistle", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {32420, "Crappy's Bell", "Interface\\Icons\\INV_Misc_Bell_01"},
    {24242, "Crazy Raptor 75", "Interface\\Icons\\Ability_Mount_Raptor"},
    {24242, "Crazy Raptor 150", "Interface\\Icons\\Ability_Mount_Raptor"},
    {33631, "Video Mount", "Interface\\Icons\\Ability_Mount_MechaStrider"},
    {34068, "Dargonhawk Whistle", "Interface\\Icons\\Ability_Hunter_Pet_DragonHawk"},
    {34406, "Brown Elekk", "Interface\\Icons\\Ability_Mount_DraeneiElekk"},
    {34407, "Great Elite Elekk", "Interface\\Icons\\Ability_Mount_DraeneiElekk"},
    {39316, "Reins of the Dark Riding Talbuk", "Interface\\Icons\\Ability_Mount_TalbukDraenor"},
    {34795, "Red Hawkstrider", "Interface\\Icons\\Ability_Mount_CockatriceMount"},
    {33660, "Swift Pink Hawkstrider", "Interface\\Icons\\Ability_Mount_CockatriceMount"},
    {34896, "Reins of the Cobalt War Talbuk", "Interface\\Icons\\Ability_Mount_TalbukDraenor"},
    {34897, "Reins of the White War Talbuk", "Interface\\Icons\\Ability_Mount_TalbukDraenor"},
    {34898, "Reins of the Silver War Talbuk", "Interface\\Icons\\Ability_Mount_TalbukDraenor"},
    {34899, "Reins of the Tan War Talbuk", "Interface\\Icons\\Ability_Mount_TalbukDraenor"},
    {35020, "Blue Hawkstrider", "Interface\\Icons\\Ability_Mount_CockatriceMount"},
    {35022, "Black Hawkstrider", "Interface\\Icons\\Ability_Mount_CockatriceMount"},
    {35018, "Purple Hawkstrider", "Interface\\Icons\\Ability_Mount_CockatriceMount"},
    {35025, "Swift Green Hawkstrider", "Interface\\Icons\\Ability_Mount_CockatriceMount"},
    {35027, "Swift Purple Hawkstrider", "Interface\\Icons\\Ability_Mount_CockatriceMount"},
    {35028, "zzoldSwift Warstrider", "Interface\\Icons\\Ability_Mount_CockatriceMount"},
    {34896, "Reins of the Cobalt War Talbuk", "Interface\\Icons\\Ability_Mount_TalbukDraenor"},
    {34790, "Reins of the Dark War Talbuk", "Interface\\Icons\\Ability_Mount_TalbukDraenor"},
    {34898, "Reins of the Silver War Talbuk", "Interface\\Icons\\Ability_Mount_TalbukDraenor"},
    {34899, "Reins of the Tan War Talbuk", "Interface\\Icons\\Ability_Mount_TalbukDraenor"},
    {34897, "Reins of the White War Talbuk", "Interface\\Icons\\Ability_Mount_TalbukDraenor"},
    {22719, "Black Battlestrider", "Interface\\Icons\\Ability_Mount_MechaStrider"},
    {22718, "Black War Kodo", "Interface\\Icons\\Ability_Mount_Kodo_01"},
    {22720, "Black War Ram", "Interface\\Icons\\Ability_Mount_MountainRam"},
    {22717, "Black War Steed Bridle", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {22724, "Horn of the Black War Wolf", "Interface\\Icons\\Ability_Mount_BlackDireWolf"},
    {22722, "Red Skeletal Warhorse", "Interface\\Icons\\Ability_Mount_Undeadhorse"},
    {22723, "Reins of the Black War Tiger", "Interface\\Icons\\Ability_Mount_JungleTiger"},
    {22721, "Whistle of the Black War Raptor", "Interface\\Icons\\Ability_Mount_Raptor"},
    {35711, "Purple Elekk", "Interface\\Icons\\Ability_Mount_DraeneiElekk"},
    {35710, "Gray Elekk", "Interface\\Icons\\Ability_Mount_DraeneiElekk"},
    {35713, "Great Blue Elekk", "Interface\\Icons\\Ability_Mount_DraeneiElekk"},
    {35712, "Great Green Elekk", "Interface\\Icons\\Ability_Mount_DraeneiElekk"},
    {35714, "Great Purple Elekk", "Interface\\Icons\\Ability_Mount_DraeneiElekk"},
    {36702, "Fiery Warhorse's Reins", "Interface\\Icons\\Spell_Nature_Swiftness"},
    {37015, "Swift Nether Drake", "Interface\\Icons\\Ability_Mount_NetherDrakePurple"},
    {39315, "Reins of the Cobalt Riding Talbuk", "Interface\\Icons\\Ability_Mount_TalbukDraenor"},
    {39315, "Reins of the Cobalt Riding Talbuk", "Interface\\Icons\\Ability_Mount_TalbukDraenor"},
    {39317, "Reins of the Silver Riding Talbuk", "Interface\\Icons\\Ability_Mount_TalbukDraenor"},
    {39317, "Reins of the Silver Riding Talbuk", "Interface\\Icons\\Ability_Mount_TalbukDraenor"},
    {39318, "Reins of the Tan Riding Talbuk", "Interface\\Icons\\Ability_Mount_TalbukDraenor"},
    {39318, "Reins of the Tan Riding Talbuk", "Interface\\Icons\\Ability_Mount_TalbukDraenor"},
    {39319, "Reins of the White Riding Talbuk", "Interface\\Icons\\Ability_Mount_TalbukDraenor"},
    {39319, "Reins of the White Riding Talbuk", "Interface\\Icons\\Ability_Mount_TalbukDraenor"},
    {39798, "Green Riding Nether Ray", "Interface\\Icons\\Ability_Mount_NetherRayMount_Blue"},
    {39801, "Purple Riding Nether Ray", "Interface\\Icons\\Ability_Mount_NetherRayMount_Blue"},
    {39800, "Red Riding Nether Ray", "Interface\\Icons\\Ability_Mount_NetherRayMount_Blue"},
    {39802, "Silver Riding Nether Ray", "Interface\\Icons\\Ability_Mount_NetherRayMount_Blue"},
    {39803, "Blue Riding Nether Ray", "Interface\\Icons\\Ability_Mount_NetherRayMount_Blue"},
    {40192, "Ashes of Al'ar", "Interface\\Icons\\Ability_Mount_PhoenixMount"},
    {41252, "Reins of the Raven Lord", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {41513, "Reins of the Onyx Netherwing Drake", "Interface\\Icons\\Ability_Mount_NetherDrakePurple"},
    {41514, "Reins of the Azure Netherwing Drake", "Interface\\Icons\\Ability_Mount_NetherDrakePurple"},
    {41515, "Reins of the Cobalt Netherwing Drake", "Interface\\Icons\\Ability_Mount_NetherDrakePurple"},
    {41516, "Reins of the Purple Netherwing Drake", "Interface\\Icons\\Ability_Mount_NetherDrakePurple"},
    {41517, "Reins of the Veridian Netherwing Drake", "Interface\\Icons\\Ability_Mount_NetherDrakePurple"},
    {41518, "Reins of the Violet Netherwing Drake", "Interface\\Icons\\Ability_Mount_NetherDrakePurple"},
    {42667, "Flying Broom", "Interface\\Icons\\INV_Misc_Broom_01"},
    {42668, "Unk Item #227 - Miscellaneous - Junk (Swift Flying Broom)", "Interface\\Icons\\INV_Misc_Broom_01"},
    {42668, "Swift Flying Broom", "Interface\\Icons\\INV_Misc_Broom_01"},
    {42680, "Old Magic Broom", "Interface\\Icons\\INV_Misc_Broom_01"},
    {42683, "Swift Magic Broom", "Interface\\Icons\\INV_Misc_Broom_01"},
    {42692, "Rickety Magic Broom", "Interface\\Icons\\INV_Misc_Broom_01"},
    {42776, "Reins of the Spectral Tiger", "Interface\\Icons\\Ability_Mount_JungleTiger"},
    {42777, "Reins of the Swift Spectral Tiger", "Interface\\Icons\\Ability_Mount_JungleTiger"},
    {42929, "[DNT] Test Mount", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {43688, "Amani War Bear", "Interface\\Icons\\Ability_Mount_WarBear"},
    {43899, "Brewfest Ram", "Interface\\Icons\\Ability_Mount_MountainRam"},
    {43900, "Swift Brewfest Ram", "Interface\\Icons\\Ability_Mount_MountainRam"},
    {43927, "Cenarion War Hippogryph", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {44744, "Merciless Nether Drake", "Interface\\Icons\\Ability_Mount_NetherDrakePurple"},
    {35028, "Swift Warstrider", "Interface\\Icons\\Ability_Mount_CockatriceMount"},
    {44655, "Flying Reindeer Reins (TEST)", "Interface\\Icons\\INV_Misc_Bell_01"},
    {46197, "X-51 Nether-Rocket", "Interface\\Icons\\Ability_Mount_RocketMount"},
    {46199, "X-51 Nether-Rocket X-TREME", "Interface\\Icons\\Ability_Mount_RocketMount"},
    {46628, "Swift White Hawkstrider", "Interface\\Icons\\Ability_Mount_CockatriceMount"},
    {48027, "Reins of the Black War Elekk", "Interface\\Icons\\Ability_Mount_DraeneiElekk"},
    {47977, "Magic Broom", "Interface\\Icons\\INV_Misc_Broom_01"},
    {48025, "The Horseman's Reins", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {48954, "Swift Zhevra", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {49193, "Vengeful Nether Drake", "Interface\\Icons\\Ability_Mount_NetherDrakePurple"},
    {49322, "Swift Zhevra", "Interface\\Icons\\Ability_Mount_RidingHorse"},
    {49378, "Brewfest Kodo", "Interface\\Icons\\Ability_Mount_Kodo_01"},
    {49379, "Great Brewfest Kodo", "Interface\\Icons\\Ability_Mount_Kodo_01"},
    {51412, "Big Battle Bear", "Interface\\Icons\\Ability_Mount_WarBear"},
    {1, "Obsidia", "Interface\\Icons\\Ability_Mount_NetherDrakePurple"},
    {36027, "Golden Dragonhawk", "Interface\\Icons\\Ability_Hunter_Pet_DragonHawk"},
    {36028, "Red Dragonhawk", "Interface\\Icons\\Ability_Hunter_Pet_DragonHawk"},
    {36029, "Silver Dragonhawk", "Interface\\Icons\\Ability_Hunter_Pet_DragonHawk"},
    {36031, "Blue Dragonhawk", "Interface\\Icons\\Ability_Hunter_Pet_DragonHawk"},
}  

local mountByID = {}
local mountByName = {}
for _, m in ipairs(BARTCRAFT_MOUNTS) do
    mountByID[tonumber(m[1])] = m
    mountByName[string.lower(m[2])] = m
end

local BCMT = {
    selected = false,
    page = 1,
    mounts = {},
    hooked = false,
}

local function G(name)
    if getglobal then return getglobal(name) end
    return _G and _G[name]
end

local function Chat(msg)
    if DEFAULT_CHAT_FRAME then
        DEFAULT_CHAT_FRAME:AddMessage("|cff33ff99BartcraftMounts:|r " .. msg)
    end
end

local function ParseSpellID(link)
    if not link then return nil end
    local id = string.match(link, "spell:(%d+)")
    if id then return tonumber(id) end
    return nil
end

local function TryAddMount(found, index, name, rank, spellID)
    if not name then return end

    local db = nil
    if spellID and mountByID[spellID] then
        db = mountByID[spellID]
    end
    if not db then
        db = mountByName[string.lower(name)]
        if db then spellID = db[1] end
    end
    if not db then return end

    local key = tostring(spellID or string.lower(name))
    if found[key] then return end
    found[key] = true

    local icon = db[3]
    if GetSpellTexture then
        local tex = GetSpellTexture(index, BOOKTYPE_SPELL)
        if tex then icon = tex end
    end

    table.insert(BCMT.mounts, {
        name = name,
        rank = rank,
        spellID = spellID,
        bookIndex = index,
        icon = icon or "Interface\\Icons\\Ability_Mount_RidingHorse",
    })
end

local function ScanMounts()
    BCMT.mounts = {}
    local found = {}

    if GetNumSpellTabs and GetSpellTabInfo then
        for tab = 1, GetNumSpellTabs() do
            local _, _, offset, numSpells = GetSpellTabInfo(tab)
            if offset and numSpells then
                for i = offset + 1, offset + numSpells do
                    local name, rank = GetSpellName(i, BOOKTYPE_SPELL)
                    if name then
                        local spellID = nil
                        if GetSpellLink then
                            spellID = ParseSpellID(GetSpellLink(i, BOOKTYPE_SPELL))
                        end
                        TryAddMount(found, i, name, rank, spellID)
                    end
                end
            end
        end
    end

    -- Fallback scan for old TBC spell APIs.
    for i = 1, 1024 do
        local name, rank = GetSpellName(i, BOOKTYPE_SPELL)
        if name then
            local spellID = nil
            if GetSpellLink then
                spellID = ParseSpellID(GetSpellLink(i, BOOKTYPE_SPELL))
            end
            TryAddMount(found, i, name, rank, spellID)
        end
    end

    table.sort(BCMT.mounts, function(a, b) return a.name < b.name end)
end

local function HidePanel()
    BCMT.selected = false
    local p = G("BartcraftMountsPanelV9")
    if p then p:Hide() end
    local t = G("BartcraftMountsTabButtonV9")
    if t then t:SetChecked(false) end
end

local function Button_OnEnter()
    if this and this.spellBookIndex then
        GameTooltip:SetOwner(this, "ANCHOR_RIGHT")
        if GameTooltip.SetSpell then
            GameTooltip:SetSpell(this.spellBookIndex, BOOKTYPE_SPELL)
        else
            GameTooltip:SetText(this.mountName or "Mount")
        end
        GameTooltip:Show()
    end
end

local function Button_OnLeave()
    GameTooltip:Hide()
end

-- Lets the custom mount entries behave like real spellbook spells when dragged.
-- Dragging places the actual learned spell on the cursor, so action bars can accept it.
local function Button_OnDragStart()
    local b = this
    if not b or not b.spellBookIndex then return end

    -- Spell/action pickup is protected in combat on TBC clients.
    if InCombatLockdown and InCombatLockdown() then
        Chat("Cannot drag mount spells while in combat.")
        return
    end

    if not PickupSpell then return end

    -- TBC-era clients accept the spellbook index + book type here.
    -- The name fallback keeps this from hard-failing on slightly different client builds.
    local ok = pcall(PickupSpell, b.spellBookIndex, BOOKTYPE_SPELL)
    if (not ok) and b.mountName then
        pcall(PickupSpell, b.mountName)
    end
end

local function EnsurePanel()
    if not SpellBookFrame then return nil end

    local panel = G("BartcraftMountsPanelV9")
    if not panel then
        panel = CreateFrame("Frame", "BartcraftMountsPanelV9", SpellBookFrame)
        panel:SetFrameStrata("HIGH")
        panel:SetFrameLevel((SpellBookFrame:GetFrameLevel() or 1) + 75)

        -- Cover the entire spell list/page area, but do not cover the outer skill tabs.
        panel:SetPoint("TOPLEFT", SpellBookFrame, "TOPLEFT", 12, -46)
        panel:SetWidth(340)
        panel:SetHeight(395)
        panel:EnableMouse(true)

        -- Solid background so no native spellbook entries bleed through.
        panel.bg = panel:CreateTexture(nil, "BACKGROUND")
        panel.bg:SetAllPoints(panel)
        panel.bg:SetTexture(0, 0, 0)

        -- Subtle spellbook-like inset border.
        panel.border = CreateFrame("Frame", nil, panel)
        panel.border:SetAllPoints(panel)
        panel.border:SetBackdrop({
            edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
            edgeSize = 16,
            insets = { left = 4, right = 4, top = 4, bottom = 4 },
        })

        panel.title = panel:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        panel.title:SetPoint("TOP", panel, "TOP", 0, -14)
        panel.title:SetText("Mount Collection")

        panel.empty = panel:CreateFontString(nil, "OVERLAY", "GameFontDisable")
        panel.empty:SetPoint("CENTER", panel, "CENTER", 0, 20)
        panel.empty:SetWidth(260)
        panel.empty:SetText("No learned mounts found yet.")

        panel.pageText = panel:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        panel.pageText:SetPoint("BOTTOM", panel, "BOTTOM", 0, 18)

        panel.prev = CreateFrame("Button", "BartcraftMountsPrevButtonV9", panel, "UIPanelButtonTemplate")
        panel.prev:SetWidth(72)
        panel.prev:SetHeight(22)
        panel.prev:SetText("Prev")
        panel.prev:SetPoint("BOTTOMLEFT", panel, "BOTTOMLEFT", 35, 16)
        panel.prev:SetScript("OnClick", function()
            if BCMT.page > 1 then
                BCMT.page = BCMT.page - 1
                BartcraftMounts_Update()
            end
        end)

        panel.next = CreateFrame("Button", "BartcraftMountsNextButtonV9", panel, "UIPanelButtonTemplate")
        panel.next:SetWidth(72)
        panel.next:SetHeight(22)
        panel.next:SetText("Next")
        panel.next:SetPoint("BOTTOMRIGHT", panel, "BOTTOMRIGHT", -40, 16)
        panel.next:SetScript("OnClick", function()
            local maxPage = math.max(1, math.ceil(table.getn(BCMT.mounts) / 12))
            if BCMT.page < maxPage then
                BCMT.page = BCMT.page + 1
                BartcraftMounts_Update()
            end
        end)

        panel.buttons = {}
        panel:Hide()
    end

    if not panel.buttons then panel.buttons = {} end

    for i = 1, 12 do
        if not panel.buttons[i] then
            local b = CreateFrame("Button", "BartcraftMountsSecureButtonV9_" .. i, panel, "SecureActionButtonTemplate")
            b:SetWidth(40)
            b:SetHeight(40)
            b:SetFrameLevel(panel:GetFrameLevel() + 20)
            b:RegisterForClicks("LeftButtonUp")

            -- Native-like two-column spellbook layout.
            local col = (i - 1) % 2
            local row = math.floor((i - 1) / 2)
            b:SetPoint("TOPLEFT", panel, "TOPLEFT", 40 + col * 176, -40 - row * 52)

            b.icon = b:CreateTexture(nil, "ARTWORK")
            b.icon:SetWidth(33)
            b.icon:SetHeight(33)
            b.icon:SetPoint("LEFT", b, "LEFT", 0, 0)
            b.icon:SetTexCoord(0.07, 0.93, 0.07, 0.93)

            -- One clean spell-button border only. No inner duplicate square.
            b.border = b:CreateTexture(nil, "OVERLAY")
            b.border:SetWidth(60)
            b.border:SetHeight(60)
            b.border:SetPoint("CENTER", b.icon, "CENTER", 0, 0)
            b.border:SetTexture("Interface\\Buttons\\UI-Quickslot2")

            b.nameText = b:CreateFontString(nil, "OVERLAY", "GameFontNormal")
            b.nameText:SetPoint("LEFT", b.icon, "RIGHT", 5, 5)
            b.nameText:SetWidth(80)
            b.nameText:SetJustifyH("LEFT")

            b.rankText = b:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
            b.rankText:SetPoint("LEFT", b.icon, "RIGHT", 5, -12)
            b.rankText:SetWidth(80)
            b.rankText:SetJustifyH("LEFT")

            b.highlight = b:CreateTexture(nil, "HIGHLIGHT")
            b.highlight:SetTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight")
            b.highlight:SetBlendMode("ADD")
            b.highlight:SetAllPoints(b)

            b:RegisterForDrag("LeftButton")
            b:SetScript("OnEnter", Button_OnEnter)
            b:SetScript("OnLeave", Button_OnLeave)
            b:SetScript("OnDragStart", Button_OnDragStart)

            panel.buttons[i] = b
        end
    end

    return panel
end

function BartcraftMounts_Update()
    local panel = EnsurePanel()
    if not panel then return end

    if InCombatLockdown and InCombatLockdown() then
        Chat("Cannot refresh mount buttons while in combat.")
        return
    end

    ScanMounts()

    local total = table.getn(BCMT.mounts)
    local maxPage = math.max(1, math.ceil(total / 12))
    if BCMT.page < 1 then BCMT.page = 1 end
    if BCMT.page > maxPage then BCMT.page = maxPage end

    if total == 0 then panel.empty:Show() else panel.empty:Hide() end

    local start = (BCMT.page - 1) * 12 + 1
    for i = 1, 12 do
        local b = panel.buttons[i]
        local data = BCMT.mounts[start + i - 1]

        if data then
            b.mountName = data.name
            b.spellBookIndex = data.bookIndex
            b.icon:SetTexture(data.icon)
            b.nameText:SetText(data.name)
            if data.rank and data.rank ~= "" then
                b.rankText:SetText(data.rank)
            else
                b.rankText:SetText("")
            end

            b:SetAttribute("type", "spell")
            b:SetAttribute("type1", "spell")
            b:SetAttribute("*type1", "spell")
            b:SetAttribute("spell", data.name)
            b:SetAttribute("spell1", data.name)
            b:SetAttribute("*spell1", data.name)
            b:Show()
        else
            b.mountName = nil
            b.spellBookIndex = nil
            b:SetAttribute("type", nil)
            b:SetAttribute("type1", nil)
            b:SetAttribute("*type1", nil)
            b:SetAttribute("spell", nil)
            b:SetAttribute("spell1", nil)
            b:SetAttribute("*spell1", nil)
            b:Hide()
        end
    end

    panel.pageText:SetText("Page " .. BCMT.page .. " / " .. maxPage)
    if BCMT.page > 1 then panel.prev:Enable() else panel.prev:Disable() end
    if BCMT.page < maxPage then panel.next:Enable() else panel.next:Disable() end
end

local function ShowPanel()
    if not SpellBookFrame or not SpellBookFrame:IsShown() then
        ToggleSpellBook(BOOKTYPE_SPELL)
    end

    BCMT.selected = true
    local panel = EnsurePanel()
    if panel then
        panel:Show()
        BartcraftMounts_Update()
    end

    local tab = G("BartcraftMountsTabButtonV9")
    if tab then tab:SetChecked(true) end
end

local function PositionTab()
    local btn = G("BartcraftMountsTabButtonV9")
    if not btn or not SpellBookFrame then return end

    btn:ClearAllPoints()

    local lastShown = nil
    for i = 1, 12 do
        local tab = G("SpellBookSkillLineTab" .. i)
        if tab and tab:IsShown() then
            lastShown = tab
        end
    end

    if lastShown then
        btn:SetPoint("TOP", lastShown, "BOTTOM", 0, -5)
    else
        btn:SetPoint("TOPLEFT", SpellBookFrame, "TOPRIGHT", 6, -200)
    end
end

local function EnsureTab()
    if not SpellBookFrame then return end

    local btn = G("BartcraftMountsTabButtonV9")
    if not btn then
        btn = CreateFrame("CheckButton", "BartcraftMountsTabButtonV9", SpellBookFrame)
        btn:SetWidth(31)
        btn:SetHeight(31)
        btn:SetFrameStrata("HIGH")
        btn:SetFrameLevel((SpellBookFrame:GetFrameLevel() or 1) + 90)
        btn:SetNormalTexture("Interface\\Icons\\Ability_Mount_RidingHorse")
        btn:SetPushedTexture("Interface\\Icons\\Ability_Mount_RidingHorse")
        btn:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square")
        btn:SetCheckedTexture("Interface\\Buttons\\CheckButtonHilight")
        btn:RegisterForClicks("LeftButtonUp")

        local normal = btn:GetNormalTexture()
        if normal then normal:SetTexCoord(0.07, 0.93, 0.07, 0.93) end

        local pushed = btn:GetPushedTexture()
        if pushed then pushed:SetTexCoord(0.07, 0.93, 0.07, 0.93) end

        local border = btn:CreateTexture(nil, "OVERLAY")
        border:SetWidth(60)
        border:SetHeight(60)
        border:SetPoint("CENTER", btn, "CENTER", 0, 0)
        border:SetTexture("Interface\\Buttons\\UI-Quickslot2")

        btn:SetScript("OnEnter", function()
            GameTooltip:SetOwner(this, "ANCHOR_RIGHT")
            GameTooltip:SetText("Mounts")
            GameTooltip:AddLine("Shows learned Bartcraft mount spells.", 1, 1, 1)
            GameTooltip:Show()
        end)

        btn:SetScript("OnLeave", function() GameTooltip:Hide() end)
        btn:SetScript("OnClick", function() ShowPanel() end)
    end

    PositionTab()
end

local function HookNativeTabs()
    if BCMT.hooked or not SpellBookFrame then return end
    BCMT.hooked = true

    SpellBookFrame:HookScript("OnShow", function()
        EnsureTab()
        EnsurePanel()
        PositionTab()
        if BCMT.selected then ShowPanel() end
    end)

    SpellBookFrame:HookScript("OnHide", function()
        HidePanel()
    end)

    for i = 1, 12 do
        local tab = G("SpellBookSkillLineTab" .. i)
        if tab and tab.HookScript then
            tab:HookScript("OnClick", function()
                HidePanel()
            end)
        end
    end

    if SpellBookFrame_Update and hooksecurefunc then
        hooksecurefunc("SpellBookFrame_Update", function()
            EnsureTab()
            PositionTab()
            if not BCMT.selected then
                local p = G("BartcraftMountsPanelV9")
                if p then p:Hide() end
            end
        end)
    end
end

local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_LOGIN")
f:RegisterEvent("SPELLS_CHANGED")
f:RegisterEvent("LEARNED_SPELL_IN_TAB")
f:RegisterEvent("PLAYER_REGEN_ENABLED")
f:SetScript("OnEvent", function()
    if SpellBookFrame then
        EnsureTab()
        EnsurePanel()
        HookNativeTabs()
        if BCMT.selected then BartcraftMounts_Update() end
    end
end)

local waiter = CreateFrame("Frame")
waiter:SetScript("OnUpdate", function()
    if SpellBookFrame then
        EnsureTab()
        EnsurePanel()
        HookNativeTabs()
        waiter:SetScript("OnUpdate", nil)
    end
end)

SLASH_BARTCRAFTMOUNTS1 = "/bcmounts"
SLASH_BARTCRAFTMOUNTS2 = "/mountstab"
SlashCmdList["BARTCRAFTMOUNTS"] = function(msg)
    msg = string.lower(msg or "")

    if msg == "reset" or msg == "off" or msg == "hide" or msg == "native" then
        HidePanel()
        Chat("Hidden. Normal spellbook restored.")
        return
    end

    if msg == "refresh" then
        ScanMounts()
        Chat("Found " .. table.getn(BCMT.mounts) .. " learned mount(s).")
        if BCMT.selected then BartcraftMounts_Update() end
        return
    end

    ShowPanel()
end
