import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;
import crafttweaker.api.ingredient.transform.type.TransformReuse;
import crafttweaker.api.recipe.Replacer;

//replacing copper with rose gold in rose gold items recipes.

Replacer.forTypes(smithing).replace(<item:minecraft:copper_ingot>, <tag:items:forge:ingots/rose_gold>).execute();