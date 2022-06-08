import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;

//alloy smelting recipes

//<recipetype:indreb:alloy_smelting>.removeByName("indreb:alloy_smelting/bronze_ingot");
//<recipetype:indreb:alloy_smelting>.removeByName("indreb:alloy_smelting/steel_ingot");
//
//
//<recipetype:indreb:alloy_smelting>.addJsonRecipe("custom_indreb_bronze", 
//	{"ingredients": [
//    {
//      "item": "minecraft:copper_ingot",
//      "count": 3
//    },
//    {
//      "item": "indreb:tin_ingot",
//      "count": 1
//    }
//  ],
//  "result": {
//    "item": "alloyed:bronze_ingot",
//    "count": 4
//  },
//  "experience": 0.5,
//  "duration": 560,
//  "power_cost": 16
//});
//
//<recipetype:indreb:alloy_smelting>.addJsonRecipe("custom_indreb_steel",
//{"ingredients": [
//    {
//      "tag": "forge:ingots/iron",
//      "count": 1
//    },
//    {
//      "tag": "forge:dusts/coal",
//      "count": 3
//    }
//  ],
//  "result": {
//    "item": "alloyed:steel_ingot"
//  },
//  "experience": 0.5,
//  "duration": 500,
//  "power_cost": 16
//});
//
//<recipetype:indreb:alloy_smelting>.addJsonRecipe("custom_indreb_advanced_alloy",
//{"ingredients": [
//    {
//      "tag": "forge:ingots/iron",
//      "count": 3
//    },
//    {
//      "tag": "forge:ingots/bronze",
//      "count": 3
//    },
//    {
//      "tag": "forge:ingots/tin",
//      "count": 3
//    }
//  ],
//  "result": {
//    "item": "indreb:mixed_metal_ingot",
//    "count": 2
//  },
//  "experience": 0.5,
//  "duration": 600,
//  "power_cost": 16
//});
//
//<recipetype:indreb:alloy_smelting>.addJsonRecipe("custom_indreb_redstone_ingot",
//{"ingredients": [
//    {
//      "tag": "forge:ingots/iron",
//      "count": 1
//    },
//    {
//      "tag": "forge:dusts/redstone",
//      "count": 2
//    }
//  ],
//  "result": {
//    "item": "extendedcrafting:redstone_ingot",
//    "count": 2
//  },
//  "experience": 0.5,
//  "duration": 400,
//  "power_cost": 16
//});
//
//<recipetype:indreb:alloy_smelting>.addJsonRecipe("custom_indreb_ender_ingot",
//{"ingredients": [
//    {
//      "tag": "forge:ingots/steel"
//    },
//    {
//      "tag": "forge:dusts/ender"
//    }
//  ],
//  "result": {
//    "item": "extendedcrafting:ender_ingot"
//  },
//  "experience": 0.5,
//  "duration": 600,
//  "power_cost": 16
//});

//<recipetype:indreb:alloy_smelting>.addJsonRecipe("custom_indreb_andesite_alloy1",
//{"ingredients": [
//    {
//      "item": "minecraft:andesite"
//    },
//    {
//      "tag": "forge:nuggets/zinc"
//    }
//  ],
//  "result": {
//    "item": "create:andesite_alloy"
//  },
//  "experience": 0.5,
//  "duration": 300,
//  "power_cost": 16
//});

//<recipetype:indreb:alloy_smelting>.addJsonRecipe("custom_indreb_andesite_alloy2",
//{"ingredients": [
//    {
//      "item": "minecraft:andesite"
//    },
//    {
//      "tag": "forge:nuggets/iron"
//    }
//  ],
//  "result": {
//    "item": "create:andesite_alloy"
//  },
//  "experience": 0.5,
//  "duration": 300,
//  "power_cost": 16
//});

//<recipetype:indreb:alloy_smelting>.addJsonRecipe("custom_indreb_black_iron",
//{"ingredients": [
//    {
//      "tag": "forge:ingots/iron",
//      "count": 1
//    },
//    {
//      "tag": "forge:dyes/black",
//      "count": 1
//    }
//  ],
//  "result": {
//    "item": "extendedcrafting:black_iron_ingot",
//    "count": 1
//  },
//  "experience": 0.5,
//  "duration": 400,
//  "power_cost": 16
//});

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

