#priority 100

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;
import crafttweaker.api.block.Block;

//undergarden raw material tags
<tag:items:forge:storage_blocks/raw_cloggrum>.add(<item:undergarden:raw_cloggrum_block>);
<tag:items:forge:storage_blocks/raw_froststeel>.add(<item:undergarden:raw_froststeel_block>);

//adding cooked fish tag
val cooked_fish as IItemStack[] = [
	<item:minecraft:cooked_cod>,
	<item:minecraft:cooked_salmon>,
	<item:aquaculture:fish_fillet_cooked>,
	<item:alexsmobs:cooked_lobster_tail>,
	<item:undergarden:cooked_gwibling>,
	<item:quark:cooked_crab_leg>,
	<item:quark:cooked_frog_leg>,
	<item:aquaculture:frog_legs_cooked>
];
<tag:items:rosie:cooked_fish>.add(cooked_fish);

//adding blue skies and undergarden mushrooms into HT's treechop

<tag:blocks:treechop:choppables>.add(<block:undergarden:indigo_mushroom_stalk>);
<tag:blocks:treechop:leaves_like>.add(<block:undergarden:indigo_mushroom_cap>);

<tag:blocks:treechop:choppables>.add(<block:undergarden:blood_mushroom_stalk>);
<tag:blocks:treechop:leaves_like>.add(<block:undergarden:blood_mushroom_cap>);
<tag:blocks:treechop:leaves_like>.add(<block:undergarden:blood_mushroom_globule>);

<tag:blocks:treechop:choppables>.add(<block:undergarden:veil_mushroom_stalk>);
<tag:blocks:treechop:leaves_like>.add(<block:undergarden:veil_mushroom_cap>);

<tag:blocks:treechop:leaves_like>.add(<block:undergarden:ink_mushroom_cap>);

//adding tag for ores
<tag:items:rosie:malum/blazing>.add(<item:malum:blazing_quartz_ore>);
<tag:items:rosie:malum/soul>.add(<item:malum:soulstone_ore>);
<tag:items:rosie:malum/soul>.add(<item:malum:deepslate_soulstone_ore>);
<tag:items:rosie:malum/soulraw>.add(<item:malum:raw_soulstone>);
<tag:items:forge:ores/brilliance>.add(<item:malum:brilliant_stone>);
<tag:items:forge:ores/brilliance>.add(<item:malum:brilliant_deepslate>);

//removing stone bricks from the undergardens portal frames
<tag:blocks:undergarden:portal_frame_blocks>.remove(<block:minecraft:stone_bricks>);

//removing nether gold from gold tag, adding it to nethergold tag
<tag:items:forge:ores/nethergold>.add(<item:minecraft:nether_gold_ore>);
<tag:items:forge:ores/gold>.remove(<item:minecraft:nether_gold_ore>);
<tag:items:forge:ores/nethergold>.add(<item:byg:blue_nether_gold_ore>);
<tag:items:forge:ores/gold>.remove(<item:byg:blue_nether_gold_ore>);
<tag:items:forge:ores/nethergold>.add(<item:byg:brimstone_nether_gold_ore>);
<tag:items:forge:ores/gold>.remove(<item:byg:brimstone_nether_gold_ore>);

//adding fish to forge fish tag
<tag:items:forge:raw_fishes>.add(<item:aquaculture:fish_fillet_raw>);
<tag:items:forge:raw_fishes>.add(<item:undergarden:raw_gloomper_leg>);
<tag:items:forge:raw_fishes>.add(<item:quark:frog_leg>);
<tag:items:forge:raw_fishes>.add(<item:alexsmobs:raw_catfish>);
<tag:items:forge:raw_fishes>.add(<item:quark:crab_leg>);
<tag:items:forge:raw_fishes>.add(<item:undergarden:raw_gwibling>);
<tag:items:forge:raw_fishes>.add(<item:alexsmobs:lobster_tail>);

//adding meat to forge meat tags
<tag:items:brewinandchewin:raw_meats>.add(<item:alexsmobs:kangaroo_meat>);
<tag:items:brewinandchewin:raw_meats>.add(<item:undergarden:raw_dweller_meat>);
<tag:items:brewinandchewin:raw_meats>.add(<item:alexsmobs:moose_ribs>);

