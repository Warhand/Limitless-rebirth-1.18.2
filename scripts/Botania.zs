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


//Martian orechid
<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_martian_ice", {
  "input": "beyond_earth:mars_stone",
  "output": {
    "type": "block",
    "block": "beyond_earth:mars_ice_shard_ore"
  },
  "weight": 65
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_martian_iron", {
  "input": "beyond_earth:mars_stone",
  "output": {
    "type": "block",
    "block": "beyond_earth:mars_iron_ore"
  },
  "weight": 60
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_martian_ostrum", {
  "input": "beyond_earth:mars_stone",
  "output": {
    "type": "block",
    "block": "beyond_earth:mars_ostrum_ore"
  },
  "weight": 45
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_martian_diamond", {
  "input": "beyond_earth:mars_stone",
  "output": {
    "type": "block",
    "block": "beyond_earth:mars_diamond_ore"
  },
  "weight": 10
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_martian_ancient", {
  "input": "beyond_earth:mars_stone",
  "output": {
    "type": "block",
    "block": "minecraft:ancient_debris"
  },
  "weight": 1
});

//Moon orechid
<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_moon_ice", {
  "input": "beyond_earth:moon_stone",
  "output": {
    "type": "block",
    "block": "beyond_earth:moon_ice_shard_ore"
  },
  "weight": 70
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_moon_iron", {
  "input": "beyond_earth:moon_stone",
  "output": {
    "type": "block",
    "block": "beyond_earth:moon_iron_ore"
  },
  "weight": 60
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_moon_desh", {
  "input": "beyond_earth:moon_stone",
  "output": {
    "type": "block",
    "block": "beyond_earth:moon_desh_ore"
  },
  "weight": 30
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_moon_cheese", {
  "input": "beyond_earth:moon_stone",
  "output": {
    "type": "block",
    "block": "beyond_earth:moon_cheese_ore"
  },
  "weight": 10
});

//Venus orechid
<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_venus_coal", {
  "input": "beyond_earth:venus_stone",
  "output": {
    "type": "block",
    "block": "beyond_earth:venus_coal_ore"
  },
  "weight": 75
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_venus_calorite", {
  "input": "beyond_earth:venus_stone",
  "output": {
    "type": "block",
    "block": "beyond_earth:venus_calorite_ore"
  },
  "weight": 40
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_venus_gold", {
  "input": "beyond_earth:venus_stone",
  "output": {
    "type": "block",
    "block": "beyond_earth:venus_gold_ore"
  },
  "weight": 55
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_venus_diamond", {
  "input": "beyond_earth:venus_stone",
  "output": {
    "type": "block",
    "block": "beyond_earth:venus_diamond_ore"
  },
  "weight": 10
});

//Glacio orechid
<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_glacio_coal", {
  "input": "beyond_earth:glacio_stone",
  "output": {
    "type": "block",
    "block": "beyond_earth:glacio_coal_ore"
  },
  "weight": 60
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_glacio_ice", {
  "input": "beyond_earth:glacio_stone",
  "output": {
    "type": "block",
    "block": "beyond_earth:glacio_ice_shard_ore"
  },
  "weight": 75
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_glacio_copper", {
  "input": "beyond_earth:glacio_stone",
  "output": {
    "type": "block",
    "block": "beyond_earth:glacio_copper_ore"
  },
  "weight": 60
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_glacio_iron", {
  "input": "beyond_earth:glacio_stone",
  "output": {
    "type": "block",
    "block": "beyond_earth:glacio_iron_ore"
  },
  "weight": 50
});

<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_glacio_lapis", {
  "input": "beyond_earth:glacio_stone",
  "output": {
    "type": "block",
    "block": "beyond_earth:glacio_lapis_ore"
  },
  "weight": 35
});

//Undergarden orechid ore generation

//Depthrock orechid
<recipetype:botania:orechid>.addJsonRecipe("custom_orechid_depthrock_coal", {
  "input": "undergarden:depthrock",
  "output": {
    "type": "block",
    "block": "beyond_earth:glacio_lapis_ore"
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

<recipetype:botania:orechid_ignem>.addJsonRecipe("custom_orechid_netherrack_cobalt", {
  "input": "minecraft:netherrack",
  "output": {
    "type": "block",
    "block": "tconstruct:cobalt_ore"
  },
  "weight": 1500
});

<recipetype:botania:orechid_ignem>.addJsonRecipe("custom_orechid_netherrack_shard", {
  "input": "minecraft:netherrack",
  "output": {
    "type": "block",
    "block": "rftoolsbase:dimensionalshard_nether"
  },
  "weight": 500
});