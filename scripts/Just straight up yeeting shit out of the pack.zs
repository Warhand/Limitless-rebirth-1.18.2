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
<recipetype:integrateddynamics:mechanical_squeezer>.removeAll();
<recipetype:integrateddynamics:squeezer>.removeAll();

//Regex recipe removal functions

<recipetype:immersiveengineering:crusher>.removeByRegex("jaopca:immersiveengineering.*_to_.*");
<recipetype:create:crushing>.removeByRegex("malum:create.crushing.crush_.*");
<recipetype:immersiveengineering:crusher>.removeByRegex("immersiveengineering:crusher/ingot_.*");
<recipetype:immersiveengineering:crusher>.removeByRegex("immersiveengineering:crusher/raw_block_.*");
<recipetype:immersiveengineering:crusher>.removeByRegex("immersiveengineering:crusher.raw_ore_.*");
<recipetype:immersiveengineering:crusher>.removeByRegex("immersiveengineering:crusher.ore_.*");
<recipetype:immersiveengineering:crusher>.removeByRegex("immersiveengineering:crusher.*_sandstone");
<recipetype:ftbic:macerating>.removeByRegex("ftbic:macerating/.*/.*_to_.*");
<recipetype:ftbic:macerating>.removeByRegex("jaopca:ftbic.*_to_*.*");
<recipetype:create:crushing>.removeByRegex("jaopca:create.*_to..*");

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
<recipetype:tconstruct:casting_table>.removeByName("materialis:smeltery/casting/metal/utherium/nugget_gold_cast");
<recipetype:tconstruct:casting_table>.removeByName("materialis:smeltery/casting/metal/utherium/nugget_sand_cast");
<recipetype:tconstruct:casting_table>.removeByName("materialis:smeltery/casting/metal/regalium/nugget_gold_cast");
<recipetype:tconstruct:casting_table>.removeByName("materialis:smeltery/casting/metal/regalium/nugget_sand_cast");
<recipetype:tconstruct:casting_table>.removeByName("materialis:smeltery/casting/metal/utherium/ingot_gold_cast");
<recipetype:tconstruct:casting_table>.removeByName("materialis:smeltery/casting/metal/utherium/ingot_sand_cast");
<recipetype:tconstruct:casting_table>.removeByName("materialis:smeltery/casting/metal/regalium/ingot_gold_cast");
<recipetype:tconstruct:casting_table>.removeByName("materialis:smeltery/casting/metal/regalium/ingot_sand_cast");
<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/gold/wire_gold_cast");
<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/gold/wire_sand_cast");
<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/iron/wire_gold_cast");
<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/iron/wire_sand_cast");

