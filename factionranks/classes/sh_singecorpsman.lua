CLASS.name = "Singe Squad Corpsman";
CLASS.faction = FACTION_SINGE;
CLASS.color = Color(235, 161, 52);
CLASS.isDefault = false;
CLASS_SINGECORPSMAN = CLASS.index
CLASS.image = Material("trex/corpsmen.png","noclamp smooth")

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end
function CLASS:OnSpawn(client)
   client:SetPlayerColor(Vector(207 / 255, 105 / 255, 105 / 255))
end