import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;
import crafttweaker.api.loot.condition.LootTableIdRegexLootCondition;
import crafttweaker.api.loot.condition.RandomChanceLootCondition;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.resource.ResourceLocation;
import crafttweaker.api.loot.condition.builder.LootTableIdLootConditionBuilder;
import crafttweaker.api.item.property.Rarity;


//common treasure bag injection

val common_loot as float[IItemStack] = {
	<item:artifacts:antidote_vessel>                                      :0.0005,
	<item:artifacts:aqua_dashers>                                         :0.0005,
	<item:artifacts:bunny_hoppers>                                        :0.0005,
	<item:artifacts:charm_of_sinking>                                     :0.0005,
	<item:artifacts:cloud_in_a_bottle>                                    :0.0005,
	<item:artifacts:cross_necklace>                                       :0.0005,
	<item:artifacts:digging_claws>                                        :0.0005,
	<item:artifacts:feral_claws>                                          :0.0005,
	<item:artifacts:fire_gauntlet>                                        :0.0005,
	<item:artifacts:flame_pendant>                                        :0.0005,
	<item:artifacts:flippers>                                             :0.0005,
	<item:artifacts:golden_hook>                                          :0.0005,
	<item:artifacts:helium_flamingo>                                      :0.0005,
	<item:artifacts:kitty_slippers>                                       :0.0005,
	<item:artifacts:lucky_scarf>                                          :0.0005,
	<item:artifacts:night_vision_goggles>                                 :0.0005,
	<item:artifacts:novelty_drinking_hat>                                 :0.0005,
	<item:artifacts:obsidian_skull>                                       :0.0005,
	<item:artifacts:panic_necklace>                                       :0.0005,
	<item:artifacts:pocket_piston>                                        :0.0005,
	<item:artifacts:power_glove>                                          :0.0005,
	<item:artifacts:running_shoes>                                        :0.0005,
	<item:artifacts:scarf_of_invisibility>                                :0.0005,
	<item:artifacts:shock_pendant>                                        :0.0005,
	<item:artifacts:snorkel>                                              :0.0005,
	<item:artifacts:steadfast_spikes>                                     :0.0005,
	<item:artifacts:superstitious_hat>                                    :0.0005,
	<item:artifacts:thorn_pendant>                                        :0.0005,
	<item:artifacts:umbrella>                                             :0.0005,
	<item:artifacts:universal_attractor>                                  :0.0005,
	<item:artifacts:vampiric_glove>                                       :0.0005,
	<item:artifacts:villager_hat>                                         :0.0005,
	<item:artifacts:whoopee_cushion>                                      :0.0005,
	<item:cyclic:charm_antidote>.withTag({onoff: 1 as int})               :0.0005,        
	<item:cyclic:charm_attack_speed>.withTag({onoff: 1 as int})           :0.0005,        
	<item:cyclic:charm_creeper>.withTag({onoff: 1 as int})                :0.0005,        
	<item:cyclic:charm_crit>.withTag({onoff: 1 as int})                   :0.0005,        
	<item:cyclic:charm_fire>.withTag({onoff: 1 as int})                   :0.0005,        
	<item:cyclic:charm_home>.withTag({onoff: 1 as int})                   :0.0005,        
	<item:cyclic:charm_invisible>.withTag({onoff: 1 as int})              :0.0005,        
	<item:cyclic:charm_knockback_resistance>.withTag({onoff: 1 as int})   :0.0005,        
	<item:cyclic:charm_longfall>.withTag({onoff: 1 as int})               :0.0005,        
	<item:cyclic:charm_luck>.withTag({onoff: 1 as int})                   :0.0005,        
	<item:cyclic:charm_magicdefense>.withTag({onoff: 1 as int})           :0.0005,        
	<item:cyclic:charm_speed>.withTag({onoff: 1 as int})                  :0.0005,        
	<item:cyclic:charm_starvation>.withTag({onoff: 1 as int})             :0.0005,        
	<item:cyclic:charm_stealthpotion>.withTag({onoff: 1 as int})          :0.0005,        
	<item:cyclic:charm_venom>.withTag({onoff: 1 as int})                  :0.0005,        
	<item:cyclic:charm_water>.withTag({onoff: 1 as int})                  :0.0005,        
	<item:cyclic:charm_wing>.withTag({onoff: 1 as int})                   :0.0005,        
	<item:cyclic:charm_world>.withTag({onoff: 1 as int})                  :0.0005,        
	<item:cyclic:charm_xp_blocker>.withTag({onoff: 1 as int})             :0.0005,        
	<item:cyclic:charm_xp_speed>.withTag({onoff: 1 as int})               :0.0005,        
	<item:cyclic:crystal_axe>                                             :0.0005,
	<item:cyclic:crystal_hoe>                                             :0.0005,
	<item:cyclic:crystal_pickaxe>                                         :0.0005,
	<item:cyclic:crystal_shovel>                                          :0.0005,
	<item:cyclic:crystal_sword>                                           :0.0005,
	<item:cyclic:ender_eye_reuse>                                         :0.0005,
	<item:cyclic:ender_pearl_mounted>                                     :0.0005,
	<item:cyclic:ender_pearl_reuse>                                       :0.0005,
	<item:cyclic:glove_climb>.withTag({onoff: 1 as int})                  :0.0005,          
	<item:cyclic:prospector>.withTag({onoff: 1 as int})                   :0.0005,          
	<item:cyclic:quiver_damage>.withTag({onoff: 1 as int})                :0.0005,          
	<item:cyclic:spawner_seeker>.withTag({onoff: 1 as int})               :0.0005,          
	<item:cyclic:spell_water>.withTag({onoff: 1 as int})				  :0.0005
};

