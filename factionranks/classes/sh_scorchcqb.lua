CLASS.name = "Scorch Squad CQB";
CLASS.faction = FACTION_SCORCH;
CLASS.color = Color(235, 161, 52);
CLASS.isDefault = false;
CLASS_SCORCHCQB = CLASS.index
CLASS.image = Material("trex/closequarters.png","noclamp smooth")

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

function CLASS:OnSpawn(client)
   client:SetPlayerColor(Vector(105 / 255, 151 / 255, 207 / 255))
end