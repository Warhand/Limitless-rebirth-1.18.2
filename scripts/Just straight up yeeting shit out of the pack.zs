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

<recipetype:createaddition:rolling>.removeAll();
<recipetype:immersiveengineering:metal_press>.removeAll();
<recipetype:ftbic:extruding>.removeAll();
<recipetype:ftbic:rolling>.removeAll();

//Regex recipe removal functions

<recipetype:create:crushing>.removeByRegex("malum:create.crushing.crush_.*");
<recipetype:immersiveengineering:crusher>.removeByRegex("immersiveengineering:crusher/ingot_.*");
<recipetype:immersiveengineering:crusher>.removeByRegex("immersiveengineering:crusher/raw_block_.*");
<recipetype:immersiveengineering:crusher>.removeByRegex("immersiveengineering:crusher.raw_ore_.*");
<recipetype:immersiveengineering:crusher>.removeByRegex("immersiveengineering:crusher.ore_.*");
<recipetype:immersiveengineering:crusher>.removeByRegex("immersiveengineering:crusher.*_sandstone");
<recipetype:tconstruct:casting_table>.removeByRegex("tconstruct:smeltery.casting.metal.*.gear_.*_cast");
<recipetype:ftbic:macerating>.removeByRegex("ftbic:macerating/.*/.*_to_.*");

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

<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/coal_block");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/coke");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/coke_block");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/blaze_powder");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/coal");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/nether_gold");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/sandstone");

<recipetype:tconstruct:alloying>.removeByName("tconstruct:smeltery/alloys/molten_bronze");

<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/copper/plate_gold_cast");
<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/copper/plate_sand_cast");
<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/iron/plate_gold_cast");
<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/iron/plate_sand_cast");
<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/gold/wire_gold_cast");
<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/gold/wire_sand_cast");
<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/iron/wire_gold_cast");
<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/iron/wire_sand_cast");
<recipetype:tconstruct:casting_table>.removeByName("tconstruct:gadgets/piggy_backpack");

val crafting_table_strings = [
"extendedcrafting:black_iron_ingot",
"extendedcrafting:redstone_ingot",
"immersiveengineering:crafting/blastfurnace_preheater",
"minecraft:end_crystal",
"minecraft:daylight_detector",
"minecraft:magma_cream",
"malum:magma_cream_from_sapballs",
"domesticationinnovation:pet_bed_magenta",
"immersiveengineering:crafting/nugget_copper_to_copper_ingot",
"ftbic:shaped/nuggets/copper_to_copper_ingot",
"malum:copper_ingot_from_nugget",
"minecraft:lead",
"malum:lead_from_sapballs",
"minecraft:glass_bottle",
"tconstruct:common/materials/copper_ingot_from_nuggets",
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
	<item:schoolsofmagic:letter_ccw>,
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
	<item:immersiveengineering:mold_gear>,
	<item:tconstruct:gear_cast>,
	<item:tconstruct:gear_sand_cast>,
	<item:tconstruct:gear_red_sand_cast>,
	<item:immersiveengineering:windmill>,
	<item:immersiveengineering:watermill>,
	<item:immersiveengineering:connector_lv>,
	<item:immersiveengineering:connector_lv_relay>,
	<item:immersiveengineering:connector_mv>,
	<item:immersiveengineering:connector_mv_relay>,
	<item:immersiveengineering:connector_hv>,
	<item:immersiveengineering:connector_hv_relay>,
	<item:extendedcrafting:crafting_core>,
	<item:prettypipes:medium_extraction_module>,
	<item:prettypipes:medium_crafting_module>,
	<item:prettypipes:medium_filter_module>,
	<item:prettypipes:medium_speed_module>,
	<item:prettypipes:medium_retrieval_module>,
	<item:prettypipes:high_extraction_module>,
	<item:prettypipes:high_filter_module>,
	<item:prettypipes:high_speed_module>,
	<item:prettypipes:high_retrieval_module>,
	<item:prettypipes:high_crafting_module>,
	<item:storagedrawers:obsidian_storage_upgrade>,
	<item:storagedrawers:iron_storage_upgrade>,
	<item:storagedrawers:gold_storage_upgrade>,
	<item:ftbic:copper_coil>,
	<item:tconstruct:efln_ball>,
	<item:immersiveengineering:conveyor_basic>,
	<item:botania:terrasteel_helmet>,
	<item:botania:terrasteel_chestplate>,
	<item:botania:terrasteel_leggings>,
	<item:botania:terrasteel_boots>,
	<item:botania:terra_axe>,
	<item:botania:terra_pick>,
	<item:botania:terra_sword>,
	<item:immersiveengineering:dust_silver>,
	<item:immersiveengineering:dust_nickel>,
	<item:immersiveengineering:dust_aluminum>,
	<item:immersiveengineering:dust_uranium>,
	<item:immersiveengineering:dust_gold>,
	<item:immersiveengineering:dust_iron>,
	<item:immersiveengineering:dust_lead>,
	<item:immersiveengineering:dust_copper>,
	<item:immersiveengineering:ingot_hop_graphite>,
	<item:minecraft:sticky_piston>,
	<item:tconstruct:gold_bars>,
	<item:quark:gold_bars>,
	<item:decorative_blocks:lattice>,
	<item:ftbic:tin_dust>,
	<item:effortlessbuilding:reach_upgrade1>,
	<item:effortlessbuilding:reach_upgrade2>,
	<item:effortlessbuilding:reach_upgrade3>,
	<item:plaingrinder:grinder>,
	<item:plaingrinder:handle>
];

