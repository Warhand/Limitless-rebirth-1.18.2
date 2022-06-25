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

val common_loot as MyFloat[IItemStack] = {
	<item:artifacts:antidote_vessel>                                      :new MyFloat(0.0005),
	<item:artifacts:aqua_dashers>                                         :new MyFloat(0.0005),
	<item:artifacts:bunny_hoppers>                                        :new MyFloat(0.0005),
	<item:artifacts:charm_of_sinking>                                     :new MyFloat(0.0005),
	<item:artifacts:cloud_in_a_bottle>                                    :new MyFloat(0.0005),
	<item:artifacts:cross_necklace>                                       :new MyFloat(0.0005),
	<item:artifacts:digging_claws>                                        :new MyFloat(0.0005),
	<item:artifacts:feral_claws>                                          :new MyFloat(0.0005),
	<item:artifacts:fire_gauntlet>                                        :new MyFloat(0.0005),
	<item:artifacts:flame_pendant>                                        :new MyFloat(0.0005),
	<item:artifacts:flippers>                                             :new MyFloat(0.0005),
	<item:artifacts:golden_hook>                                          :new MyFloat(0.0005),
	<item:artifacts:helium_flamingo>                                      :new MyFloat(0.0005),
	<item:artifacts:kitty_slippers>                                       :new MyFloat(0.0005),
	<item:artifacts:lucky_scarf>                                          :new MyFloat(0.0005),
	<item:artifacts:night_vision_goggles>                                 :new MyFloat(0.0005),
	<item:artifacts:novelty_drinking_hat>                                 :new MyFloat(0.0005),
	<item:artifacts:obsidian_skull>                                       :new MyFloat(0.0005),
	<item:artifacts:panic_necklace>                                       :new MyFloat(0.0005),
	<item:artifacts:pocket_piston>                                        :new MyFloat(0.0005),
	<item:artifacts:power_glove>                                          :new MyFloat(0.0005),
	<item:artifacts:running_shoes>                                        :new MyFloat(0.0005),
	<item:artifacts:scarf_of_invisibility>                                :new MyFloat(0.0005),
	<item:artifacts:shock_pendant>                                        :new MyFloat(0.0005),
	<item:artifacts:snorkel>                                              :new MyFloat(0.0005),
	<item:artifacts:steadfast_spikes>                                     :new MyFloat(0.0005),
	<item:artifacts:superstitious_hat>                                    :new MyFloat(0.0005),
	<item:artifacts:thorn_pendant>                                        :new MyFloat(0.0005),
	<item:artifacts:umbrella>                                             :new MyFloat(0.0005),
	<item:artifacts:universal_attractor>                                  :new MyFloat(0.0005),
	<item:artifacts:vampiric_glove>                                       :new MyFloat(0.0005),
	<item:artifacts:villager_hat>                                         :new MyFloat(0.0005),
	<item:artifacts:whoopee_cushion>                                      :new MyFloat(0.0005)
};

// relics

//	<item:relics:amphibian_boot>                                          :new MyFloat(0.0005),
//	<item:relics:arrow_quiver>                                            :new MyFloat(0.0005),
//	<item:relics:blazing_flask>                                           :new MyFloat(0.0005),
//	<item:relics:camouflage_ring>                                         :new MyFloat(0.0005),
//	<item:relics:delay_ring>                                              :new MyFloat(0.0005),
//	<item:relics:drowned_belt>                                            :new MyFloat(0.0005),
//	<item:relics:fragrant_flower>                                         :new MyFloat(0.0005),
//	<item:relics:ghost_skin_talisman>                                     :new MyFloat(0.0005),
//	<item:relics:holy_locket>                                             :new MyFloat(0.0005),
//	<item:relics:horse_flute>                                             :new MyFloat(0.0005),
//	<item:relics:hunter_belt>                                             :new MyFloat(0.0005),
//	<item:relics:ice_breaker>                                             :new MyFloat(0.0005),
//	<item:relics:ice_skates>                                              :new MyFloat(0.0005),
//	<item:relics:infinity_ham>.withTag({charge: 0 as int})                :new MyFloat(0.0005),
//	<item:relics:jellyfish_necklace>                                      :new MyFloat(0.0005),
//	<item:relics:leather_belt>                                            :new MyFloat(0.0005),
//	<item:relics:lucky_horseshoe>                                         :new MyFloat(0.0005),
//	<item:relics:magic_mirror>                                            :new MyFloat(0.0005),
//	<item:relics:magma_walker>                                            :new MyFloat(0.0005),
//	<item:relics:old_boot>                                                :new MyFloat(0.0005),
//	<item:relics:out_runner>                                              :new MyFloat(0.0005),
//	<item:relics:rage_glove>                                              :new MyFloat(0.0005),
//	<item:relics:reflection_necklace>                                     :new MyFloat(0.0005),
//	<item:relics:scarab_talisman>                                         :new MyFloat(0.0005),
//	<item:relics:slime_heart>                                             :new MyFloat(0.0005),
//	<item:relics:spider_necklace>                                         :new MyFloat(0.0005),
//	<item:relics:spore_sack>                                              :new MyFloat(0.0005),
//	<item:relics:squire_bag>                                              :new MyFloat(0.0005),
//	<item:relics:wool_mitten>                                             :new MyFloat(0.0005)