// relics

//	<item:relics:amphibian_boot>                                          :0.0005,
//	<item:relics:arrow_quiver>                                            :0.0005,
//	<item:relics:blazing_flask>                                           :0.0005,
//	<item:relics:camouflage_ring>                                         :0.0005,
//	<item:relics:delay_ring>                                              :0.0005,
//	<item:relics:drowned_belt>                                            :0.0005,
//	<item:relics:fragrant_flower>                                         :0.0005,
//	<item:relics:ghost_skin_talisman>                                     :0.0005,
//	<item:relics:holy_locket>                                             :0.0005,
//	<item:relics:horse_flute>                                             :0.0005,
//	<item:relics:hunter_belt>                                             :0.0005,
//	<item:relics:ice_breaker>                                             :0.0005,
//	<item:relics:ice_skates>                                              :0.0005,
//	<item:relics:infinity_ham>.withTag({charge: 0 as int})                :0.0005,
//	<item:relics:jellyfish_necklace>                                      :0.0005,
//	<item:relics:leather_belt>                                            :0.0005,
//	<item:relics:lucky_horseshoe>                                         :0.0005,
//	<item:relics:magic_mirror>                                            :0.0005,
//	<item:relics:magma_walker>                                            :0.0005,
//	<item:relics:old_boot>                                                :0.0005,
//	<item:relics:out_runner>                                              :0.0005,
//	<item:relics:rage_glove>                                              :0.0005,
//	<item:relics:reflection_necklace>                                     :0.0005,
//	<item:relics:scarab_talisman>                                         :0.0005,
//	<item:relics:slime_heart>                                             :0.0005,
//	<item:relics:spider_necklace>                                         :0.0005,
//	<item:relics:spore_sack>                                              :0.0005,
//	<item:relics:squire_bag>                                              :0.0005,
//	<item:relics:wool_mitten>                                             :0.0005

loot.modifiers.register("loot_common",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:limitlessrebirth:common>)
	]),
	(stacks, context) => {
		for item, chance in common_loot {
			if context.random.nextFloat() < chance {
				stacks.add(item);
			}
		}
		return stacks;
	});
	
//uncommon loot bag injection
	
