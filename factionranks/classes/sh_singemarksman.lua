CLASS.name = "Singe Squad Marksman";
CLASS.faction = FACTION_SINGE;
CLASS.color = Color(235, 161, 52);
CLASS.isDefault = false;
CLASS_SINGEMARKSMAN = CLASS.index
CLASS.image = Material("trex/marksmen.png","noclamp smooth")

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

function CLASS:OnSpawn(client)
   client:SetPlayerColor(Vector(100 / 255, 100 / 255, 100 / 255))
end