<recipetype:create:mixing>.addJsonRecipe("create_mixing_redstone_ingot", {
"ingredients": [
    {
      "tag": "forge:ingots/iron",
      "count": 1
    },
    {
      "tag": "forge:dusts/redstone"
    },
	{
      "tag": "forge:dusts/redstone"
    },
	{
      "tag": "forge:dusts/redstone"
    },
	{
      "tag": "forge:dusts/redstone"
    }
  ],
  "results": [
    {
      "item": "extendedcrafting:redstone_ingot",
      "count": 1
    }
  ],
  "heatRequirement": "heated"
}
);

<recipetype:create:mixing>.addJsonRecipe("create_mixing_black_iron", {
"ingredients": [
    {
      "tag": "forge:ingots/iron",
      "count": 1
    },
    {
      "tag": "forge:dyes/black",
      "count": 1
    }
  ],
  "results": [
    {
      "item": "extendedcrafting:black_iron_ingot",
      "count": 1
    }
  ],
  "heatRequirement": "heated"
}
);

<recipetype:create:mixing>.addJsonRecipe("create_mixing_steel", {
  "ingredients": [
    {
      "tag": "forge:ingots/iron",
      "count": 1
    },
      {
        "item": "minecraft:coal"
      }
  ],
  "results": [
    {
      "item": "immersiveengineering:ingot_steel",
      "count": 1
    }
  ],
  "processingTime": 200,
  "heatRequirement": "heated"
}
);

<recipetype:create:mixing>.addJsonRecipe("create_mixing_steel_desh", {
  "ingredients": [
    {
      "tag": "forge:ingots/desh",
      "count": 1
    },
      {
        "item": "minecraft:coal"
      }
  ],
  "results": [
    {
      "item": "immersiveengineering:ingot_steel",
      "count": 4
    }
  ],
  "processingTime": 200,
  "heatRequirement": "heated"
}
);

<recipetype:create:mixing>.addJsonRecipe("create_mixing_ender_ingot", {
"ingredients": [
    {
      "tag": "forge:ingots/steel"
    },
    {
      "tag": "forge:dusts/ender"
    }
  ],
  "results": [
    {
      "item": "extendedcrafting:ender_ingot"
    }
  ],
  "heatRequirement": "heated"
}
);

//immersiveengineering alloy recipes

<recipetype:immersiveengineering:alloy>.addJsonRecipe("ie_alloy_redstone_ingot", {
"time":200,
"result":{"count":1, "base_ingredient":{"item":"extendedcrafting:redstone_ingot"}},
"input0":{"tag":"forge:ingots/iron"},
"input1":{"count":4, "base_ingredient":{"tag":"forge:dusts/redstone"}}
}
);

<recipetype:immersiveengineering:alloy>.addJsonRecipe("ie_alloy_ender_ingot", {
"time":200,
"result":{"item":"extendedcrafting:ender_ingot"},
"input0":{"tag":"forge:ingots/steel"},
"input1":{"tag":"forge:dusts/ender"}
}
);

<recipetype:immersiveengineering:alloy>.addJsonRecipe("ie_alloy_black_iron", {
"time":200,
"result":{"item":"extendedcrafting:black_iron_ingot"},
"input0":{"tag":"forge:ingots/iron"},
"input1":{"tag":"forge:dyes/black"}
}
);

<recipetype:immersiveengineering:alloy>.addJsonRecipe("ie_alloy_andesite_alloy1", {
"time":200,
"result":{"item":"create:andesite_alloy"},
"input0":{"item":"minecraft:andesite"},
"input1":{"tag":"forge:nuggets/zinc"}
}
);

<recipetype:immersiveengineering:alloy>.addJsonRecipe("ie_alloy_andesite_alloy2", {
"time":200,
"result":{"item":"create:andesite_alloy"},
"input0":{"item":"minecraft:andesite"},
"input1":{"tag":"forge:nuggets/iron"}
}
);

//tconstruct alloy fixes

