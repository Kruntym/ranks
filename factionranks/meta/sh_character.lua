local CHAR = ix.meta.character

function CHAR:IsCombine()
	local faction = self:GetPlayer():Team();
	local isCombine = (faction == FACTION_OTA or faction == FACTION_SCN);

	if(faction == FACTION_MARINE or faction == FACTION_ODST) then
		isCombine = true;
	end;

	return isCombine;
end

-- Returns if a character is a part of the MPF faction.
function CHAR:IsMetropolice()
	local faction = self:GetFaction()
    if(faction == FACTION_MARINE or faction == FACTION_ODST or faction == FACTION_NAVY or faction == FACTION_ONI) then
        return true;
    else
        return false;
    end;
end;

-- Called when a character has had data changed
function CHAR:UpdateCPStatus()
	if(!self:IsMetropolice()) then
		return
	end

    local cpData = self:GetCPInfo()

    if(self:IsMetropolice()) then
        self:SetName(self:GetCPName());
		self:SetupRankBodygroups()
    end;
end;

-- Returns all of the plugin's character data as a single table
function CHAR:GetCPInfo(fullData)
    local data = nil

	if(self:IsMetropolice()) then
		data = {}
		data.cpID = self:GetData("cpID");
        data.cpTagline = self:GetData("cpTagline");
	    data.cpDesc = self:GetData("cpDesc");
	    data.cpCitizenName = self:GetData("cpCitizenName");
		data.rank = self:GetData("rank");
		data.spec = self:GetData("spec")
		data.certs = self:GetData("certs")
	end;
    
    return data;
end;

function CHAR:GetCitizenName()
	if(self:IsMetropolice()) then
		return self:GetData("cpCitizenName")
	end

	return self:GetName()
end

-- Returns full civil protection name as a single string
function CHAR:GetCPName()
    local template = ix.config.Get("Naming Scheme");
    
	replacements = {
		["city"] = ix.config.Get("City Name"),
        ["abbreviation"] = ix.config.Get("Abbreviation"),
        ["division"] = self:GetData("cpDivision"),
		["rank"] = ix.ranks.Get(self:GetData("rank")).name,
		["tagline"] = self:GetData("cpTagline"),
		["id"] = self:GetData("cpCitizenName")
    }

    local name = string.gsub(template, "%a+", 
	function(str)
		return replacements[str];
    end)
    
    return name;
end;

-- Returns if a character has a voice type
function CHAR:HasVoiceType(text)
	local voiceType = self:GetData("cpVoiceType", "nil"):lower()

	if(string.find(voiceType, text:lower())) then
		return true
	end

	return false
end