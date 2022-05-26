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


//relics removed from loot removal list until relics updates to 1.18.2

//<item:relics:rune_of_love>,
//<item:relics:rune_of_moon>,
//<item:relics:rune_of_earth>,
//<item:relics:rune_of_luck>,
//<item:relics:rune_of_air>,
//<item:relics:rune_of_sun>,
//<item:relics:rune_of_cold>,
//<item:relics:rune_of_water>,
//<item:relics:rune_of_fire>,
//<item:relics:rune_of_explosion>,
//<item:relics:rune_of_lightning>,
//<item:relics:rune_of_redstone>,
//<item:relics:blazing_flask>,
//<item:relics:holy_locket>,
//<item:relics:stellar_catalyst>,
//<item:relics:amphibian_boot>,
//<item:relics:arrow_quiver>,
//<item:relics:bastion_ring>,
//<item:relics:camouflage_ring>,
//<item:relics:chorus_inhibitor>,
//<item:relics:delay_ring>,
//<item:relics:drowned_belt>,
//<item:relics:elytra_booster>,
//<item:relics:enders_hand>,
//<item:relics:fragrant_flower>,
//<item:relics:ghost_skin_talisman>,
//<item:relics:horse_flute>,
//<item:relics:hunter_belt>,
//<item:relics:ice_breaker>,
//<item:relics:ice_skates>,
//<item:relics:infinity_ham>,
//<item:relics:jellyfish_necklace>,
//<item:relics:leather_belt>,
//<item:relics:lucky_horseshoe>,
//<item:relics:magic_mirror>,
//<item:relics:magma_walker>,
//<item:relics:midnight_robe>,
//<item:relics:old_boot>,
//<item:relics:out_runner>,
//<item:relics:rage_glove>,
//<item:relics:reflection_necklace>,
//<item:relics:scarab_talisman>,
//<item:relics:shadow_glaive>,
//<item:relics:slime_heart>,
//<item:relics:soul_devourer>,
//<item:relics:space_dissector>,
//<item:relics:spatial_sign>,
//<item:relics:spider_necklace>,
//<item:relics:spore_sack>,
//<item:relics:squire_bag>,
//<item:relics:wool_mitten>,

public var loot_removal = [
<item:aquaculture:box>,
<item:aquaculture:lockbox>,
<item:aquaculture:treasure_chest>,
<item:ars_nouveau:amplify_arrow>,
<item:ars_nouveau:pierce_arrow>,
<item:ars_nouveau:split_arrow>,
<item:ars_nouveau:wilden_horn>,
<item:ars_nouveau:wilden_spike>,
<item:ars_nouveau:wilden_wing>,
<item:artifacts:antidote_vessel>,
<item:artifacts:aqua_dashers>,
<item:artifacts:bunny_hoppers>,
<item:artifacts:charm_of_sinking>,
<item:artifacts:cloud_in_a_bottle>,
<item:artifacts:cross_necklace>,
<item:artifacts:crystal_heart>,
<item:artifacts:digging_claws>,
<item:artifacts:eternal_steak>,
<item:artifacts:everlasting_beef>,
<item:artifacts:feral_claws>,
<item:artifacts:fire_gauntlet>,
<item:artifacts:flame_pendant>,
<item:artifacts:flippers>,
<item:artifacts:golden_hook>,
<item:artifacts:helium_flamingo>,
<item:artifacts:kitty_slippers>,
<item:artifacts:lucky_scarf>,
<item:artifacts:night_vision_goggles>,
<item:artifacts:novelty_drinking_hat>,
<item:artifacts:obsidian_skull>,
<item:artifacts:panic_necklace>,
<item:artifacts:plastic_drinking_hat>,
<item:artifacts:pocket_piston>,
<item:artifacts:power_glove>,
<item:artifacts:running_shoes>,
<item:artifacts:scarf_of_invisibility>,
<item:artifacts:shock_pendant>,
<item:artifacts:snorkel>,
<item:artifacts:steadfast_spikes>,
<item:artifacts:superstitious_hat>,
<item:artifacts:thorn_pendant>,
<item:artifacts:umbrella>,
<item:artifacts:universal_attractor>,
<item:artifacts:vampiric_glove>,
<item:artifacts:villager_hat>,
<item:artifacts:whoopee_cushion>,
<item:cyclic:antigravity>,
<item:cyclic:boomerang_stun>,
<item:cyclic:charm_antidote>,
<item:cyclic:charm_attack_speed>,
<item:cyclic:charm_boostpotion>,
<item:cyclic:charm_creeper>,
<item:cyclic:charm_crit>,
<item:cyclic:charm_fire>,
<item:cyclic:charm_home>,
<item:cyclic:charm_invisible>,
<item:cyclic:charm_knockback_resistance>,
<item:cyclic:charm_longfall>,
<item:cyclic:charm_luck>,
<item:cyclic:charm_magicdefense>,
<item:cyclic:charm_speed>,
<item:cyclic:charm_starvation>,
<item:cyclic:charm_stealthpotion>,
<item:cyclic:charm_stone>,
<item:cyclic:charm_ultimate>,
<item:cyclic:charm_venom>,
<item:cyclic:charm_void>,
<item:cyclic:charm_water>,
<item:cyclic:charm_wing>,
<item:cyclic:charm_wither>,
<item:cyclic:charm_world>,
<item:cyclic:charm_xp_blocker>,
<item:cyclic:charm_xp_speed>,
<item:cyclic:crystal_axe>,
<item:cyclic:crystal_hoe>,
<item:cyclic:crystal_pickaxe>,
<item:cyclic:crystal_shovel>,
<item:cyclic:crystal_sword>,
<item:cyclic:elevation_wand>,
<item:cyclic:ender_bag>,
<item:cyclic:ender_book>,
<item:cyclic:ender_eye_reuse>,
<item:cyclic:ender_pearl_mounted>,
<item:cyclic:ender_pearl_reuse>,
<item:cyclic:flippers>,
<item:cyclic:glove_climb>,
<item:cyclic:prospector>,
<item:cyclic:quiver_damage>,
<item:cyclic:quiver_lightning>,
<item:cyclic:spawner_seeker>,
<item:minecraft:activator_rail>,
<item:minecraft:beetroot_seeds>,
<item:minecraft:glow_berries>,
<item:minecraft:iron_nugget>,
<item:minecraft:potion>.withTag({Potion: "minecraft:luck" as string}),
<item:minecraft:powered_rail>,
<item:minecraft:pumpkin_seeds>,
<item:minecraft:redstone>,
<item:minecraft:spectral_arrow>,
<item:minecraft:stone_sword>,
<item:minecraft:tipped_arrow>,
<item:minecraft:wheat>,
<item:paraglider:spirit_orb>,
<item:quark:diamond_heart>,
<item:schoolsofmagic:letter_ccw>,
<item:supplementaries:flax_seeds>,
<item:supplementaries:rope>
]as IIngredient[];



