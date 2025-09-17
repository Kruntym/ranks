--[[
	© 2020 TERRANOVA do not share, re-distribute or modify
	without permission of its author (zacharyenriquee@gmail.com).
--]]

local playerMeta = FindMetaTable("Player");

function playerMeta:IsCombine()
	local faction = self:Team();
	local isCombine = (faction == FACTION_OTA or faction == FACTION_SCN);

	if(self:GetCharacter() != nil) then 
		if(faction == FACTION_MARINE or faction == FACTION_ODST or faction == FACTION_NAVY or faction == FACTION_ONI) then
			isCombine = true;
		end;
	end;

	return isCombine;
end