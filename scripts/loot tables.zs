#priority 100

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

public class MyFloat {

public var value as float : get;

public this(value as float) {
this.value =value;
} 
}


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
<item:paraglider:spirit_orb>
]as IIngredient[];



loot.modifiers.register(
  "removing_various_curios_from_chests",
  LootConditions.only(LootTableIdRegexLootCondition.create(".*chests/.*")),
  CommonLootModifiers.removeAll(loot_removal)
);

public var all_chests = [

]as ResourceLocation[];

//ocean

//	<item:relics:amphibian_boot>            :new MyFloat(0.04),
//	<item:relics:arrow_quiver>              :new MyFloat(0.04),
//	<item:relics:drowned_belt>              :new MyFloat(0.04),
//	<item:relics:hunter_belt>               :new MyFloat(0.04),
//	<item:relics:jellyfish_necklace>        :new MyFloat(0.04),
//	<item:relics:leather_belt>              :new MyFloat(0.04),
//	<item:relics:old_boot>                  :new MyFloat(0.04),
//	<item:relics:reflection_necklace>       :new MyFloat(0.04),
//	<item:relics:spider_necklace>           :new MyFloat(0.04),

val ocean_loot as MyFloat[IItemStack] = {
	<item:artifacts:antidote_vessel>        :new MyFloat(0.04),
	<item:artifacts:aqua_dashers>           :new MyFloat(0.04),
	<item:artifacts:charm_of_sinking>       :new MyFloat(0.04),
	<item:artifacts:flippers>               :new MyFloat(0.04),
	<item:artifacts:golden_hook>            :new MyFloat(0.04),
	<item:artifacts:helium_flamingo>        :new MyFloat(0.04),
	<item:artifacts:novelty_drinking_hat>   :new MyFloat(0.04),
	<item:artifacts:running_shoes>          :new MyFloat(0.04),
	<item:artifacts:snorkel>                :new MyFloat(0.04),
	<item:artifacts:umbrella>               :new MyFloat(0.04),
	<item:artifacts:whoopee_cushion>        :new MyFloat(0.04),
	<item:minecraft:potion>                 :new MyFloat(0.04),
	<item:paraglider:spirit_orb>            :new MyFloat(0.01)
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
			if context.random.nextFloat() < chance.value as float{
				stacks.add(item);
			}
		}
		return stacks;
	});

//underground

//	<item:relics:ghost_skin_talisman>                                       :new MyFloat(0.015),
//	<item:relics:infinity_ham>.withTag({charge: 0 as int})                  :new MyFloat(0.015),
//	<item:relics:leather_belt>                                              :new MyFloat(0.015),
//	<item:relics:magic_mirror>                                              :new MyFloat(0.015),
//	<item:relics:old_boot>                                                  :new MyFloat(0.015),
//	<item:relics:rage_glove>                                                :new MyFloat(0.015),
//	<item:relics:shadow_glaive>                                             :new MyFloat(0.015),
//	<item:relics:slime_heart>                                               :new MyFloat(0.015),
//	<item:relics:spider_necklace>                                           :new MyFloat(0.015),
//	<item:relics:squire_bag>                                                :new MyFloat(0.015),

val underground_loot as MyFloat[IItemStack] = {
	<item:artifacts:antidote_vessel>                                        :new MyFloat(0.015),
	<item:artifacts:cross_necklace>                                         :new MyFloat(0.015),
	<item:artifacts:digging_claws>                                          :new MyFloat(0.015),
	<item:artifacts:lucky_scarf>                                            :new MyFloat(0.015),
	<item:artifacts:night_vision_goggles>                                   :new MyFloat(0.015),
	<item:artifacts:novelty_drinking_hat>                                   :new MyFloat(0.015),
	<item:artifacts:obsidian_skull>                                         :new MyFloat(0.015),
	<item:artifacts:panic_necklace>                                         :new MyFloat(0.015),
	<item:artifacts:pocket_piston>                                          :new MyFloat(0.015),
	<item:artifacts:power_glove>                                            :new MyFloat(0.015),
	<item:artifacts:running_shoes>                                          :new MyFloat(0.015),
	<item:artifacts:scarf_of_invisibility>                                  :new MyFloat(0.015),
	<item:artifacts:shock_pendant>                                          :new MyFloat(0.015),
	<item:artifacts:steadfast_spikes>                                       :new MyFloat(0.015),
	<item:artifacts:umbrella>                                               :new MyFloat(0.015),
	<item:artifacts:universal_attractor>                                    :new MyFloat(0.015),
	<item:artifacts:vampiric_glove>                                         :new MyFloat(0.015),
	<item:artifacts:whoopee_cushion>                                        :new MyFloat(0.015),
	<item:minecraft:potion>.withTag({Potion: "minecraft:luck" as string})   :new MyFloat(0.015),
	<item:paraglider:spirit_orb>                                            :new MyFloat(0.01)
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
			if context.random.nextFloat() < chance.value as float{
				stacks.add(item);
			}
		}
		return stacks;
	});