loot.modifiers.register(
  "removing_various_curios_from_chests",
  LootConditions.only(LootTableIdRegexLootCondition.create(".*chests/.*")),
  CommonLootModifiers.removeAll(loot_removal)
);

public var all_chests = [

]as ResourceLocation[];

//ocean

//	<item:relics:amphibian_boot>            :0.04,
//	<item:relics:arrow_quiver>              :0.04,
//	<item:relics:drowned_belt>              :0.04,
//	<item:relics:hunter_belt>               :0.04,
//	<item:relics:jellyfish_necklace>        :0.04,
//	<item:relics:leather_belt>              :0.04,
//	<item:relics:old_boot>                  :0.04,
//	<item:relics:reflection_necklace>       :0.04,
//	<item:relics:spider_necklace>           :0.04,

val ocean_loot as float?[IItemStack] = {
	<item:aquaculture:box>                  :0.04f,
	<item:aquaculture:lockbox>              :0.04f,
	<item:aquaculture:treasure_chest>       :0.04f,
	<item:artifacts:antidote_vessel>        :0.04f,
	<item:artifacts:aqua_dashers>           :0.04f,
	<item:artifacts:charm_of_sinking>       :0.04f,
	<item:artifacts:flippers>               :0.04f,
	<item:artifacts:golden_hook>            :0.04f,
	<item:artifacts:helium_flamingo>        :0.04f,
	<item:artifacts:novelty_drinking_hat>   :0.04f,
	<item:artifacts:running_shoes>          :0.04f,
	<item:artifacts:snorkel>                :0.04f,
	<item:artifacts:umbrella>               :0.04f,
	<item:artifacts:whoopee_cushion>        :0.04f,
	<item:cyclic:charm_magicdefense>        :0.04f,
	<item:cyclic:charm_speed>               :0.04f,
	<item:cyclic:charm_starvation>          :0.04f,
	<item:cyclic:charm_stealthpotion>       :0.04f,
	<item:cyclic:charm_venom>               :0.04f,
	<item:cyclic:charm_water>               :0.04f,
	<item:cyclic:spell_water>               :0.04f,
	<item:minecraft:potion>                 :0.04f,
	<item:paraglider:spirit_orb>            :0.1f,
	<item:schoolsofmagic:letter_ccw>        :0.04f
};

loot.modifiers.register("loot_name_in_oceans",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/ocean>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/shipwreck_map>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/shipwreck_supply>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/underwater_ruin_big>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/underwater_ruin_small>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/buried_treasure>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/ocean>)
	]),
	(stacks, context) => {
		for item, chance in ocean_loot {
			if context.random.nextFloat() < chance {
				stacks.add(item);
			}
		}
		return stacks;
	});

//underground

//	<item:relics:ghost_skin_talisman>                                       :0.015,
//	<item:relics:infinity_ham>.withTag({charge: 0 as int})                  :0.015,
//	<item:relics:leather_belt>                                              :0.015,
//	<item:relics:magic_mirror>                                              :0.015,
//	<item:relics:old_boot>                                                  :0.015,
//	<item:relics:rage_glove>                                                :0.015,
//	<item:relics:shadow_glaive>                                             :0.015,
//	<item:relics:slime_heart>                                               :0.015,
//	<item:relics:spider_necklace>                                           :0.015,
//	<item:relics:squire_bag>                                                :0.015,

val underground_loot as float?[IItemStack] = {
	<item:aquaculture:box>                                                  :0.015f,
	<item:aquaculture:lockbox>                                              :0.015f,
	<item:aquaculture:treasure_chest>                                       :0.015f,
	<item:artifacts:antidote_vessel>                                        :0.015f,
	<item:artifacts:cross_necklace>                                         :0.015f,
	<item:artifacts:digging_claws>                                          :0.015f,
	<item:artifacts:lucky_scarf>                                            :0.015f,
	<item:artifacts:night_vision_goggles>                                   :0.015f,
	<item:artifacts:novelty_drinking_hat>                                   :0.015f,
	<item:artifacts:obsidian_skull>                                         :0.015f,
	<item:artifacts:panic_necklace>                                         :0.015f,
	<item:artifacts:pocket_piston>                                          :0.015f,
	<item:artifacts:power_glove>                                            :0.015f,
	<item:artifacts:running_shoes>                                          :0.015f,
	<item:artifacts:scarf_of_invisibility>                                  :0.015f,
	<item:artifacts:shock_pendant>                                          :0.015f,
	<item:artifacts:steadfast_spikes>                                       :0.015f,
	<item:artifacts:umbrella>                                               :0.015f,
	<item:artifacts:universal_attractor>                                    :0.015f,
	<item:artifacts:vampiric_glove>                                         :0.015f,
	<item:artifacts:whoopee_cushion>                                        :0.015f,
	<item:cyclic:charm_antidote>                                            :0.015f,
	<item:cyclic:charm_attack_speed>                                        :0.015f,
	<item:cyclic:charm_creeper>                                             :0.015f,
	<item:cyclic:charm_crit>                                                :0.015f,
	<item:cyclic:charm_fire>                                                :0.015f,
	<item:cyclic:charm_invisible>                                           :0.015f,
	<item:cyclic:charm_knockback_resistance>                                :0.015f,
	<item:cyclic:charm_longfall>                                            :0.015f,
	<item:cyclic:charm_luck>                                                :0.015f,
	<item:cyclic:charm_magicdefense>                                        :0.015f,
	<item:cyclic:charm_speed>                                               :0.015f,
	<item:cyclic:charm_stealthpotion>                                       :0.015f,
	<item:cyclic:charm_venom>                                               :0.015f,
	<item:cyclic:charm_wing>                                                :0.015f,
	<item:cyclic:charm_world>                                               :0.015f,
	<item:cyclic:charm_xp_blocker>                                          :0.015f,
	<item:cyclic:charm_xp_speed>                                            :0.015f,
	<item:cyclic:crystal_pickaxe>                                           :0.015f,
	<item:cyclic:crystal_shovel>                                            :0.015f,
	<item:cyclic:crystal_sword>                                             :0.015f,
	<item:cyclic:ender_bag>                                                 :0.015f,
	<item:cyclic:ender_eye_reuse>                                           :0.015f,
	<item:cyclic:ender_pearl_mounted>                                       :0.015f,
	<item:cyclic:ender_pearl_reuse>                                         :0.015f,
	<item:cyclic:glove_climb>                                               :0.015f,
	<item:cyclic:prospector>                                                :0.015f,
	<item:cyclic:quiver_damage>                                             :0.015f,
	<item:cyclic:spawner_seeker>                                            :0.015f,
	<item:minecraft:potion>.withTag({Potion: "minecraft:luck" as string})   :0.015f,
	<item:paraglider:spirit_orb>                                            :0.1f, 
	<item:quark:diamond_heart>                                              :0.015f,
	<item:schoolsofmagic:letter_ccw>                                        :0.015f
};