//adding fishing rods to the fishing rods tag

val fishing_rods as IItemStack[] = [
	<item:minecraft:fishing_rod>,
	<item:alloyed:steel_fishing_rod>,
	<item:aquaculture:iron_fishing_rod>,
	<item:aquaculture:gold_fishing_rod>,
	<item:aquaculture:diamond_fishing_rod>,
	<item:aquaculture:neptunium_fishing_rod>
];

<tag:items:forge:fishing_rods>.add(fishing_rods);

//adding andesite alloy to andesite nuggets and plates tag to fix one recipe
<tag:items:forge:nuggets/andesite>.add(<item:create:andesite_alloy>);

<tag:items:forge:plates/andesite>.add(<item:minecraft:andesite>);
<tag:items:forge:plates/andesite>.add(<item:minecraft:polished_andesite>);

//adding path blocks to a special tag so that way they'll increase the players speed when they walk on them.

//adding soul soil path to soul speed blocks

<tag:blocks:minecraft:soul_speed_blocks>.add(<block:infernalexp:soul_soil_path>);

//adding farmers delight seed tag

val farmers_seeds = [
<item:farmersdelight:cabbage_seeds>,
<item:culturaldelights:cucumber_seeds>,
<item:farmersdelight:tomato_seeds>,
<item:culturaldelights:eggplant_seeds>,
<item:farmersdelight:rice>
];

<tag:items:lr:farmers_seeds>.add(farmers_seeds);

//adding blocks to dimdungeon portal frame tags

val portal_blocks = [
<block:bygonenether:cracked_withered_blackstone>,
<block:bygonenether:chiseled_withered_blackstone>,
<block:supplementaries:blackstone_tile>,
<block:quark:blackstone_bricks>,
<block:bygonenether:withered_blackstone>,
<block:minecraft:chiseled_polished_blackstone>,
<block:minecraft:polished_blackstone>,
<block:minecraft:blackstone>,
<block:minecraft:gilded_blackstone>,
<block:minecraft:cracked_polished_blackstone_bricks>,
<block:minecraft:polished_blackstone_bricks>
];

<tag:blocks:dimdungeons:portal_frame_blocks>.add(portal_blocks);

//adding nether fungus tag

val nether_fungus = [
<item:minecraft:crimson_fungus>,
<item:minecraft:warped_fungus>,
<item:byg:sythian_fungus>,
<item:infernalexp:luminous_fungus>
];

<tag:items:lr:nether_fungus>.add(nether_fungus);

//flower dye tags

val yellow_flowers = [
	<item:minecraft:dandelion>,
	<item:buzzier_bees:buttercup>,
	<item:byg:yellow_tulip>,
	<item:byg:lollipop_flower>,
	<item:minecraft:sunflower>,
	<item:byg:yellow_daffodil>,
	<item:minecraft:horn_coral>,
	<item:minecraft:horn_coral_fan>,
	<item:quark:yellow_blossom_sapling>,
	<item:quark:yellow_blossom_leaves>
];

<tag:items:lr:dye_flowers/yellow>.add(yellow_flowers);

val red_flowers = [
	<item:minecraft:poppy>,
	<item:minecraft:red_tulip>,
	<item:minecraft:rose_bush>,
	<item:byg:begonia>,
	<item:byg:kovan_flower>,
	<item:byg:torch_ginger>,
	<item:byg:rose>,
	<item:byg:amaranth>,
	<item:minecraft:fire_coral>,
	<item:minecraft:fire_coral_fan>,
	<item:quark:red_blossom_sapling>,
	<item:quark:red_blossom_leaves>,
	<item:undergarden:blood_mushroom>
];

<tag:items:lr:dye_flowers/red>.add(red_flowers);

val light_gray_flowers = [
	<item:minecraft:azure_bluet>,
	<item:byg:richea>,
	<item:minecraft:oxeye_daisy>,
	<item:minecraft:white_tulip>
];

<tag:items:lr:dye_flowers/light_gray>.add(light_gray_flowers);

