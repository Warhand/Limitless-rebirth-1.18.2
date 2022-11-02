import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;

//Netherite varieties

val netherite_varieties as IItemStack[IItemStack] = {
	<item:minecraft:phantom_membrane>: <item:upgradednetherite:phantom_upgraded_netherite_ingot>,
	<item:minecraft:gilded_blackstone>: <item:upgradednetherite:gold_upgraded_netherite_ingot>,
	<item:minecraft:blaze_rod>: <item:upgradednetherite:fire_upgraded_netherite_ingot>,
	<item:minecraft:ender_pearl>: <item:upgradednetherite:ender_upgraded_netherite_ingot>,
	<item:minecraft:prismarine_crystals>: <item:upgradednetherite:water_upgraded_netherite_ingot>,
	<item:minecraft:wither_rose>: <item:upgradednetherite:wither_upgraded_netherite_ingot>,
	<item:minecraft:spider_eye>: <item:upgradednetherite:poison_upgraded_netherite_ingot>,
	<item:minecraft:ghast_tear>: <item:upgradednetherite:feather_upgraded_netherite_ingot>,
	<item:graveyard:corruption>: <item:upgradednetherite:corrupt_upgraded_netherite_ingot>
};

for input, output in netherite_varieties {
	craftingTable.addShaped("custom_" + output.registryName.path, output, [[IIngredientEmpty.getInstance(), input, IIngredientEmpty.getInstance()], [input, <item:minecraft:netherite_ingot>, input], [IIngredientEmpty.getInstance(), input, IIngredientEmpty.getInstance()]]);
}