import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;

//adding cooked fish tag
val cooked_fish as IItemStack[] = [
	<item:minecraft:cooked_cod>,
	<item:minecraft:cooked_salmon>,
	<item:blue_skies:cooked_grittle_flatfish>,
	<item:blue_skies:cooked_municipal_monkfish>,
	<item:blue_skies:cooked_charscale_moki>,
	<item:blue_skies:cooked_horizofin_tunid>,
	<item:aquaculture:fish_fillet_cooked>,
	<item:alexsmobs:cooked_lobster_tail>,
	<item:undergarden:cooked_gwibling>,
	<item:quark:cooked_crab_leg>,
	<item:quark:cooked_frog_leg>,
	<item:aquaculture:frog_legs_cooked>
];
<tag:items:rosie:cooked_fish>.add(cooked_fish);

//adding blue skies and undergarden mushrooms into HT's treechop
<tag:blocks:treechop:choppables>.add(<block:blue_skies:snowcap_mushroom_stem>);
<tag:blocks:treechop:leaves_like>.add(<block:blue_skies:snowcap_mushroom_block>);

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

//adding indreb diamond dust to forge tags
//<tag:items:forge:dusts/diamond>.add(<item:indreb:diamond_dust>);
//<tag:items:forge:dusts>.add(<item:indreb:diamond_dust>);
//<tag:items:supplementaries:hourglass_dusts>.add(<item:indreb:diamond_dust>);

//removing stone bricks from the undergardens portal frames
<tag:blocks:undergarden:portal_frame_blocks>.remove(<block:minecraft:stone_bricks>);

//adding tin ore tag to deepslate tin
//<tag:items:forge:ores>.add(<item:indreb:deepslate_tin_ore>);
//<tag:items:forge:ores/tin>.add(<item:indreb:deepslate_tin_ore>);

//removing nether gold from gold tag, adding it to nethergold tag
<tag:items:forge:ores/nethergold>.add(<item:minecraft:nether_gold_ore>);
<tag:items:forge:ores/gold>.remove(<item:minecraft:nether_gold_ore>);