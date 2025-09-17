--[[
	© 2020 TERRANOVA do not share, re-distribute or modify
	without permission of its author (zacharyenriquee@gmail.com).
--]]

FACTION.name = "UNSC Office of Naval Intelligence"
FACTION.color = Color(140, 140, 140)
FACTION.description = "The Office of Naval Intelligence (ONI) is the UNSC’s clandestine intelligence and counterintelligence agency, responsible for espionage, black operations, and the protection of humanity’s strategic interests at any cost. Ruthless, secretive, and operating far beyond conventional oversight, ONI shapes the fate of colonies and entire wars from the shadows."
FACTION.selectModelText = "Select a model"
FACTION.image = ix.util.GetMaterial("trex/oni.png")
FACTION.descimg = ix.util.GetMaterial("trex/desc2.png")
FACTION.icon = ix.util.GetMaterial("trex/logo/oni.png","noclamp smooth")
FACTION.isDefault = false
FACTION.pay = 10
FACTION.payTime = 300
FACTION.isGloballyRecognized = true
FACTION.models = {
	{"models/storm/halo/marine_pathfinder_new/marine_pathfinder_bdu2_m01_black.mdl", 0, "0"},
	{"models/storm/halo/marine_pathfinder_new/marine_pathfinder_bdu2_m02_black.mdl", 0, "0"},
	{"models/storm/halo/marine_pathfinder_new/marine_pathfinder_bdu2_m03_black.mdl", 0, "0"},
	{"models/storm/halo/marine_pathfinder_new/marine_pathfinder_bdu2_m04_black.mdl", 0, "0"},
	{"models/storm/halo/marine_pathfinder_new/marine_pathfinder_bdu2_m05_black.mdl", 0, "0"},
	{"models/storm/halo/marine_pathfinder_new/marine_pathfinder_bdu2_m06_black.mdl", 0, "0"},
	{"models/storm/halo/marine_pathfinder_new/marine_pathfinder_bdu2_m07_black.mdl", 0, "0"},
	{"models/storm/halo/marine_pathfinder_new/marine_pathfinder_bdu2_m08_black.mdl", 0, "0"},
	{"models/storm/halo/marine_pathfinder_new/marine_pathfinder_bdu2_m09_black.mdl", 0, "0"},
	{"models/storm/halo/marine_pathfinder_new/marine_pathfinder_bdu2_m10_black.mdl", 0, "0"},
	{"models/storm/halo/marine_pathfinder_new/marine_pathfinder_bdu2_m11_black.mdl", 0, "0"},
	{"models/storm/halo/marine_pathfinder_new/marine_pathfinder_bdu2_m12_black.mdl", 0, "0"},
	{"models/storm/halo/marine_pathfinder_new/marine_pathfinder_bdu2_m13_black.mdl", 0, "0"},
	{"models/storm/halo/marine_pathfinder_new/marine_pathfinder_bdu2_m14_black.mdl", 0, "0"},
	{"models/storm/halo/marine_pathfinder_new/marine_pathfinder_bdu2_f01_black.mdl", 0, "0"},
	{"models/storm/halo/marine_pathfinder_new/marine_pathfinder_bdu2_f02_black.mdl", 0, "0"},
	{"models/storm/halo/marine_pathfinder_new/marine_pathfinder_bdu2_f03_black.mdl", 0, "0"},
	{"models/storm/halo/marine_pathfinder_new/marine_pathfinder_bdu2_f04_black.mdl", 0, "0"}
}

function FACTION:OnCharacterCreated(client, character)
	local id = Schema:ZeroNumber(math.random(1, 99999), 5)
    local inventory = character:GetInventory()

    character:SetData("ndossier", id)
	character:SetData("cpCitizenName", character:GetName());
end;

-- [[ Override default functions ]] --
function FACTION:GetDefaultName(client) end;

FACTION_ONI = FACTION.index