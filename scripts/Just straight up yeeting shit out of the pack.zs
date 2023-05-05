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
import mods.jei.JEI;

//removeall functions


<recipetype:ftbic:extruding>.removeAll();
<recipetype:ftbic:rolling>.removeAll();
<recipetype:extendedcrafting:combination>.removeAll();
<recipetype:extendedcrafting:ender_crafter>.removeAll();
<recipetype:extendedcrafting:compressor>.removeAll();
<recipetype:extendedcrafting:table>.removeAll();
<recipetype:thermal:numismatic_fuel>.removeAll();

//Regex recipe removal functions

<recipetype:create:crushing>.removeByRegex("malum:create.crushing.crush_.*");

<recipetype:ftbic:macerating>.removeByRegex("ftbic:macerating/.*/.*_to_.*");
<recipetype:create:splashing>.removeByRegex("create:splashing.crushed.*");
<recipetype:create:splashing>.removeByRegex("malum:create.*");
<recipetype:bloodmagic:alchemytable>.removeByRegex("bloodmagic:alchemytable.corrupted.*");

<recipetype:thermal:smelter>.removeByRegex("thermal:machines.smelter.smelter_alloy_.*");
<recipetype:thermal:smelter>.removeByRegex("thermal:machines.smelter.smelter_.*_ore");
<recipetype:thermal:smelter>.removeByRegex("thermal:machines.smelter.smelter_.*_dust");
<recipetype:thermal:smelter>.removeByRegex("thermal:machines.smelter.smelter_raw_.*");
<recipetype:thermal:smelter>.removeByRegex("thermal:compat.create.smelter_.*");

<recipetype:thermal:pulverizer>.removeByRegex("thermal:compat.create.pulverizer_.*");
<recipetype:thermal:pulverizer>.removeByRegex("thermal:machines.pulverizer.pulverizer.*_ore");
<recipetype:thermal:pulverizer>.removeByRegex("thermal:machines.pulverizer.pulverizer_raw_.*");
<recipetype:thermal:pulverizer>.removeByRegex("thermal:machines.pulverizer.pulverizer_.*ingot_to_dust");
<recipetype:thermal:pulverizer>.removeByRegex("thermal:machines.pulverizer.pulverizer_create_.*_recycle");

<recipetype:thermal:press>.removeByRegex("thermal:machines.press.*_to_coin");

furnace.removeByRegex("malum:.*_from_node.*");
blastFurnace.removeByRegex("malum:.*_from_node.*");

//remove by name functions
<recipetype:create:crushing>.removeByName("create:crushing/nether_gold_ore");
<recipetype:create:crushing>.removeByName("create:crushing/blaze_rod");
<recipetype:create:mixing>.removeByName("alloyed:mixing/steel_ingot");
<recipetype:create:milling>.removeByName("create:milling/sandstone");
<recipetype:create:milling>.removeByName("create:milling/coal");
<recipetype:create:milling>.removeByName("create:milling/charcoal");

<recipetype:ftbic:macerating>.removeByName("ftbic:macerating/blaze_powder");
<recipetype:ftbic:macerating>.removeByName("ftbic:macerating/coal_dust");
<recipetype:ftbic:macerating>.removeByName("ftbic:macerating/charcoal_dust");

<recipetype:bloodmagic:arc>.removeByName("bloodmagic:arc/netherrack_to_sulfer");
<recipetype:bloodmagic:alchemytable>.removeByName("bloodmagic:alchemytable/sulfur_from_lava");
<recipetype:bloodmagic:alchemytable>.removeByName("bloodmagic:alchemytable/sulfur_from_sigil");

<recipetype:thermal:smelter>.removeByName("thermal:machines/smelter/smelter_netherite_plate_to_ingot");

