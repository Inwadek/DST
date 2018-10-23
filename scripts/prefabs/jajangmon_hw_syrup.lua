local Assets =
{
	Asset("ANIM", "anim/jajangmon_hw_syrup.zip"),
    Asset("ATLAS", "images/inventoryimages/jajangmon_hw_syrup.xml"),
}

local function fn(Sim)
	local inst = CreateEntity()
	inst.entity:AddTransform()
	inst.entity:AddAnimState()
    inst.entity:AddNetwork()
    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end	

	MakeInventoryPhysics(inst)
	MakeSmallBurnable(inst)
	MakeSmallPropagator(inst)
	
	inst.AnimState:SetBank("jajangmon_hw_syrup")
	inst.AnimState:SetBuild("jajangmon_hw_syrup")
	inst.AnimState:PlayAnimation("idle", false)
	
	inst:AddTag("preparedfood")

	inst:AddComponent("edible")
	inst.components.edible.healthvalue = TUNING.HEALING_TINY
	inst.components.edible.hungervalue = TUNING.CALORIES_SMALL
	inst.components.edible.foodtype = FOODTYPE.VEGGIE
	inst.components.edible.sanityvalue = TUNING.SANITY_TINY

	inst:AddComponent("inspectable")

	inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.atlasname = "images/inventoryimages/jajangmon_hw_syrup.xml"

	inst:AddComponent("stackable")
	inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM

	--inst:AddComponent("perishable")
	--inst.components.perishable:SetPerishTime(TUNING.PERISH_FAST)
	--inst.components.perishable:StartPerishing()
	--inst.components.perishable.onperishreplacement = "spoiled_food"

	inst:AddComponent("bait")
	
	inst:AddComponent("tradable")
	
	return inst
end

return Prefab( "common/inventory/jajangmon_hw_syrup", fn, Assets )