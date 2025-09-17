CLASS.name = "Scorch Squad Machinegunner";
CLASS.faction = FACTION_SCORCH;
CLASS.color = Color(235, 161, 52);
CLASS.isDefault = false;
CLASS_SCORCHMACHINEGUNNER = CLASS.index
CLASS.image = Material("trex/autoriflemen.png","noclamp smooth")

function CLASS:CanSwitchTo(client)
    return client:HasClassWhitelist(self.index)
end

function CLASS:OnSpawn(client)
   client:SetPlayerColor(Vector(110 / 255, 207 / 255, 105 / 255))
end