import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;

//netherite totem
craftingTable.remove(<item:upgradednetherite_items:netherite_totem>);
mods.extendedcrafting.CombinationCrafting.addRecipe("67cd1ba7-b004-4cb1-97ed-cd6fe7dd7d33", <item:upgradednetherite_items:netherite_totem>, 50000, [
	<item:minecraft:totem_of_undying>, <item:minecraft:netherite_ingot>, <item:minecraft:netherite_ingot>, <item:minecraft:netherite_ingot>, <item:minecraft:netherite_ingot>
]);

//ingot recipes

//ender upgrade
mods.extendedcrafting.CombinationCrafting.addRecipe("8e6d6dc3-041a-4604-ac84-7e1dc9c146ac", <item:upgradednetherite:ender_upgraded_netherite_ingot>, 50000, [
	<item:minecraft:netherite_ingot>, <tag:items:forge:dusts/ender>, <tag:items:forge:dusts/ender>, <tag:items:forge:dusts/ender>, <tag:items:forge:dusts/ender>, <tag:items:forge:dusts/ender>, <tag:items:forge:dusts/ender>, <tag:items:forge:dusts/ender>, <tag:items:forge:dusts/ender>
]);

//gold upgrade
mods.extendedcrafting.CombinationCrafting.addRecipe("6125908e-917f-4c77-adf3-e57f7cc72f57", <item:upgradednetherite:gold_upgraded_netherite_ingot>, 50000, [
	<item:minecraft:netherite_ingot>, <item:minecraft:gilded_blackstone>, <item:minecraft:gilded_blackstone>, <item:minecraft:gilded_blackstone>, <item:minecraft:gilded_blackstone>, <item:minecraft:gilded_blackstone>, <item:minecraft:gilded_blackstone>, <item:minecraft:gilded_blackstone>, <item:minecraft:gilded_blackstone>
]);

//blaze upgrade
mods.extendedcrafting.CombinationCrafting.addRecipe("793d1204-d90f-4aa4-b308-a096019db674", <item:upgradednetherite:fire_upgraded_netherite_ingot>, 50000, [
	<item:minecraft:netherite_ingot>, <item:quark:blaze_lantern>, <item:quark:blaze_lantern>, <item:quark:blaze_lantern>, <item:quark:blaze_lantern>, <item:quark:blaze_lantern>, <item:quark:blaze_lantern>, <item:quark:blaze_lantern>, <item:quark:blaze_lantern>
]);

//prismarine upgrade
mods.extendedcrafting.CombinationCrafting.addRecipe("b0ff340e-02a3-434e-a6b6-ec38fb4ca278", <item:upgradednetherite:water_upgraded_netherite_ingot>, 50000, [
	<item:minecraft:netherite_ingot>, <item:minecraft:sea_lantern>, <item:minecraft:sea_lantern>, <item:minecraft:sea_lantern>, <item:minecraft:sea_lantern>, <item:minecraft:sea_lantern>, <item:minecraft:sea_lantern>, <item:minecraft:sea_lantern>, <item:minecraft:sea_lantern>
]);

//wither upgrade
mods.extendedcrafting.CombinationCrafting.addRecipe("d48396b8-73ac-483c-9436-79279612b04b", <item:upgradednetherite:wither_upgraded_netherite_ingot>, 50000, [
	<item:minecraft:netherite_ingot>, <item:minecraft:wither_skeleton_skull>, <item:minecraft:wither_skeleton_skull>, <item:minecraft:wither_skeleton_skull>, <item:minecraft:wither_skeleton_skull>, <item:minecraft:wither_skeleton_skull>, <item:minecraft:wither_skeleton_skull>, <item:minecraft:wither_skeleton_skull>, <item:minecraft:wither_skeleton_skull>
]);

//spider upgrade
mods.extendedcrafting.CombinationCrafting.addRecipe("aaa622d2-6ccb-4fb4-9a93-33af2db743b3", <item:upgradednetherite:poison_upgraded_netherite_ingot>, 50000, [
	<item:minecraft:netherite_ingot>, <item:biomesoplenty:spider_egg>, <item:biomesoplenty:spider_egg>, <item:biomesoplenty:spider_egg>, <item:biomesoplenty:spider_egg>, <item:biomesoplenty:spider_egg>, <item:biomesoplenty:spider_egg>, <item:biomesoplenty:spider_egg>, <item:biomesoplenty:spider_egg>
]);
<item:biomesoplenty:spider_egg>.addTooltip("Can be found in spider infested caves and collected with silk touch.");