loot.modifiers.register("loot_name_in_underground",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:minecraft:chests/abandoned_mineshaft>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/simple_dungeon>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/swamp>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/deep>),
		LootTableIdLootCondition.create(<resource:valhelsia_structures:chests/spawner_dungeon>),
		LootTableIdLootCondition.create(<resource:valhelsia_structures:chests/castle_ruin>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/bastions/underground/bridge>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/bastions/underground/other>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/bastions/underground/skeleton_horse_stable>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/bastions/underground/treasure>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/birch>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/dark_forest>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/jungle>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/savanna>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/stone>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/swamp>)
	]),
	(stacks, context) => {
		for item, chance in underground_loot {
			if context.random.nextFloat() < chance {
				stacks.add(item);
			}
		}
		return stacks;
	});

//overworld

//	<item:relics:arrow_quiver>                             :0.03,
//	<item:relics:camouflage_ring>                          :0.03,
//	<item:relics:delay_ring>                               :0.03,
//	<item:relics:fragrant_flower>                          :0.03,
//	<item:relics:horse_flute>                              :0.03,
//	<item:relics:hunter_belt>                              :0.03,
//	<item:relics:infinity_ham>.withTag({charge: 0 as int}) :0.03,
//	<item:relics:leather_belt>                             :0.03,
//	<item:relics:lucky_horseshoe>                          :0.03,
//	<item:relics:old_boot>                                 :0.03,
//	<item:relics:out_runner>                               :0.03,
//	<item:relics:slime_heart>                              :0.03,
//	<item:relics:spore_sack>                               :0.03,
//	<item:relics:squire_bag>                               :0.03,

val overworld_loot as float?[IItemStack] = {
	<item:aquaculture:box>                                 :0.03f,
	<item:aquaculture:lockbox>                             :0.03f,
	<item:aquaculture:treasure_chest>                      :0.03f,
	<item:artifacts:bunny_hoppers>                         :0.03f,
	<item:artifacts:cross_necklace>                        :0.03f,
	<item:artifacts:helium_flamingo>                       :0.03f,
	<item:artifacts:kitty_slippers>                        :0.03f,
	<item:artifacts:novelty_drinking_hat>                  :0.03f,
	<item:artifacts:pocket_piston>                         :0.03f,
	<item:artifacts:power_glove>                           :0.03f,
	<item:artifacts:running_shoes>                         :0.03f,
	<item:artifacts:scarf_of_invisibility>                 :0.03f,
	<item:artifacts:thorn_pendant>                         :0.03f,
	<item:artifacts:umbrella>                              :0.03f,
	<item:artifacts:villager_hat>                          :0.03f,
	<item:artifacts:whoopee_cushion>                       :0.03f,
	<item:cyclic:charm_speed>                              :0.03f,
	<item:cyclic:charm_stealthpotion>                      :0.03f,
	<item:cyclic:charm_xp_blocker>                         :0.03f,
	<item:cyclic:crystal_axe>                              :0.03f,
	<item:cyclic:crystal_hoe>                              :0.03f,
	<item:cyclic:crystal_shovel>                           :0.03f,
	<item:cyclic:quiver_damage>                            :0.03f,
	<item:cyclic:spell_water>							   :0.03f,
	<item:paraglider:spirit_orb>                           :0.1f,
	<item:schoolsofmagic:letter_ccw>                       :0.03f
};

loot.modifiers.register("loot_name_in_overworld",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/cities/overworld>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/igloos/grassy>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/pillager_outpost>),
		LootTableIdLootCondition.create(<resource:valhelsia_structures:chests/witch_hut>),
		LootTableIdLootCondition.create(<resource:valhelsia_structures:chests/player_house>),
		LootTableIdLootCondition.create(<resource:valhelsia_structures:chests/forge>),
		LootTableIdLootCondition.create(<resource:valhelsia_structures:chests/castle>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/igloos/stone>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/igloos/mushroom>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/pyramids/mushroom>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruins/land_warm/large>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/mushroom>),
		LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/stage_1>),
		LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/stage_2>)
	]),
	(stacks, context) => {
		for item, chance in underground_loot {
			if context.random.nextFloat() < chance {
				stacks.add(item);
			}
		}
		return stacks;
	});

//villages

//	<item:relics:arrow_quiver>                             :0.025,
//	<item:relics:camouflage_ring>                          :0.025,
//	<item:relics:horse_flute>                              :0.025,
//	<item:relics:hunter_belt>                              :0.025,
//	<item:relics:infinity_ham>.withTag({charge: 0 as int}) :0.025,
//	<item:relics:leather_belt>                             :0.025,
//	<item:relics:lucky_horseshoe>                          :0.025,
//	<item:relics:magic_mirror>                             :0.025,
//	<item:relics:old_boot>                                 :0.025,
//	<item:relics:squire_bag>                               :0.025,

