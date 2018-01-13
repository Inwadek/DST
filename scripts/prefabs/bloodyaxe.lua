local assets=
{
    Asset("ANIM", "anim/bloodyaxe.zip"),
    Asset("ANIM", "anim/swap_bloodyaxe.zip"),
 
    Asset("ATLAS", "images/inventoryimages/bloodyaxe.xml"),
    Asset("IMAGE", "images/inventoryimages/bloodyaxe.tex"),
}
prefabs = {
}
 
local function OnEquip(inst, owner)
        owner.AnimState:OverrideSymbol("swap_object", "swap_bloodyaxe", "swap_bloodyaxe")
        owner.AnimState:Show("ARM_carry")
        owner.AnimState:Hide("ARM_normal")
end
	
		local function OnUnequip(inst, owner)
        owner.AnimState:Hide("ARM_carry")
        owner.AnimState:Show("ARM_normal")
end

local function fn(Sim)
    local inst = CreateEntity()
    local trans = inst.entity:AddTransform()
    local anim = inst.entity:AddAnimState()
    local sound = inst.entity:AddSoundEmitter()
	inst.entity:AddNetwork()
	
    MakeInventoryPhysics(inst)
	 
    anim:SetBank("bloodyaxe")
    anim:SetBuild("bloodyaxe")
    anim:PlayAnimation("idle")
 
 if not TheWorld.ismastersim then
        return inst
    end
	
    inst:AddComponent("inspectable")
    
    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.atlasname = "images/inventoryimages/bloodyaxe.xml"
     
	 inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(150)
	
	inst:AddComponent("tool")
    inst.components.tool:SetAction(ACTIONS.CHOP, 9)
	inst:AddComponent("blinkstaff")
	
    inst:AddComponent("equippable")
    inst.components.equippable:SetOnEquip( OnEquip )
    inst.components.equippable:SetOnUnequip( OnUnequip )
 
    return inst
end

return  Prefab("common/inventory/bloodyaxe", fn, assets, prefabs)