val crafting_table_strings = [
"extendedcrafting:black_iron_ingot",
"extendedcrafting:redstone_ingot",
"minecraft:end_crystal",
"minecraft:daylight_detector",
"minecraft:magma_cream",
"malum:magma_cream_from_sapballs",
"domesticationinnovation:pet_bed_magenta",
"ftbic:shaped/nuggets/copper_to_copper_ingot",
"malum:copper_ingot_from_nugget",
"minecraft:lead",
"malum:lead_from_sapballs",
"minecraft:glass_bottle",
"minecraft:beacon"
];

for str in crafting_table_strings{
craftingTable.removeByName(str);
}

val blast_furnace_strings = [
"ftbic:blasting/dusts/iron_to_iron_ingot"
];

for str in blast_furnace_strings{
blastFurnace.removeByName(str);
}

val furnace_strings = [
"ftbic:smelting/dusts/iron_to_iron_ingot",
"ftbic:smelting/dusts/copper_to_copper_ingot",
"ftbic:smelting/dusts/gold_to_gold_ingot"
];

for str in furnace_strings{
furnace.removeByName(str);
}

<recipetype:ars_nouveau:imbuement>.removeByName("ars_nouveau:imbuement_lapis");

//item removal lists

val trash as IItemStack[] = [
	<item:quark:chute>,
	<item:upgradednetherite:gold_upgraded_netherite_ingot>,
	<item:upgradednetherite:fire_upgraded_netherite_ingot>,
	<item:upgradednetherite:ender_upgraded_netherite_ingot>,
	<item:upgradednetherite:water_upgraded_netherite_ingot>,
	<item:upgradednetherite:wither_upgraded_netherite_ingot>,
	<item:upgradednetherite:poison_upgraded_netherite_ingot>,
	<item:upgradednetherite:phantom_upgraded_netherite_ingot>,
	<item:upgradednetherite:feather_upgraded_netherite_ingot>,
	<item:upgradednetherite:corrupt_upgraded_netherite_ingot>,
	<item:extendedcrafting:ender_ingot>,
	<item:extendedcrafting:crafting_core>,
	<item:ftbic:copper_coil>,
	<item:botania:terrasteel_helmet>,
	<item:botania:terrasteel_chestplate>,
	<item:botania:terrasteel_leggings>,
	<item:botania:terrasteel_boots>,
	<item:botania:terra_axe>,
	<item:botania:terra_pick>,
	<item:botania:terra_sword>,
	<item:minecraft:sticky_piston>,
	<item:quark:gold_bars>,
	<item:ftbic:tin_dust>,
	<item:plaingrinder:grinder>,
	<item:plaingrinder:handle>,
	<item:ftbic:gold_wire>,
	<item:ftbic:enderium_wire>,
	<item:waystones:waystone>,
	<item:waystones:mossy_waystone>,
	<item:waystones:sandy_waystone>,
	<item:minecraft:chest>,
	<item:ftbic:extruder>,
	<item:ftbic:quarry>
];

for item in trash{
	craftingTable.remove(item);
}

val jei_removal as IItemStack[] = [
	<item:malum:cracked_osmium_impetus>,
	<item:malum:osmium_impetus>,
	<item:minecraft:barrier>,
	<item:minecraft:light>,
	<item:minecraft:structure_void>,
	<item:minecraft:structure_block>,
	<item:minecraft:jigsaw>,
	<item:minecraft:knowledge_book>,
	<item:minecraft:debug_stick>,
	<item:create:crushed_quicksilver_ore>,
	<item:create:crushed_osmium_ore>,
	<item:create:crushed_platinum_ore>,
	<item:create:copper_backtank_placeable>,
	<item:byg:biomepedia>,
	<item:byg:byg_logo>
];

for item in jei_removal{
	JEI.hideIngredient(item);
}

//utter eradication (removing something from every recipe and JEI at once)