val uncommon_loot as float[IItemStack] = {
	<item:artifacts:antidote_vessel>                                    :0.0015,
	<item:artifacts:aqua_dashers>                                       :0.0015,
	<item:artifacts:bunny_hoppers>                                      :0.0015,
	<item:artifacts:charm_of_sinking>                                   :0.0015,
	<item:artifacts:cloud_in_a_bottle>                                  :0.0015,
	<item:artifacts:cross_necklace>                                     :0.0015,
	<item:artifacts:digging_claws>                                      :0.0015,
	<item:artifacts:feral_claws>                                        :0.0015,
	<item:artifacts:fire_gauntlet>                                      :0.0015,
	<item:artifacts:flame_pendant>                                      :0.0015,
	<item:artifacts:flippers>                                           :0.0015,
	<item:artifacts:golden_hook>                                        :0.0015,
	<item:artifacts:helium_flamingo>                                    :0.0015,
	<item:artifacts:kitty_slippers>                                     :0.0015,
	<item:artifacts:lucky_scarf>                                        :0.0015,
	<item:artifacts:night_vision_goggles>                               :0.0015,
	<item:artifacts:novelty_drinking_hat>                               :0.0015,
	<item:artifacts:obsidian_skull>                                     :0.0015,
	<item:artifacts:panic_necklace>                                     :0.0015,
	<item:artifacts:panic_necklace>                                     :0.0015,
	<item:artifacts:pocket_piston>                                      :0.0015,
	<item:artifacts:power_glove>                                        :0.0015,
	<item:artifacts:running_shoes>                                      :0.0015,
	<item:artifacts:scarf_of_invisibility>                              :0.0015,
	<item:artifacts:shock_pendant>                                      :0.0015,
	<item:artifacts:snorkel>                                            :0.0015,
	<item:artifacts:steadfast_spikes>                                   :0.0015,
	<item:artifacts:superstitious_hat>                                  :0.0015,
	<item:artifacts:thorn_pendant>                                      :0.0015,
	<item:artifacts:umbrella>                                           :0.0015,
	<item:artifacts:universal_attractor>                                :0.0015,
	<item:artifacts:vampiric_glove>                                     :0.0015,
	<item:artifacts:villager_hat>                                       :0.0015,
	<item:artifacts:whoopee_cushion>                                    :0.0015,
	<item:cyclic:charm_antidote>.withTag({onoff: 1 as int})             :0.0015,
	<item:cyclic:charm_attack_speed>.withTag({onoff: 1 as int})         :0.0015,
	<item:cyclic:charm_boostpotion>.withTag({onoff: 1 as int})          :0.0015,
	<item:cyclic:charm_creeper>.withTag({onoff: 1 as int})              :0.0015,
	<item:cyclic:charm_crit>.withTag({onoff: 1 as int})                 :0.0015,
	<item:cyclic:charm_fire>.withTag({onoff: 1 as int})                 :0.0015,
	<item:cyclic:charm_home>.withTag({onoff: 1 as int})                 :0.0015,
	<item:cyclic:charm_invisible>.withTag({onoff: 1 as int})            :0.0015,
	<item:cyclic:charm_knockback_resistance>.withTag({onoff: 1 as int}) :0.0015,
	<item:cyclic:charm_longfall>.withTag({onoff: 1 as int})             :0.0015,
	<item:cyclic:charm_luck>.withTag({onoff: 1 as int})                 :0.0015,
	<item:cyclic:charm_magicdefense>.withTag({onoff: 1 as int})         :0.0015,
	<item:cyclic:charm_speed>.withTag({onoff: 1 as int})                :0.0015,
	<item:cyclic:charm_starvation>.withTag({onoff: 1 as int})           :0.0015,
	<item:cyclic:charm_stealthpotion>.withTag({onoff: 1 as int})        :0.0015,
	<item:cyclic:charm_ultimate>.withTag({onoff: 1 as int})             :0.0015,
	<item:cyclic:charm_venom>.withTag({onoff: 1 as int})                :0.0015,
	<item:cyclic:charm_water>.withTag({onoff: 1 as int})                :0.0015,
	<item:cyclic:charm_wing>.withTag({onoff: 1 as int})                 :0.0015,
	<item:cyclic:charm_wither>.withTag({onoff: 1 as int})               :0.0015,
	<item:cyclic:charm_world>.withTag({onoff: 1 as int})                :0.0015,
	<item:cyclic:charm_xp_blocker>.withTag({onoff: 1 as int})           :0.0015,
	<item:cyclic:charm_xp_speed>.withTag({onoff: 1 as int})             :0.0015,
	<item:cyclic:ender_eye_reuse>                                       :0.0015,
	<item:cyclic:ender_pearl_mounted>                                   :0.0015,
	<item:cyclic:ender_pearl_reuse>                                     :0.0015,
	<item:cyclic:glove_climb>.withTag({onoff: 1 as int})                :0.0015,
	<item:cyclic:prospector>.withTag({onoff: 1 as int})                 :0.0015,
	<item:cyclic:quiver_damage>.withTag({onoff: 1 as int})              :0.0015,
	<item:cyclic:quiver_lightning>.withTag({onoff: 1 as int})           :0.0015,
	<item:cyclic:spawner_seeker>.withTag({onoff: 1 as int})             :0.0015,
	<item:cyclic:spell_water>.withTag({onoff: 1 as int})				:0.0015
};