for item in trash{
	craftingTable.remove(item);
}

val jei_removal as IItemStack[] = [
	<item:malum:crushed_soulstone>,
	<item:immersiveengineering:mold_gear>,
	<item:tconstruct:gear_cast>,
	<item:tconstruct:gear_sand_cast>,
	<item:tconstruct:gear_red_sand_cast>,
	<item:createaddition:iron_wire>,
	<item:malum:cracked_osmium_impetus>,
	<item:malum:osmium_impetus>,
	<item:ftbic:copper_dust>,
	<item:ftbic:iron_dust>,
	<item:additionaladditions:gilded_netherite_hoe>,
	<item:additionaladditions:rose_gold_helmet>,
	<item:additionaladditions:gilded_netherite_helmet>,
	<item:additionaladditions:rose_gold_chestplate>,
	<item:additionaladditions:gilded_netherite_chestplate>,
	<item:additionaladditions:rose_gold_leggings>,
	<item:additionaladditions:gilded_netherite_leggings>,
	<item:additionaladditions:rose_gold_boots>,
	<item:additionaladditions:gilded_netherite_boots>,
	<item:additionaladditions:rope>,
	<item:additionaladditions:depth_meter>,
	<item:additionaladditions:wrench>,
	<item:additionaladditions:gilded_netherite_pickaxe>,
	<item:additionaladditions:rose_gold_shovel>,
	<item:additionaladditions:gilded_netherite_shovel>,
	<item:additionaladditions:rose_gold_axe>,
	<item:additionaladditions:gilded_netherite_axe>,
	<item:additionaladditions:rose_gold_hoe>,
	<item:additionaladditions:rose_gold_pickaxe>,
	<item:additionaladditions:fried_egg>,
	<item:minecraft:barrier>,
	<item:minecraft:light>,
	<item:minecraft:structure_void>,
	<item:minecraft:structure_block>,
	<item:minecraft:jigsaw>,
	<item:minecraft:knowledge_book>,
	<item:minecraft:debug_stick>,
	<item:tconstruct:soulsteel_block>,
	<item:tconstruct:soulsteel_ingot>,
	<item:tconstruct:soulsteel_nugget>,
	<item:create:crushed_quicksilver_ore>,
	<item:create:crushed_osmium_ore>,
	<item:create:crushed_platinum_ore>,
	<item:tconstruct:piggy_backpack>,
	<item:additionaladditions:gilded_netherite_sword>,
	<item:additionaladditions:fried_egg>
];