val utter_eradication as IItemStack[] = [
	<item:ftbic:bronze_block>,
	<item:ftbic:bronze_dust>,
	<item:ftbic:bronze_gear>,
	<item:ftbic:bronze_ingot>,
	<item:ftbic:copper_gear>,
	<item:ftbic:copper_nugget>,
	<item:ftbic:copper_plate>,
	<item:ftbic:enderium_gear>,
	<item:ftbic:gold_gear>,
	<item:ftbic:iridium_gear>,
	<item:ftbic:iron_gear>,
	<item:ftbic:lead_chunk>,
	<item:ftbic:lead_dust>,
	<item:ftbic:lead_gear>,
	<item:ftbic:lead_ingot>,
	<item:ftbic:lead_nugget>,
	<item:ftbic:nuke>,
	<item:ftbic:nuke_arrow>,
	<item:ftbic:tin_gear>,
	<item:malum:copper_nugget>,
	<item:create:copper_sheet>,
	<item:ftbic:lead_block>,
	<item:create:iron_sheet>,
	<item:ftbic:gold_plate>,
	<item:create:golden_sheet>,
	<item:ftbic:gold_plate>,
	<item:ftbic:iron_plate>,
	<item:ftbic:lead_plate>,
	<item:ftbic:aluminum_gear>,
	<item:ftbic:bronze_nugget>,
	<item:malum:osmium_node>,
	<item:create:dough>,
	<item:ftbic:bronze_plate>,
	<item:delightful:steel_knife>,
	<item:delightful:netherite_opal_knife>,
	<item:delightful:black_opal_knife>,
	<item:delightful:enderite_knife>,
	<item:delightful:obsidian_infused_enderite_knife>,
	<item:delightful:osmium_knife>,
	<item:delightful:lapis_lazuli_knife>,
	<item:delightful:large_amethyst_knife>,
	<item:delightful:refined_glowstone_knife>,
	<item:delightful:refined_obsidian_knife>,
	<item:darkerdepths:raw_silver>,
	<item:darkerdepths:silver_block>,
	<item:darkerdepths:silver_ingot>,
	<item:waystones:warp_plate>,
	<item:farmersdelight:fried_egg>,
	<item:plaingrinder:dust_diamond>,
	<item:plaingrinder:dust_coal>,
	<item:plaingrinder:dust_iron>,
	<item:plaingrinder:dust_emerald>,
	<item:plaingrinder:dust_lapis>,
	<item:plaingrinder:dust_copper>,
	<item:plaingrinder:dust_gold>,
	<item:plaingrinder:dust_charcoal>,
	<item:plaingrinder:dust_quartz>,
	<item:bloodmagic:corrupted_dust>,
	<item:bloodmagic:corrupted_tinydust>,
	<item:thermal:bronze_ingot>,
	<item:thermal:bronze_nugget>,
	<item:thermal:bronze_plate>,
	<item:ftbic:bronze_rod>,
	<item:ftbic:iridium_rod>,
	<item:ftbic:lead_rod>,
	<item:ftbic:tin_rod>,
	<item:ftbic:iron_rod>,
	<item:thermal:lapis_gear>,
	<item:thermal:emerald_gear>,
	<item:byg:raw_pendorite>,
	<item:byg:raw_pendorite_block>,
	<item:delightful:acorn>,
	<item:delightful:acorn_sack>,
	<item:ftbic:enderium_ingot>,
	<item:ftbic:copper_dust>,
	<item:ftbic:diamond_dust>,
	<item:ftbic:enderium_dust>,
	<item:thermal:copper_coin>,
	<item:thermal:lead_coin>,
	<item:thermal:nickel_coin>,
	<item:thermal:electrum_coin>,
	<item:thermal:invar_coin>,
	<item:thermal:bronze_coin>,
	<item:thermal:silver_coin>,
	<item:thermal:netherite_dust>,
	<item:thermal:quartz_gear>,
	<item:thermal:tin_coin>,
	<item:thermal:netherite_coin>,
	<item:thermal:netherite_nugget>,
	<item:thermal:copper_nugget>,
	<item:thermal:iron_coin>,
	<item:ftbic:enderium_nugget>,
	<item:ftbic:uranium_gear>,
	<item:bloodmagic:sulfur>,
	<item:bloodmagic:ironsand>,
	<item:bloodmagic:goldsand>,
	<item:bloodmagic:coppersand>,
	<item:thermal:netherite_plate>,
	<item:thermal:netherite_gear>,
	<item:bloodmagic:gravel_netherite_scrap>,
	<item:bloodmagic:fragment_netherite_scrap>,
	<item:ftbic:uranium_plate>,
	<item:ftbic:enderium_plate>,
	<item:thermal:steel_coin>,
	<item:ftbic:enderium_block>,
	<item:thermal:apple_block>,
	<item:thermal:carrot_block>,
	<item:thermal:potato_block>,
	<item:thermal:beetroot_block>,
	<item:thermal:steel_block>,
	<item:thermal:steel_gear>,
	<item:thermal:steel_plate>,
	<item:bloodmagic:sand_hellforged>,
	<item:thermal:gold_coin>,
	<item:thermal:constantan_coin>,
	<item:thermal:signalum_coin>,
	<item:thermal:lumium_coin>,
	<item:thermal:steel_ingot>,
	<item:thermal:steel_nugget>,
	<item:quark:rope>,
	<item:darkerdepths:rope>,
	<item:darkerdepths:resin>,
	<item:darkerdepths:raw_silver_block>,
	<item:waystones:magenta_sharestone>,
	<item:waystones:light_blue_sharestone>,
	<item:waystones:brown_sharestone>,
	<item:waystones:blue_sharestone>,
	<item:waystones:light_gray_sharestone>,
	<item:waystones:gray_sharestone>,
	<item:waystones:lime_sharestone>,
	<item:waystones:red_sharestone>,
	<item:waystones:black_sharestone>,
	<item:waystones:yellow_sharestone>,
	<item:waystones:cyan_sharestone>,
	<item:waystones:green_sharestone>,
	<item:waystones:purple_sharestone>,
	<item:waystones:pink_sharestone>,
	<item:waystones:return_scroll>,
	<item:waystones:bound_scroll>,
	<item:waystones:sharestone>,
	<item:waystones:white_sharestone>,
	<item:waystones:orange_sharestone>,
	<item:thermal:bronze_block>,
	<item:ftbic:deepslate_lead_ore>,
	<item:ftbic:lead_ore>,
	<item:ftbic:deepslate_tin_ore>,
	<item:ftbic:tin_ore>,
	<item:thermal:rose_gold_block>,
	<item:thermal:rose_gold_ingot>,
	<item:thermal:rose_gold_nugget>,
	<item:thermal:rose_gold_dust>,
	<item:thermal:rose_gold_gear>,
	<item:thermal:rose_gold_plate>,
	<item:thermal:rose_gold_coin>,
	<item:infernalexp:polished_basalt_vertical_slab>,
	<item:infernalexp:smooth_dimstone_vertical_slab>,
	<item:infernalexp:smooth_dullstone_vertical_slab>,
	<item:infernalexp:glowstone_brick_vertical_slab>,
	<item:infernalexp:dimstone_brick_vertical_slab>,
	<item:infernalexp:dullstone_brick_vertical_slab>,
	<item:infernalexp:glowdust_stone_vertical_slab>,
	<item:infernalexp:glowdust_stone_brick_vertical_slab>,
	<item:infernalexp:basalt_cobbled_vertical_slab>,
	<item:architects_palette:olivestone_brick_vertical_slab>,
	<item:architects_palette:olivestone_tile_vertical_slab>,
	<item:architects_palette:myonite_vertical_slab>,
	<item:architects_palette:plating_vertical_slab>,
	<item:architects_palette:entrails_vertical_slab>,
	<item:darkerdepths:polished_shale_vertical_slab>,
	<item:darkerdepths:aridrock_bricks_vertical_slab>,
	<item:darkerdepths:polished_grimestone_vertical_slab>,
	<item:architects_palette:abyssaline_brick_vertical_slab>,
	<item:alloyed:steel_sheet_vertical_slab>,
	<item:darkerdepths:grimestone_bricks_vertical_slab>,
	<item:darkerdepths:polished_aridrock_vertical_slab>,
	<item:darkerdepths:shale_bricks_vertical_slab>,
	<item:darkerdepths:petrified_vertical_slab>,
	<item:infernalexp:soul_slate_brick_vertical_slab>,
	<item:infernalexp:basalt_vertical_slab>,
	<item:infernalexp:polished_basalt_tiles_vertical_slab>,
	<item:infernalexp:soul_soil_vertical_slab>,
	<item:infernalexp:soul_stone_vertical_slab>,
	<item:infernalexp:soul_slate_vertical_slab>,
	<item:darkerdepths:limestone_vertical_slab>,
	<item:darkerdepths:limestone_bricks_vertical_slab>,
	<item:darkerdepths:grimestone_vertical_slab>,
	<item:darkerdepths:polished_limestone_vertical_slab>,
	<item:darkerdepths:aridrock_vertical_slab>,
	<item:infernalexp:soul_sand_vertical_slab>,
	<item:infernalexp:basalt_brick_vertical_slab>,
	<item:infernalexp:smooth_glowstone_vertical_slab>,
	<item:infernalexp:soul_stone_brick_vertical_slab>,
	<item:darkerdepths:shale_vertical_slab>,
	<item:architects_palette:abyssaline_tile_vertical_slab>,
	<item:architects_palette:myonite_brick_vertical_slab>,
	<item:architects_palette:mushy_myonite_brick_vertical_slab>,
	<item:architects_palette:algal_brick_vertical_slab>,
	<item:architects_palette:overgrown_algal_brick_vertical_slab>,
	<item:architects_palette:coal_ore_brick_vertical_slab>,
	<item:architects_palette:calcite_brick_vertical_slab>,
	<item:architects_palette:cut_nether_brass_vertical_slab>,
	<item:architects_palette:smooth_nether_brass_vertical_slab>,
	<item:architects_palette:nether_brass_vertical_slab>,
	<item:architects_palette:tuff_brick_vertical_slab>,
	<item:architects_palette:flint_tile_vertical_slab>,
	<item:architects_palette:polished_packed_ice_vertical_slab>,
	<item:architects_palette:sunmetal_vertical_slab>,
	<item:architects_palette:osseous_brick_vertical_slab>,
	<item:architects_palette:gilded_sandstone_vertical_slab>,
	<item:architects_palette:warpstone_vertical_slab>,
	<item:architects_palette:twisted_vertical_slab>,
	<item:architects_palette:dripstone_brick_vertical_slab>,
	<item:architects_palette:basalt_tile_vertical_slab>,
	<item:architects_palette:polished_glowstone_vertical_slab>,
	<item:architects_palette:entwine_vertical_slab>,
	<item:architects_palette:withered_osseous_brick_vertical_slab>,
	<item:architects_palette:diamond_ore_brick_vertical_slab>,
	<item:architects_palette:emerald_ore_brick_vertical_slab>,
	<item:architects_palette:gold_ore_brick_vertical_slab>,
	<item:architects_palette:iron_ore_brick_vertical_slab>,
	<item:architects_palette:lapis_ore_brick_vertical_slab>,
	<item:architects_palette:redstone_ore_brick_vertical_slab>,
	<item:savage_and_ravage:gloomy_tile_vertical_slab>,
	<item:savage_and_ravage:blast_proof_vertical_slab>,
	<item:buzzier_bees:honeycomb_brick_vertical_slab>,
	<item:buzzier_bees:honeycomb_tile_vertical_slab>,
	<item:supplementaries:checker_vertical_slab>,
	<item:supplementaries:lapis_bricks_vertical_slab>,
	<item:supplementaries:stone_tile_vertical_slab>,
	<item:supplementaries:blackstone_tile_vertical_slab>,
	<item:supplementaries:ash_bricks_vertical_slab>,
	<item:ftbic:ender_dust>,
	<item:upgradednetherite:netherite_shield>,
	<item:ftbic:iron_dust>,
	<item:ftbic:obsidian_dust>,
	<item:malum:runewood_sign>,
	<item:malum:soulwood_sign>,
	<item:ftbic:tin_ingot>,
	<item:ftbic:tin_chunk>,
	<item:ftbic:tin_dust>,
	<item:ftbic:tin_nugget>,
	<item:ftbic:tin_plate>,
	<item:ftbic:tin_block>,
	<item:clayworks:terracotta_vertical_slab>,
	<item:clayworks:white_terracotta_vertical_slab>,
	<item:clayworks:orange_terracotta_vertical_slab>,
	<item:clayworks:magenta_terracotta_vertical_slab>,
	<item:clayworks:light_blue_terracotta_vertical_slab>,
	<item:clayworks:yellow_terracotta_vertical_slab>,
	<item:clayworks:lime_terracotta_vertical_slab>,
	<item:clayworks:pink_terracotta_vertical_slab>,
	<item:clayworks:gray_terracotta_vertical_slab>,
	<item:clayworks:black_terracotta_brick_vertical_slab>,
	<item:upgrade_aquatic:scute_shingle_vertical_slab>,
	<item:upgrade_aquatic:scute_pavement_vertical_slab>,
	<item:upgrade_aquatic:tooth_brick_vertical_slab>,
	<item:clayworks:red_terracotta_brick_vertical_slab>,
	<item:clayworks:orange_terracotta_brick_vertical_slab>,
	<item:clayworks:light_blue_terracotta_brick_vertical_slab>,
	<item:clayworks:light_gray_terracotta_brick_vertical_slab>,
	<item:clayworks:cyan_terracotta_brick_vertical_slab>,
	<item:clayworks:purple_terracotta_brick_vertical_slab>,
	<item:clayworks:blue_terracotta_brick_vertical_slab>,
	<item:clayworks:brown_terracotta_brick_vertical_slab>,
	<item:clayworks:gray_terracotta_brick_vertical_slab>,
	<item:clayworks:pink_terracotta_brick_vertical_slab>,
	<item:clayworks:lime_terracotta_brick_vertical_slab>,
	<item:clayworks:yellow_terracotta_brick_vertical_slab>,
	<item:clayworks:magenta_terracotta_brick_vertical_slab>,
	<item:clayworks:light_gray_terracotta_vertical_slab>,
	<item:clayworks:purple_terracotta_vertical_slab>,
	<item:clayworks:green_terracotta_vertical_slab>,
	<item:clayworks:red_terracotta_vertical_slab>,
	<item:clayworks:white_terracotta_brick_vertical_slab>,
	<item:clayworks:terracotta_brick_vertical_slab>,
	<item:clayworks:black_terracotta_vertical_slab>,
	<item:clayworks:brown_terracotta_vertical_slab>,
	<item:clayworks:blue_terracotta_vertical_slab>,
	<item:clayworks:cyan_terracotta_vertical_slab>,
	<item:clayworks:green_terracotta_brick_vertical_slab>,
	<item:upgrade_aquatic:coralstone_vertical_slab>,
	<item:upgrade_aquatic:bubble_coralstone_vertical_slab>,
	<item:upgrade_aquatic:horn_coralstone_vertical_slab>,
	<item:upgrade_aquatic:tube_coralstone_vertical_slab>,
	<item:upgrade_aquatic:brain_coralstone_vertical_slab>,
	<item:upgrade_aquatic:fire_coralstone_vertical_slab>,
	<item:upgrade_aquatic:acan_coralstone_vertical_slab>,
	<item:upgrade_aquatic:star_coralstone_vertical_slab>,
	<item:upgrade_aquatic:finger_coralstone_vertical_slab>,
	<item:upgrade_aquatic:thorny_kelpy_cobblestone_vertical_slab>,
	<item:upgrade_aquatic:ochre_kelpy_stone_brick_vertical_slab>,
	<item:upgrade_aquatic:beachgrass_thatch_vertical_slab>,
	<item:upgrade_aquatic:luminous_prismarine_vertical_slab>,
	<item:upgrade_aquatic:river_vertical_slab>,
	<item:upgrade_aquatic:driftwood_vertical_slab>,
	<item:upgrade_aquatic:polar_kelpy_stone_brick_vertical_slab>,
	<item:upgrade_aquatic:ochre_kelpy_cobblestone_vertical_slab>,
	<item:upgrade_aquatic:branch_coralstone_vertical_slab>,
	<item:upgrade_aquatic:rock_coralstone_vertical_slab>,
	<item:upgrade_aquatic:chrome_coralstone_vertical_slab>,
	<item:upgrade_aquatic:prismarine_coralstone_vertical_slab>,
	<item:upgrade_aquatic:elder_prismarine_coralstone_vertical_slab>,
	<item:upgrade_aquatic:dead_coralstone_vertical_slab>,
	<item:upgrade_aquatic:kelpy_cobblestone_vertical_slab>,
	<item:upgrade_aquatic:tongue_kelpy_cobblestone_vertical_slab>,
	<item:upgrade_aquatic:tooth_vertical_slab>,
	<item:upgrade_aquatic:thorny_kelpy_stone_brick_vertical_slab>,
	<item:upgrade_aquatic:tongue_kelpy_stone_brick_vertical_slab>,
	<item:upgrade_aquatic:kelpy_stone_brick_vertical_slab>,
	<item:upgrade_aquatic:polar_kelpy_cobblestone_vertical_slab>,
	<item:upgrade_aquatic:silk_coralstone_vertical_slab>,
	<item:upgrade_aquatic:pillow_coralstone_vertical_slab>,
	<item:upgrade_aquatic:petal_coralstone_vertical_slab>,
	<item:upgrade_aquatic:moss_coralstone_vertical_slab>,
	<item:ftbic:gold_dust>,
	<item:ftbic:tin_dust>,
	<item:delightful:nut_butter_bottle>,
	<item:delightful:nut_butter_and_jelly_sandwich>,
	<item:thermal:enderium_gear>,
	<item:delightful:deorum_knife>,
	<item:delightful:reinforced_deorum_knife>,
	<item:delightful:draco_arcanus_knife>,
	<item:delightful:ironwood_knife>,
	<item:delightful:knightmetal_knife>,
	<item:delightful:steeleaf_knife>,
	<item:delightful:living_knife>
];

