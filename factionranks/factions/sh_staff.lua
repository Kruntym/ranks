--[[
	© 2020 TERRANOVA do not share, re-distribute or modify
	without permission of its author (zacharyenriquee@gmail.com).
--]]

FACTION.name = "Staff Characters"
FACTION.color = Color(193, 193, 60)
FACTION.description = "Staff Character"
FACTION.selectModelText = "Select a body type."
FACTION.image = ix.util.GetMaterial("trex/staff.png")
FACTION.descimg = ix.util.GetMaterial("trex/desc2.png")
FACTION.icon = ix.util.GetMaterial("trex/logo/ember.png","noclamp smooth")
FACTION.isDefault = false
FACTION.pay = 10
FACTION.payTime = 300
FACTION.isGloballyRecognized = true
FACTION.models = {
	{"models/valk/haloinfinite/unsc/characters/spartan_markvb/spartan_markvb.mdl", 0, "0"},
}

function FACTION:OnCharacterCreated(client, character)
	local id = Schema:ZeroNumber(math.random(1, 99999), 5)
    local inventory = character:GetInventory()

    character:SetData("ndossier", id)
	character:SetData("cpCitizenName", character:GetName());
end;

-- [[ Override default functions ]] --
function FACTION:GetDefaultName(client) end;

FACTION_STAFF = FACTION.index