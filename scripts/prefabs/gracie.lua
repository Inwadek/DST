local MakePlayerCharacter = require "prefabs/player_common"
local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
}
local prefabs = {}
local start_inv = {
	"spidereggsack",
	"spear",
}
local common_postinit = function(inst) 
	inst:AddTag("spiderwhisperer")
	inst.MiniMapEntity:SetIcon( "gracie.tex" )
end
local master_postinit = function(inst)	
	ATF(inst,"willow")
end
return MakePlayerCharacter("gracie", prefabs, assets, common_postinit, master_postinit, start_inv)