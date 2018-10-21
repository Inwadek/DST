PrefabFiles = {
	"alex",
	"alex_none",
	"austin",
	"austin_none",
	"gracie",
	"gracie_none",
	"kaylee",
	"kaylee_none",
	"matt",
	"matt_none",
	"bloodyaxe",
	"katana",
	"lighter",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/alex.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/alex.xml" ),
    Asset( "IMAGE", "images/selectscreen_portraits/alex.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/alex.xml" ),	
    Asset( "IMAGE", "images/selectscreen_portraits/alex_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/alex_silho.xml" ),
    Asset( "IMAGE", "bigportraits/alex.tex" ),
    Asset( "ATLAS", "bigportraits/alex.xml" ),
	Asset( "IMAGE", "images/map_icons/alex.tex" ),
	Asset( "ATLAS", "images/map_icons/alex.xml" ),
	Asset( "IMAGE", "images/avatars/avatar_alex.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_alex.xml" ),
	Asset( "IMAGE", "images/avatars/self_inspect_alex.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_alex.xml" ),
	Asset( "IMAGE", "images/names_alex.tex" ),
    Asset( "ATLAS", "images/names_alex.xml" ),
    Asset( "IMAGE", "bigportraits/alex_none.tex" ),
    Asset( "ATLAS", "bigportraits/alex_none.xml" ),
	
	Asset( "IMAGE", "images/saveslot_portraits/austin.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/austin.xml" ),
    Asset( "IMAGE", "images/selectscreen_portraits/austin.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/austin.xml" ),
    Asset( "IMAGE", "images/selectscreen_portraits/austin_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/austin_silho.xml" )
    Asset( "IMAGE", "bigportraits/austin.tex" ),
    Asset( "ATLAS", "bigportraits/austin.xml" ),
	Asset( "IMAGE", "images/map_icons/austin.tex" ),
	Asset( "ATLAS", "images/map_icons/austin.xml" ),
	Asset( "IMAGE", "images/avatars/avatar_austin.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_austin.xml" ),
	Asset( "IMAGE", "images/avatars/self_inspect_austin.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_austin.xml" ),
	Asset( "IMAGE", "images/names_austin.tex" ),
    Asset( "ATLAS", "images/names_austin.xml" ),
    Asset( "IMAGE", "bigportraits/austin_none.tex" ),
    Asset( "ATLAS", "bigportraits/austin_none.xml" ),

    Asset( "IMAGE", "images/saveslot_portraits/gracie.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/gracie.xml" ),
    Asset( "IMAGE", "images/selectscreen_portraits/gracie.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/gracie.xml" ),
    Asset( "IMAGE", "images/selectscreen_portraits/gracie_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/gracie_silho.xml" ),
    Asset( "IMAGE", "bigportraits/gracie.tex" ),
    Asset( "ATLAS", "bigportraits/gracie.xml" ),
	Asset( "IMAGE", "images/map_icons/gracie.tex" ),
	Asset( "ATLAS", "images/map_icons/gracie.xml" ),
	Asset( "IMAGE", "images/avatars/avatar_gracie.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_gracie.xml" ),
	Asset( "IMAGE", "images/avatars/self_inspect_gracie.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_gracie.xml" ),
	Asset( "IMAGE", "images/names_gracie.tex" ),
    Asset( "ATLAS", "images/names_gracie.xml" ),
    Asset( "IMAGE", "bigportraits/gracie_none.tex" ),
    Asset( "ATLAS", "bigportraits/gracie_none.xml" ),
	
	Asset( "IMAGE", "images/saveslot_portraits/kaylee.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/kaylee.xml" ),
    Asset( "IMAGE", "images/selectscreen_portraits/kaylee.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/kaylee.xml" ),
    Asset( "IMAGE", "images/selectscreen_portraits/kaylee_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/kaylee_silho.xml" ),
    Asset( "IMAGE", "bigportraits/kaylee.tex" ),
    Asset( "ATLAS", "bigportraits/kaylee.xml" ),
	Asset( "IMAGE", "images/map_icons/kaylee.tex" ),
	Asset( "ATLAS", "images/map_icons/kaylee.xml" ),
	Asset( "IMAGE", "images/avatars/avatar_kaylee.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_kaylee.xml" ),
	Asset( "IMAGE", "images/avatars/self_inspect_kaylee.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_kaylee.xml" ),
	Asset( "IMAGE", "images/names_kaylee.tex" ),
    Asset( "ATLAS", "images/names_kaylee.xml" ),
    Asset( "IMAGE", "bigportraits/kaylee_none.tex" ),
    Asset( "ATLAS", "bigportraits/kaylee_none.xml" ),
	
	Asset( "IMAGE", "images/saveslot_portraits/matt.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/matt.xml" ),
    Asset( "IMAGE", "images/selectscreen_portraits/matt.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/matt.xml" ),
    Asset( "IMAGE", "images/selectscreen_portraits/matt_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/matt_silho.xml" ),
    Asset( "IMAGE", "bigportraits/matt.tex" ),
    Asset( "ATLAS", "bigportraits/matt.xml" ),
	Asset( "IMAGE", "images/map_icons/matt.tex" ),
	Asset( "ATLAS", "images/map_icons/matt.xml" ),
	Asset( "IMAGE", "images/avatars/avatar_matt.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_matt.xml" ),
	Asset( "IMAGE", "images/avatars/self_inspect_matt.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_matt.xml" ),
	Asset( "IMAGE", "images/names_matt.tex" ),
    Asset( "ATLAS", "images/names_matt.xml" ),
    Asset( "IMAGE", "bigportraits/matt_none.tex" ),
    Asset( "ATLAS", "bigportraits/matt_none.xml" ),
}

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

