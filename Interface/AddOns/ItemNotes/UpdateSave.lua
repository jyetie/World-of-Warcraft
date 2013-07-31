function UpdateSave()
	if INOTE_Settings["version"] == nil and not INOTE_Settings["order"] then
		--Convert from 0.5
		if INOTE_Settings["ilvl"] ~= nil then
			if INOTE_Settings["shown"] == nil then INOTE_Settings["shown"] = {}; end
			INOTE_Settings["shown"]["itemlevel"] = INOTE_Settings["ilvl"];
			INOTE_Settings["shown"]["note"] = true;
			INOTE_Settings["ilvl"] = nil;
		end
		if INOTE_Settings["above"] ~= nil then
			if INOTE_Settings["above"] then INOTE_Settings["order"] = {"note","itemlevel"};
			else INOTE_Settings["order"] = {"itemlevel","note"};
			end
			INOTE_Settings["above"] = nil;
		end
		if INOTE_Settings["color"] ~= nil then
			if INOTE_Settings["colors"] == nil then INOTE_Settings["colors"] = {}; end
			INOTE_Settings["colors"]["note"] = INOTE_Settings["color"];
			INOTE_Settings["colors"]["itemlevel"] = INOTE_Settings["color"];
			INOTE_Settings["color"] = nil;
		end
		if INOTE_Settings["version"] == nil then
			local _,ilink,iid
			tmp = {}
			for k,v in pairs(INOTE_Notes) do
				if type(k) == "string" then
					_,ilink = GetItemInfo(k);
					iid = ItemNote_GetID(ilink);
					tmp[iid] = v;
				else
					tmp[k] = v;
				end
			end
			INOTE_Notes = tmp;
			INOTE_Settings["version"] = 10;
		end
	elseif INOTE_Settings["version"] == nil and INOTE_Settings["order"] then
		--Convert from 0.6 (forgot to set the version.. ._.)
		for k,v in pairs(INOTE_Settings["shown"]) do
			local m = ItemNote_RealName(k);
			if m ~= k then
				INOTE_Settings["shown"][m] = INOTE_Settings["shown"][k];
				INOTE_Settings["colors"][m] = INOTE_Settings["colors"][k];
				INOTE_Settings["shown"][k] = nil;
				INOTE_Settings["colors"][k] = nil;
			end
		end
		for i,v in pairs(INOTE_Settings["order"]) do
			INOTE_Settings["order"][i] = ItemNote_RealName(v)
		end
		INOTE_Settings["version"] = 10;
	end
end
