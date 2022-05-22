import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;
import crafttweaker.api.loot.condition.LootTableIdRegexLootCondition;
import crafttweaker.api.loot.condition.RandomChanceLootCondition;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.resource.ResourceLocation;
import mods.jei.JEI;

//terraplate recipes

<recipetype:botania:terra_plate>.removeAll();

<recipetype:botania:terra_plate>.addJsonRecipe("custom_terra_ingot",
{"mana": 1000000,
  "ingredients": [
    {
      "item": "botania:manasteel_ingot"
    },
    {
      "item": "botania:mana_pearl"
    },
    {
      "item": "botania:mana_diamond"
    },
	{
      "item": "botania:mana_powder"
    },
	{
      "item": "botania:mana_string"
    },
	{
      "item": "botania:quartz_mana"
    }
  ],
  "result": {
    "item": "botania:terrasteel_ingot"
  }
});

<recipetype:botania:terra_plate>.addJsonRecipe("custom_terra_chestplate",
{"mana": 250000,
  "ingredients": [
    {
      "item": "botania:manasteel_chestplate"
    },
    {
      "item": "botania:rune_summer"
    },
    {
      "item": "botania:terrasteel_ingot"
    }
  ],
  "result": {
    "item": "botania:terrasteel_chestplate"
  }
});