patreon_perk_hp_regen_t1 = class({})
--------------------------------------------------------------------------------

function patreon_perk_hp_regen_t1:IsHidden()
	return true
end

--------------------------------------------------------------------------------

function patreon_perk_hp_regen_t1:IsPurgable()
	return false
end
--------------------------------------------------------------------------------
function patreon_perk_hp_regen_t1:RemoveOnDeath()
	return false
end
--------------------------------------------------------------------------------

function patreon_perk_hp_regen_t1:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_HEALTH_REGEN_CONSTANT,
	}
	return funcs
end
--------------------------------------------------------------------------------

function patreon_perk_hp_regen_t1:GetModifierConstantHealthRegen(params)
	return GetPerkValue(1, self, 1, 0.5)
end

--------------------------------------------------------------------------------
function GetPerkValue(const, modifier, levelCounter, bonusPerLevel)
	local heroLvl = modifier:GetParent():GetLevel()
	return math.floor(heroLvl/levelCounter)*bonusPerLevel+const
end
--------------------------------------------------------------------------------