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

<recipetype:ftbic:extruding>.removeAll();
<recipetype:ftbic:rolling>.removeAll();

//Regex recipe removal functions

<recipetype:create:crushing>.removeByRegex("malum:create.crushing.crush_.*");

<recipetype:ftbic:macerating>.removeByRegex("ftbic:macerating/.*/.*_to_.*");
<recipetype:create:splashing>.removeByRegex("create:splashing.crushed.*");
<recipetype:create:splashing>.removeByRegex("malum:create.*");
<recipetype:bloodmagic:alchemytable>.removeByRegex("bloodmagic:alchemytable.corrupted.*");

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
	<item:decorative_blocks:lattice>,
	<item:ftbic:tin_dust>,
	<item:effortlessbuilding:reach_upgrade1>,
	<item:effortlessbuilding:reach_upgrade2>,
	<item:effortlessbuilding:reach_upgrade3>,
	<item:plaingrinder:grinder>,
	<item:plaingrinder:handle>,
	<item:advanced_xp:channeling_stone>
];

for item in trash{
	craftingTable.remove(item);
}

val jei_removal as IItemStack[] = [
	<item:malum:crushed_soulstone>,
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
	<item:create:crushed_quicksilver_ore>,
	<item:create:crushed_osmium_ore>,
	<item:create:crushed_platinum_ore>,
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
	<item:ironjetpacks:capacitor>.withTag({Id:"ironjetpacks:creative"as string}),
	<item:ironjetpacks:cell>.withTag({Id:"ironjetpacks:creative"as string}),
	<item:ironjetpacks:jetpack>.withTag({Id:"ironjetpacks:creative"as string,Throttle:1.0 as double}),
	<item:ironjetpacks:thruster>.withTag({Id:"ironjetpacks:creative"as string}),
	<item:malum:copper_nugget>,
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
	<item:malum:osmium_node>,
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
	<item:bygonenether:gilded_netherite_boots>,
	<item:bygonenether:gilded_netherite_leggings>,
	<item:bygonenether:gilded_netherite_chestplate>,
	<item:bygonenether:gilded_netherite_helmet>,
	<item:farmersdelight:fried_egg>,
	<item:createaddition:iron_wire>,
	<item:constructionwand:stone_wand>,
	<item:constructionwand:iron_wand>,
	<item:littlelogistics:rapid_hopper>,
	<item:decorative_blocks:rocky_dirt>,
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
	<item:bloodmagic:corrupted_tinydust>
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
	item.addTooltip("THIS ITEM IS NOT MEANT TO BE OBTAINABLE, PLEASE REPORT THIS AS AN ISSUE IF YOU COME ACROSS IT WHILE PLAYING");
	for tag in <tagmanager:items>.getTagsFor(item) {
  tag.remove(item);
}
}