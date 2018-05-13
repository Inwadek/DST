local MakePlayerCharacter = require "prefabs/player_common"
local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
}
local prefabs = {}
local start_inv = {
	"katana",
}
local common_postinit = function(inst)
	inst.MiniMapEntity:SetIcon( "matt.tex" )
end
local master_postinit = function(inst)
	ATF(inst,"wilson")
end
return MakePlayerCharacter("matt", prefabs, assets, common_postinit, master_postinit, start_inv)