val village_loot as float?[IItemStack] = {
	<item:aquaculture:box>                                 :0.025f,
	<item:aquaculture:lockbox>                             :0.025f,
	<item:aquaculture:treasure_chest>                      :0.025f,
	<item:artifacts:antidote_vessel>                       :0.025f,
	<item:artifacts:bunny_hoppers>                         :0.025f,
	<item:artifacts:cloud_in_a_bottle>                     :0.025f,
	<item:artifacts:cross_necklace>                        :0.025f,
	<item:artifacts:kitty_slippers>                        :0.025f,
	<item:artifacts:lucky_scarf>                           :0.025f,
	<item:artifacts:novelty_drinking_hat>                  :0.025f,
	<item:artifacts:panic_necklace>                        :0.025f,
	<item:artifacts:running_shoes>                         :0.025f,
	<item:artifacts:superstitious_hat>                     :0.025f,
	<item:artifacts:thorn_pendant>                         :0.025f,
	<item:artifacts:umbrella>                              :0.025f,
	<item:artifacts:universal_attractor>                   :0.025f,
	<item:artifacts:vampiric_glove>                        :0.025f,
	<item:artifacts:villager_hat>                          :0.025f,
	<item:artifacts:whoopee_cushion>                       :0.025f,
	<item:cyclic:charm_stealthpotion>                      :0.025f,
	<item:cyclic:crystal_hoe>                              :0.025f,
	<item:paraglider:spirit_orb>                           :0.1f,
	<item:schoolsofmagic:letter_ccw>                       :0.025f
};

public var villages = [

]as ResourceLocation[];

loot.modifiers.register("loot_name_in_villages",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_armorer>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_butcher>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_cartographer>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_desert_house>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_fisher>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_fletcher>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_mason>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_plains_house>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_savanna_house>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_shepherd>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_snowy_house>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_taiga_house>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_tannery>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_temple>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_toolsmith>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_weaponsmith>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mansions/birch_storage>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mansions/desert_storage>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mansions/jungle_storage>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mansions/oak_storage>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mansions/savanna_storage>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mansions/snowy_storage>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/badlands_house>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/crimson_cartographer>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/crimson_fisher>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/crimson_house>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/crimson_tannery>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/crimson_weaponsmith>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/dark_forest_house>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/giant_taiga_house>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/jungle_house>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/mountains_house>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/mushroom_house>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/oak_house>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/swamp_house>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/warped_cartographer>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/warped_fisher>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/warped_house>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/warped_tannery>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/warped_weaponsmith>),
		LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/food>),
		LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/forge>),
		LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/library>),
		LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/supply>)
	]),
	(stacks, context) => {
		for item, chance in village_loot {
			if context.random.nextFloat() < chance {
				stacks.add(item);
			}
		}
		return stacks;
	});

//desert

//	<item:relics:blazing_flask>                                           :0.02,
//	<item:relics:holy_locket>                                             :0.02,
//	<item:relics:infinity_ham>.withTag({charge: 0 as int})                :0.02,
//	<item:relics:leather_belt>                                            :0.02,
//	<item:relics:lucky_horseshoe>                                         :0.02,
//	<item:relics:magic_mirror>                                            :0.02,
//	<item:relics:magma_walker>                                            :0.02,
//	<item:relics:out_runner>                                              :0.02,
//	<item:relics:rage_glove>                                              :0.02,
//	<item:relics:scarab_talisman>                                         :0.08,
//	<item:relics:spider_necklace>                                         :0.02,
//	<item:relics:squire_bag>                                              :0.02,

val desert_loot as float?[IItemStack] = {
	<item:aquaculture:box>                                                :0.02f,
	<item:aquaculture:lockbox>                                            :0.02f,
	<item:aquaculture:treasure_chest>                                     :0.02f,
	<item:artifacts:bunny_hoppers>                                        :0.02f,
	<item:artifacts:cross_necklace>                                       :0.02f,
	<item:artifacts:digging_claws>                                        :0.02f,
	<item:artifacts:feral_claws>                                          :0.02f,
	<item:artifacts:fire_gauntlet>                                        :0.02f,
	<item:artifacts:flame_pendant>                                        :0.02f,
	<item:artifacts:lucky_scarf>                                          :0.02f,
	<item:artifacts:novelty_drinking_hat>                                 :0.02f,
	<item:artifacts:obsidian_skull>                                       :0.02f,
	<item:artifacts:panic_necklace>                                       :0.02f,
	<item:artifacts:pocket_piston>                                        :0.02f,
	<item:artifacts:power_glove>                                          :0.02f,
	<item:artifacts:running_shoes>                                        :0.02f,
	<item:artifacts:scarf_of_invisibility>                                :0.02f,
	<item:artifacts:steadfast_spikes>                                     :0.02f,
	<item:artifacts:vampiric_glove>                                       :0.02f,
	<item:cyclic:charm_creeper>                                           :0.02f,
	<item:cyclic:charm_fire>                                              :0.02f,
	<item:cyclic:charm_invisible>                                         :0.02f,
	<item:cyclic:charm_knockback_resistance>                              :0.02f,
	<item:cyclic:charm_longfall>                                          :0.02f,
	<item:cyclic:charm_magicdefense>                                      :0.02f,
	<item:cyclic:charm_speed>                                             :0.02f,
	<item:cyclic:charm_stealthpotion>                                     :0.02f,
	<item:cyclic:charm_venom>                                             :0.02f,
	<item:cyclic:charm_wing>                                              :0.02f,
	<item:cyclic:charm_world>                                             :0.02f,
	<item:cyclic:charm_xp_blocker>                                        :0.02f,
	<item:cyclic:charm_xp_speed>                                          :0.02f,
	<item:cyclic:crystal_pickaxe>                                         :0.02f,
	<item:cyclic:crystal_shovel>                                          :0.02f,
	<item:cyclic:crystal_sword>                                           :0.02f,
	<item:cyclic:ender_eye_reuse>                                         :0.02f,
	<item:cyclic:spawner_seeker>                                          :0.02f,
	<item:minecraft:potion>.withTag({Potion: "minecraft:luck" as string}) :0.02f,
	<item:paraglider:spirit_orb>                                          :0.1f,
	<item:schoolsofmagic:letter_ccw>                                      :0.02f
};