GLOBAL.ATT = GetModConfigData("STATS")
GLOBAL.MODE = GetModConfigData("MODE")

GLOBAL.UPGRADE = function(inst)
	local max_upgrades = 10000
	local upgrades = math.min(inst.level, max_upgrades)
	local increase = 5
	local hunger_percent = inst.components.hunger:GetPercent()
	local health_percent = inst.components.health:GetPercent()
	local sanity_percent = inst.components.sanity:GetPercent()
	inst.components.hunger.max = math.ceil (GLOBAL.ATT + upgrades * increase)
	inst.components.health.maxhealth = math.ceil (GLOBAL.ATT + upgrades * increase)
	inst.components.sanity.max = math.ceil (GLOBAL.ATT + upgrades * increase)
------------------------------------------Speed----------------------------------------------------------
	--inst.components.locomotor.walkspeed = math.ceil (TUNING.WILSON_WALK_SPEED * 1.25 + upgrades * 0.005)
	--inst.components.locomotor.runspeed = math.ceil (TUNING.WILSON_RUN_SPEED * 1.25 + upgrades * 0.005)
------------------------------------------Fight----------------------------------------------------------
	--inst.components.combat.min_attack_period = math.ceil (0.35 - upgrades * 0.005)
    --inst.components.combat.damagemultiplier = math.ceil (1.3 + upgrades * 0.03)
---------------------------------------------------------------------------------------------------------
	inst.components.talker:Say("My senses got sharper. Level:".. (inst.level))
	inst.components.hunger:SetPercent(hunger_percent)
	inst.components.health:SetPercent(health_percent)
	inst.components.sanity:SetPercent(sanity_percent)
end
GLOBAL.ONEAT = function(inst, food)
	if food and food.components.edible and food.prefab == "dragonfruit" then
		inst.level = inst.level + 1
		GLOBAL.UPGRADE(inst)
		inst.HUD.controls.status.heart:PulseGreen()
		inst.HUD.controls.status.stomach:PulseGreen()
		inst.HUD.controls.status.brain:PulseGreen()
		inst.HUD.controls.status.brain:ScaleTo(1.3,1,.7)
		inst.HUD.controls.status.heart:ScaleTo(1.3,1,.7)
		inst.HUD.controls.status.stomach:ScaleTo(1.3,1,.7)
	end
