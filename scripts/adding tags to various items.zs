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

//add tag for flesh blocks
<tag:items:forge:flesh>.add(<item:biomesoplenty:flesh>);
<tag:items:forge:flesh>.add(<item:biomesoplenty:porous_flesh>);

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

val path_blocks as IItemStack[] = [
	<item:infernalexp:crimson_nylium_path>,
	<item:infernalexp:warped_nylium_path>,
	<item:infernalexp:soul_soil_path>,
	<item:ugpaths:frozen_deepturf_path>,
	<item:ugpaths:deepsoil_path>,
	<item:ugpaths:ashen_deepturf_path>,
	<item:minecraft:dirt_path>,
	<item:minecraft:blue_concrete>,
	<item:minecraft:purple_concrete>,
	<item:minecraft:light_gray_concrete>,
	<item:minecraft:lime_concrete>,
	<item:minecraft:yellow_concrete>,
	<item:minecraft:magenta_concrete>,
	<item:minecraft:white_concrete>,
	<item:minecraft:cyan_concrete>,
	<item:immersiveengineering:concrete_leaded>,
	<item:minecraft:orange_concrete>,
	<item:minecraft:light_blue_concrete>,
	<item:minecraft:pink_concrete>,
	<item:minecraft:gray_concrete>,
	<item:minecraft:brown_concrete>,
	<item:minecraft:green_concrete>,
	<item:minecraft:red_concrete>,
	<item:immersiveengineering:concrete>,
	<item:immersiveengineering:concrete_tile>,
	<item:minecraft:black_concrete>
];
<tag:items:limitlessrebirth:paths>.add(path_blocks);

//adding soul soil path to soul speed blocks

<tag:blocks:minecraft:soul_speed_blocks>.add(<block:infernalexp:soul_soil_path>);