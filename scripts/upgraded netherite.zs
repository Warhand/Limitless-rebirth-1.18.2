import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;

//featherite ingot
mods.extendedcrafting.CombinationCrafting.addRecipe("featherite", <item:upgradednetherite:feather_upgraded_netherite_ingot>, 25000, [
	<item:minecraft:netherite_ingot>, <tag:items:forge:feathers>, <tag:items:forge:feathers>, <tag:items:forge:feathers>, <tag:items:forge:feathers>
]);

//golderite ingot
mods.extendedcrafting.CombinationCrafting.addRecipe("featherite", <item:upgradednetherite:gold_upgraded_netherite_ingot>, 25000, [
	<item:minecraft:netherite_ingot>, <tag:items:forge:ingots/gold>, <tag:items:forge:ingots/gold>, <tag:items:forge:ingots/gold>, <tag:items:forge:ingots/gold>
]);

//blazerite ingot
mods.extendedcrafting.CombinationCrafting.addRecipe("featherite", <item:upgradednetherite:fire_upgraded_netherite_ingot>, 25000, [
	<item:minecraft:netherite_ingot>, <tag:items:forge:rods/blaze>, <tag:items:forge:rods/blaze>, <tag:items:forge:rods/blaze>, <tag:items:forge:rods/blaze>
]);

//blazerite ingot
mods.extendedcrafting.CombinationCrafting.addRecipe("blazerite", <item:upgradednetherite:fire_upgraded_netherite_ingot>, 25000, [
	<item:minecraft:netherite_ingot>, <tag:items:forge:rods/blaze>, <tag:items:forge:rods/blaze>, <tag:items:forge:rods/blaze>, <tag:items:forge:rods/blaze>
]);

//enderite ingot
mods.extendedcrafting.CombinationCrafting.addRecipe("enderite", <item:upgradednetherite:ender_upgraded_netherite_ingot>, 25000, [
	<item:minecraft:netherite_ingot>, <tag:items:forge:ender_pearls>, <tag:items:forge:ender_pearls>, <tag:items:forge:ender_pearls>, <tag:items:forge:ender_pearls>
]);

//prismarite ingot
mods.extendedcrafting.CombinationCrafting.addRecipe("prismarite", <item:upgradednetherite:water_upgraded_netherite_ingot>, 25000, [
	<item:minecraft:netherite_ingot>, <item:minecraft:sea_lantern>, <item:minecraft:sea_lantern>, <item:minecraft:sea_lantern>, <item:minecraft:sea_lantern>
]);

//witherite ingot
mods.extendedcrafting.CombinationCrafting.addRecipe("witherite", <item:upgradednetherite:wither_upgraded_netherite_ingot>, 25000, [
	<item:minecraft:netherite_ingot>, <tag:items:forge:wither_bones>, <tag:items:forge:wither_bones>, <tag:items:forge:wither_bones>, <tag:items:forge:wither_bones>
]);

//spiderite ingot
mods.extendedcrafting.CombinationCrafting.addRecipe("spiderite", <item:upgradednetherite:poison_upgraded_netherite_ingot>, 25000, [
	<item:minecraft:netherite_ingot>, <item:minecraft:fermented_spider_eye>, <item:minecraft:fermented_spider_eye>, <item:minecraft:fermented_spider_eye>, <item:minecraft:fermented_spider_eye>
]);

//phanterite ingot
mods.extendedcrafting.CombinationCrafting.addRecipe("phanterite", <item:upgradednetherite:phantom_upgraded_netherite_ingot>, 25000, [
	<item:minecraft:netherite_ingot>, <item:minecraft:phantom_membrane>, <item:minecraft:phantom_membrane>, <item:minecraft:phantom_membrane>, <item:minecraft:phantom_membrane>
]);

//corrupterite ingot
mods.extendedcrafting.CombinationCrafting.addRecipe("corrupterite", <item:upgradednetherite:corrupt_upgraded_netherite_ingot>, 25000, [
	<item:minecraft:netherite_ingot>, <item:minecraft:dragon_breath>, <item:minecraft:dragon_breath>, <item:minecraft:dragon_breath>, <item:minecraft:dragon_breath>
]);

//ultimerite ingot
mods.extendedcrafting.CombinationCrafting.addRecipe("ultimerite", <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, 100000, [
	<item:upgradednetherite:corrupt_upgraded_netherite_ingot>, <item:upgradednetherite:fire_upgraded_netherite_ingot>, <item:upgradednetherite:water_upgraded_netherite_ingot>, <item:upgradednetherite:gold_upgraded_netherite_ingot>, <item:upgradednetherite:feather_upgraded_netherite_ingot>, <item:upgradednetherite:wither_upgraded_netherite_ingot>, <item:upgradednetherite:ender_upgraded_netherite_ingot>, <item:upgradednetherite:phantom_upgraded_netherite_ingot>, <item:upgradednetherite:poison_upgraded_netherite_ingot>
]);

//creativerite ingot
mods.extendedcrafting.CombinationCrafting.addRecipe("creativerite", <item:upgradednetherite_creative:creative_upgraded_netherite_ingot>, 500000, [
	<item:extendedcrafting:nether_star_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:extendedcrafting:the_ultimate_ingot>, <item:extendedcrafting:the_ultimate_ingot>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:extendedcrafting:the_ultimate_ingot>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:extendedcrafting:the_ultimate_ingot>
]);

//creativerite equipment
smithing.addRecipe("creativerite_sword", <item:upgradednetherite_creative:creative_upgraded_netherite_sword>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_sword>, <item:upgradednetherite_creative:creative_upgraded_netherite_ingot>);

smithing.addRecipe("creativerite_pickaxe", <item:upgradednetherite_creative:creative_upgraded_netherite_pickaxe>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_pickaxe>, <item:upgradednetherite_creative:creative_upgraded_netherite_ingot>);

smithing.addRecipe("creativerite_shovel", <item:upgradednetherite_creative:creative_upgraded_netherite_shovel>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_shovel>, <item:upgradednetherite_creative:creative_upgraded_netherite_ingot>);

smithing.addRecipe("creativerite_axe", <item:upgradednetherite_creative:creative_upgraded_netherite_axe>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_axe>, <item:upgradednetherite_creative:creative_upgraded_netherite_ingot>);

smithing.addRecipe("creativerite_bow", <item:upgradednetherite_creative:creative_upgraded_netherite_bow>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_bow>, <item:upgradednetherite_creative:creative_upgraded_netherite_ingot>);

smithing.addRecipe("creativerite_helmet", <item:upgradednetherite_creative:creative_upgraded_netherite_helmet>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_helmet>, <item:upgradednetherite_creative:creative_upgraded_netherite_ingot>);

smithing.addRecipe("creativerite_chestplate", <item:upgradednetherite_creative:creative_upgraded_netherite_chestplate>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_chestplate>, <item:upgradednetherite_creative:creative_upgraded_netherite_ingot>);

smithing.addRecipe("creativerite_leggings", <item:upgradednetherite_creative:creative_upgraded_netherite_leggings>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_leggings>, <item:upgradednetherite_creative:creative_upgraded_netherite_ingot>);

smithing.addRecipe("creativerite_boots", <item:upgradednetherite_creative:creative_upgraded_netherite_boots>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_boots>, <item:upgradednetherite_creative:creative_upgraded_netherite_ingot>);

smithing.addRecipe("creativerite_horse", <item:upgradednetherite_creative:creative_upgraded_netherite_horse_armor>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_horse_armor>, <item:upgradednetherite_creative:creative_upgraded_netherite_ingot>);