loot.modifiers.register("loot_name_in_deserts",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/badlands>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/desert>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/desert_pyramid>),
		LootTableIdLootCondition.create(<resource:valhelsia_structures:chests/desert_house>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/desert>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/outposts/badlands>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/outposts/desert>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruins/land_hot/large>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruins/land_hot/small>)
	]),
	(stacks, context) => {
		for item, chance in desert_loot {
			if context.random.nextFloat() < chance {
				stacks.add(item);
			}
		}
		return stacks;
	});

//forest

//	<item:relics:arrow_quiver>                                             :0.025,
//	<item:relics:camouflage_ring>                                          :0.025,
//	<item:relics:fragrant_flower>                                          :0.025,
//	<item:relics:horse_flute>                                              :0.025,
//	<item:relics:hunter_belt>                                              :0.025
//	<item:relics:infinity_ham>.withTag({charge: 0 as int})                 :0.025,
//	<item:relics:leather_belt>                                             :0.025,
//	<item:relics:lucky_horseshoe>                                          :0.025,
//	<item:relics:magic_mirror>                                             :0.025,
//	<item:relics:old_boot>                                                 :0.025,
//	<item:relics:out_runner>                                               :0.025,
//	<item:relics:spider_necklace>                                          :0.025,
//	<item:relics:spore_sack>                                               :0.025,
//	<item:relics:squire_bag>                                               :0.025,

val forest_loot as float?[IItemStack] = {
	<item:aquaculture:box>                                                 :0.025f,
	<item:aquaculture:lockbox>                                             :0.025f,
	<item:aquaculture:treasure_chest>                                      :0.025f,
	<item:artifacts:antidote_vessel>                                       :0.025f,
	<item:artifacts:feral_claws>                                           :0.025f,
	<item:artifacts:lucky_scarf>                                           :0.025f,
	<item:artifacts:panic_necklace>                                        :0.025f,
	<item:artifacts:pocket_piston>                                         :0.025f,
	<item:artifacts:running_shoes>                                         :0.025f,
	<item:artifacts:steadfast_spikes>                                      :0.025f,
	<item:artifacts:superstitious_hat>                                     :0.025f,
	<item:artifacts:thorn_pendant>                                         :0.025f,
	<item:artifacts:umbrella>                                              :0.025f,
	<item:artifacts:villager_hat>                                          :0.025f,
	<item:cyclic:charm_antidote>                                           :0.025f,
	<item:cyclic:charm_attack_speed>                                       :0.025f,
	<item:cyclic:charm_creeper>                                            :0.025f,
	<item:cyclic:charm_home>                                               :0.025f,
	<item:cyclic:charm_longfall>                                           :0.025f,
	<item:cyclic:charm_speed>                                              :0.025f,
	<item:cyclic:charm_stealthpotion>                                      :0.025f,
	<item:cyclic:charm_wing>                                               :0.025f,
	<item:cyclic:crystal_axe>                                              :0.025f,
	<item:cyclic:crystal_hoe>                                              :0.025f,
	<item:cyclic:crystal_shovel>                                           :0.025f,
	<item:cyclic:quiver_damage>                                            :0.025f,
	<item:cyclic:spawner_seeker>                                           :0.025f,
	<item:minecraft:potion>.withTag({Potion: "minecraft:luck" as string})  :0.025f,
	<item:paraglider:spirit_orb>                                           :0.1f,
	<item:schoolsofmagic:letter_ccw>                                       :0.025f
};

loot.modifiers.register("loot_name_in_forests",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/dark_forest>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/jungle>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/fortresses/jungle_center>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/fortresses/jungle_hallway>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/fortresses/jungle_shrine>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/jungle_temple>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/outposts/birch>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/outposts/giant_tree_taiga>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/outposts/jungle>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/outposts/oak>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/outposts/taiga>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/pyramids/dark_forest>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/pyramids/flower_forest>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/pyramids/giant_tree_taiga>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/pyramids/jungle>),
		LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/stage_3>),
		LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/stage_4>)		
	]),
	(stacks, context) => {
		for item, chance in forest_loot {
			if context.random.nextFloat() < chance {
				stacks.add(item);
			}
		}
		return stacks;
	});


//frozen

//	<item:relics:amphibian_boot>                           :0.03,
//	<item:relics:drowned_belt>                             :0.03,
//	<item:relics:hunter_belt>                              :0.03,
//	<item:relics:ice_breaker>                              :0.03,
//	<item:relics:ice_skates>                               :0.03,
//	<item:relics:infinity_ham>.withTag({charge: 0 as int}) :0.03,
//	<item:relics:jellyfish_necklace>                       :0.03
//	<item:relics:lucky_horseshoe>                          :0.03,
//	<item:relics:magic_mirror>                             :0.03,
//	<item:relics:wool_mitten>                              :0.03,

val frozen_loot as float?[IItemStack] = {
	<item:aquaculture:box>                                 :0.03f,
	<item:aquaculture:lockbox>                             :0.03f,
	<item:aquaculture:treasure_chest>                      :0.03f,
	<item:artifacts:aqua_dashers>                          :0.03f,
	<item:artifacts:bunny_hoppers>                         :0.03f,
	<item:artifacts:charm_of_sinking>                      :0.03f,
	<item:artifacts:cross_necklace>                        :0.03f,
	<item:artifacts:digging_claws>                         :0.03f,
	<item:artifacts:feral_claws>                           :0.03f,
	<item:artifacts:flippers>                              :0.03f,
	<item:artifacts:golden_hook>                           :0.03f,
	<item:artifacts:helium_flamingo>                       :0.03f,
	<item:artifacts:panic_necklace>                        :0.03f,
	<item:artifacts:scarf_of_invisibility>                 :0.03f,
	<item:artifacts:shock_pendant>                         :0.03f,
	<item:artifacts:snorkel>                               :0.03f,
	<item:artifacts:steadfast_spikes>                      :0.03f,
	<item:artifacts:umbrella>                              :0.03f,
	<item:artifacts:universal_attractor>                   :0.03f,
	<item:cyclic:charm_speed>                              :0.03f,
	<item:cyclic:charm_stealthpotion>                      :0.03f,
	<item:cyclic:charm_water>                              :0.03f,
	<item:cyclic:crystal_axe>                              :0.03f,
	<item:cyclic:crystal_pickaxe>                          :0.03f,
	<item:cyclic:crystal_shovel>                           :0.03f,
	<item:cyclic:glove_climb>                              :0.03f,
	<item:cyclic:spawner_seeker>                           :0.03f,
	<item:paraglider:spirit_orb>                           :0.1f,
	<item:schoolsofmagic:letter_ccw>                       :0.03f
};