//overworld

//	<item:relics:arrow_quiver>                             :new MyFloat(0.035),
//	<item:relics:camouflage_ring>                          :new MyFloat(0.035),
//	<item:relics:delay_ring>                               :new MyFloat(0.035),
//	<item:relics:fragrant_flower>                          :new MyFloat(0.035),
//	<item:relics:horse_flute>                              :new MyFloat(0.035),
//	<item:relics:hunter_belt>                              :new MyFloat(0.035),
//	<item:relics:infinity_ham>.withTag({charge: 0 as int}) :new MyFloat(0.035),
//	<item:relics:leather_belt>                             :new MyFloat(0.035),
//	<item:relics:lucky_horseshoe>                          :new MyFloat(0.035),
//	<item:relics:old_boot>                                 :new MyFloat(0.035),
//	<item:relics:out_runner>                               :new MyFloat(0.035),
//	<item:relics:slime_heart>                              :new MyFloat(0.035),
//	<item:relics:spore_sack>                               :new MyFloat(0.035),
//	<item:relics:squire_bag>                               :new MyFloat(0.035),

val overworld_loot as MyFloat[IItemStack] = {
	<item:artifacts:bunny_hoppers>                         :new MyFloat(0.03),
	<item:artifacts:cross_necklace>                        :new MyFloat(0.03),
	<item:artifacts:helium_flamingo>                       :new MyFloat(0.03),
	<item:artifacts:kitty_slippers>                        :new MyFloat(0.03),
	<item:artifacts:novelty_drinking_hat>                  :new MyFloat(0.03),
	<item:artifacts:pocket_piston>                         :new MyFloat(0.03),
	<item:artifacts:power_glove>                           :new MyFloat(0.03),
	<item:artifacts:running_shoes>                         :new MyFloat(0.03),
	<item:artifacts:scarf_of_invisibility>                 :new MyFloat(0.03),
	<item:artifacts:thorn_pendant>                         :new MyFloat(0.03),
	<item:artifacts:umbrella>                              :new MyFloat(0.03),
	<item:artifacts:villager_hat>                          :new MyFloat(0.03),
	<item:artifacts:whoopee_cushion>                       :new MyFloat(0.03),
	<item:paraglider:spirit_orb>                           :new MyFloat(0.01)
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
			if context.random.nextFloat() < chance.value as float{
				stacks.add(item);
			}
		}
		return stacks;
	});

//villages

//	<item:relics:arrow_quiver>                             :new MyFloat(0.02)5,
//	<item:relics:camouflage_ring>                          :new MyFloat(0.02)5,
//	<item:relics:horse_flute>                              :new MyFloat(0.02)5,
//	<item:relics:hunter_belt>                              :new MyFloat(0.02)5,
//	<item:relics:infinity_ham>.withTag({charge: 0 as int}) :new MyFloat(0.02)5,
//	<item:relics:leather_belt>                             :new MyFloat(0.02)5,
//	<item:relics:lucky_horseshoe>                          :new MyFloat(0.02)5,
//	<item:relics:magic_mirror>                             :new MyFloat(0.02)5,
//	<item:relics:old_boot>                                 :new MyFloat(0.02)5,
//	<item:relics:squire_bag>                               :new MyFloat(0.02)5,