loot.modifiers.register("loot_common",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:limitlessrebirth:common>)
	]),
	(stacks, context) => {
		for item, chance in common_loot {
			if context.random.nextFloat() < chance.value as float {
				stacks.add(item);
			}
		}
		return stacks;
	});
	
//uncommon loot bag injection
	
val uncommon_loot as MyFloat[IItemStack] = {
	<item:artifacts:antidote_vessel>                                    :new MyFloat(0.0015),
	<item:artifacts:aqua_dashers>                                       :new MyFloat(0.0015),
	<item:artifacts:bunny_hoppers>                                      :new MyFloat(0.0015),
	<item:artifacts:charm_of_sinking>                                   :new MyFloat(0.0015),
	<item:artifacts:cloud_in_a_bottle>                                  :new MyFloat(0.0015),
	<item:artifacts:cross_necklace>                                     :new MyFloat(0.0015),
	<item:artifacts:digging_claws>                                      :new MyFloat(0.0015),
	<item:artifacts:feral_claws>                                        :new MyFloat(0.0015),
	<item:artifacts:fire_gauntlet>                                      :new MyFloat(0.0015),
	<item:artifacts:flame_pendant>                                      :new MyFloat(0.0015),
	<item:artifacts:flippers>                                           :new MyFloat(0.0015),
	<item:artifacts:golden_hook>                                        :new MyFloat(0.0015),
	<item:artifacts:helium_flamingo>                                    :new MyFloat(0.0015),
	<item:artifacts:kitty_slippers>                                     :new MyFloat(0.0015),
	<item:artifacts:lucky_scarf>                                        :new MyFloat(0.0015),
	<item:artifacts:night_vision_goggles>                               :new MyFloat(0.0015),
	<item:artifacts:novelty_drinking_hat>                               :new MyFloat(0.0015),
	<item:artifacts:obsidian_skull>                                     :new MyFloat(0.0015),
	<item:artifacts:panic_necklace>                                     :new MyFloat(0.0015),
	<item:artifacts:panic_necklace>                                     :new MyFloat(0.0015),
	<item:artifacts:pocket_piston>                                      :new MyFloat(0.0015),
	<item:artifacts:power_glove>                                        :new MyFloat(0.0015),
	<item:artifacts:running_shoes>                                      :new MyFloat(0.0015),
	<item:artifacts:scarf_of_invisibility>                              :new MyFloat(0.0015),
	<item:artifacts:shock_pendant>                                      :new MyFloat(0.0015),
	<item:artifacts:snorkel>                                            :new MyFloat(0.0015),
	<item:artifacts:steadfast_spikes>                                   :new MyFloat(0.0015),
	<item:artifacts:superstitious_hat>                                  :new MyFloat(0.0015),
	<item:artifacts:thorn_pendant>                                      :new MyFloat(0.0015),
	<item:artifacts:umbrella>                                           :new MyFloat(0.0015),
	<item:artifacts:universal_attractor>                                :new MyFloat(0.0015),
	<item:artifacts:vampiric_glove>                                     :new MyFloat(0.0015),
	<item:artifacts:villager_hat>                                       :new MyFloat(0.0015),
	<item:artifacts:whoopee_cushion>                                    :new MyFloat(0.0015)
};

loot.modifiers.register("loot_uncommon",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:limitlessrebirth:uncommon>)
	]),
	(stacks, context) => {
		for item, chance in uncommon_loot {
			if context.random.nextFloat() < chance.value as float {
				stacks.add(item);
			}
		}
		return stacks;
	});
	
//rare loot bag injection
val rare_loot as MyFloat[IItemStack] = {
	<item:artifacts:antidote_vessel>                                    :new MyFloat(0.0025),
	<item:artifacts:aqua_dashers>                                       :new MyFloat(0.0025),
	<item:artifacts:bunny_hoppers>                                      :new MyFloat(0.0025),
	<item:artifacts:charm_of_sinking>                                   :new MyFloat(0.0025),
	<item:artifacts:cloud_in_a_bottle>                                  :new MyFloat(0.0025),
	<item:artifacts:cross_necklace>                                     :new MyFloat(0.0025),
	<item:artifacts:digging_claws>                                      :new MyFloat(0.0025),
	<item:artifacts:feral_claws>                                        :new MyFloat(0.0025),
	<item:artifacts:fire_gauntlet>                                      :new MyFloat(0.0025),
	<item:artifacts:flame_pendant>                                      :new MyFloat(0.0025),
	<item:artifacts:flippers>                                           :new MyFloat(0.0025),
	<item:artifacts:golden_hook>                                        :new MyFloat(0.0025),
	<item:artifacts:helium_flamingo>                                    :new MyFloat(0.0025),
	<item:artifacts:kitty_slippers>                                     :new MyFloat(0.0025),
	<item:artifacts:lucky_scarf>                                        :new MyFloat(0.0025),
	<item:artifacts:night_vision_goggles>                               :new MyFloat(0.0025),
	<item:artifacts:novelty_drinking_hat>                               :new MyFloat(0.0025),
	<item:artifacts:obsidian_skull>                                     :new MyFloat(0.0025),
	<item:artifacts:panic_necklace>                                     :new MyFloat(0.0025),
	<item:artifacts:pocket_piston>                                      :new MyFloat(0.0025),
	<item:artifacts:power_glove>                                        :new MyFloat(0.0025),
	<item:artifacts:running_shoes>                                      :new MyFloat(0.0025),
	<item:artifacts:scarf_of_invisibility>                              :new MyFloat(0.0025),
	<item:artifacts:shock_pendant>                                      :new MyFloat(0.0025),
	<item:artifacts:snorkel>                                            :new MyFloat(0.0025),
	<item:artifacts:steadfast_spikes>                                   :new MyFloat(0.0025),
	<item:artifacts:superstitious_hat>                                  :new MyFloat(0.0025),
	<item:artifacts:thorn_pendant>                                      :new MyFloat(0.0025),
	<item:artifacts:umbrella>                                           :new MyFloat(0.0025),
	<item:artifacts:universal_attractor>                                :new MyFloat(0.0025),
	<item:artifacts:vampiric_glove>                                     :new MyFloat(0.0025),
	<item:artifacts:villager_hat>                                       :new MyFloat(0.0025),
	<item:artifacts:whoopee_cushion>                                    :new MyFloat(0.0025)
};

