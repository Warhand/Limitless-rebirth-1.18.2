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
	<item:effortlessbuilding:reach_upgrade1>,
	<item:effortlessbuilding:reach_upgrade2>,
	<item:effortlessbuilding:reach_upgrade3>,
	<item:plaingrinder:grinder>,
	<item:plaingrinder:handle>,
	<item:advanced_xp:channeling_stone>,
	<item:ftbic:gold_wire>,
	<item:ftbic:enderium_wire>
];

for item in trash{
	craftingTable.remove(item);
}

val jei_removal as IItemStack[] = [
	<item:malum:crushed_soulstone>,
	<item:malum:cracked_osmium_impetus>,
	<item:malum:osmium_impetus>,
	<item:ftbic:copper_dust>,
	<item:ftbic:iron_dust>,
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
	<item:pipez:gas_pipe>,
	<item:create:copper_backtank_placeable>
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
	<item:ironjetpacks:capacitor>.withTag({Id:"ironjetpacks:creative"as string}),
	<item:ironjetpacks:cell>.withTag({Id:"ironjetpacks:creative"as string}),
	<item:ironjetpacks:jetpack>.withTag({Id:"ironjetpacks:creative"as string,Throttle:1.0 as double}),
	<item:ironjetpacks:thruster>.withTag({Id:"ironjetpacks:creative"as string}),
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
	<item:delightful:invar_knife>,
	<item:delightful:osmium_knife>,
	<item:delightful:lapis_lazuli_knife>,
	<item:delightful:large_amethyst_knife>,
	<item:delightful:refined_glowstone_knife>,
	<item:delightful:refined_obsidian_knife>,
	<item:darkerdepths:raw_silver>,
	<item:darkerdepths:silver_block>,
	<item:darkerdepths:silver_ingot>,
	<item:waystones:warp_plate>,
	<item:bygonenether:gilded_netherite_boots>,
	<item:bygonenether:gilded_netherite_leggings>,
	<item:bygonenether:gilded_netherite_chestplate>,
	<item:bygonenether:gilded_netherite_helmet>,
	<item:farmersdelight:fried_egg>,
	<item:constructionwand:stone_wand>,
	<item:constructionwand:iron_wand>,
	<item:littlelogistics:rapid_hopper>,
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
	<item:farmersdelight:netherite_knife>,
	<item:farmersdelight:diamond_knife>,
	<item:farmersdelight:iron_knife>,
	<item:aquaculture:diamond_fillet_knife>,
	<item:aquaculture:gold_fillet_knife>,
	<item:aquaculture:iron_fillet_knife>,
	<item:aquaculture:stone_fillet_knife>,
	<item:aquaculture:wooden_fillet_knife>,
	<item:delightful:lead_knife>,
	<item:delightful:electrum_knife>,
	<item:delightful:constantan_knife>,
	<item:delightful:bronze_knife>,
	<item:delightful:brass_knife>,
	<item:delightful:silver_knife>,
	<item:delightful:tin_knife>,
	<item:delightful:copper_knife>,
	<item:farmersdelight:golden_knife>,
	<item:delightful:nickel_knife>,
	<item:thermal:bronze_ingot>,
	<item:thermal:bronze_nugget>,
	<item:thermal:bronze_gear>,
	<item:thermal:bronze_plate>,
	<item:pipez:wrench>,
	<item:ftbic:uranium_rod>,
	<item:ftbic:bronze_rod>,
	<item:ftbic:iridium_rod>,
	<item:ftbic:lead_rod>,
	<item:ftbic:tin_rod>,
	<item:ftbic:iron_rod>,
	<item:thermal:lapis_gear>,
	<item:thermal:emerald_gear>,
	<item:thermal:diamond_gear>,
	<item:byg:raw_pendorite>,
	<item:byg:raw_pendorite_block>,
	<item:delightful:acorn>,
	<item:delightful:acorn_sack>
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
<tag:items:c:hidden_from_recipe_viewers>.add(item);
}