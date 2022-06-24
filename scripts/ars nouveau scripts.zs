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

//different source rates of making source gems
<recipetype:ars_nouveau:imbuement>.addJsonRecipe("custom_source_gem_lapis", {
"input": {
    "tag": "forge:gems/lapis"
  },
  "output": "ars_nouveau:source_gem",
  "count": 1,
  "source": 1000,
  "pedestalItems": []
});

<recipetype:ars_nouveau:imbuement>.addJsonRecipe("custom_source_gem_utherium", {
"input": {
    "tag": "forge:ingots/utherium"
  },
  "output": "ars_nouveau:source_gem",
  "count": 2,
  "source": 250,
  "pedestalItems": []
});