public var crafting_table_strings = [
"extendedcrafting:black_iron_ingot",
"extendedcrafting:redstone_ingot",
"jaopca:nuggets.to_material.utherium",
"jaopca:nuggets.to_material.regalium",
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

public var blast_furnace_strings = [
"jaopca:create.crushed_to_ingot_blasting.regalium",
"jaopca:dusts.to_material_blasting.regalium",
"jaopca:create.crushed_to_ingot_blasting.utherium",
"jaopca:dusts.to_material_blasting.utherium",
"ftbic:blasting/dusts/iron_to_iron_ingot"
];

for str in blast_furnace_strings{
blastFurnace.removeByName(str);
}

public var furnace_strings = [
"jaopca:create.crushed_to_ingot_smelting.regalium",
"jaopca:dusts.to_material.regalium",
"jaopca:create.crushed_to_ingot_smelting.utherium",
"jaopca:dusts.to_material.utherium",
"integrateddynamics:smelting/menril_log_coal",
"integrateddynamics:smelting/menril_log_filled_coal",
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
	<item:cgm:grenade>,
	<item:cgm:stun_grenade>,
	<item:quarryplus:flex_marker>,
	<item:quarryplus:workbench>,
	<item:quarryplus:mover>,
	<item:upgradednetherite:gold_upgraded_netherite_ingot>,
	<item:upgradednetherite:fire_upgraded_netherite_ingot>,
	<item:upgradednetherite:ender_upgraded_netherite_ingot>,
	<item:upgradednetherite:water_upgraded_netherite_ingot>,
	<item:upgradednetherite:wither_upgraded_netherite_ingot>,
	<item:upgradednetherite:poison_upgraded_netherite_ingot>,
	<item:upgradednetherite:phantom_upgraded_netherite_ingot>,
	<item:upgradednetherite:feather_upgraded_netherite_ingot>,
	<item:upgradednetherite:corrupt_upgraded_netherite_ingot>,
	<item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>,
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
	<item:jaopca:dusts.zinc>,
	<item:immersiveengineering:dust_silver>,
	<item:immersiveengineering:dust_nickel>,
	<item:immersiveengineering:dust_aluminum>,
	<item:immersiveengineering:dust_uranium>,
	<item:immersiveengineering:dust_gold>,
	<item:immersiveengineering:dust_iron>,
	<item:immersiveengineering:dust_lead>,
	<item:immersiveengineering:dust_copper>,
	<item:immersiveengineering:ingot_hop_graphite>,
	<item:cfm:stripped_warped_crate>,
	<item:cfm:stripped_oak_crate>,
	<item:cfm:stripped_spruce_crate>,
	<item:cfm:stripped_birch_crate>,
	<item:cfm:stripped_jungle_crate>,
	<item:cfm:stripped_acacia_crate>,
	<item:cfm:stripped_dark_oak_crate>,
	<item:cfm:stripped_crimson_crate>,
	<item:minecraft:sticky_piston>,
	<item:cfm:stripped_oak_bedside_cabinet>,
	<item:cfm:stripped_spruce_bedside_cabinet>,
	<item:cfm:stripped_birch_bedside_cabinet>,
	<item:cfm:stripped_jungle_bedside_cabinet>,
	<item:cfm:stripped_acacia_bedside_cabinet>,
	<item:cfm:stripped_dark_oak_bedside_cabinet>,
	<item:cfm:stripped_crimson_bedside_cabinet>,
	<item:cfm:stripped_warped_bedside_cabinet>,
	<item:cfm:stripped_warped_cabinet>,
	<item:cfm:stripped_crimson_cabinet>,
	<item:cfm:stripped_dark_oak_cabinet>,
	<item:cfm:stripped_acacia_cabinet>,
	<item:cfm:stripped_jungle_cabinet>,
	<item:cfm:stripped_birch_cabinet>,
	<item:cfm:stripped_spruce_cabinet>,
	<item:cfm:stripped_oak_cabinet>,
	<item:tconstruct:gold_bars>,
	<item:quark:gold_bars>,
	<item:jaopca:storage_blocks.dragonstone>,
	<item:decorative_blocks:lattice>,
	<item:jaopca:storage_blocks.wood>,
	<item:ftbic:tin_dust>
];

for item in trash{
	craftingTable.remove(item);
}

val jei_removal as IItemStack[] = [
	<item:malum:crushed_soulstone>,
	<item:quarryplus:solid_fuel_quarry>,
	<item:quarryplus:workbench>,
	<item:quarryplus:book_mover>,
	<item:quarryplus:pump_plus>,
	<item:quarryplus:replacer>,
	<item:quarryplus:exp_pump>,
	<item:quarryplus:adv_pump>,
	<item:quarryplus:adv_quarry>,
	<item:quarryplus:mini_quarry>,
	<item:quarryplus:filler>,
	<item:quarryplus:flex_marker>,
	<item:quarryplus:spawner_controller>,
	<item:quarryplus:fuel_module_normal>,
	<item:quarryplus:filler_module>,
	<item:quarryplus:mover>,
	<item:quarryplus:placer_plus>,
	<item:quarryplus:exp_module>,
	<item:immersiveengineering:mold_gear>,
	<item:tconstruct:gear_cast>,
	<item:tconstruct:gear_sand_cast>,
	<item:tconstruct:gear_red_sand_cast>,
	<item:jaopca:create_crushed_ores.utherium>,
	<item:createaddition:iron_wire>,
	<item:malum:cracked_osmium_impetus>,
	<item:malum:osmium_impetus>,
	<item:ftbic:copper_dust>,
	<item:quarryplus:replacer_module>,
	<item:quarryplus:remove_bedrock_module>,
	<item:jaopca:create_crushed_ores.uranium>,
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
	<item:jaopca:create_crushed_ores.aluminum>,
	<item:jaopca:create_crushed_ores.lead>,
	<item:jaopca:create_crushed_ores.netherite_scrap>,
	<item:jaopca:create_crushed_ores.nickel>,
	<item:jaopca:create_crushed_ores.silver>,
	<item:jaopca:create_crushed_ores.tin>,
	<item:jaopca:create_crushed_ores.uranium>,
	<item:jaopca:dusts.soulstone>,
	<item:jaopca:raw_storage_blocks.tin>,
	<item:jaopca:storage_blocks.mana_diamond>,
	<item:jaopca:storage_blocks.mana_diamond>,
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
	<item:jaopca:nuggets.utherium>,
	<item:jaopca:nuggets.starmetal>,
	<item:jaopca:create_crushed_ores.starmetal>,
	<item:jaopca:dusts.starmetal>,
	<item:jaopca:dusts.utherium>,
	<item:tconstruct:gear_cast>,
	<item:tconstruct:gear_sand_cast>,
	<item:tconstruct:gear_red_sand_cast>,
	<item:jaopca:storage_blocks.netherite_scrap>,
	<item:tconstruct:debris_nugget>,
	<item:create:dough>,
	<item:create:wheat_flour>,
	<item:ftbic:bronze_plate>,
	<item:jaopca:nuggets.regalium>,
	<item:jaopca:create_crushed_ores.regalium>,
	<item:jaopca:dusts.regalium>,
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
	<item:additionaladditions:honeyed_apple>
];

for item in utter_eradication{
	craftingTable.remove(item);
	JEI.hideIngredient(item);
	blastFurnace.remove(item);
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
}