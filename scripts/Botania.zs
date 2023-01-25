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

//orechid recipes

//Undergarden orechid ore generation

//Depthrock orechid
<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_depthrock_coal", {
  "input": "undergarden:depthrock",
  "output": {
    "type": "block",
    "block": "undergarden:depthrock_coal_ore"
  },
  "weight": 75
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_depthrock_cloggrum", {
  "input": "undergarden:depthrock",
  "output": {
    "type": "block",
    "block": "undergarden:depthrock_cloggrum_ore"
  },
  "weight": 60
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_depthrock_iron", {
  "input": "undergarden:depthrock",
  "output": {
    "type": "block",
    "block": "undergarden:depthrock_iron_ore"
  },
  "weight": 55
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_depthrock_gold", {
  "input": "undergarden:depthrock",
  "output": {
    "type": "block",
    "block": "undergarden:depthrock_gold_ore"
  },
  "weight": 40
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_depthrock_utherium", {
  "input": "undergarden:depthrock",
  "output": {
    "type": "block",
    "block": "undergarden:depthrock_utherium_ore"
  },
  "weight": 35
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_depthrock_diamond", {
  "input": "undergarden:depthrock",
  "output": {
    "type": "block",
    "block": "undergarden:depthrock_diamond_ore"
  },
  "weight": 10
});

//Shiverstone orechid
<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_shiverstone_coal", {
  "input": "undergarden:shiverstone",
  "output": {
    "type": "block",
    "block": "undergarden:shiverstone_coal_ore"
  },
  "weight": 75
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_shiverstone_cloggrum", {
  "input": "undergarden:shiverstone",
  "output": {
    "type": "block",
    "block": "undergarden:shiverstone_cloggrum_ore"
  },
  "weight": 55
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_shiverstone_froststeel", {
  "input": "undergarden:shiverstone",
  "output": {
    "type": "block",
    "block": "undergarden:shiverstone_froststeel_ore"
  },
  "weight": 60
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_shiverstone_iron", {
  "input": "undergarden:shiverstone",
  "output": {
    "type": "block",
    "block": "undergarden:shiverstone_iron_ore"
  },
  "weight": 50
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_shiverstone_utherium", {
  "input": "undergarden:shiverstone",
  "output": {
    "type": "block",
    "block": "undergarden:shiverstone_utherium_ore"
  },
  "weight": 40
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_shiverstone_diamond", {
  "input": "undergarden:shiverstone",
  "output": {
    "type": "block",
    "block": "undergarden:shiverstone_diamond_ore"
  },
  "weight": 10
});

//Tremblecrust orechid
<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_tremblecrust_utherium", {
  "input": "undergarden:tremblecrust",
  "output": {
    "type": "block",
    "block": "undergarden:tremblecrust_utherium_ore"
  },
  "weight": 50
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_tremblecrust_loose", {
  "input": "undergarden:tremblecrust",
  "output": {
    "type": "block",
    "block": "undergarden:loose_tremblecrust"
  },
  "weight": 50
});

//Nether orechid ore generation

<recipetype:botania:orechid_ignem>.addJsonRecipe("custom_orechid_netherrack_blazing", {
  "input": "minecraft:netherrack",
  "output": {
    "type": "block",
    "block": "malum:blazing_quartz_ore"
  },
  "weight": 3000
});

//Overworld orechid ore generation

//stone orechid
<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_stone_lead", {
  "input": "minecraft:stone",
  "output": {
    "type": "block",
    "block": "thermal:lead_ore"
  },
  "weight": 2600
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_stone_aluminum", {
  "input": "minecraft:stone",
  "output": {
    "type": "block",
    "block": "ftbic:aluminum_ore"
  },
  "weight": 3000
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_stone_silver", {
  "input": "minecraft:stone",
  "output": {
    "type": "block",
    "block": "thermal:silver_ore"
  },
  "weight": 2800
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_stone_zinc", {
  "input": "minecraft:stone",
  "output": {
    "type": "block",
    "block": "create:zinc_ore"
  },
  "weight": 6000
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_stone_tin", {
  "input": "minecraft:stone",
  "output": {
    "type": "block",
    "block": "ftbic:tin_ore"
  },
  "weight": 5500
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_stone_iridium", {
  "input": "minecraft:stone",
  "output": {
    "type": "block",
    "block": "ftbic:iridium_ore"
  },
  "weight": 100
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_stone_brilliant", {
  "input": "minecraft:stone",
  "output": {
    "type": "block",
    "block": "malum:brilliant_stone"
  },
  "weight": 3000
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_stone_soulstone", {
  "input": "minecraft:stone",
  "output": {
    "type": "block",
    "block": "malum:soulstone_ore"
  },
  "weight": 5800
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_stone_nickel", {
  "input": "minecraft:stone",
  "output": {
    "type": "block",
    "block": "thermal:nickel_ore"
  },
  "weight": 4500
});

//deepslate orechid
<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_deepslate_iridium", {
  "input": "minecraft:deepslate",
  "output": {
    "type": "block",
    "block": "ftbic:deepslate_iridium_ore"
  },
  "weight": 25
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_deepslate_uranium", {
  "input": "minecraft:deepslate",
  "output": {
    "type": "block",
    "block": "ftbic:deepslate_uranium_ore"
  },
  "weight": 110
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_deepslate_zinc", {
  "input": "minecraft:deepslate",
  "output": {
    "type": "block",
    "block": "create:deepslate_zinc_ore"
  },
  "weight": 75
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_deepslate_tin", {
  "input": "minecraft:deepslate",
  "output": {
    "type": "block",
    "block": "ftbic:deepslate_tin_ore"
  },
  "weight": 65
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_deepslate_nickel", {
  "input": "minecraft:deepslate",
  "output": {
    "type": "block",
    "block": "thermal:deepslate_nickel_ore"
  },
  "weight": 70
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_deepslate_silver", {
  "input": "minecraft:deepslate",
  "output": {
    "type": "block",
    "block": "thermal:deepslate_silver_ore"
  },
  "weight": 150
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_deepslate_lead", {
  "input": "minecraft:deepslate",
  "output": {
    "type": "block",
    "block": "thermal:deepslate_lead_ore"
  },
  "weight": 100
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_deepslate_aluminum", {
  "input": "minecraft:deepslate",
  "output": {
    "type": "block",
    "block": "ftbic:deepslate_aluminum_ore"
  },
  "weight": 75
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_deepslate_brilliance", {
  "input": "minecraft:deepslate",
  "output": {
    "type": "block",
    "block": "malum:brilliant_deepslate"
  },
  "weight": 50
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_deepslate_soulstone", {
  "input": "minecraft:deepslate",
  "output": {
    "type": "block",
    "block": "malum:deepslate_soulstone_ore"
  },
  "weight": 120
});