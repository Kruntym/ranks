CLASS.name = "Singe Squad Rifleman";
CLASS.faction = FACTION_SINGE;
CLASS.color = Color(235, 161, 52);
CLASS.isDefault = true;
CLASS_SINGERIFLEMAN = CLASS.index
CLASS.image = Material("trex/autoriflemen.png","noclamp smooth")

function CLASS:OnSpawn(client)
   client:SetPlayerColor(Vector(200 / 255, 200 / 255, 200 / 255))
end