val light_blue_flowers = [
	<item:minecraft:blue_orchid>,
	<item:byg:winter_scilla>,
	<item:byg:thereal_bellflower>,
	<item:biomemakeover:light_blue_petals>,
	<item:biomemakeover:gray_petals>,
	<item:quark:blue_blossom_sapling>,
	<item:quark:blue_blossom_leaves>
];

<tag:items:lr:dye_flowers/light_blue>.add(light_blue_flowers);

val magenta_flowers = [
	<item:minecraft:allium>,
	<item:byg:fairy_slipper>,
	<item:byg:lazarus_bellflower>,
	<item:byg:magenta_amaranth>,
	<item:byg:magenta_tulip>,
	<item:byg:protea_flower>,
	<item:minecraft:bubble_coral>,
	<item:biomemakeover:magenta_petals>,
	<item:minecraft:bubble_coral_fan>,
	<item:quark:lavender_blossom_sapling>,
	<item:quark:lavender_blossom_leaves>
];

<tag:items:lr:dye_flowers/magenta>.add(magenta_flowers);

val orange_flowers = [
	<item:minecraft:orange_tulip>,
	<item:byg:guzmania>,
	<item:byg:california_poppy>,
	<item:byg:incan_lily>,
	<item:byg:orange_amaranth>,
	<item:byg:orange_daisy>,
	<item:minecraft:lilac>,
	<item:quark:orange_blossom_sapling>,
	<item:quark:orange_blossom_leaves>
];

<tag:items:lr:dye_flowers/orange>.add(orange_flowers);

val pink_flowers = [
	<item:byg:pink_allium>,
	<item:byg:peach_leather_flower>,
	<item:byg:osiria_rose>,
	<item:byg:japanese_orchid>,
	<item:byg:daffodil>,
	<item:byg:bistort>,
	<item:byg:firecracker_flower_bush>,
	<item:minecraft:peony>,
	<item:minecraft:pink_tulip>,
	<item:byg:pink_allium_flower_bush>,
	<item:byg:tall_pink_allium>,
	<item:byg:pink_anemone>,
	<item:byg:pink_daffodil>,
	<item:byg:silver_vase_flower>,
	<item:biomemakeover:marigold>,
	<item:buzzier_bees:pink_clover>,
	<item:minecraft:brain_coral>,
	<item:minecraft:brain_coral_fan>,
	<item:quark:pink_blossom_sapling>,
	<item:quark:pink_blossom_leaves>
];

<tag:items:lr:dye_flowers/pink>.add(pink_flowers);

val blue_flowers = [
	<item:minecraft:cornflower>,
	<item:byg:blueberries>,
	<item:byg:hydrangea_bush>,
	<item:byg:blue_sage>,
	<item:byg:delphinium>,
	<item:byg:violet_leather_flower>,
	<item:biomemakeover:blue_petals>,
	<item:minecraft:tube_coral>,
	<item:minecraft:tube_coral_fan>,
	<item:undergarden:indigo_mushroom>
];

<tag:items:lr:dye_flowers/blue>.add(blue_flowers);

val white_flowers = [
	<item:minecraft:lily_of_the_valley>,
	<item:buzzier_bees:white_clover>,
	<item:byg:angelica>,
	<item:byg:snowdrops>,
	<item:byg:white_anemone>,
	<item:byg:white_sage>,
	<item:byg:winter_rose>,
	<item:biomemakeover:swamp_azalea>,
	<item:undergarden:veil_mushroom>
];

<tag:items:lr:dye_flowers/white>.add(white_flowers);

val black_flowers = [
	<item:minecraft:wither_rose>,
	<item:byg:black_rose>,
	<item:biomemakeover:black_thistle>,
	<item:undergarden:ink_mushroom>
];

<tag:items:lr:dye_flowers/black>.add(black_flowers);

val purple_flowers = [
	<item:biomemakeover:foxglove>
];

<tag:items:lr:dye_flowers/purple>.add(purple_flowers);

<tag:items:lr:dye_flowers/gray>.add(<item:biomemakeover:gray_petals>);
<tag:items:lr:dye_flowers/brown>.add(<item:biomemakeover:brown_petals>);