end
GLOBAL.ONPRELOAD = function(inst, data)
	if data then
		if data.level then
			inst.level = data.level
			GLOBAL.UPGRADE(inst)
			--re-set these from the save data, because of load-order clipping issues
			if data.health and data.health.health then inst.components.health.currenthealth = data.health.health end
			if data.hunger and data.hunger.hunger then inst.components.hunger.current = data.hunger.hunger end
			if data.sanity and data.sanity.current then inst.components.sanity.current = data.sanity.current end
			inst.components.health:DoDelta(0)
			inst.components.hunger:DoDelta(0)
			inst.components.sanity:DoDelta(0)
		end
	end
end
GLOBAL.ONSAVE = function(inst, data)
	data.level = inst.level
	data.charge_time = inst.charge_time
end

GLOBAL.ATF = function(inst,nm)
	inst.soundsname = nm
	inst.components.health:SetMaxHealth(GLOBAL.ATT)
	inst.components.hunger:SetMax(GLOBAL.ATT)
	inst.components.sanity:SetMax(GLOBAL.ATT)
	inst.components.health:StartRegen(2 , 1, false)
	inst.components.sanity.night_drain_mult = -2
	inst.components.combat.damagemultiplier = 1
	inst.components.hunger.hungerrate = 0.1 * TUNING.WILSON_HUNGER_RATE
	inst.components.locomotor.walkspeed = 15
	inst.components.locomotor.runspeed = 15
	inst.OnLoad = onload
    inst.OnNewSpawn = onload
	inst.level = 0
	if GLOBAL.MODE then inst.components.eater:SetOnEatFn(GLOBAL.ONEAT) end
	inst.OnSave = GLOBAL.ONSAVE
	inst.OnPreLoad = GLOBAL.ONPRELOAD
end

STRINGS.CHARACTER_TITLES.alex = "Alex aka Pooky"
STRINGS.CHARACTER_NAMES.alex = "Alex aka Pooky"
STRINGS.NAMES.ALEX = "Alex aka Pooky"
AddMinimapAtlas("images/map_icons/alex.xml")
if GetModConfigData("ALEX") then AddModCharacter("alex", "FEMALE") end

STRINGS.CHARACTER_TITLES.austin = "Aussie"
STRINGS.CHARACTER_NAMES.austin = "Austin"
STRINGS.NAMES.AUSTIN = "Austin"
STRINGS.CHARACTERS.AUSTIN = require "speech_austin"
AddMinimapAtlas("images/map_icons/austin.xml")
if GetModConfigData("AUSTIN") then AddModCharacter("austin", "MALE") end

STRINGS.CHARACTER_TITLES.gracie = "Gracie"
STRINGS.CHARACTER_NAMES.gracie = "Gracie"
STRINGS.NAMES.GRACIE = "Gracie"
AddMinimapAtlas("images/map_icons/gracie.xml")
if GetModConfigData("GRACIE") then AddModCharacter("gracie", "FEMALE") end

STRINGS.CHARACTER_TITLES.kaylee = "Kaylee the Dandelion"
STRINGS.CHARACTER_NAMES.kaylee = "Kaylee the Dandelion"
STRINGS.NAMES.KAYLEE = "Kaylee the Dandelion"
AddMinimapAtlas("images/map_icons/kaylee.xml")
if GetModConfigData("KAYLEE") then AddModCharacter("kaylee", "FEMALE") end

STRINGS.CHARACTER_TITLES.matt = "Matt the Barber"
STRINGS.CHARACTER_NAMES.matt = "Matthew"
STRINGS.NAMES.MATT = "Matthew"
AddMinimapAtlas("images/map_icons/matt.xml")
if GetModConfigData("MATT") then AddModCharacter("matt", "MALE") end

STRINGS.NAMES.BLOODYAXE = "Bloody Axe"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BLOODYAXE = "Looks like an axe."

STRINGS.NAMES.KATANA = "Dark Katana"
STRINGS.RECIPE_DESC.KATANA = "Only a Dark Master may safely wield it..."
STRINGS.CHARACTERS.GENERIC.DESCRIBE.KATANA = "That looks creepishly sharp!!!"