loot.modifiers.register("loot_uncommon",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:limitlessrebirth:uncommon>)
	]),
	(stacks, context) => {
		for item, chance in uncommon_loot {
			if context.random.nextFloat() < chance {
				stacks.add(item);
			}
		}
		return stacks;
	});
	
//rare loot bag injection
val rare_loot as float[IItemStack] = {
	<item:artifacts:antidote_vessel>                                    :0.0025,
	<item:artifacts:aqua_dashers>                                       :0.0025,
	<item:artifacts:bunny_hoppers>                                      :0.0025,
	<item:artifacts:charm_of_sinking>                                   :0.0025,
	<item:artifacts:cloud_in_a_bottle>                                  :0.0025,
	<item:artifacts:cross_necklace>                                     :0.0025,
	<item:artifacts:digging_claws>                                      :0.0025,
	<item:artifacts:feral_claws>                                        :0.0025,
	<item:artifacts:fire_gauntlet>                                      :0.0025,
	<item:artifacts:flame_pendant>                                      :0.0025,
	<item:artifacts:flippers>                                           :0.0025,
	<item:artifacts:golden_hook>                                        :0.0025,
	<item:artifacts:helium_flamingo>                                    :0.0025,
	<item:artifacts:kitty_slippers>                                     :0.0025,
	<item:artifacts:lucky_scarf>                                        :0.0025,
	<item:artifacts:night_vision_goggles>                               :0.0025,
	<item:artifacts:novelty_drinking_hat>                               :0.0025,
	<item:artifacts:obsidian_skull>                                     :0.0025,
	<item:artifacts:panic_necklace>                                     :0.0025,
	<item:artifacts:pocket_piston>                                      :0.0025,
	<item:artifacts:power_glove>                                        :0.0025,
	<item:artifacts:running_shoes>                                      :0.0025,
	<item:artifacts:scarf_of_invisibility>                              :0.0025,
	<item:artifacts:shock_pendant>                                      :0.0025,
	<item:artifacts:snorkel>                                            :0.0025,
	<item:artifacts:steadfast_spikes>                                   :0.0025,
	<item:artifacts:superstitious_hat>                                  :0.0025,
	<item:artifacts:thorn_pendant>                                      :0.0025,
	<item:artifacts:umbrella>                                           :0.0025,
	<item:artifacts:universal_attractor>                                :0.0025,
	<item:artifacts:vampiric_glove>                                     :0.0025,
	<item:artifacts:villager_hat>                                       :0.0025,
	<item:artifacts:whoopee_cushion>                                    :0.0025,
	<item:cyclic:antigravity>                                           :0.0025,
	<item:cyclic:charm_antidote>.withTag({onoff: 1 as int})             :0.0025,
	<item:cyclic:charm_attack_speed>.withTag({onoff: 1 as int})         :0.0025,
	<item:cyclic:charm_boostpotion>.withTag({onoff: 1 as int})          :0.0025,
	<item:cyclic:charm_creeper>.withTag({onoff: 1 as int})              :0.0025,
	<item:cyclic:charm_crit>.withTag({onoff: 1 as int})                 :0.0025,
	<item:cyclic:charm_fire>.withTag({onoff: 1 as int})                 :0.0025,
	<item:cyclic:charm_home>.withTag({onoff: 1 as int})                 :0.0025,
	<item:cyclic:charm_invisible>.withTag({onoff: 1 as int})            :0.0025,
	<item:cyclic:charm_knockback_resistance>.withTag({onoff: 1 as int}) :0.0025,
	<item:cyclic:charm_longfall>.withTag({onoff: 1 as int})             :0.0025,
	<item:cyclic:charm_luck>.withTag({onoff: 1 as int})                 :0.0025,
	<item:cyclic:charm_magicdefense>.withTag({onoff: 1 as int})         :0.0025,
	<item:cyclic:charm_speed>.withTag({onoff: 1 as int})                :0.0025,
	<item:cyclic:charm_starvation>.withTag({onoff: 1 as int})           :0.0025,
	<item:cyclic:charm_stealthpotion>.withTag({onoff: 1 as int})        :0.0025,
	<item:cyclic:charm_stone>.withTag({onoff: 1 as int})                :0.0025,
	<item:cyclic:charm_ultimate>.withTag({onoff: 1 as int})             :0.0025,
	<item:cyclic:charm_venom>.withTag({onoff: 1 as int})                :0.0025,
	<item:cyclic:charm_void>.withTag({onoff: 1 as int})                 :0.0025,
	<item:cyclic:charm_water>.withTag({onoff: 1 as int})                :0.0025,
	<item:cyclic:charm_wing>.withTag({onoff: 1 as int})                 :0.0025,
	<item:cyclic:charm_wither>.withTag({onoff: 1 as int})               :0.0025,
	<item:cyclic:charm_world>.withTag({onoff: 1 as int})                :0.0025,
	<item:cyclic:charm_xp_blocker>.withTag({onoff: 1 as int})           :0.0025,
	<item:cyclic:charm_xp_speed>.withTag({onoff: 1 as int})             :0.0025,
	<item:cyclic:elevation_wand>                                        :0.0025,
	<item:cyclic:ender_bag>                                             :0.0025,
	<item:cyclic:ender_book>                                            :0.0025,
	<item:cyclic:ender_eye_reuse>                                       :0.0025,
	<item:cyclic:ender_pearl_mounted>                                   :0.0025,
	<item:cyclic:ender_pearl_reuse>                                     :0.0025,
	<item:cyclic:glove_climb>.withTag({onoff: 1 as int})                :0.0025,
	<item:cyclic:prospector>.withTag({onoff: 1 as int})                 :0.0025,
	<item:cyclic:quiver_damage>.withTag({onoff: 1 as int})              :0.0025,
	<item:cyclic:quiver_lightning>.withTag({onoff: 1 as int})           :0.0025,
	<item:cyclic:spawner_seeker>.withTag({onoff: 1 as int})             :0.0025,
	<item:cyclic:spell_water>.withTag({onoff: 1 as int})				:0.0025,
	<item:paraglider:spirit_orb>                                        :0.0025,
	<item:quark:diamond_heart>                                          :0.0025
};