//adding custom blocks to basic tags
<tag:items:forge:storage_blocks/raw_irididum>.add(<item:contenttweaker:raw_iridium_block>);
<tag:items:forge:storage_blocks/raw_aluminum>.add(<item:contenttweaker:raw_aluminum_block>);
<tag:items:forge:storage_blocks/raw_uranium>.add(<item:contenttweaker:raw_uranium_block>);

val custom_blocks = [
	<block:contenttweaker:metal_slag_block>,
	<block:contenttweaker:raw_uranium_block>,
	<block:contenttweaker:raw_aluminum_block>,
	<block:contenttweaker:raw_iridium_block>
];

<tag:blocks:minecraft:needs_stone_tool>.add(custom_blocks);
<tag:blocks:upgradedcore:mineable/hammer>.add(custom_blocks);
<tag:blocks:minecraft:mineable/pickaxe>.add(custom_blocks);


//adding basalt blocks to basalt tag

val basalt_tag = [
	<item:infernalexp:basalt_cobbled>,
	<item:infernalexp:silt>,
	<item:infernalexp:polished_basalt_tiles>,
	<item:infernalexp:basalt_bricks>,
	<item:infernalexp:cracked_basalt_bricks>,
	<item:infernalexp:chiseled_basalt_bricks>,
	<item:infernalexp:magmatic_chiseled_basalt_bricks>,
	<item:infernalexp:basalt_iron_ore>,
	<item:infernalexp:basaltic_magma>,
	<item:minecraft:smooth_basalt>,
	<item:minecraft:polished_basalt>,
	<item:minecraft:basalt>,
	<item:architects_palette:basalt_tiles>,
	<item:bygonenether:withered_basalt>,
	<item:architects_palette:chiseled_basalt_tiles>,
	<item:architects_palette:cracked_basalt_tiles>
];

<tag:items:forge:basalt>.add(basalt_tag);

//adding hammers to a custom hammer tag

val hammers = [
	<item:tools_complement:electrum_hammer>,
	<item:tools_complement:gold_hammer>,
	<item:tools_complement:diamond_hammer>,
	<item:tools_complement:netherite_hammer>,
	<item:tools_complement:copper_hammer>,
	<item:tools_complement:tin_hammer>,
	<item:tools_complement:lead_hammer>,
	<item:tools_complement:silver_hammer>,
	<item:tools_complement:nickel_hammer>,
	<item:tools_complement:iron_hammer>,
	<item:tools_complement:bronze_hammer>,
	<item:tools_complement:constantan_hammer>,
	<item:tools_complement:invar_hammer>
];

<tag:items:lr:hammers>.add(hammers);

//adding custom molten fluids to lava tag

val molten_metal = [
	<fluid:kubejs:molten_iron>,
	<fluid:kubejs:molten_gold>,
	<fluid:kubejs:molten_copper>,
	<fluid:kubejs:molten_zinc>,
	<fluid:kubejs:molten_tin>,
	<fluid:kubejs:molten_steel>,
	<fluid:kubejs:molten_forgotten_metal>,
	<fluid:kubejs:molten_froststeel>,
	<fluid:kubejs:molten_cloggrum>,
	<fluid:kubejs:molten_iridium>,
	<fluid:kubejs:molten_aluminum>,
	<fluid:kubejs:molten_netherite>,
	<fluid:kubejs:molten_lead>,
	<fluid:kubejs:molten_hellforged>,
	<fluid:kubejs:molten_electrum>,
	<fluid:kubejs:molten_enderium>,
	<fluid:kubejs:molten_bronze>,
	<fluid:kubejs:molten_constantan>,
	<fluid:kubejs:molten_brass>,
	<fluid:kubejs:molten_invar>,
	<fluid:kubejs:molten_uranium>,
	<fluid:kubejs:molten_terrasteel>,
	<fluid:kubejs:molten_manasteel>,
	<fluid:kubejs:molten_elementium>,
	<fluid:kubejs:molten_neptunium>,
	<fluid:kubejs:molten_hallowed_gold>,
	<fluid:kubejs:molten_soulstained>,
	<fluid:kubejs:molten_lumium>,
	<fluid:kubejs:molten_pendorite>,
	<fluid:kubejs:molten_signalum>,
	<fluid:kubejs:molten_nickel>,
	<fluid:kubejs:molten_silver>
];

