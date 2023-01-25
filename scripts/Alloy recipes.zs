import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;

//Create alloy recipes
<recipetype:create:mixing>.remove(<item:alloyed:bronze_ingot>);
<recipetype:create:mixing>.addJsonRecipe("create_mixing_bronze", {
"ingredients": [
    {
      "item": "minecraft:copper_ingot"
    },
    {
      "item": "minecraft:copper_ingot"
    },
    {
      "item": "minecraft:copper_ingot"
    },
    {
      "tag": "forge:ingots/tin"
    }
  ],
  "results": [
    {
      "item": "alloyed:bronze_ingot",
      "count": 3
    }
  ],
  "heatRequirement": "heated"
}
);