//Phantom upgrade
mods.extendedcrafting.CombinationCrafting.addRecipe("8308b882-8c86-4581-b135-e99b2cf269f6", <item:upgradednetherite:phantom_upgraded_netherite_ingot>, 50000, [
	<item:minecraft:netherite_ingot>, <item:minecraft:phantom_membrane>, <item:minecraft:phantom_membrane>, <item:minecraft:phantom_membrane>, <item:minecraft:phantom_membrane>, <item:minecraft:phantom_membrane>, <item:minecraft:phantom_membrane>, <item:minecraft:phantom_membrane>, <item:minecraft:phantom_membrane>
]);

//feather upgrade
mods.extendedcrafting.CombinationCrafting.addRecipe("0c4e7376-17d3-420f-919f-c5ce13fbcad0", <item:upgradednetherite:feather_upgraded_netherite_ingot>, 50000, [
	<item:minecraft:netherite_ingot>, <tag:items:forge:feathers>, <tag:items:forge:feathers>, <tag:items:forge:feathers>, <tag:items:forge:feathers>, <tag:items:forge:feathers>, <tag:items:forge:feathers>, <tag:items:forge:feathers>, <tag:items:forge:feathers>
]);

//corrupt upgrade
mods.extendedcrafting.CombinationCrafting.addRecipe("109a4b01-b46f-49ed-8635-46a48603e947", <item:upgradednetherite:corrupt_upgraded_netherite_ingot>, 50000, [
	<item:minecraft:netherite_ingot>, <item:graveyard:corruption>, <item:graveyard:corruption>, <item:graveyard:corruption>, <item:graveyard:corruption>, <item:graveyard:corruption>, <item:graveyard:corruption>, <item:graveyard:corruption>, <item:graveyard:corruption>
]);

//Ultimerite upgrade
mods.extendedcrafting.CombinationCrafting.addRecipe("2a317091-3bce-4b26-a655-1a060870233a", <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, 100000, [
	<item:minecraft:nether_star>, <item:upgradednetherite:wither_upgraded_netherite_ingot>, <item:upgradednetherite:poison_upgraded_netherite_ingot>, <item:upgradednetherite:water_upgraded_netherite_ingot>, <item:upgradednetherite:phantom_upgraded_netherite_ingot>, <item:upgradednetherite:ender_upgraded_netherite_ingot>, <item:upgradednetherite:feather_upgraded_netherite_ingot>, <item:upgradednetherite:fire_upgraded_netherite_ingot>, <item:upgradednetherite:gold_upgraded_netherite_ingot>
]);

//Creativerite
mods.extendedcrafting.CombinationCrafting.addRecipe("7d268eb9-c654-4f55-b4ff-7debf992abf5", <item:upgradednetherite_creative:creative_upgraded_netherite_ingot>, 500000, [
	<item:paraglider:anti_vessel>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:extendedcrafting:the_ultimate_ingot>, <item:extendedcrafting:the_ultimate_ingot>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:extendedcrafting:the_ultimate_ingot>, <item:extendedcrafting:the_ultimate_ingot>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>
]);

//creativerite helmets
mods.extendedcrafting.CombinationCrafting.addRecipe("0bad7c4e-9255-4745-ac94-5a7cd7d0ee3b", <item:upgradednetherite_creative:creative_upgraded_netherite_helmet>, 1000000, [
	<item:upgradednetherite_creative:creative_upgraded_netherite_ingot>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_helmet>, <item:extendedcrafting:ender_star_block>, <item:extendedcrafting:ender_star_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_helmet>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_helmet>, <item:extendedcrafting:ender_star_block>, <item:extendedcrafting:ender_star_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_helmet>
]);

//creativerite leggings
mods.extendedcrafting.CombinationCrafting.addRecipe("2de23d59-8f13-400f-9a34-97bf30cee9ef", <item:upgradednetherite_creative:creative_upgraded_netherite_chestplate>, 1000000, [
	<item:upgradednetherite_creative:creative_upgraded_netherite_ingot>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_chestplate>, <item:extendedcrafting:ender_star_block>, <item:extendedcrafting:ender_star_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_chestplate>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_chestplate>, <item:extendedcrafting:ender_star_block>, <item:extendedcrafting:ender_star_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_chestplate>
]);