for item in jei_removal{
	JEI.hideIngredient(item);
}

//utter eradication (removing something from every recipe and JEI at once)

val utter_eradication as IItemStack[] = [
	<item:alloyed:steel_sheet>,
	<item:createaddition:copper_wire>,
	<item:ftbic:aluminum_chunk>,
	<item:ftbic:aluminum_dust>,
	<item:ftbic:aluminum_ingot>,
	<item:ftbic:aluminum_wire>,
	<item:ftbic:bronze_block>,
	<item:ftbic:bronze_dust>,
	<item:ftbic:bronze_gear>,
	<item:ftbic:bronze_ingot>,
	<item:ftbic:bronze_rod>,
	<item:ftbic:copper_gear>,
	<item:ftbic:copper_nugget>,
	<item:ftbic:copper_plate>,
	<item:ftbic:copper_rod>,
	<item:ftbic:copper_wire>,
	<item:ftbic:deepslate_uranium_ore>,
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
	<item:ftbic:uranium_block>,
	<item:ftbic:uranium_chunk>,
	<item:ftbic:uranium_dust>,
	<item:ftbic:uranium_gear>,
	<item:ftbic:uranium_ingot>,
	<item:ftbic:uranium_ore>,
	<item:ftbic:uranium_plate>,
	<item:ftbic:uranium_rod>,
	<item:immersiveengineering:nugget_copper>,
	<item:ironjetpacks:capacitor>.withTag({Id:"ironjetpacks:creative"as string}),
	<item:ironjetpacks:cell>.withTag({Id:"ironjetpacks:creative"as string}),
	<item:ironjetpacks:jetpack>.withTag({Id:"ironjetpacks:creative"as string,Throttle:1.0 as double}),
	<item:ironjetpacks:thruster>.withTag({Id:"ironjetpacks:creative"as string}),
	<item:malum:copper_nugget>,
	<item:materialis:inlay_cast>,
	<item:materialis:inlay_red_sand_cast>,
	<item:materialis:inlay_sand_cast>,
	<item:storagedrawers:diamond_storage_upgrade>,
	<item:storagedrawers:emerald_storage_upgrade>,
	<item:tconstruct:copper_nugget>,
	<item:tconstruct:molten_refined_glowstone_bucket>,
	<item:create:copper_sheet>,
	<item:ftbic:lead_block>,
	<item:create:iron_sheet>,
	<item:ftbic:iron_rod>,
	<item:ftbic:gold_rod>,
	<item:ftbic:gold_plate>,
	<item:create:golden_sheet>,
	<item:ftbic:gold_plate>,
	<item:createaddition:gold_rod>,
	<item:createaddition:gold_wire>,
	<item:ftbic:iron_plate>,
	<item:ftbic:lead_plate>,
	<item:ftbic:uranium_nugget>,
	<item:alloyed:steel_block>,
	<item:alloyed:steel_ingot>,
	<item:ftbic:aluminum_block>,
	<item:ftbic:aluminum_gear>,
	<item:ftbic:aluminum_rod>,
	<item:ftbic:aluminum_plate>,
	<item:ftbic:aluminum_nugget>,
	<item:ftbic:uranium_nugget>,
	<item:ftbic:aluminum_nugget>,
	<item:ftbic:bronze_ingot>,
	<item:ftbic:bronze_nugget>,
	<item:immersiveengineering:armor_steel_feet>,
	<item:immersiveengineering:armor_steel_legs>,
	<item:immersiveengineering:armor_steel_chest>,
	<item:immersiveengineering:armor_steel_head>,
	<item:malum:osmium_node>,
	<item:immersiveengineering:sword_steel>,
	<item:immersiveengineering:axe_steel>,
	<item:immersiveengineering:shovel_steel>,
	<item:immersiveengineering:pickaxe_steel>,
	<item:immersiveengineering:hoe_steel>,
	<item:tconstruct:gear_cast>,
	<item:tconstruct:gear_sand_cast>,
	<item:tconstruct:gear_red_sand_cast>,
	<item:tconstruct:debris_nugget>,
	<item:create:dough>,
	<item:ftbic:bronze_plate>,
	<item:ftbic:uranium_ingot>,
	<item:delightful:steel_knife>,
	<item:delightful:netherite_opal_knife>,
	<item:delightful:black_opal_knife>,
	<item:delightful:enderite_knife>,
	<item:delightful:obsidian_infused_enderite_knife>,
	<item:delightful:invar_knife>,
	<item:delightful:osmium_knife>,
	<item:delightful:lapis_lazuli_knife>,
	<item:delightful:large_amethyst_knife>,
	<item:delightful:refined_glowstone_knife>,
	<item:delightful:refined_obsidian_knife>,
	<item:additionaladditions:honeyed_apple>,
	<item:darkerdepths:raw_silver>,
	<item:darkerdepths:silver_block>,
	<item:darkerdepths:silver_ingot>,
	<item:waystones:warp_plate>,
	<item:tconstruct:medium_sky_slime_crystal_bud>,
	<item:tconstruct:large_sky_slime_crystal_bud>,
	<item:tconstruct:sky_slime_crystal_cluster>,
	<item:tconstruct:budding_sky_slime_crystal>,
	<item:tconstruct:small_earth_slime_crystal_bud>,
	<item:tconstruct:medium_earth_slime_crystal_bud>,
	<item:tconstruct:earth_slime_crystal_cluster>,
	<item:tconstruct:budding_earth_slime_crystal>,
	<item:tconstruct:small_ender_slime_crystal_bud>,
	<item:tconstruct:medium_ender_slime_crystal_bud>,
	<item:tconstruct:large_ender_slime_crystal_bud>,
	<item:tconstruct:ender_slime_crystal_cluster>,
	<item:tconstruct:budding_ender_slime_crystal>,
	<item:tconstruct:small_sky_slime_crystal_bud>,
	<item:tconstruct:large_earth_slime_crystal_bud>,
	<item:tconstruct:small_ichor_slime_crystal_bud>,
	<item:tconstruct:medium_ichor_slime_crystal_bud>,
	<item:tconstruct:large_ichor_slime_crystal_bud>,
	<item:tconstruct:ichor_slime_crystal_cluster>,
	<item:tconstruct:budding_ichor_slime_crystal>,
	<item:tconstruct:glow_ball>,
	<item:tconstruct:ender_slime_sling>,
	<item:tconstruct:reversed_gold_item_frame>,
	<item:tconstruct:diamond_item_frame>,
	<item:tconstruct:manyullyn_item_frame>,
	<item:tconstruct:gold_item_frame>,
	<item:tconstruct:clear_item_frame>,
	<item:tconstruct:netherite_item_frame>,
	<item:storagedrawers:controller_slave>,
	<item:bygonenether:gilded_netherite_boots>,
	<item:bygonenether:gilded_netherite_leggings>,
	<item:bygonenether:gilded_netherite_chestplate>,
	<item:bygonenether:gilded_netherite_helmet>,
	<item:farmersdelight:fried_egg>,
	<item:createaddition:iron_wire>,
	<item:constructionwand:stone_wand>,
	<item:constructionwand:iron_wand>
];