for item in utter_eradication{
	craftingTable.remove(item);
	JEI.hideIngredient(item);
	blastFurnace.remove(item);
	smithing.remove(item);
	furnace.remove(item);
	<recipetype:ftbic:rolling>.remove(item);
	<recipetype:ftbic:macerating>.remove(item);
	<recipetype:create:pressing>.remove(item);
	<recipetype:create:splashing>.remove(item);
	<recipetype:create:milling>.remove(item);
	<recipetype:create:crushing>.remove(item);
	<recipetype:create:mixing>.remove(item);
	<recipetype:thermal:press>.remove(item);
	<recipetype:malum:spirit_repair>.remove(item);
	item.addTooltip("THIS ITEM IS NOT MEANT TO BE OBTAINABLE, PLEASE REPORT THIS AS AN ISSUE IF YOU COME ACROSS IT WHILE PLAYING");
	for tag in <tagmanager:items>.getTagsFor(item) {
  tag.remove(item);
	}
	<tag:items:c:hidden_from_recipe_viewers>.add(item);
}

//removing mixing recipes
val alloys as IItemStack[] = [
	<item:create:andesite_alloy>,
	<item:create:brass_ingot>
];

for item in alloys{
	<recipetype:create:mixing>.remove(item);
}

//removing thermal steel block from beacon base tags
<tag:blocks:minecraft:beacon_base_blocks>.remove(<block:thermal:steel_block>);