local ADDON_NAME, addon = ...
local L = addon.L
local _G = getfenv(0)
local LibStub = _G.LibStub
local JumpCounter = LibStub("AceAddon-3.0"):NewAddon("JumpCounter", "AceHook-3.0")
_G.JumpCounter = JumpCounter
local data, realm, name, class, last, colors
local session = 0

local GetRealmName = _G.GetRealmName
local UnitName = _G.UnitName
local GetTime = _G.GetTime
local UnitOnTaxi = _G.UnitOnTaxi
local IsFlying = _G.IsFlying
local IsSwimming = _G.IsSwimming
local HasFullControl = _G.HasFullControl
local UnitIsDeadOrGhost = _G.UnitIsDeadOrGhost

local insert = _G.table.insert
local wipe = _G.table.wipe
local sort = _G.table.sort
local pairs = _G.pairs

local defaults = {
	profile = {}
}

local feed = LibStub("LibDataBroker-1.1"):NewDataObject("JumpCounter")
feed.type = "data source"
feed.icon = "Interface/Icons/Inv_Boots_02"
feed.label = L["Jumps"]
feed.text = "0"

function JumpCounter:OnInitialize()
	JumpCounterDB = JumpCounterDB or {}
	JumpCounterDB.data = JumpCounterDB.data or {}
	JumpCounterDB.version = JumpCounterDB.version or 1

	realm = GetRealmName()
	name = UnitName("player")
	class = select(2, UnitClass("player"))
	last = GetTime()

	colors = {}
	for k, v in pairs(RAID_CLASS_COLORS) do
	        colors[k] = "|cff" .. string.format("%02x%02x%02x", v.r * 255, v.g * 255, v.b * 255)
	end

	-- database upgrade
	if JumpCounterDB.version < 2 then
		if JumpCounterDB.profiles and JumpCounterDB.profiles.Default then
			local tmp = {}	
			for k,v in pairs(JumpCounterDB.profiles.Default) do 
				tmp[k] = v
			end
			wipe(JumpCounterDB)
			JumpCounterDB.data = {}
			for realm, names in pairs(tmp) do
				for name, count in pairs(names) do 
					insert(JumpCounterDB.data,{name=name, realm=realm, count=count})
				end
			end
			wipe(tmp)
			JumpCounterDB.profileKeys = nil
			JumpCounterDB.profiles = nil
			JumpCounterDB.version = 2
		end
	end

	-- initial database population
	local match = false
	if #JumpCounterDB.data > 0 then
		for k,v in pairs(JumpCounterDB.data) do
			if v.name == name and v.realm == realm then
				v.class = class
				feed.text = v.count
				match = true
				break
			end
		end
	end
	if not match then insert(JumpCounterDB.data,{name=name, realm=realm, class=class, count=0}) end
end

function JumpCounter:OnEnable()
	self:SecureHook("JumpOrAscendStart")
end

function JumpCounter:OnDisable()
	self:UnhookAll()
end

function JumpCounter:JumpOrAscendStart()
	if UnitOnTaxi("player") or IsFlying() or IsSwimming() or HasFullControl() == false or UnitIsDeadOrGhost("player") then return end
	local now = GetTime()
	if now - last >= 0.8 then
		last = now
		for k,v in pairs(JumpCounterDB.data) do
			if v.name == name and v.realm == realm then
				v.count = v.count + 1
				session = session + 1
				feed.text = v.count
				break
			end
		end
	end
end

local function GetTipAnchor(frame)
	local x,y = frame:GetCenter()
	if not x or not y then return "TOPLEFT", "BOTTOMLEFT" end
	local hhalf = (x > UIParent:GetWidth()*2/3) and "RIGHT" or (x < UIParent:GetWidth()/3) and "LEFT" or ""
	local vhalf = (y > UIParent:GetHeight()/2) and "TOP" or "BOTTOM"
	return vhalf..hhalf, frame, (vhalf == "TOP" and "BOTTOM" or "TOP")..hhalf
end

function feed.OnLeave() GameTooltip:Hide() end
function feed.OnEnter(self)
 	GameTooltip:SetOwner(self, "ANCHOR_NONE")
	GameTooltip:SetPoint(GetTipAnchor(self))
	GameTooltip:ClearLines()
	GameTooltip:AddLine("JumpCounter")
	local total
	sort(JumpCounterDB.data, function(a,b) return a.count > b.count end)
	for k,v in pairs(JumpCounterDB.data) do
		GameTooltip:AddDoubleLine((v.class and (colors[v.class]..v.name.."|r") or v.name)..(v.realm ~= realm and " - "..v.realm or ""), v.count)
		total = v.count + (total or 0)
	end
	GameTooltip:AddLine(" ")
	GameTooltip:AddDoubleLine(L["Session"], session)
	GameTooltip:AddDoubleLine(TOTAL, total)
	GameTooltip:Show()
end
