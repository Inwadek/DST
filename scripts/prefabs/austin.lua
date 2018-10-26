local MakePlayerCharacter = require "prefabs/player_common"
local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
}
local prefabs = {}
local start_inv = {
	"lighter",
	"bloodyaxe",
}
local common_postinit = function(inst) 
	inst.MiniMapEntity:SetIcon( "austin.tex" )
end

local master_postinit = function(inst)
	ATF(inst,"wilson")
end

return MakePlayerCharacter("austin", prefabs, assets, common_postinit, master_postinit, start_inv)