val village_loot as MyFloat[IItemStack] = {
	<item:artifacts:antidote_vessel>                       :new MyFloat(0.025),
	<item:artifacts:bunny_hoppers>                         :new MyFloat(0.025),
	<item:artifacts:cloud_in_a_bottle>                     :new MyFloat(0.025),
	<item:artifacts:cross_necklace>                        :new MyFloat(0.025),
	<item:artifacts:kitty_slippers>                        :new MyFloat(0.025),
	<item:artifacts:lucky_scarf>                           :new MyFloat(0.025),
	<item:artifacts:novelty_drinking_hat>                  :new MyFloat(0.025),
	<item:artifacts:panic_necklace>                        :new MyFloat(0.025),
	<item:artifacts:running_shoes>                         :new MyFloat(0.025),
	<item:artifacts:superstitious_hat>                     :new MyFloat(0.025),
	<item:artifacts:thorn_pendant>                         :new MyFloat(0.025),
	<item:artifacts:umbrella>                              :new MyFloat(0.025),
	<item:artifacts:universal_attractor>                   :new MyFloat(0.025),
	<item:artifacts:vampiric_glove>                        :new MyFloat(0.025),
	<item:artifacts:villager_hat>                          :new MyFloat(0.025),
	<item:artifacts:whoopee_cushion>                       :new MyFloat(0.025),
	<item:paraglider:spirit_orb>                           :new MyFloat(0.01)
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
			if context.random.nextFloat() < chance.value as float{
				stacks.add(item);
			}
		}
		return stacks;
	});

//desert

//	<item:relics:blazing_flask>                                           :new MyFloat(0.02),
//	<item:relics:holy_locket>                                             :new MyFloat(0.02),
//	<item:relics:infinity_ham>.withTag({charge: 0 as int})                :new MyFloat(0.02),
//	<item:relics:leather_belt>                                            :new MyFloat(0.02),
//	<item:relics:lucky_horseshoe>                                         :new MyFloat(0.02),
//	<item:relics:magic_mirror>                                            :new MyFloat(0.02),
//	<item:relics:magma_walker>                                            :new MyFloat(0.02),
//	<item:relics:out_runner>                                              :new MyFloat(0.02),
//	<item:relics:rage_glove>                                              :new MyFloat(0.02),
//	<item:relics:scarab_talisman>                                         :0.08,
//	<item:relics:spider_necklace>                                         :new MyFloat(0.02),
//	<item:relics:squire_bag>                                              :new MyFloat(0.02),

val desert_loot as MyFloat[IItemStack] = {
	<item:artifacts:bunny_hoppers>                                        :new MyFloat(0.02),
	<item:artifacts:cross_necklace>                                       :new MyFloat(0.02),
	<item:artifacts:digging_claws>                                        :new MyFloat(0.02),
	<item:artifacts:feral_claws>                                          :new MyFloat(0.02),
	<item:artifacts:fire_gauntlet>                                        :new MyFloat(0.02),
	<item:artifacts:flame_pendant>                                        :new MyFloat(0.02),
	<item:artifacts:lucky_scarf>                                          :new MyFloat(0.02),
	<item:artifacts:novelty_drinking_hat>                                 :new MyFloat(0.02),
	<item:artifacts:obsidian_skull>                                       :new MyFloat(0.02),
	<item:artifacts:panic_necklace>                                       :new MyFloat(0.02),
	<item:artifacts:pocket_piston>                                        :new MyFloat(0.02),
	<item:artifacts:power_glove>                                          :new MyFloat(0.02),
	<item:artifacts:running_shoes>                                        :new MyFloat(0.02),
	<item:artifacts:scarf_of_invisibility>                                :new MyFloat(0.02),
	<item:artifacts:steadfast_spikes>                                     :new MyFloat(0.02),
	<item:artifacts:vampiric_glove>                                       :new MyFloat(0.02),
	<item:minecraft:potion>.withTag({Potion: "minecraft:luck" as string}) :new MyFloat(0.02),
	<item:paraglider:spirit_orb>                                          :new MyFloat(0.01)
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
			if context.random.nextFloat() < chance.value as float{
				stacks.add(item);
			}
		}
		return stacks;
	});

//forest

