CLASS.name = "Scorch Squad Ordinance";
CLASS.faction = FACTION_SCORCH;
CLASS.color = Color(235, 161, 52);
CLASS.isDefault = false;
CLASS_SCORCHORDINANCE = CLASS.index
CLASS.image = Material("trex/ordinance.png","noclamp smooth")

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end
function CLASS:OnSpawn(client)
   client:SetPlayerColor(Vector(277 / 255, 208 / 255, 61 / 255))
end