loot.modifiers.register("loot_rare",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:limitlessrebirth:rare>)
	]),
	(stacks, context) => {
		for item, chance in rare_loot {
			if context.random.nextFloat() < chance.value as float {
				stacks.add(item);
			}
		}
		return stacks;
	});
	
//epic loot bag injection

val epic_loot as MyFloat[IItemStack] = {
	<item:artifacts:antidote_vessel>                                    :new MyFloat(0.0035),
	<item:artifacts:aqua_dashers>                                       :new MyFloat(0.0035),
	<item:artifacts:bunny_hoppers>                                      :new MyFloat(0.0035),
	<item:artifacts:charm_of_sinking>                                   :new MyFloat(0.0035),
	<item:artifacts:cloud_in_a_bottle>                                  :new MyFloat(0.0035),
	<item:artifacts:cross_necklace>                                     :new MyFloat(0.0035),
	<item:artifacts:digging_claws>                                      :new MyFloat(0.0035),
	<item:artifacts:feral_claws>                                        :new MyFloat(0.0035),
	<item:artifacts:fire_gauntlet>                                      :new MyFloat(0.0035),
	<item:artifacts:flame_pendant>                                      :new MyFloat(0.0035),
	<item:artifacts:flippers>                                           :new MyFloat(0.0035),
	<item:artifacts:golden_hook>                                        :new MyFloat(0.0035),
	<item:artifacts:helium_flamingo>                                    :new MyFloat(0.0035),
	<item:artifacts:kitty_slippers>                                     :new MyFloat(0.0035),
	<item:artifacts:lucky_scarf>                                        :new MyFloat(0.0035),
	<item:artifacts:night_vision_goggles>                               :new MyFloat(0.0035),
	<item:artifacts:novelty_drinking_hat>                               :new MyFloat(0.0035),
	<item:artifacts:obsidian_skull>                                     :new MyFloat(0.0035),
	<item:artifacts:panic_necklace>                                     :new MyFloat(0.0035),
	<item:artifacts:pocket_piston>                                      :new MyFloat(0.0035),
	<item:artifacts:power_glove>                                        :new MyFloat(0.0035),
	<item:artifacts:running_shoes>                                      :new MyFloat(0.0035),
	<item:artifacts:scarf_of_invisibility>                              :new MyFloat(0.0035),
	<item:artifacts:shock_pendant>                                      :new MyFloat(0.0035),
	<item:artifacts:snorkel>                                            :new MyFloat(0.0035),
	<item:artifacts:steadfast_spikes>                                   :new MyFloat(0.0035),
	<item:artifacts:superstitious_hat>                                  :new MyFloat(0.0035),
	<item:artifacts:thorn_pendant>                                      :new MyFloat(0.0035),
	<item:artifacts:umbrella>                                           :new MyFloat(0.0035),
	<item:artifacts:universal_attractor>                                :new MyFloat(0.0035),
	<item:artifacts:vampiric_glove>                                     :new MyFloat(0.0035),
	<item:artifacts:villager_hat>                                       :new MyFloat(0.0035),
	<item:artifacts:whoopee_cushion>                                    :new MyFloat(0.0035),
	<item:paraglider:spirit_orb>                                        :new MyFloat(0.0035)
};

loot.modifiers.register("loot_epic",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:limitlessrebirth:epic>)
	]),
	(stacks, context) => {
		for item, chance in epic_loot {
			if context.random.nextFloat() < chance.value as float {
				stacks.add(item);
			}
		}
		return stacks;
	});


//loot.modifiers.register("loot_epic", LootConditions.only(LootTableIdLootCondition.create(<resource:limitlessrebirth:epic>)), CommonLootModifiers.add(<item:minecraft:iron_ingot> * 8));	