//	<item:relics:arrow_quiver>                                             :new MyFloat(0.02)5,
//	<item:relics:camouflage_ring>                                          :new MyFloat(0.02)5,
//	<item:relics:fragrant_flower>                                          :new MyFloat(0.02)5,
//	<item:relics:horse_flute>                                              :new MyFloat(0.02)5,
//	<item:relics:hunter_belt>                                              :new MyFloat(0.02)5
//	<item:relics:infinity_ham>.withTag({charge: 0 as int})                 :new MyFloat(0.02)5,
//	<item:relics:leather_belt>                                             :new MyFloat(0.02)5,
//	<item:relics:lucky_horseshoe>                                          :new MyFloat(0.02)5,
//	<item:relics:magic_mirror>                                             :new MyFloat(0.02)5,
//	<item:relics:old_boot>                                                 :new MyFloat(0.02)5,
//	<item:relics:out_runner>                                               :new MyFloat(0.02)5,
//	<item:relics:spider_necklace>                                          :new MyFloat(0.02)5,
//	<item:relics:spore_sack>                                               :new MyFloat(0.02)5,
//	<item:relics:squire_bag>                                               :new MyFloat(0.02)5,

val forest_loot as MyFloat[IItemStack] = {
	<item:artifacts:antidote_vessel>                                       :new MyFloat(0.025),
	<item:artifacts:feral_claws>                                           :new MyFloat(0.025),
	<item:artifacts:lucky_scarf>                                           :new MyFloat(0.025),
	<item:artifacts:panic_necklace>                                        :new MyFloat(0.025),
	<item:artifacts:pocket_piston>                                         :new MyFloat(0.025),
	<item:artifacts:running_shoes>                                         :new MyFloat(0.025),
	<item:artifacts:steadfast_spikes>                                      :new MyFloat(0.025),
	<item:artifacts:superstitious_hat>                                     :new MyFloat(0.025),
	<item:artifacts:thorn_pendant>                                         :new MyFloat(0.025),
	<item:artifacts:umbrella>                                              :new MyFloat(0.025),
	<item:artifacts:villager_hat>                                          :new MyFloat(0.025),
	<item:minecraft:potion>.withTag({Potion: "minecraft:luck" as string})  :new MyFloat(0.025),
	<item:paraglider:spirit_orb>                                           :new MyFloat(0.01)
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
			if context.random.nextFloat() < chance.value as float{
				stacks.add(item);
			}
		}
		return stacks;
	});


//frozen

//	<item:relics:amphibian_boot>                           :new MyFloat(0.035),
//	<item:relics:drowned_belt>                             :new MyFloat(0.035),
//	<item:relics:hunter_belt>                              :new MyFloat(0.035),
//	<item:relics:ice_breaker>                              :new MyFloat(0.035),
//	<item:relics:ice_skates>                               :new MyFloat(0.035),
//	<item:relics:infinity_ham>.withTag({charge: 0 as int}) :new MyFloat(0.035),
//	<item:relics:jellyfish_necklace>                       :0.03
//	<item:relics:lucky_horseshoe>                          :new MyFloat(0.035),
//	<item:relics:magic_mirror>                             :new MyFloat(0.035),
//	<item:relics:wool_mitten>                              :new MyFloat(0.035),

val frozen_loot as MyFloat[IItemStack] = {
	<item:artifacts:aqua_dashers>                          :new MyFloat(0.035),
	<item:artifacts:bunny_hoppers>                         :new MyFloat(0.035),
	<item:artifacts:charm_of_sinking>                      :new MyFloat(0.035),
	<item:artifacts:cross_necklace>                        :new MyFloat(0.035),
	<item:artifacts:digging_claws>                         :new MyFloat(0.035),
	<item:artifacts:feral_claws>                           :new MyFloat(0.035),
	<item:artifacts:flippers>                              :new MyFloat(0.035),
	<item:artifacts:golden_hook>                           :new MyFloat(0.035),
	<item:artifacts:helium_flamingo>                       :new MyFloat(0.035),
	<item:artifacts:panic_necklace>                        :new MyFloat(0.035),
	<item:artifacts:scarf_of_invisibility>                 :new MyFloat(0.035),
	<item:artifacts:shock_pendant>                         :new MyFloat(0.035),
	<item:artifacts:snorkel>                               :new MyFloat(0.035),
	<item:artifacts:steadfast_spikes>                      :new MyFloat(0.035),
	<item:artifacts:umbrella>                              :new MyFloat(0.035),
	<item:artifacts:universal_attractor>                   :new MyFloat(0.035),
	<item:paraglider:spirit_orb>                           :new MyFloat(0.01)
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
			if context.random.nextFloat() < chance.value as float{
				stacks.add(item);
			}
		}
		return stacks;
	});

