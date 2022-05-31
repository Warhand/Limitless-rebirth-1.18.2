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
<recipetype:botania:terra_plate>.addRecipe("custom_terra_ingot", <item:botania:terrasteel_ingot>, 500000, <item:botania:manasteel_ingot>, <item:botania:mana_pearl>, <item:botania:mana_diamond>, <item:botania:mana_powder>);

<recipetype:botania:terra_plate>.addRecipe("custom_terra_helmet", <item:botania:terrasteel_helmet>, 500000, <item:botania:manasteel_helmet>, <item:botania:rune_spring>, <item:botania:terrasteel_ingot>);
<recipetype:botania:terra_plate>.addRecipe("custom_terra_chestplate", <item:botania:terrasteel_chestplate>, 500000, <item:botania:manasteel_chestplate>, <item:botania:rune_summer>, <item:botania:terrasteel_ingot>);
<recipetype:botania:terra_plate>.addRecipe("custom_terra_leggings", <item:botania:terrasteel_leggings>, 500000, <item:botania:manasteel_leggings>, <item:botania:rune_autumn>, <item:botania:terrasteel_ingot>);
<recipetype:botania:terra_plate>.addRecipe("custom_terra_boots", <item:botania:terrasteel_boots>, 500000, <item:botania:manasteel_boots>, <item:botania:rune_winter>, <item:botania:terrasteel_ingot>);

<recipetype:botania:terra_plate>.addRecipe("custom_terra_axe", <item:botania:terra_axe>, 500000, <item:botania:manasteel_axe>, <item:minecraft:glowstone>, <item:botania:terrasteel_ingot>);
<recipetype:botania:terra_plate>.addRecipe("custom_terra_pick", <item:botania:terra_pick>, 500000, <item:botania:manasteel_pick>, <item:botania:mana_tablet>, <item:botania:terrasteel_ingot>);
<recipetype:botania:terra_plate>.addRecipe("custom_terra_sword", <item:botania:terra_sword>, 500000, <item:botania:manasteel_sword>, <item:botania:mana_spreader>, <item:botania:terrasteel_ingot>);