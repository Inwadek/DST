PrefabFiles = {
	"alex",
	"alex_none",
	"gracie",
	"gracie_none",
	"kaylee",
	"kaylee_none",
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
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_alex.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_alex.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_alex.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_alex.xml" ),
	
	Asset( "IMAGE", "images/names_alex.tex" ),
    Asset( "ATLAS", "images/names_alex.xml" ),
	
    Asset( "IMAGE", "bigportraits/alex_none.tex" ),
    Asset( "ATLAS", "bigportraits/alex_none.xml" ),

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
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_gracie.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_gracie.xml" ),
	
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
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_kaylee.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_kaylee.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_kaylee.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_kaylee.xml" ),
	
	Asset( "IMAGE", "images/names_kaylee.tex" ),
    Asset( "ATLAS", "images/names_kaylee.xml" ),
	
    Asset( "IMAGE", "bigportraits/kaylee_none.tex" ),
    Asset( "ATLAS", "bigportraits/kaylee_none.xml" ),
}

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

if GetModConfigData("OP") then
	GLOBAL.ATT = 300
else
	GLOBAL.ATT = 150
end

STRINGS.CHARACTER_TITLES.alex = "Alex aka Pooky"
STRINGS.CHARACTER_NAMES.alex = "Alex aka Pooky"
STRINGS.CHARACTER_DESCRIPTIONS.alex = "*Perk 1\n*Perk 2\n*Perk 3"
STRINGS.CHARACTER_QUOTES.alex = "\"Quote\""
STRINGS.NAMES.ALEX = "Alex aka Pooky"
STRINGS.CHARACTERS.ALEX = require "speech_alex"
AddMinimapAtlas("images/map_icons/alex.xml")
if GetModConfigData("ALEX") then AddModCharacter("alex", "FEMALE") end

STRINGS.CHARACTER_TITLES.gracie = "Gracie"
STRINGS.CHARACTER_NAMES.gracie = "Gracie"
STRINGS.CHARACTER_DESCRIPTIONS.gracie = "*Perk 1\n*Perk 2\n*Perk 3"
STRINGS.CHARACTER_QUOTES.gracie = "\"Quote\""
STRINGS.CHARACTERS.GRACIE = require "speech_gracie"
STRINGS.NAMES.GRACIE = "Gracie"
AddMinimapAtlas("images/map_icons/gracie.xml")
if GetModConfigData("GRACIE") then AddModCharacter("gracie", "FEMALE") end

STRINGS.CHARACTER_TITLES.kaylee = "Kaylee the Dandelion"
STRINGS.CHARACTER_NAMES.kaylee = "Kaylee the Dandelion"
STRINGS.CHARACTER_DESCRIPTIONS.kaylee = "*Perk 1\n*Perk 2\n*Perk 3"
STRINGS.CHARACTER_QUOTES.kaylee = "\"Quote\""
STRINGS.NAMES.KAYLEE = "Kaylee the Dandelion"
STRINGS.CHARACTERS.KAYLEE = require "speech_kaylee"
AddMinimapAtlas("images/map_icons/kaylee.xml")
if GetModConfigData("KAYLEE") then AddModCharacter("kaylee", "FEMALE") end