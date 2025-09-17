CLASS.name = "Scorch Squad Rifleman";
CLASS.faction = FACTION_SCORCH;
CLASS.color = Color(235, 161, 52);
CLASS.isDefault = true;
CLASS_SCORCHRIFLEMAN = CLASS.index
CLASS.image = Material("trex/riflemen.png","noclamp smooth")

function CLASS:OnSpawn(client)
   client:SetPlayerColor(Vector(200 / 255, 200 / 255, 200 / 255))
end