//nether

//	<item:relics:arrow_quiver>                                             :new MyFloat(0.02),
//	<item:relics:bastion_ring>                                             :new MyFloat(0.02),
//	<item:relics:blazing_flask>                                            :new MyFloat(0.02),
//	<item:relics:ghost_skin_talisman>                                      :new MyFloat(0.02),
//	<item:relics:holy_locket>                                              :new MyFloat(0.02),
//	<item:relics:infinity_ham>.withTag({charge: 0 as int})                 :new MyFloat(0.02),
//	<item:relics:lucky_horseshoe>                                          :new MyFloat(0.02),
//	<item:relics:magic_mirror>                                             :new MyFloat(0.02),
//	<item:relics:magma_walker>                                             :new MyFloat(0.02),
//	<item:relics:midnight_robe>                                            :new MyFloat(0.02),
//	<item:relics:rage_glove>                                               :new MyFloat(0.02),
//	<item:relics:reflection_necklace>                                      :new MyFloat(0.02),
//	<item:relics:soul_devourer>                                            :new MyFloat(0.02),
//	<item:relics:spatial_sign>                                             :new MyFloat(0.02),

val nether_loot as MyFloat[IItemStack] = {
	<item:artifacts:cloud_in_a_bottle>                                     :new MyFloat(0.02),
	<item:artifacts:cross_necklace>                                        :new MyFloat(0.02),
	<item:artifacts:fire_gauntlet>                                         :new MyFloat(0.02),
	<item:artifacts:flame_pendant>                                         :new MyFloat(0.02),
	<item:artifacts:lucky_scarf>                                           :new MyFloat(0.02),
	<item:artifacts:obsidian_skull>                                        :new MyFloat(0.02),
	<item:artifacts:panic_necklace>                                        :new MyFloat(0.02),
	<item:artifacts:power_glove>                                           :new MyFloat(0.02),
	<item:artifacts:running_shoes>                                         :new MyFloat(0.02),
	<item:artifacts:scarf_of_invisibility>                                 :new MyFloat(0.02),
	<item:artifacts:steadfast_spikes>                                      :new MyFloat(0.02),
	<item:artifacts:umbrella>                                              :new MyFloat(0.02),
	<item:artifacts:universal_attractor>                                   :new MyFloat(0.02),
	<item:artifacts:vampiric_glove>                                        :new MyFloat(0.02),
	<item:minecraft:potion>.withTag({Potion: "minecraft:luck" as string})  :new MyFloat(0.02),
	<item:paraglider:spirit_orb>                                           :new MyFloat(0.01)
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
			if context.random.nextFloat() < chance.value as float{
				stacks.add(item);
			}
		}
		return stacks;
	});


//end

//	<item:relics:arrow_quiver>                                            :new MyFloat(0.02),
//	<item:relics:chorus_inhibitor>                                        :new MyFloat(0.02),
//	<item:relics:elytra_booster>                                          :new MyFloat(0.02),
//	<item:relics:enders_hand>                                             :new MyFloat(0.02),
//	<item:relics:ghost_skin_talisman>                                     :new MyFloat(0.02),
//	<item:relics:lucky_horseshoe>                                         :new MyFloat(0.02),
//	<item:relics:magic_mirror>                                            :new MyFloat(0.02),
//	<item:relics:midnight_robe>                                           :new MyFloat(0.02),
//	<item:relics:rage_glove>                                              :new MyFloat(0.02),
//	<item:relics:reflection_necklace>                                     :new MyFloat(0.02),
//	<item:relics:shadow_glaive>.withTag({time: 0 as int})                 :new MyFloat(0.02),
//	<item:relics:soul_devourer>                                           :new MyFloat(0.02),
//	<item:relics:space_dissector>                                         :new MyFloat(0.02),
//	<item:relics:spatial_sign>                                            :new MyFloat(0.02),
//	<item:relics:stellar_catalyst>                                        :new MyFloat(0.02),