for fluid in molten_metal {
<tag:fluids:minecraft:lava>.add(fluid);
}

val flowing_molten = [
	<fluid:kubejs:flowing_molten_iron>,
	<fluid:kubejs:flowing_molten_gold>,
	<fluid:kubejs:flowing_molten_copper>,
	<fluid:kubejs:flowing_molten_zinc>,
	<fluid:kubejs:flowing_molten_tin>,
	<fluid:kubejs:flowing_molten_steel>,
	<fluid:kubejs:flowing_molten_forgotten_metal>,
	<fluid:kubejs:flowing_molten_froststeel>,
	<fluid:kubejs:flowing_molten_cloggrum>,
	<fluid:kubejs:flowing_molten_iridium>,
	<fluid:kubejs:flowing_molten_aluminum>,
	<fluid:kubejs:flowing_molten_netherite>,
	<fluid:kubejs:flowing_molten_lead>,
	<fluid:kubejs:flowing_molten_hellforged>,
	<fluid:kubejs:flowing_molten_electrum>,
	<fluid:kubejs:flowing_molten_enderium>,
	<fluid:kubejs:flowing_molten_bronze>,
	<fluid:kubejs:flowing_molten_constantan>,
	<fluid:kubejs:flowing_molten_brass>,
	<fluid:kubejs:flowing_molten_invar>,
	<fluid:kubejs:flowing_molten_uranium>,
	<fluid:kubejs:flowing_molten_terrasteel>,
	<fluid:kubejs:flowing_molten_manasteel>,
	<fluid:kubejs:flowing_molten_elementium>,
	<fluid:kubejs:flowing_molten_neptunium>,
	<fluid:kubejs:flowing_molten_hallowed_gold>,
	<fluid:kubejs:flowing_molten_soulstained>,
	<fluid:kubejs:flowing_molten_lumium>,
	<fluid:kubejs:flowing_molten_pendorite>,
	<fluid:kubejs:flowing_molten_signalum>,
	<fluid:kubejs:flowing_molten_nickel>,
	<fluid:kubejs:flowing_molten_silver>
];

for fluid in flowing_molten {
<tag:fluids:minecraft:lava>.add(fluid);
<tag:fluids:lr:flowing_molten>.add(fluid);
}

//adding knives to both the fillet knives and farmers delight knife tags

val fillet_knife = [
	<item:tools_complement:netherite_knife>,
	<item:farmersdelight:flint_knife>,
	<item:tools_complement:diamond_knife>,
	<item:tools_complement:nickel_knife>,
	<item:tools_complement:invar_knife>,
	<item:tools_complement:iron_knife>,
	<item:tools_complement:bronze_knife>,
	<item:tools_complement:constantan_knife>,
	<item:tools_complement:copper_knife>,
	<item:malum:soul_stained_steel_knife>,
	<item:alloyed:steel_knife>,
	<item:tools_complement:electrum_knife>,
	<item:tools_complement:silver_knife>,
	<item:tools_complement:tin_knife>,
	<item:tools_complement:gold_knife>,
	<item:tools_complement:lead_knife>
];

val chefs_knife = [
	<item:tools_complement:netherite_knife>,
	<item:aquaculture:neptunium_fillet_knife>,
	<item:tools_complement:diamond_knife>,
	<item:tools_complement:nickel_knife>,
	<item:tools_complement:invar_knife>,
	<item:tools_complement:iron_knife>,
	<item:tools_complement:bronze_knife>,
	<item:tools_complement:constantan_knife>,
	<item:tools_complement:copper_knife>,
	<item:tools_complement:electrum_knife>,
	<item:tools_complement:silver_knife>,
	<item:tools_complement:tin_knife>,
	<item:tools_complement:gold_knife>,
	<item:tools_complement:lead_knife>
];

<tag:items:forge:fillet_knife>.add(fillet_knife);
<tag:items:farmersdelight:tools/knives>.add(chefs_knife);
<tag:items:forge:tools/knives>.add(chefs_knife);
<tag:items:forge:tools/knives>.add(fillet_knife);