<recipetype:tconstruct:alloying>.addJsonRecipe("tinkers_alloy_bronze", {
"type": "tconstruct:alloy",
  "conditions": [
    {
      "value": {
        "tag": "forge:ingots/bronze",
        "type": "forge:tag_empty"
      },
      "type": "forge:not"
    },
    {
      "value": {
        "tag": "forge:ingots/tin",
        "type": "forge:tag_empty"
      },
      "type": "forge:not"
    }
  ],
  "inputs": [
    {
      "tag": "forge:molten_copper",
      "amount": 270
    },
    {
      "tag": "forge:molten_tin",
      "amount": 90
    }
  ],
  "result": {
    "fluid": "tconstruct:molten_bronze",
    "amount": 270
  },
  "temperature": 700
}
//Immersive engineering recipes

<recipetype:immersiveengineering:arc_furnace>.addJsonRecipe("custom_arc_bronze", {
"results":[{"count":3,"base_ingredient":{"item":"alloyed:bronze_ingot"}}],
"additives":[{"tag":"forge:ingots/tin"}],
"input":{"count":3,"base_ingredient":{"tag":"forge:ingots/copper"}},
"time":100,
"energy":51200
}
);

<recipetype:immersiveengineering:arc_furnace>.addJsonRecipe("custom_arc_steel", {
"results":[{"tag":"forge:ingots/steel"}],"additives":[{"tag":"forge:dusts/coal_coke"}],"input":{"tag":"forge:ingots/iron"},"slag":{"tag":"forge:slag"},"time":400,"energy":204800
}
);

<recipetype:immersiveengineering:arc_furnace>.addJsonRecipe("custom_arc_steel_desh", {
"results":[{"count":4,"base_ingredient":{"tag":"forge:ingots/steel"}}],"additives":[{"tag":"forge:dusts/coal_coke"}],"input":{"tag":"forge:ingots/desh"},"slag":{"tag":"forge:slag"},"time":400,"energy":204800
}
);

<recipetype:immersiveengineering:arc_furnace>.addJsonRecipe("custom_arc_brass", {
"results":[{"count":2,"base_ingredient":{"tag":"forge:ingots/brass"}}],"additives":[{"tag":"forge:ingots/zinc"}],"input":{"tag":"forge:ingots/copper"},"time":100,"energy":51200
}
);

<recipetype:immersiveengineering:arc_furnace>.addJsonRecipe("custom_arc_constantan", {
"results":[{"count":2,"base_ingredient":{"tag":"forge:ingots/constantan"}}],"additives":[{"tag":"forge:ingots/nickel"}],"input":{"tag":"forge:ingots/copper"},"time":100,"energy":51200
}
);

<recipetype:immersiveengineering:arc_furnace>.addJsonRecipe("custom_arc_manyullyn", {
"results":[{"count":4,"base_ingredient":{"tag":"forge:ingots/manyullyn"}}],"additives":[{"item":"minecraft:netherite_scrap"}],"input":{"count":3,"base_ingredient":{"tag":"forge:ingots/cobalt"}},"time":100,"energy":51200
}
);

<recipetype:immersiveengineering:blast_furnace>.addJsonRecipe("custom_ie_alloy_steel_desh", {
"result":{"count":4,"base_ingredient":{"tag":"forge:ingots/steel"}},"input":{"tag":"forge:ingots/desh"},"slag":{"tag":"forge:slag"},"time":1200
}
);

<recipetype:immersiveengineering:blast_furnace>.addJsonRecipe("custom_ie_alloy_steel_block_desh", {
"result":{"count":4,"base_ingredient":{"tag":"forge:storage_blocks/steel"}},"input":{"tag":"forge:storage_blocks/desh"},"slag":{"count":9,"base_ingredient":{"tag":"forge:slag"}},"time":10800
}
);

<recipetype:immersiveengineering:arc_furnace>.addJsonRecipe("custom_ie_alloy_redstone", {
"results":[{"count":1,"base_ingredient":{"item":"extendedcrafting:redstone_ingot"}}],"additives":[{"tag":"forge:ingots/iron"}],"input":{"count":4,"base_ingredient":{"tag":"forge:dusts/redstone"}},"time":100,"energy":51200
}
);

<recipetype:immersiveengineering:arc_furnace>.addJsonRecipe("custom_arc_ender", {
"results":[{"item":"extendedcrafting:ender_ingot"}],"additives":[{"tag":"forge:dusts/ender"}],"input":{"tag":"forge:ingots/steel"},"time":400,"energy":51200
}
);

<recipetype:immersiveengineering:arc_furnace>.addJsonRecipe("custom_arc_black_iron", {
"results":[{"item":"extendedcrafting:black_iron_ingot"}],"additives":[{"tag":"forge:dyes/black"}],"input":{"tag":"forge:ingots/iron"},"time":400,"energy":51200
}
);