val end_loot as MyFloat[IItemStack] = {
	<item:artifacts:feral_claws>                                          :new MyFloat(0.02),
	<item:artifacts:lucky_scarf>                                          :new MyFloat(0.02),
	<item:artifacts:power_glove>                                          :new MyFloat(0.02),
	<item:artifacts:scarf_of_invisibility>                                :new MyFloat(0.02),
	<item:artifacts:shock_pendant>                                        :new MyFloat(0.02),
	<item:artifacts:universal_attractor>                                  :new MyFloat(0.02),
	<item:minecraft:potion>.withTag({Potion: "minecraft:luck" as string}) :new MyFloat(0.02),
	<item:paraglider:spirit_orb>                                          :new MyFloat(0.01)
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
			if context.random.nextFloat() < chance.value as float{
				stacks.add(item);
			}
		}
		return stacks;
	});

//treasures

//relics moved out until relics updated to 1.18.2
//	<item:relics:amphibian_boot>                                           :new MyFloat(0.005),
//	<item:relics:arrow_quiver>                                             :new MyFloat(0.005),
//	<item:relics:bastion_ring>                                             :new MyFloat(0.005),
//	<item:relics:blazing_flask>                                            :new MyFloat(0.005),
//	<item:relics:camouflage_ring>                                          :new MyFloat(0.005),
//	<item:relics:chorus_inhibitor>                                         :new MyFloat(0.005),
//	<item:relics:delay_ring>                                               :new MyFloat(0.005),
//	<item:relics:drowned_belt>                                             :new MyFloat(0.005),
//	<item:relics:elytra_booster>                                           :new MyFloat(0.005),
//	<item:relics:enders_hand>                                              :new MyFloat(0.005),
//	<item:relics:fragrant_flower>                                          :new MyFloat(0.005),
//	<item:relics:ghost_skin_talisman>                                      :new MyFloat(0.005),
//	<item:relics:holy_locket>                                              :new MyFloat(0.005),
//	<item:relics:horse_flute>                                              :new MyFloat(0.005),
//	<item:relics:hunter_belt>                                              :new MyFloat(0.005),
//	<item:relics:ice_breaker>                                              :new MyFloat(0.005),
//	<item:relics:ice_skates>                                               :new MyFloat(0.005),
//	<item:relics:infinity_ham>.withTag({charge: 0 as int})                 :new MyFloat(0.005),
//	<item:relics:jellyfish_necklace>                                       :new MyFloat(0.005),
//	<item:relics:leather_belt>                                             :new MyFloat(0.005),
//	<item:relics:lucky_horseshoe>                                          :new MyFloat(0.005),
//	<item:relics:magic_mirror>                                             :new MyFloat(0.005),
//	<item:relics:magma_walker>                                             :new MyFloat(0.005),
//	<item:relics:midnight_robe>                                            :new MyFloat(0.005),
//	<item:relics:old_boot>                                                 :new MyFloat(0.005),
//	<item:relics:out_runner>                                               :new MyFloat(0.005),
//	<item:relics:rage_glove>                                               :new MyFloat(0.005),
//	<item:relics:reflection_necklace>                                      :new MyFloat(0.005),
//	<item:relics:scarab_talisman>                                          :new MyFloat(0.005),
//	<item:relics:shadow_glaive>.withTag({time: 0 as int})                  :new MyFloat(0.005),
//	<item:relics:slime_heart>                                              :new MyFloat(0.005),
//	<item:relics:soul_devourer>                                            :new MyFloat(0.005),
//	<item:relics:space_dissector>                                          :new MyFloat(0.005),
//	<item:relics:spatial_sign>                                             :new MyFloat(0.005),
//	<item:relics:spider_necklace>                                          :new MyFloat(0.005),
//	<item:relics:spore_sack>                                               :new MyFloat(0.005),
//	<item:relics:squire_bag>                                               :new MyFloat(0.005),
//	<item:relics:stellar_catalyst>                                         :new MyFloat(0.005),
//	<item:relics:wool_mitten>                                              :new MyFloat(0.005),

