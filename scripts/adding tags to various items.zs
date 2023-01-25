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
<tag:items:rosie:nethergold>.add(<item:minecraft:nether_gold_ore>);
<tag:items:forge:ores/brilliance>.add(<item:malum:brilliant_stone>);
<tag:items:forge:ores/brilliance>.add(<item:malum:brilliant_deepslate>);

//removing stone bricks from the undergardens portal frames
<tag:blocks:undergarden:portal_frame_blocks>.remove(<block:minecraft:stone_bricks>);

//removing nether gold from gold tag, adding it to nethergold tag
<tag:items:forge:ores/nethergold>.add(<item:minecraft:nether_gold_ore>);
<tag:items:forge:ores/gold>.remove(<item:minecraft:nether_gold_ore>);

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

//adding custom blocks to raw storage block tags
<tag:items:forge:storage_blocks/raw_tin>.add(<item:contenttweaker:raw_tin_block>);
<tag:items:forge:storage_blocks/raw_irididum>.add(<item:contenttweaker:raw_iridium_block>);
<tag:items:forge:storage_blocks/raw_aluminum>.add(<item:contenttweaker:raw_aluminum_block>);
<tag:items:forge:storage_blocks/raw_uranium>.add(<item:contenttweaker:raw_uranium_block>);

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