for item in utter_eradication{
	craftingTable.remove(item);
	JEI.hideIngredient(item);
	blastFurnace.remove(item);
	smithing.remove(item);
	furnace.remove(item);
	<recipetype:tconstruct:molding_table>.remove(item);
	<recipetype:immersiveengineering:metal_press>.remove(item);
	<recipetype:ftbic:rolling>.remove(item);
	<recipetype:ftbic:macerating>.remove(item);
	<recipetype:create:pressing>.remove(item);
	<recipetype:create:splashing>.remove(item);
	<recipetype:create:milling>.remove(item);
	<recipetype:create:crushing>.remove(item);
	<recipetype:create:mixing>.remove(item);
	item.addTooltip("THIS ITEM IS NOT MEANT TO BE OBTAINABLE, PLEASE REPORT THIS AS AN ISSUE IF YOU COME ACROSS IT WHILE PLAYING");
	for tag in <tagmanager:items>.getTagsFor(item) {
  tag.remove(item);
}
}

//Removing BYG items except for the select few that are still in the game.

val bygkeep = [
"byg:nightshade_berry_pie",
"byg:nightshade_berries",
"byg:ametrine_helmet",
"byg:ametrine_leggings",
"byg:ametrine_boots",
"byg:ametrine_chestplate",
"byg:ether_bulbs",
"byg:crimson_berries",
"byg:bulbis_planks",
"byg:soapstone_tile_slab",
"byg:polished_soapstone_stairs",
"byg:polished_soapstone",
"byg:soapstone_stairs",
"byg:soapstone",
"byg:chain_plating",
"byg:scoria_cobblestone_stairs",
"byg:scoria_cobblestone_wall",
"byg:scoria_stonebrick_stairs",
"byg:scoria_stonebrick_slab",
"byg:scoria_stonebrick_wall",
"byg:scoria_stonebricks",
"byg:scoria_pillar",
"byg:scoria_cobblestone_slab",
"byg:emeraldite_ore",
"byg:scoria_stone_slab",
"byg:scoria_stone_wall",
"byg:scoria_cobblestone",
"byg:scoria_stone_stairs",
"byg:scoria_stone",
"byg:ametrine_horse_armor",
"byg:ametrine_cluster",
"byg:budding_ametrine_ore",
"byg:ametrine_block",
"byg:ametrine_ore",
"byg:emeraldite_shards",
"byg:ametrine_gems",
"byg:soapstone_brick_wall",
"byg:fungal_imparius_block",
"byg:cracked_scoria_stone_bricks",
"byg:soapstone_slab",
"byg:soapstone_wall",
"byg:polished_soapstone_slab",
"byg:polished_soapstone_wall",
"byg:soapstone_bricks",
"byg:soapstone_brick_stairs",
"byg:ether_slab",
"byg:ether_door",
"byg:ether_fence_gate",
"byg:ether_fence",
"byg:bulbis_button",
"byg:bulbis_pressure_plate",
"byg:bulbis_door",
"byg:soapstone_tile_stairs",
"byg:purple_bulbis_shell",
"byg:bulbis_oddity",
"byg:bulbis_anomaly",
"byg:bulbis_shell",
"byg:purple_bulbis_anomaly",
"byg:purple_bulbis_oddity",
"byg:soapstone_tile_wall",
"byg:soapstone_brick_slab",
"byg:bulbis_stem",
"byg:bulbis_wood",
"byg:stripped_bulbis_stem",
"byg:stripped_bulbis_wood",
"byg:bulbis_slab",
"byg:bulbis_fence",
"byg:bulbis_stairs",
"byg:bulbis_crafting_table",
"byg:bulbis_bookshelf",
"byg:soapstone_tile",
"byg:soapstone_pillar",
"byg:crimson_berry_pie",
"byg:bulbis_fence_gate",
"byg:bulbis_trapdoor",
"byg:ether_leaves",
"byg:ether_log",
"byg:ether_wood",
"byg:stripped_ether_log",
"byg:stripped_ether_wood",
"byg:ether_planks",
"byg:imparius_bookshelf",
"byg:imparius_slab",
"byg:imparius_fence",
"byg:imparius_trapdoor",
"byg:imparius_pressure_plate",
"byg:lament_sapling",
"byg:lament_leaves",
"byg:imparius_button",
"byg:imparius_door",
"byg:imparius_fence_gate",
"byg:imparius_stairs",
"byg:imparius_crafting_table",
"byg:ether_trapdoor",
"byg:ether_pressure_plate",
"byg:imparius_mushroom_block",
"byg:imparius_mushroom",
"byg:fungal_imparius",
"byg:fungal_imparius_stem",
"byg:fungal_imparius_hyphae",
"byg:imparius_planks",
"byg:fungal_imparius_filament",
"byg:fungal_imparius_filament_block",
"byg:imparius_stem",
"byg:imparius_mushroom_branch",
"byg:ether_button",
"byg:ether_stairs",
"byg:ether_crafting_table",
"byg:lament_stairs",
"byg:lament_vine",
"byg:lament_sprouts",
"byg:lament_log",
"byg:lament_wood",
"byg:stripped_lament_log",
"byg:stripped_lament_wood",
"byg:lament_planks",
"byg:lament_bookshelf",
"byg:overgrown_crimson_blackstone",
"byg:imbued_nightshade_log",
"byg:stripped_nightshade_wood",
"byg:nightshade_planks",
"byg:nightshade_bookshelf",
"byg:nightshade_fence",
"byg:nightshade_fence_gate",
"byg:nightshade_door",
"byg:nightshade_pressure_plate",
"byg:nightshade_trapdoor",
"byg:nightshade_slab",
"byg:nightshade_stairs",
"byg:nightshade_crafting_table",
"byg:stripped_nightshade_log",
"byg:nightshade_wood",
"byg:nightshade_log",
"byg:lament_crafting_table",
"byg:lament_slab",
"byg:lament_trapdoor",
"byg:lament_pressure_plate",
"byg:lament_button",
"byg:nightshade_leaves",
"byg:flowering_nightshade_leaves",
"byg:nightshade_sapling",
"byg:lament_door",
"byg:lament_fence_gate",
"byg:lament_fence",
"byg:nightshade_roots",
"byg:shulkren_phylium",
"byg:purple_shroomlight",
"byg:cryptic_magma_block",
"byg:cryptic_redstone_ore",
"byg:cryptic_stone",
"byg:cryptic_vent",
"byg:tall_cryptic_vent",
"byg:cryptic_bramble",
"byg:ether_bookshelf",
"byg:warped_soul_soil",
"byg:wailing_bell_blossom",
"byg:wailing_vine",
"byg:wailing_nylium",
"byg:ivis_phylium",
"byg:ivis_roots",
"byg:shulkren_moss_blanket",
"byg:imparius_phylium",
"byg:imparius_bush",
"byg:overgrown_netherrack",
"byg:wailing_grass",
"byg:shulkren_vine",
"byg:ether_phylium",
"byg:ether_stone",
"byg:bulbis_sprouts",
"byg:bulbis_phycelium",
"byg:tall_ether_grass",
"byg:thereal_bellflower",
"byg:vermilion_sculk_tendrils",
"byg:shulkren_wart_block",
"byg:nightshade_sprouts",
"byg:nightshade_phylium",
"byg:shulkren_fungus",
"byg:vermilion_sculk",
"byg:vermilion_sculk_growth",
"byg:therium_lantern",
"byg:nightshade_button",
"byg:tall_crimson_roots",
"byg:warped_cactus",
"byg:warped_bush",
"byg:warped_coral_block",
"byg:warped_coral",
"byg:warped_coral_fan",
"byg:warped_soul_sand",
"byg:palm_log",
"byg:palm_leaves",
"byg:palm_fence",
"byg:palm_slab",
"byg:palm_stairs",
"byg:palm_crafting_table",
"byg:palm_bookshelf",
"byg:palm_planks",
"byg:stripped_palm_wood",
"byg:stripped_palm_log",
"byg:palm_wood",
"byg:palm_sapling",
"byg:palm_boat",
"byg:palm_button",
"byg:palm_pressure_plate",
"byg:palm_trapdoor",
"byg:palm_door",
"byg:palm_fence_gate"
];

//bygkeep.registryName

JEI.hideMod("byg", (name as string) => {
		return name in bygkeep;
});