local assets =
{
	-- Animation files used for the item.
	Asset("ANIM", "anim/katana.zip"),
	Asset("ANIM", "anim/swap_katana.zip"),

	-- Inventory image and atlas file used for the item.
    Asset("ATLAS", "images/inventoryimages/katana.xml"),
    Asset("IMAGE", "images/inventoryimages/katana.tex"),
}

-------------------Ruin Hat Function ---------------------------------

    local function ruinshat_proc(inst, owner)
        inst:AddTag("forcefield")
        inst.components.armor:SetAbsorption(TUNING.FULL_ABSORPTION)
        local fx = SpawnPrefab("forcefieldfx")
        fx.entity:SetParent(owner.entity)
        fx.Transform:SetPosition(0, 0.2, 0)
        local fx_hitanim = function()
            fx.AnimState:PlayAnimation("hit")
            fx.AnimState:PushAnimation("idle_loop")
        end
        fx:ListenForEvent("blocked", fx_hitanim, owner)

       -- inst.components.armor.ontakedamage = function(inst, damage_amount)
       --     if owner then
       --        local sanity = owner.components.sanity
       --         if sanity then
       --            local unsaneness = damage_amount * TUNING.ARMOR_RUINSHAT_DMG_AS_SANITY
       --             sanity:DoDelta(-unsaneness, false)
       --         end
       --     end
       -- end

        inst.active = true

        owner:DoTaskInTime(--[[Duration]] TUNING.ARMOR_RUINSHAT_DURATION, function()
            fx:RemoveEventCallback("blocked", fx_hitanim, owner)
            fx.kill_fx(fx)
            if inst:IsValid() then
                inst:RemoveTag("forcefield")
				inst.components.armor.ontakedamage = nil
                inst.components.armor:SetAbsorption(TUNING.ARMOR_RUINSHAT_ABSORPTION * .55)
                owner:DoTaskInTime(--[[Cooldown]] TUNING.ARMOR_RUINSHAT_COOLDOWN, function() inst.active = false end)
            end
        end)
    end
	
	local function tryproc(inst, owner)
    if not inst.active then
    ruinshat_proc(inst, owner)
    end
end



-------------------Ruin Hat Function End ---------------------------------

local function induceinsanity(val, owner)
    if owner.components.sanity ~= nil and owner.prefab ~= "hanzo" then
        owner.components.sanity:SetInducedInsanity(val)
    end

end

local function onequip(inst, owner) 
    owner.AnimState:OverrideSymbol("swap_object", -- Symbol to override.
    	"swap_katana", -- Animation bank we will use to overwrite the symbol.
    	"katana") -- Symbol to overwrite it with.
    owner.AnimState:Show("ARM_carry") 
    owner.AnimState:Hide("ARM_normal") 
	inst.procfn = function() tryproc(inst, owner) end
    owner:ListenForEvent("attacked", inst.procfn)
	
    induceinsanity(true, owner)
	
end

local function onunequip(inst, owner) 
    owner.AnimState:Hide("ARM_carry") 
    owner.AnimState:Show("ARM_normal") 
	induceinsanity(nil, owner)
end

-------------------- Purple Staff Function ----------------------------------


-------------------Purple Staff Function End ---------------------------------










local function init()
	local inst = CreateEntity()

	inst.entity:AddTransform()
	inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("katana")
    inst.AnimState:SetBuild("katana")
    inst.AnimState:PlayAnimation("idle")
	
	inst:AddTag("sharp")



    if not TheWorld.ismastersim then
        return inst
    end

    inst.entity:SetPristine()

    inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(TUNING.KATANA_DAMAGE)
	
	inst:AddComponent("tool")
	inst.components.tool:SetAction(ACTIONS.CHOP,4)
	inst.components.tool:SetAction(ACTIONS.MINE,2)
    inst:AddComponent("blinkstaff")
	
	---------------------------- Purple Staff Stuff -------------------------
	
	---------------------------- Purple Staff Stuff End ---------------------
	
	inst:AddComponent("armor")
    inst.components.armor:InitCondition(1e+99, 0.01)
	

    inst:AddComponent("inspectable")
    
    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.atlasname = "images/inventoryimages/katana.xml"
    inst.components.inventoryitem.imagename = "katana"
    
    inst:AddComponent("equippable")
    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)
	

    MakeHauntableLaunch(inst)
    
    return inst
end

return Prefab("common/inventory/katana", init, assets)