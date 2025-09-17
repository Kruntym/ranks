--[[
	© 2020 TERRANOVA do not share, re-distribute or modify
	without permission of its author (zacharyenriquee@gmail.com).
--]]

FACTION.name = "Ember Platoon - Singe Squad"
FACTION.color = Color(235, 161, 52)
FACTION.description = ""
FACTION.selectModelText = "Select a model"
FACTION.image = ix.util.GetMaterial("trex/singe.png")
FACTION.descimg = ix.util.GetMaterial("trex/desc2.png")
FACTION.icon = ix.util.GetMaterial("trex/logo/odst.png","noclamp smooth")
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

function FACTION:GetDefaultName(client) end;

FACTION_SINGE = FACTION.index