loot.modifiers.register("loot_rare",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:limitlessrebirth:rare>)
	]),
	(stacks, context) => {
		for item, chance in rare_loot {
			if context.random.nextFloat() < chance {
				stacks.add(item);
			}
		}
		return stacks;
	});
	
//epic loot bag injection

val epic_loot as float[IItemStack] = {
	<item:artifacts:antidote_vessel>                                    :0.0035,
	<item:artifacts:aqua_dashers>                                       :0.0035,
	<item:artifacts:bunny_hoppers>                                      :0.0035,
	<item:artifacts:charm_of_sinking>                                   :0.0035,
	<item:artifacts:cloud_in_a_bottle>                                  :0.0035,
	<item:artifacts:cross_necklace>                                     :0.0035,
	<item:artifacts:digging_claws>                                      :0.0035,
	<item:artifacts:feral_claws>                                        :0.0035,
	<item:artifacts:fire_gauntlet>                                      :0.0035,
	<item:artifacts:flame_pendant>                                      :0.0035,
	<item:artifacts:flippers>                                           :0.0035,
	<item:artifacts:golden_hook>                                        :0.0035,
	<item:artifacts:helium_flamingo>                                    :0.0035,
	<item:artifacts:kitty_slippers>                                     :0.0035,
	<item:artifacts:lucky_scarf>                                        :0.0035,
	<item:artifacts:night_vision_goggles>                               :0.0035,
	<item:artifacts:novelty_drinking_hat>                               :0.0035,
	<item:artifacts:obsidian_skull>                                     :0.0035,
	<item:artifacts:panic_necklace>                                     :0.0035,
	<item:artifacts:pocket_piston>                                      :0.0035,
	<item:artifacts:power_glove>                                        :0.0035,
	<item:artifacts:running_shoes>                                      :0.0035,
	<item:artifacts:scarf_of_invisibility>                              :0.0035,
	<item:artifacts:shock_pendant>                                      :0.0035,
	<item:artifacts:snorkel>                                            :0.0035,
	<item:artifacts:steadfast_spikes>                                   :0.0035,
	<item:artifacts:superstitious_hat>                                  :0.0035,
	<item:artifacts:thorn_pendant>                                      :0.0035,
	<item:artifacts:umbrella>                                           :0.0035,
	<item:artifacts:universal_attractor>                                :0.0035,
	<item:artifacts:vampiric_glove>                                     :0.0035,
	<item:artifacts:villager_hat>                                       :0.0035,
	<item:artifacts:whoopee_cushion>                                    :0.0035,
	<item:cyclic:antigravity>.withTag({onoff: 1 as int})                :0.0035,
	<item:cyclic:charm_antidote>.withTag({onoff: 1 as int})             :0.0035,
	<item:cyclic:charm_attack_speed>.withTag({onoff: 1 as int})         :0.0035,
	<item:cyclic:charm_boostpotion>.withTag({onoff: 1 as int})          :0.0035,
	<item:cyclic:charm_creeper>.withTag({onoff: 1 as int})              :0.0035,
	<item:cyclic:charm_crit>.withTag({onoff: 1 as int})                 :0.0035,
	<item:cyclic:charm_fire>.withTag({onoff: 1 as int})                 :0.0035,
	<item:cyclic:charm_home>.withTag({onoff: 1 as int})                 :0.0035,
	<item:cyclic:charm_invisible>.withTag({onoff: 1 as int})            :0.0035,
	<item:cyclic:charm_knockback_resistance>.withTag({onoff: 1 as int}) :0.0035,
	<item:cyclic:charm_longfall>.withTag({onoff: 1 as int})             :0.0035,
	<item:cyclic:charm_luck>.withTag({onoff: 1 as int})                 :0.0035,
	<item:cyclic:charm_magicdefense>.withTag({onoff: 1 as int})         :0.0035,
	<item:cyclic:charm_speed>.withTag({onoff: 1 as int})                :0.0035,
	<item:cyclic:charm_starvation>.withTag({onoff: 1 as int})           :0.0035,
	<item:cyclic:charm_stealthpotion>.withTag({onoff: 1 as int})        :0.0035,
	<item:cyclic:charm_stone>.withTag({onoff: 1 as int})                :0.0035,
	<item:cyclic:charm_ultimate>.withTag({onoff: 1 as int})             :0.0035,
	<item:cyclic:charm_venom>.withTag({onoff: 1 as int})                :0.0035,
	<item:cyclic:charm_void>.withTag({onoff: 1 as int})                 :0.0035,
	<item:cyclic:charm_water>.withTag({onoff: 1 as int})                :0.0035,
	<item:cyclic:charm_wing>.withTag({onoff: 1 as int})                 :0.0035,
	<item:cyclic:charm_wither>.withTag({onoff: 1 as int})               :0.0035,
	<item:cyclic:charm_world>.withTag({onoff: 1 as int})                :0.0035,
	<item:cyclic:charm_xp_blocker>.withTag({onoff: 1 as int})           :0.0035,
	<item:cyclic:charm_xp_speed>.withTag({onoff: 1 as int})             :0.0035,
	<item:cyclic:elevation_wand>                                        :0.0035,
	<item:cyclic:ender_bag>                                             :0.0035,
	<item:cyclic:ender_book>                                            :0.0035,
	<item:cyclic:ender_eye_reuse>                                       :0.0035,
	<item:cyclic:ender_pearl_mounted>                                   :0.0035,
	<item:cyclic:ender_pearl_reuse>                                     :0.0035,
	<item:cyclic:glove_climb>.withTag({onoff: 1 as int})                :0.0035,
	<item:cyclic:prospector>.withTag({onoff: 1 as int})                 :0.0035,
	<item:cyclic:quiver_damage>.withTag({onoff: 1 as int})              :0.0035,
	<item:cyclic:quiver_lightning>.withTag({onoff: 1 as int})           :0.0035,
	<item:cyclic:spawner_seeker>.withTag({onoff: 1 as int})             :0.0035,
	<item:cyclic:spell_water>.withTag({onoff: 1 as int})				:0.0035,
	<item:paraglider:spirit_orb>                                        :0.0035,
	<item:quark:diamond_heart>                                          :0.0035
};

loot.modifiers.register("loot_epic",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:limitlessrebirth:epic>)
	]),
	(stacks, context) => {
		for item, chance in epic_loot {
			if context.random.nextFloat() < chance {
				stacks.add(item);
			}
		}
		return stacks;
	});


//loot.modifiers.register("loot_epic", LootConditions.only(LootTableIdLootCondition.create(<resource:limitlessrebirth:epic>)), CommonLootModifiers.add(<item:minecraft:iron_ingot> * 8));	

