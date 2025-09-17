--[[
	© 2020 TERRANOVA do not share, re-distribute or modify
	without permission of its author (zacharyenriquee@gmail.com).
--]]

local Schema = Schema;
local PLUGIN = PLUGIN;

function PLUGIN:PlayerLoadedCharacter(client, character)
	local faction = character:GetFaction()
	
	if(faction == FACTION_SCN) then
		character:SetClass(CLASS_SCN);
	end;

	if(faction == FACTION_ODST or faction == FACTION_SCORCH or faction == FACTION_SINGE or faction == FACTION_SEAR or faction == FACTION_NAVY or faction == FACTION_ONI) then
		self:CheckForErrors(client, character)

		if(character:GetName() == character:GetCPName()) then
			if(!string.find(character:GetName(), ix.config.Get("City Name"))) then
				character:SetName(character:GetCPName());
			end;
		end;
	end;
end;

-- Sometimes data might disappear. Make sure we always have data.
function PLUGIN:CheckForErrors(client, character)
	local faction = character:GetFaction()

	if(!character:GetData("cpID")) then
		character:SetData("cpID", 1);
	end

	if(!character:GetData("rank")) then
		character:SetData("rank", ix.ranks.GetDefaultRank(faction))
	end
	
	if(!character:GetData("cpCitizenName")) then
		character:SetData("cpCitizenName", "Fatal error")
	end

	if(!character:GetData("cpDesc")) then
		character:SetData("cpDesc", "Fatal error")
	end
end

-- Called just after a player spawns.
function PLUGIN:PlayerSpawn(client)
	if (client:IsCombine()) then
		netstream.Start(client, "RecalculateHUDObjectives", PLUGIN.socioStatus)
	end;
end;

function PLUGIN:OnCharacterRankChanged(character, target, rank)
	if(target:IsMetropolice()) then
		local notification = cpSystem.config.notification;
		notification.text = "Your rank has been changed to:";
		notification.additional = string.format("'Rank - %s'", rank.displayName)

		ix.notify.SendMessage(target:GetPlayer(), notification);
		target:UpdateCPStatus()
	end;
end

-- Called when we need to setup bodygroups for a rank
function PLUGIN:SetupRankBodygroups(character)
	if(character:IsMetropolice()) then
		local spec = character:GetSpec()
		local rank = character:GetRank()

		for k, v in pairs(character:GetRankBodygroups()) do
			if((spec and k == 2) and rank.overrideBodygroup != true) then
				character:GetPlayer():SetBodygroup(k, v+spec.offset)	
			else	
				character:GetPlayer():SetBodygroup(k, v)
			end
		end

		return false
	else
		return true
	end
end