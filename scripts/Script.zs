println("Hello world!");

//adding new recipe thats more akin to the create belt recipe.

craftingTable.remove(<item:immersiveengineering:conveyor_basic>);
craftingTable.addShaped("belt_conveyor", <item:immersiveengineering:conveyor_basic>*8, [[<item:minecraft:dried_kelp>, <item:minecraft:dried_kelp>, <item:minecraft:dried_kelp>], [<item:minecraft:iron_ingot>, <item:minecraft:redstone>, <item:minecraft:iron_ingot>]]);

//new pipez pipe wrench recipe

craftingTable.remove(<item:pipez:wrench>);
craftingTable.addShaped("custom_pipe_wrench", <item:pipez:wrench>, [[<item:minecraft:air>, <tag:items:forge:nuggets/nickel>, <item:minecraft:air>], [<item:minecraft:air>, <tag:items:forge:rods/iron>, <tag:items:forge:nuggets/nickel>], [<tag:items:forge:rods/iron>, <item:minecraft:air>, <item:minecraft:air>]]);

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