val treasure_loot as MyFloat[IItemStack] = {
	<item:artifacts:antidote_vessel>                                       :new MyFloat(0.005),
	<item:artifacts:aqua_dashers>                                          :new MyFloat(0.005),
	<item:artifacts:bunny_hoppers>                                         :new MyFloat(0.005),
	<item:artifacts:charm_of_sinking>                                      :new MyFloat(0.005),
	<item:artifacts:cloud_in_a_bottle>                                     :new MyFloat(0.005),
	<item:artifacts:cross_necklace>                                        :new MyFloat(0.005),
	<item:artifacts:digging_claws>                                         :new MyFloat(0.005),
	<item:artifacts:feral_claws>                                           :new MyFloat(0.005),
	<item:artifacts:fire_gauntlet>                                         :new MyFloat(0.005),
	<item:artifacts:flame_pendant>                                         :new MyFloat(0.005),
	<item:artifacts:flippers>                                              :new MyFloat(0.005),
	<item:artifacts:golden_hook>                                           :new MyFloat(0.005),
	<item:artifacts:helium_flamingo>                                       :new MyFloat(0.005),
	<item:artifacts:kitty_slippers>                                        :new MyFloat(0.005),
	<item:artifacts:lucky_scarf>                                           :new MyFloat(0.005),
	<item:artifacts:night_vision_goggles>                                  :new MyFloat(0.005),
	<item:artifacts:novelty_drinking_hat>                                  :new MyFloat(0.005),
	<item:artifacts:obsidian_skull>                                        :new MyFloat(0.005),
	<item:artifacts:panic_necklace>                                        :new MyFloat(0.005),
	<item:artifacts:plastic_drinking_hat>                                  :new MyFloat(0.005),
	<item:artifacts:pocket_piston>                                         :new MyFloat(0.005),
	<item:artifacts:power_glove>                                           :new MyFloat(0.005),
	<item:artifacts:running_shoes>                                         :new MyFloat(0.005),
	<item:artifacts:scarf_of_invisibility>                                 :new MyFloat(0.005),
	<item:artifacts:shock_pendant>                                         :new MyFloat(0.005),
	<item:artifacts:snorkel>                                               :new MyFloat(0.005),
	<item:artifacts:steadfast_spikes>                                      :new MyFloat(0.005),
	<item:artifacts:superstitious_hat>                                     :new MyFloat(0.005),
	<item:artifacts:thorn_pendant>                                         :new MyFloat(0.005),
	<item:artifacts:umbrella>                                              :new MyFloat(0.005),
	<item:artifacts:universal_attractor>                                   :new MyFloat(0.005),
	<item:artifacts:vampiric_glove>                                        :new MyFloat(0.005),
	<item:artifacts:villager_hat>                                          :new MyFloat(0.005),
	<item:artifacts:whoopee_cushion>                                       :new MyFloat(0.005),
	<item:minecraft:potion>.withTag({Potion: "minecraft:luck" as string})  :new MyFloat(0.005),
	<item:paraglider:spirit_orb>                                           :new MyFloat(0.01)
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
			if context.random.nextFloat() < chance.value as float{
				stacks.add(item);
			}
		}
		return stacks;
	});
	
//block loot modifier changes

//nether gold ore
<block:minecraft:nether_gold_ore>.addLootModifier("nugget_to_fragment_nether_gold", CommonLootModifiers.replaceStackWith(<item:minecraft:gold_nugget>, <item:bloodmagic:goldfragment>));
<block:byg:blue_nether_gold_ore>.addLootModifier("nugget_to_fragment_nether_gold_byg_blue", CommonLootModifiers.replaceStackWith(<item:minecraft:gold_nugget>, <item:bloodmagic:goldfragment>));
<block:byg:brimstone_nether_gold_ore>.addLootModifier("nugget_to_fragment_nether_gold_byg_brimstone", CommonLootModifiers.replaceStackWith(<item:minecraft:gold_nugget>, <item:bloodmagic:goldfragment>));

//pendorite ore
<block:byg:pendorite_ore>.addLootModifier("raw_to_scrap_pendorite_ore", CommonLootModifiers.replaceStackWith(<item:byg:raw_pendorite>, <item:byg:pendorite_scraps>));