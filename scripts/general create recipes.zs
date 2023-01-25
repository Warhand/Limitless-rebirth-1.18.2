import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

//replacing create propellor recipe
craftingTable.remove(<item:create:propeller>);
craftingTable.addShaped("custom_propeller", <item:create:propeller>, [[<item:minecraft:air>, <tag:items:forge:plates/steel>, <item:minecraft:air>], [<tag:items:forge:plates/steel>, <item:create:andesite_alloy>, <tag:items:forge:plates/steel>], [<item:minecraft:air>, <tag:items:forge:plates/steel>, <item:minecraft:air>]]);

//washing terracotta into colorless terracotta with Create
<recipetype:create:splashing>.addJsonRecipe("washed_terracotta", {"ingredients": [
    {
      "tag": "forge:terracotta"
    }
  ],
  "results": [
    {
      "item": "minecraft:terracotta"
    }
]});

//haunting obsidian to get crying obsidian
<recipetype:create:haunting>.addJsonRecipe("crying_obsidian", {"ingredients": [
    {
      "tag": "forge:obsidian"
    }
  ],
  "results": [
    {
      "item": "minecraft:crying_obsidian"
    }
]});