//creativerite leggings
mods.extendedcrafting.CombinationCrafting.addRecipe("979e8639-392b-487e-8cff-24bc6843518e", <item:upgradednetherite_creative:creative_upgraded_netherite_leggings>, 1000000, [
	<item:upgradednetherite_creative:creative_upgraded_netherite_ingot>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_leggings>, <item:extendedcrafting:ender_star_block>, <item:extendedcrafting:ender_star_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_leggings>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_leggings>, <item:extendedcrafting:ender_star_block>, <item:extendedcrafting:ender_star_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_leggings>
]);

//creativerite boots
mods.extendedcrafting.CombinationCrafting.addRecipe("71bcae0c-60a2-4e65-8ddf-362b2941e11f", <item:upgradednetherite_creative:creative_upgraded_netherite_boots>, 1000000, [
	<item:upgradednetherite_creative:creative_upgraded_netherite_ingot>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_boots>, <item:extendedcrafting:ender_star_block>, <item:extendedcrafting:ender_star_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_boots>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_boots>, <item:extendedcrafting:ender_star_block>, <item:extendedcrafting:ender_star_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_boots>
]);

//creativerite sword
mods.extendedcrafting.CombinationCrafting.addRecipe("d1a79994-9ced-467b-8fef-70884f61df82", <item:upgradednetherite_creative:creative_upgraded_netherite_sword>, 1000000, [
	<item:upgradednetherite_creative:creative_upgraded_netherite_ingot>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_sword>, <item:extendedcrafting:ender_star_block>, <item:extendedcrafting:ender_star_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_sword>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_sword>, <item:extendedcrafting:ender_star_block>, <item:extendedcrafting:ender_star_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_sword>
]);

//creativerite pickaxe
mods.extendedcrafting.CombinationCrafting.addRecipe("78c251fe-bb4d-4a7a-9334-625554458032", <item:upgradednetherite_creative:creative_upgraded_netherite_pickaxe>, 1000000, [
	<item:upgradednetherite_creative:creative_upgraded_netherite_ingot>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_pickaxe>, <item:extendedcrafting:ender_star_block>, <item:extendedcrafting:ender_star_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_pickaxe>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_pickaxe>, <item:extendedcrafting:ender_star_block>, <item:extendedcrafting:ender_star_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_pickaxe>
]);

//creativerite shovel
mods.extendedcrafting.CombinationCrafting.addRecipe("78faa93d-b13d-4441-bc85-9b3e1a20eaaf", <item:upgradednetherite_creative:creative_upgraded_netherite_shovel>, 1000000, [
	<item:upgradednetherite_creative:creative_upgraded_netherite_ingot>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_shovel>, <item:extendedcrafting:ender_star_block>, <item:extendedcrafting:ender_star_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_shovel>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_shovel>, <item:extendedcrafting:ender_star_block>, <item:extendedcrafting:ender_star_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_shovel>
]);

//creativerite axe
mods.extendedcrafting.CombinationCrafting.addRecipe("515b8bc6-b012-4ad3-bc3c-bc591e4c9c70", <item:upgradednetherite_creative:creative_upgraded_netherite_axe>, 1000000, [
	<item:upgradednetherite_creative:creative_upgraded_netherite_ingot>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_axe>, <item:extendedcrafting:ender_star_block>, <item:extendedcrafting:ender_star_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_axe>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_axe>, <item:extendedcrafting:ender_star_block>, <item:extendedcrafting:ender_star_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_axe>
]);

//creativerite bow
mods.extendedcrafting.CombinationCrafting.addRecipe("51181257-f0ad-4d3c-922f-86d60ff00a97", <item:upgradednetherite_creative:creative_upgraded_netherite_bow>, 1000000, [
	<item:upgradednetherite_creative:creative_upgraded_netherite_ingot>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_bow>, <item:extendedcrafting:ender_star_block>, <item:extendedcrafting:ender_star_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_bow>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_bow>, <item:extendedcrafting:ender_star_block>, <item:extendedcrafting:ender_star_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_bow>
]);

//creativerite horse armor
mods.extendedcrafting.CombinationCrafting.addRecipe("ed52d775-12aa-4f9f-b2e7-8fc20db3a192", <item:upgradednetherite_creative:creative_upgraded_netherite_horse_armor>, 1000000, [
	<item:upgradednetherite_creative:creative_upgraded_netherite_ingot>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_horse_armor>, <item:extendedcrafting:ender_star_block>, <item:extendedcrafting:ender_star_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_horse_armor>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_horse_armor>, <item:extendedcrafting:ender_star_block>, <item:extendedcrafting:ender_star_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_horse_armor>
]);