loot.modifiers.register("loot_name_in_frozen",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/icy>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/snow>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/igloo_chest>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/icy>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/taiga>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/outposts/icy>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/outposts/snowy>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/pyramids/icy>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/pyramids/snowy>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruins/land_cold/large>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruins/land_icy/large>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruins/land_icy/small>)
	]),
	(stacks, context) => {
		for item, chance in frozen_loot {
			if context.random.nextFloat() < chance {
				stacks.add(item);
			}
		}
		return stacks;
	});

//nether

//	<item:relics:arrow_quiver>                                             :0.02,
//	<item:relics:bastion_ring>                                             :0.02,
//	<item:relics:blazing_flask>                                            :0.02,
//	<item:relics:ghost_skin_talisman>                                      :0.02,
//	<item:relics:holy_locket>                                              :0.02,
//	<item:relics:infinity_ham>.withTag({charge: 0 as int})                 :0.02,
//	<item:relics:lucky_horseshoe>                                          :0.02,
//	<item:relics:magic_mirror>                                             :0.02,
//	<item:relics:magma_walker>                                             :0.02,
//	<item:relics:midnight_robe>                                            :0.02,
//	<item:relics:rage_glove>                                               :0.02,
//	<item:relics:reflection_necklace>                                      :0.02,
//	<item:relics:soul_devourer>                                            :0.02,
//	<item:relics:spatial_sign>                                             :0.02,

val nether_loot as float?[IItemStack] = {
	<item:aquaculture:box>                                                 :0.02f,
	<item:aquaculture:lockbox>                                             :0.02f,
	<item:aquaculture:treasure_chest>                                      :0.02f,
	<item:artifacts:cloud_in_a_bottle>                                     :0.02f,
	<item:artifacts:cross_necklace>                                        :0.02f,
	<item:artifacts:fire_gauntlet>                                         :0.02f,
	<item:artifacts:flame_pendant>                                         :0.02f,
	<item:artifacts:lucky_scarf>                                           :0.02f,
	<item:artifacts:obsidian_skull>                                        :0.02f,
	<item:artifacts:panic_necklace>                                        :0.02f,
	<item:artifacts:power_glove>                                           :0.02f,
	<item:artifacts:running_shoes>                                         :0.02f,
	<item:artifacts:scarf_of_invisibility>                                 :0.02f,
	<item:artifacts:steadfast_spikes>                                      :0.02f,
	<item:artifacts:umbrella>                                              :0.02f,
	<item:artifacts:universal_attractor>                                   :0.02f,
	<item:artifacts:vampiric_glove>                                        :0.02f,
	<item:cyclic:charm_attack_speed>                                       :0.02f,
	<item:cyclic:charm_boostpotion>                                        :0.02f,
	<item:cyclic:charm_creeper>                                            :0.02f,
	<item:cyclic:charm_crit>                                               :0.02f,
	<item:cyclic:charm_fire>                                               :0.02f,
	<item:cyclic:charm_invisible>                                          :0.02f,
	<item:cyclic:charm_knockback_resistance>                               :0.02f,
	<item:cyclic:charm_longfall>                                           :0.02f,
	<item:cyclic:charm_magicdefense>                                       :0.02f,
	<item:cyclic:charm_speed>                                              :0.02f,
	<item:cyclic:charm_stealthpotion>                                      :0.02f,
	<item:cyclic:charm_ultimate>                                           :0.02f,
	<item:cyclic:charm_wing>                                               :0.02f,
	<item:cyclic:charm_wither>                                             :0.02f,
	<item:cyclic:charm_world>                                              :0.02f,
	<item:cyclic:crystal_axe>                                              :0.02f,
	<item:cyclic:crystal_pickaxe>                                          :0.02f,
	<item:cyclic:crystal_sword>                                            :0.02f,
	<item:cyclic:ender_eye_reuse>                                          :0.02f,
	<item:cyclic:ender_pearl_reuse>                                        :0.02f,
	<item:cyclic:glove_climb>                                              :0.02f,
	<item:cyclic:quiver_lightning>                                         :0.02f,
	<item:cyclic:spawner_seeker>                                           :0.02f,
	<item:minecraft:potion>.withTag({Potion: "minecraft:luck" as string})  :0.02f,
	<item:paraglider:spirit_orb>                                           :0.1f,
	<item:schoolsofmagic:letter_ccw>                                       :0.02f
};

loot.modifiers.register("loot_name_in_nether",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/cities/nether>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/nether>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/bastion_bridge>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/bastion_hoglin_stable>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/bastion_other>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/bastion_treasure>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/nether_bridge>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/ruined_portal>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/crimson>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/nether>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/warped>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/outposts/crimson>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/crimson/supply>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/crimson/map>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruins/nether>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/outposts/nether_brick>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/outposts/warped>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/warped/map>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/warped/supply>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/strongholds/nether_hallway>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/strongholds/nether_library>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/strongholds/nether_storage_room>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/temples/basalt>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/temples/crimson>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/temples/soul>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/temples/warped>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/temples/wasteland>)
	]),
	(stacks, context) => {
		for item, chance in nether_loot {
			if context.random.nextFloat() < chance {
				stacks.add(item);
			}
		}
		return stacks;
	});


//end