//adding vines to a custom vine tag
val vines = [
	<item:minecraft:vine>,
	<item:minecraft:weeping_vines>,
	<item:minecraft:twisting_vines>,
	<item:darkerdepths:glowspire>,
	<item:byg:imparius_vine>,
	<item:byg:lament_vine>,
	<item:byg:skyris_vine>,
	<item:byg:embur_gel_vines>,
	<item:byg:wailing_vine>,
	<item:byg:shulkren_vine>
];

<tag:items:lr:vines>.add(vines);

//adding carpets and rockwool to vibration occlusion tag
<tag:blocks:minecraft:occludes_vibration_signals>.add(<tag:blocks:minecraft:carpets>);
<tag:blocks:minecraft:occludes_vibration_signals>.add(<tag:blocks:thermal:rockwool>);

//adding new hellforged dust to hellforged dust tag.
<tag:items:forge:dusts/hellforged>.add(<item:contenttweaker:hellforged_dust>);

//
val wool_carpets = [
	<item:minecraft:black_carpet>,
	<item:minecraft:red_carpet>,
	<item:minecraft:brown_carpet>,
	<item:minecraft:purple_carpet>,
	<item:minecraft:gray_carpet>,
	<item:minecraft:pink_carpet>,
	<item:minecraft:light_blue_carpet>,
	<item:minecraft:magenta_carpet>,
	<item:minecraft:white_carpet>,
	<item:minecraft:orange_carpet>,
	<item:minecraft:yellow_carpet>,
	<item:minecraft:lime_carpet>,
	<item:minecraft:light_gray_carpet>,
	<item:minecraft:cyan_carpet>,
	<item:minecraft:blue_carpet>,
	<item:minecraft:green_carpet>
];

<tag:items:minecraft:wool_carpets>.add(wool_carpets);

//diet mod food group tags

val proteins = [
	<item:sullysmod:raw_lanternfish>,
	<item:sullysmod:cooked_lanternfish>,
	<item:biomemakeover:cooked_toad>,
	<item:biomemakeover:raw_toad>,
	<item:nethersdelight:hoglin_ear>,
	<item:nethersdelight:ground_strider>,
	<item:nethersdelight:strider_slice>,
	<item:nethersdelight:hoglin_sirloin>,
	<item:nethersdelight:hoglin_loin>,
	<item:nethersdelight:nether_skewer>,
	<item:nethersdelight:magma_gelatin>,
	<item:nethersdelight:plate_of_stuffed_hoglin_roast>,
	<item:nethersdelight:plate_of_stuffed_hoglin_ham>,
	<item:nethersdelight:plate_of_stuffed_hoglin_snout>,
	<item:nethersdelight:warped_moldy_meat>,
	<item:nethersdelight:grilled_strider>,
	<item:nethersdelight:strider_moss_stew>
];
//val grains = [];
val fruits = [
	<item:enchanted:rowan_berries>,
	<item:nethersdelight:nether_skewer>,
	<item:nethersdelight:propelpearl>,
	<item:nethersdelight:magma_gelatin>
];
val vegetables = [
	<item:biomemakeover:roasted_bulbus_root>,
	<item:biomemakeover:bulbus_root>,
	<item:biomemakeover:glowshroom_stew>,
	<item:nethersdelight:plate_of_stuffed_hoglin_roast>,
	<item:nethersdelight:plate_of_stuffed_hoglin_ham>,
	<item:nethersdelight:plate_of_stuffed_hoglin_snout>,
	<item:nethersdelight:warped_moldy_meat>,
	<item:nethersdelight:grilled_strider>,
	<item:nethersdelight:strider_moss_stew>
];
val sugars = [
	<item:malum:holy_syrup>,
	<item:malum:unholy_syrup>
];

<tag:items:diet:proteins>.add(proteins);
//<tag:items:diet:grains>.add(grains);
<tag:items:diet:fruits>.add(fruits);
<tag:items:diet:vegetables>.add(vegetables);
<tag:items:diet:sugars>.add(sugars);