--[[
	© 2020 TERRANOVA do not share, re-distribute or modify
	without permission of its author (zacharyenriquee@gmail.com).
--]]

FACTION.name = "Ember Platoon - Navy Force"
FACTION.color = Color(235, 161, 52)
FACTION.description = "The UNSC Navy commands humanity’s fleets, responsible for spaceborne warfare, planetary defense, and the transport of troops and supplies across interstellar territories. As the backbone of the UNSC’s military might, the Navy engages enemy forces in orbit and beyond, safeguarding humanity’s presence among the stars."
FACTION.selectModelText = "Select a model"
FACTION.image = ix.util.GetMaterial("trex/navy.png")
FACTION.descimg = ix.util.GetMaterial("trex/desc2.png")
FACTION.icon = ix.util.GetMaterial("trex/logo/unscn.png","noclamp smooth")
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
	
	character:SetData("ndossier", id)
	character:SetData("cpCitizenName", character:GetName());
end;

function FACTION:OnSpawn(client)
   client:SetPlayerColor(Vector(39 / 255, 54 / 255, 143 / 255))
end

-- [[ Override default functions ]] --
function FACTION:GetDefaultName(client) end;

FACTION_NAVY = FACTION.index