//	<item:relics:arrow_quiver>                                            :0.02,
//	<item:relics:chorus_inhibitor>                                        :0.02,
//	<item:relics:elytra_booster>                                          :0.02,
//	<item:relics:enders_hand>                                             :0.02,
//	<item:relics:ghost_skin_talisman>                                     :0.02,
//	<item:relics:lucky_horseshoe>                                         :0.02,
//	<item:relics:magic_mirror>                                            :0.02,
//	<item:relics:midnight_robe>                                           :0.02,
//	<item:relics:rage_glove>                                              :0.02,
//	<item:relics:reflection_necklace>                                     :0.02,
//	<item:relics:shadow_glaive>.withTag({time: 0 as int})                 :0.02,
//	<item:relics:soul_devourer>                                           :0.02,
//	<item:relics:space_dissector>                                         :0.02,
//	<item:relics:spatial_sign>                                            :0.02,
//	<item:relics:stellar_catalyst>                                        :0.02,

val end_loot as float?[IItemStack] = {
	<item:aquaculture:box>                                                :0.02f,
	<item:aquaculture:lockbox>                                            :0.02f,
	<item:aquaculture:treasure_chest>                                     :0.02f,
	<item:artifacts:feral_claws>                                          :0.02f,
	<item:artifacts:lucky_scarf>                                          :0.02f,
	<item:artifacts:power_glove>                                          :0.02f,
	<item:artifacts:scarf_of_invisibility>                                :0.02f,
	<item:artifacts:shock_pendant>                                        :0.02f,
	<item:artifacts:universal_attractor>                                  :0.02f,
	<item:cyclic:antigravity>                                             :0.02f,
	<item:cyclic:charm_attack_speed>                                      :0.02f,
	<item:cyclic:charm_boostpotion>                                       :0.02f,
	<item:cyclic:charm_creeper>                                           :0.02f,
	<item:cyclic:charm_crit>                                              :0.02f,
	<item:cyclic:charm_home>                                              :0.02f,
	<item:cyclic:charm_invisible>                                         :0.02f,
	<item:cyclic:charm_knockback_resistance>                              :0.02f,
	<item:cyclic:charm_longfall>                                          :0.02f,
	<item:cyclic:charm_magicdefense>                                      :0.02f,
	<item:cyclic:charm_speed>                                             :0.02f,
	<item:cyclic:charm_starvation>                                        :0.02f,
	<item:cyclic:charm_stealthpotion>                                     :0.02f,
	<item:cyclic:charm_stone>                                             :0.02f,
	<item:cyclic:charm_ultimate>                                          :0.02f,
	<item:cyclic:charm_venom>                                             :0.02f,
	<item:cyclic:charm_void>                                              :0.02f,
	<item:cyclic:charm_wing>                                              :0.02f,
	<item:cyclic:charm_world>                                             :0.02f,
	<item:cyclic:charm_xp_speed>                                          :0.02f,
	<item:cyclic:crystal_pickaxe>                                         :0.02f,
	<item:cyclic:crystal_sword>                                           :0.02f,
	<item:cyclic:elevation_wand>                                          :0.02f,
	<item:cyclic:ender_bag>                                               :0.02f,
	<item:cyclic:ender_book>                                              :0.02f,
	<item:cyclic:ender_pearl_mounted>                                     :0.02f,
	<item:cyclic:ender_pearl_reuse>                                       :0.02f,
	<item:minecraft:potion>.withTag({Potion: "minecraft:luck" as string}) :0.02f,
	<item:paraglider:spirit_orb>                                          :0.1f,
	<item:quark:diamond_heart>                                            :0.02f,
	<item:schoolsofmagic:letter_ccw>                                      :0.02f
};

loot.modifiers.register("loot_name_in_ender",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:minecraft:chests/end_city_treasure>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/stronghold_corridor>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/stronghold_crossing>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/end>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/pyramids/end>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/end/map>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/end/supply>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruined_portals/end/large_portal>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruined_portals/end/small_portal>)
	]),
	(stacks, context) => {
		for item, chance in end_loot {
			if context.random.nextFloat() < chance {
				stacks.add(item);
			}
		}
		return stacks;
	});

//treasures

//relics moved out until relics updated to 1.18.2
//	<item:relics:amphibian_boot>                                           :0.005,
//	<item:relics:arrow_quiver>                                             :0.005,
//	<item:relics:bastion_ring>                                             :0.005,
//	<item:relics:blazing_flask>                                            :0.005,
//	<item:relics:camouflage_ring>                                          :0.005,
//	<item:relics:chorus_inhibitor>                                         :0.005,
//	<item:relics:delay_ring>                                               :0.005,
//	<item:relics:drowned_belt>                                             :0.005,
//	<item:relics:elytra_booster>                                           :0.005,
//	<item:relics:enders_hand>                                              :0.005,
//	<item:relics:fragrant_flower>                                          :0.005,
//	<item:relics:ghost_skin_talisman>                                      :0.005,
//	<item:relics:holy_locket>                                              :0.005,
//	<item:relics:horse_flute>                                              :0.005,
//	<item:relics:hunter_belt>                                              :0.005,
//	<item:relics:ice_breaker>                                              :0.005,
//	<item:relics:ice_skates>                                               :0.005,
//	<item:relics:infinity_ham>.withTag({charge: 0 as int})                 :0.005,
//	<item:relics:jellyfish_necklace>                                       :0.005,
//	<item:relics:leather_belt>                                             :0.005,
//	<item:relics:lucky_horseshoe>                                          :0.005,
//	<item:relics:magic_mirror>                                             :0.005,
//	<item:relics:magma_walker>                                             :0.005,
//	<item:relics:midnight_robe>                                            :0.005,
//	<item:relics:old_boot>                                                 :0.005,
//	<item:relics:out_runner>                                               :0.005,
//	<item:relics:rage_glove>                                               :0.005,
//	<item:relics:reflection_necklace>                                      :0.005,
//	<item:relics:scarab_talisman>                                          :0.005,
//	<item:relics:shadow_glaive>.withTag({time: 0 as int})                  :0.005,
//	<item:relics:slime_heart>                                              :0.005,
//	<item:relics:soul_devourer>                                            :0.005,
//	<item:relics:space_dissector>                                          :0.005,
//	<item:relics:spatial_sign>                                             :0.005,
//	<item:relics:spider_necklace>                                          :0.005,
//	<item:relics:spore_sack>                                               :0.005,
//	<item:relics:squire_bag>                                               :0.005,
//	<item:relics:stellar_catalyst>                                         :0.005,
//	<item:relics:wool_mitten>                                              :0.005,

val treasure_loot as float?[IItemStack] = {
	<item:aquaculture:box>                                                 :0.005f,
	<item:aquaculture:lockbox>                                             :0.005f,
	<item:aquaculture:treasure_chest>                                      :0.005f,
	<item:artifacts:antidote_vessel>                                       :0.005f,
	<item:artifacts:aqua_dashers>                                          :0.005f,
	<item:artifacts:bunny_hoppers>                                         :0.005f,
	<item:artifacts:charm_of_sinking>                                      :0.005f,
	<item:artifacts:cloud_in_a_bottle>                                     :0.005f,
	<item:artifacts:cross_necklace>                                        :0.005f,
	<item:artifacts:digging_claws>                                         :0.005f,
	<item:artifacts:feral_claws>                                           :0.005f,
	<item:artifacts:fire_gauntlet>                                         :0.005f,
	<item:artifacts:flame_pendant>                                         :0.005f,
	<item:artifacts:flippers>                                              :0.005f,
	<item:artifacts:golden_hook>                                           :0.005f,
	<item:artifacts:helium_flamingo>                                       :0.005f,
	<item:artifacts:kitty_slippers>                                        :0.005f,
	<item:artifacts:lucky_scarf>                                           :0.005f,
	<item:artifacts:night_vision_goggles>                                  :0.005f,
	<item:artifacts:novelty_drinking_hat>                                  :0.005f,
	<item:artifacts:obsidian_skull>                                        :0.005f,
	<item:artifacts:panic_necklace>                                        :0.005f,
	<item:artifacts:plastic_drinking_hat>                                  :0.005f,
	<item:artifacts:pocket_piston>                                         :0.005f,
	<item:artifacts:power_glove>                                           :0.005f,
	<item:artifacts:running_shoes>                                         :0.005f,
	<item:artifacts:scarf_of_invisibility>                                 :0.005f,
	<item:artifacts:shock_pendant>                                         :0.005f,
	<item:artifacts:snorkel>                                               :0.005f,
	<item:artifacts:steadfast_spikes>                                      :0.005f,
	<item:artifacts:superstitious_hat>                                     :0.005f,
	<item:artifacts:thorn_pendant>                                         :0.005f,
	<item:artifacts:umbrella>                                              :0.005f,
	<item:artifacts:universal_attractor>                                   :0.005f,
	<item:artifacts:vampiric_glove>                                        :0.005f,
	<item:artifacts:villager_hat>                                          :0.005f,
	<item:artifacts:whoopee_cushion>                                       :0.005f,
	<item:cyclic:antigravity>                                              :0.005f,
	<item:cyclic:boomerang_stun>                                           :0.005f,
	<item:cyclic:charm_antidote>                                           :0.005f,
	<item:cyclic:charm_attack_speed>                                       :0.005f,
	<item:cyclic:charm_boostpotion>                                        :0.005f,
	<item:cyclic:charm_creeper>                                            :0.005f,
	<item:cyclic:charm_crit>                                               :0.005f,
	<item:cyclic:charm_fire>                                               :0.005f,
	<item:cyclic:charm_home>                                               :0.005f,
	<item:cyclic:charm_invisible>                                          :0.005f,
	<item:cyclic:charm_knockback_resistance>                               :0.005f,
	<item:cyclic:charm_longfall>                                           :0.005f,
	<item:cyclic:charm_magicdefense>                                       :0.005f,
	<item:cyclic:charm_speed>                                              :0.005f,
	<item:cyclic:charm_starvation>                                         :0.005f,
	<item:cyclic:charm_stealthpotion>                                      :0.005f,
	<item:cyclic:charm_stone>                                              :0.005f,
	<item:cyclic:charm_ultimate>                                           :0.001f,
	<item:cyclic:charm_venom>                                              :0.005f,
	<item:cyclic:charm_void>                                               :0.005f,
	<item:cyclic:charm_water>                                              :0.005f,
	<item:cyclic:charm_wing>                                               :0.005f,
	<item:cyclic:charm_wither>                                             :0.005f,
	<item:cyclic:charm_world>                                              :0.005f,
	<item:cyclic:charm_xp_blocker>                                         :0.005f,
	<item:cyclic:charm_xp_speed>                                           :0.005f,
	<item:cyclic:crystal_axe>                                              :0.005f,
	<item:cyclic:crystal_hoe>                                              :0.005f,
	<item:cyclic:crystal_pickaxe>                                          :0.005f,
	<item:cyclic:crystal_shovel>                                           :0.005f,
	<item:cyclic:crystal_sword>                                            :0.005f,
	<item:cyclic:elevation_wand>										   :0.005f,
	<item:cyclic:ender_bag>                                                :0.005f,
	<item:cyclic:ender_book>                                               :0.005f,
	<item:cyclic:ender_eye_reuse>                                          :0.005f,
	<item:cyclic:ender_pearl_mounted>                                      :0.005f,
	<item:cyclic:ender_pearl_reuse>                                        :0.005f,
	<item:cyclic:glove_climb>                                              :0.005f,
	<item:cyclic:prospector>                                               :0.005f,
	<item:cyclic:quiver_damage>                                            :0.005f,
	<item:cyclic:quiver_lightning>                                         :0.005f,
	<item:cyclic:spawner_seeker>                                           :0.005f,
	<item:minecraft:potion>.withTag({Potion: "minecraft:luck" as string})  :0.005f,
	<item:paraglider:spirit_orb>                                           :0.1f,
	<item:quark:diamond_heart>                                             :0.005f,
	<item:schoolsofmagic:letter_ccw>                                       :0.005f
};

loot.modifiers.register("loot_name_in_treasure",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:valhelsia_structures:chests/treasure>),
		LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/treasure>),
		LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/secret_room>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/nether_bricks/treasure>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/shipwreck_treasure>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/crimson/treasure>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/end/treasure>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/warped/treasure>),
		LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/stage_5>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/woodland_mansion>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mansions/birch>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mansions/desert>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mansions/jungle>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mansions/oak>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mansions/savanna>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mansions/snowy>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mansions/taiga>)
	]),
	(stacks, context) => {
		for item, chance in treasure_loot {
			if context.random.nextFloat() < chance {
				stacks.add(item);
			}
		}
		return stacks;
	});