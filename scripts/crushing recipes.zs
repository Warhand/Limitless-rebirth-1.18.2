import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;

//removing base game recipes

val crushers_remove as IItemStack[] = [
	<item:beyond_earth:raw_calorite>,
	<item:beyond_earth:raw_desh>,
	<item:beyond_earth:raw_ostrum>,
	<item:create:crushed_aluminum_ore>,
	<item:create:crushed_copper_ore>,
	<item:create:crushed_gold_ore>,
	<item:create:crushed_iron_ore>,
	<item:create:crushed_lead_ore>,
	<item:create:crushed_nickel_ore>,
	<item:create:crushed_silver_ore>,
	<item:create:crushed_tin_ore>,
	<item:create:crushed_uranium_ore>,
	<item:create:crushed_zinc_ore>,
	<item:create:raw_zinc>,
	<item:immersiveengineering:dust_aluminum>,
	<item:immersiveengineering:dust_copper>,
	<item:immersiveengineering:dust_gold>,
	<item:immersiveengineering:dust_iron>,
	<item:immersiveengineering:dust_lead>,
	<item:immersiveengineering:dust_nickel>,
	<item:immersiveengineering:dust_silver>,
	<item:immersiveengineering:dust_uranium>,
	<item:immersiveengineering:raw_aluminum>,
	<item:immersiveengineering:raw_lead>,
	<item:immersiveengineering:raw_nickel>,
	<item:immersiveengineering:raw_silver>,
	<item:immersiveengineering:raw_uranium>,
	<item:ftbic:lead_chunk>,
	<item:jaopca:create_crushed_ores.aluminum>,
	<item:jaopca:create_crushed_ores.calorite>,
	<item:jaopca:create_crushed_ores.cloggrum>,
	<item:jaopca:create_crushed_ores.cobalt>,
	<item:jaopca:create_crushed_ores.desh>,
	<item:jaopca:create_crushed_ores.froststeel>,
	<item:jaopca:create_crushed_ores.lead>,
	<item:jaopca:create_crushed_ores.netherite_scrap> ,
	<item:jaopca:create_crushed_ores.nickel>,
	<item:jaopca:create_crushed_ores.ostrum>,
	<item:jaopca:create_crushed_ores.regalium>,
	<item:jaopca:create_crushed_ores.silver>,
	<item:jaopca:create_crushed_ores.tin>,
	<item:jaopca:create_crushed_ores.uranium>,
	<item:jaopca:create_crushed_ores.utherium>,
	<item:jaopca:dusts.calorite>,
	<item:jaopca:dusts.cloggrum>,
	<item:jaopca:dusts.cobalt>,
	<item:jaopca:dusts.desh>,
	<item:jaopca:dusts.froststeel>,
	<item:jaopca:dusts.netherite_scrap>,
	<item:jaopca:dusts.ostrum>,
	<item:jaopca:dusts.regalium>,
	<item:jaopca:dusts.utherium>,
	<item:jaopca:dusts.zinc>,
	<item:minecraft:amethyst_shard>,
	<item:minecraft:coal>,
	<item:minecraft:diamond>,
	<item:minecraft:emerald>,
	<item:minecraft:lapis_lazuli>,
	<item:minecraft:netherite_scrap>,
	<item:minecraft:quartz>,
	<item:minecraft:raw_copper>,
	<item:minecraft:raw_gold>,
	<item:minecraft:raw_iron>,
	<item:minecraft:redstone>,
	<item:tconstruct:raw_cobalt>,
	<item:undergarden:raw_cloggrum>,
	<item:undergarden:raw_froststeel>,
	<item:undergarden:regalium_crystal>,
	<item:ftbic:lead_dust>
];

<recipetype:create:crushing>.removeByName("create:crushing/nether_gold_ore");
<recipetype:integrateddynamics:squeezer>.remove(<item:minecraft:gold_nugget>);
<recipetype:integrateddynamics:mechanical_squeezer>.remove(<item:minecraft:gold_nugget>);

for item in crushers_remove{
	<recipetype:integrateddynamics:mechanical_squeezer>.remove(item);
	<recipetype:integrateddynamics:squeezer>.remove(item);
	<recipetype:create:crushing>.remove(item);
	<recipetype:immersiveengineering:crusher>.remove(item);
	<recipetype:ars_nouveau:crush>.remove(item);
	<recipetype:ftbic:macerating>.remove(item);
}

//Ore processing maps

val ore_to_raw_map as IItemStack[IIngredient] = {
	<tag:items:forge:ores/iron>.asIIngredient(): <item:minecraft:raw_iron>,
	<tag:items:forge:ores/copper>.asIIngredient(): <item:minecraft:raw_copper>,
	<tag:items:forge:ores/gold>.asIIngredient(): <item:minecraft:raw_gold>,
	<tag:items:forge:ores/zinc>.asIIngredient(): <item:create:raw_zinc>,
	<tag:items:forge:ores/tin>.asIIngredient(): <item:ftbic:tin_chunk>,
	<tag:items:forge:ores/silver>.asIIngredient(): <item:immersiveengineering:raw_silver>,
	<tag:items:forge:ores/froststeel>.asIIngredient(): <item:undergarden:raw_froststeel>,
	<tag:items:forge:ores/lead>.asIIngredient(): <item:immersiveengineering:raw_lead>,
	<tag:items:forge:ores/aluminum>.asIIngredient(): <item:immersiveengineering:raw_aluminum>,
	<tag:items:forge:ores/nickel>.asIIngredient(): <item:immersiveengineering:raw_nickel>,
	<tag:items:forge:ores/uranium>.asIIngredient(): <item:immersiveengineering:raw_uranium>,
	<tag:items:forge:ores/cloggrum>.asIIngredient(): <item:undergarden:raw_cloggrum>,
	<tag:items:forge:ores/ostrum>.asIIngredient(): <item:beyond_earth:raw_ostrum>,
	<tag:items:forge:ores/cobalt>.asIIngredient(): <item:tconstruct:raw_cobalt>,
	<tag:items:forge:ores/calorite>.asIIngredient(): <item:beyond_earth:raw_calorite>,
	<tag:items:forge:ores/desh>.asIIngredient(): <item:beyond_earth:raw_desh>
};

val raw_to_crushed_map as IItemStack[IIngredient] = {
	<tag:items:forge:raw_materials/iron>.asIIngredient(): <item:create:crushed_iron_ore>,
	<tag:items:forge:raw_materials/copper>.asIIngredient(): <item:create:crushed_copper_ore>,
	<tag:items:forge:raw_materials/gold>.asIIngredient(): <item:create:crushed_gold_ore>,
	<tag:items:forge:raw_materials/zinc>.asIIngredient(): <item:create:crushed_zinc_ore>,
	<tag:items:forge:raw_materials/tin>.asIIngredient(): <item:create:crushed_tin_ore>,
	<tag:items:forge:raw_materials/silver>.asIIngredient(): <item:create:crushed_silver_ore>,
	<item:undergarden:raw_froststeel>: <item:jaopca:create_crushed_ores.froststeel>,
	<tag:items:forge:raw_materials/lead>.asIIngredient(): <item:create:crushed_lead_ore>,
	<tag:items:forge:raw_materials/aluminum>.asIIngredient(): <item:create:crushed_aluminum_ore>,
	<tag:items:forge:raw_materials/nickel>.asIIngredient(): <item:create:crushed_nickel_ore>,
	<tag:items:forge:raw_materials/uranium>.asIIngredient(): <item:create:crushed_uranium_ore>,
	<item:undergarden:raw_cloggrum>: <item:jaopca:create_crushed_ores.cloggrum>,
	<tag:items:forge:raw_materials/ostrum>.asIIngredient(): <item:jaopca:create_crushed_ores.ostrum>,
	<tag:items:forge:raw_materials/cobalt>.asIIngredient(): <item:jaopca:create_crushed_ores.cobalt>,
	<tag:items:forge:raw_materials/calorite>.asIIngredient(): <item:jaopca:create_crushed_ores.calorite>,
	<tag:items:forge:raw_materials/desh>.asIIngredient(): <item:jaopca:create_crushed_ores.desh>
};

val crushed_to_dust_map as IItemStack[IIngredient] = {
	<item:create:crushed_iron_ore>: <item:immersiveengineering:dust_iron>,
	<item:create:crushed_copper_ore>: <item:immersiveengineering:dust_copper>,
	<item:create:crushed_gold_ore>: <item:immersiveengineering:dust_gold>,
	<item:create:crushed_zinc_ore>: <item:jaopca:dusts.zinc>,
	<item:create:crushed_tin_ore>: <item:ftbic:tin_dust>,
	<item:create:crushed_silver_ore>: <item:immersiveengineering:dust_silver>,
	<item:jaopca:create_crushed_ores.froststeel>: <item:jaopca:dusts.froststeel>,
	<item:create:crushed_lead_ore>: <item:immersiveengineering:dust_lead>,
	<item:create:crushed_aluminum_ore>: <item:immersiveengineering:dust_aluminum>,
	<item:create:crushed_nickel_ore>: <item:immersiveengineering:dust_nickel>,
	<item:create:crushed_uranium_ore>: <item:immersiveengineering:dust_uranium>,
	<item:jaopca:create_crushed_ores.cloggrum>: <item:jaopca:dusts.cloggrum>,
	<item:jaopca:create_crushed_ores.ostrum>: <item:jaopca:dusts.ostrum>,
	<item:jaopca:create_crushed_ores.cobalt>: <item:jaopca:dusts.cobalt>,
	<item:jaopca:create_crushed_ores.calorite>: <item:jaopca:dusts.calorite>,
	<item:jaopca:create_crushed_ores.desh>: <item:jaopca:dusts.desh>
};

//mineral maps

val ore_to_gem_map as IItemStack[IIngredient] = {
	<tag:items:forge:ores/diamond>.asIIngredient(): <item:minecraft:diamond>,
	<tag:items:forge:ores/netherite_scrap>.asIIngredient(): <item:minecraft:netherite_scrap>,
	<tag:items:forge:ores/emerald>.asIIngredient(): <item:minecraft:emerald>,
	<tag:items:forge:ores/brilliance>.asIIngredient(): <item:malum:cluster_of_brilliance>
};

val ore_to_mineral_map as IItemStack[IIngredient] = {
	<tag:items:forge:ores/ice_shard>.asIIngredient(): <item:beyond_earth:ice_shard>,
	<tag:items:forge:ores/cheese>.asIIngredient(): <item:croptopia:cheese>,
	<tag:items:forge:ores/utherium>.asIIngredient(): <item:undergarden:utherium_crystal>,
	<tag:items:forge:ores/coal>.asIIngredient(): <item:minecraft:coal>,
	<tag:items:forge:ores/quartz>.asIIngredient(): <item:minecraft:quartz>,
	<tag:items:rosie:malum/blazing>.asIIngredient(): <item:malum:blazing_quartz>,
	<tag:items:forge:ores/soulstone>.asIIngredient(): <item:malum:raw_soulstone>
};

val ore_to_dust_map as IItemStack[IIngredient] = {
	<tag:items:forge:ores/redstone>.asIIngredient(): <item:minecraft:redstone>,
	<tag:items:forge:ores/lapis>.asIIngredient(): <item:minecraft:lapis_lazuli>,
	<tag:items:forge:ores/nethergold>.asIIngredient(): <item:minecraft:gold_nugget>
};

//basic ID squeezer

for input, output in ore_to_raw_map{
    <recipetype:integrateddynamics:squeezer>.addJsonRecipe("custom_squeeze_" + output.registryName.path, {
  "item": input,
  "result": {
    "items": [
		{
			"item": {
			  "item": output.registryName,
			  "count": 2
			}
		},
		{
        "item": output.registryName,
        "chance": 0.15 as float
       }
    ]
  }
});
}

for input, output in raw_to_crushed_map{
    <recipetype:integrateddynamics:squeezer>.addJsonRecipe("custom_squeeze_" + output.registryName.path, {
  "item": input,
  "result": {
    "items": [
        output,
      {
        "item": output.registryName,
        "chance": 0.15 as float
      }
    ]
  }
});
}

for input, output in crushed_to_dust_map{
    <recipetype:integrateddynamics:squeezer>.addJsonRecipe("custom_squeeze_" + output.registryName.path, {
  "item": input,
  "result": {
    "items": [
        output,
      {
        "item": output.registryName,
        "chance": 0.15 as float
      }
    ]
  }
});
}

for input, output in ore_to_gem_map{
    <recipetype:integrateddynamics:squeezer>.addJsonRecipe("custom_squeeze_" + output.registryName.path, {
  "item": input,
  "result": {
    "items": [
        output,
      {
        "item": output.registryName,
        "chance": 0.5 as float
      }
    ]
  }
});
}

for input, output in ore_to_mineral_map{
    <recipetype:integrateddynamics:squeezer>.addJsonRecipe("custom_squeeze_" + output.registryName.path, {
  "item": input,
  "result": {
    "items": [
		{
			"item": {
			  "item": output.registryName,
			  "count": 2
			}
		},
		{
        "item": output.registryName,
        "chance": 0.25 as float
       }
    ]
  }
});
}

for input, output in ore_to_dust_map{
    <recipetype:integrateddynamics:squeezer>.addJsonRecipe("custom_squeeze_" + output.registryName.path, {
  "item": input,
  "result": {
    "items": [
		{
			"item": {
			  "item": output.registryName,
			  "count": 4
			}
		},
		{
        "item": {
			  "item": output.registryName,
			  "count": 1
			},
			"chance": 0.5 as float
       },
	   {
        "item": {
			  "item": output.registryName,
			  "count": 1
			},
			"chance": 0.25 as float
       }
    ]
  }
});
}

//mechanical squeezer

for input, output in ore_to_raw_map{
    <recipetype:integrateddynamics:mechanical_squeezer>.addJsonRecipe("custom_mechanical_squeeze_" + output.registryName.path, {
  "item": input,
  "result": {
    "items": [
		{
			"item": {
			  "item": output.registryName,
			  "count": 2
			}
		},
	  {
        "item": output.registryName,
        "chance": 0.75 as float
      }
    ]
  },
  "duration": 20
});
}

for input, output in raw_to_crushed_map{
    <recipetype:integrateddynamics:mechanical_squeezer>.addJsonRecipe("custom_mechanical_squeeze_" + output.registryName.path, {
  "item": input,
  "result": {
    "items": [
        output,
	  {
        "item": output.registryName,
        "chance": 0.25 as float
      }
    ]
  },
  "duration": 20
});
}

for input, output in crushed_to_dust_map{
    <recipetype:integrateddynamics:mechanical_squeezer>.addJsonRecipe("custom_mechanical_squeeze_" + output.registryName.path, {
  "item": input,
  "result": {
    "items": [
        output,
      {
        "item": output.registryName,
        "chance": 0.25 as float
      }
    ]
  },
  "duration": 20
});
}

for input, output in ore_to_gem_map{
    <recipetype:integrateddynamics:mechanical_squeezer>.addJsonRecipe("custom_mechanical_squeeze_" + output.registryName.path, {
  "item": input,
  "result": {
    "items": [
		{
			"item": {
			  "item": output.registryName,
			  "count": 2
			}
		}
    ]
  },
  "duration": 20
});
}

for input, output in ore_to_mineral_map{
    <recipetype:integrateddynamics:mechanical_squeezer>.addJsonRecipe("custom_mechanical_squeeze_" + output.registryName.path, {
  "item": input,
  "result": {
    "items": [
		{
			"item": {
			  "item": output.registryName,
			  "count": 3
			}
		},
		{
        "item": output.registryName,
        "chance": 0.25 as float
       }
    ]
  },
  "duration": 20
});
}

for input, output in ore_to_dust_map{
    <recipetype:integrateddynamics:mechanical_squeezer>.addJsonRecipe("custom_mechanical_squeeze_" + output.registryName.path, {
  "item": input,
  "result": {
    "items": [
		{
			"item": {
			  "item": output.registryName,
			  "count": 6
			}
		},
		{
        "item": {
			  "item": output.registryName,
			  "count": 1
			},
			"chance": 0.5 as float
       },
	   {
        "item": {
			  "item": output.registryName,
			  "count": 1
			},
			"chance": 0.25 as float
       }
    ]
  },
  "duration": 20
});
}

//ars crushing spell

for input, output in ore_to_raw_map{
<recipetype:ars_nouveau:crush>.addJsonRecipe("custom_ars_crushed_" + output.registryName.path, 
	{
 "input":input,
  "output": [
    {
      "item": output.registryName,
      "chance": 1.0,
      "count": 3
    },
	{
      "item": output.registryName,
      "chance": 0.5,
      "count": 1
    }
  ]
});
}

for input, output in ore_to_gem_map{
<recipetype:ars_nouveau:crush>.addJsonRecipe("custom_ars_crushed_" + output.registryName.path, 
	{
 "input":input,
  "output": [
    {
      "item": output.registryName,
      "chance": 1.0,
      "count": 2
    },
	{
      "item": output.registryName,
      "chance": 0.25,
      "count": 1
    }
  ]
});
}

for input, output in ore_to_mineral_map{
<recipetype:ars_nouveau:crush>.addJsonRecipe("custom_ars_crushed_" + output.registryName.path, 
	{
 "input":input,
  "output": [
    {
      "item": output.registryName,
      "chance": 1.0,
      "count": 4
    },
	{
      "item": output.registryName,
      "chance": 0.5,
      "count": 1
    }
  ]
});
}

for input, output in ore_to_dust_map{
<recipetype:ars_nouveau:crush>.addJsonRecipe("custom_ars_crushed_" + output.registryName.path, 
	{
 "input":input,
  "output": [
    {
      "item": output.registryName,
      "chance": 1.0,
      "count": 6
    },
	{
      "item": output.registryName,
      "chance": 0.5,
      "count": 3
    }
  ]
});
}

//FTB industrial contraptions macerator

for input, output in ore_to_raw_map{
	<recipetype:ftbic:macerating>.addJsonRecipe("custom_ftb_ic_macerating_" + output.registryName.path, {
	"inputItems": [input],
  "outputItems": [
    {
      "item": output.registryName,
      "count": 2
    },
	{
      "item": output.registryName,
      "count": 1,
	  "chance": 0.5
    }
  ]
});
}

for input, output in raw_to_crushed_map{
	<recipetype:ftbic:macerating>.addJsonRecipe("custom_ftb_ic_macerating_" + output.registryName.path, {
	"inputItems": [input],
  "outputItems": [
    {
      "item": output.registryName,
      "count": 1
    },
	{
      "item": output.registryName,
      "count": 1,
	  "chance": 0.5
    }
  ]
});
}

for input, output in crushed_to_dust_map{
	<recipetype:ftbic:macerating>.addJsonRecipe("custom_ftb_ic_macerating_" + output.registryName.path, {
	"inputItems": [input],
  "outputItems": [
    {
      "item": output.registryName,
      "count": 1
    },
	{
      "item": output.registryName,
      "count": 1,
	  "chance": 0.25
    }
  ]
});
}

for input, output in ore_to_gem_map{
	<recipetype:ftbic:macerating>.addJsonRecipe("custom_ftb_ic_macerating_" + output.registryName.path, {
	"inputItems": [input],
  "outputItems": [
    {
      "item": output.registryName,
      "count": 2
    }
  ]
});
}

for input, output in ore_to_mineral_map{
	<recipetype:ftbic:macerating>.addJsonRecipe("custom_ftb_ic_macerating_" + output.registryName.path, {
	"inputItems": [input],
  "outputItems": [
    {
      "item": output.registryName,
      "count": 3
    },
	{
      "item": output.registryName,
      "count": 1,
	  "chance": 0.5
    }
  ]
});
}

for input, output in ore_to_dust_map{
	<recipetype:ftbic:macerating>.addJsonRecipe("custom_ftb_ic_macerating_" + output.registryName.path, {
	"inputItems": [input],
  "outputItems": [
    {
      "item": output.registryName,
      "count": 6
    },
	{
      "item": output.registryName,
      "count": 2,
	  "chance": 0.25
    }
  ]
});
}

//create crushing wheels

for input, output in ore_to_raw_map{
	<recipetype:create:crushing>.addJsonRecipe("custom_create_crushing_" + output.registryName.path, 
	{
  "ingredients": [ input ],
  "results": [
    { 
		"item": output.registryName,
		"count": 2
	},
    {
		"item": output.registryName,
		"chance": 0.5
    },
    {
      "item": "create:experience_nugget",
      "chance": 0.5
    }
  ],
  "processingTime": 400
});
}

for input, output in raw_to_crushed_map{
	<recipetype:create:crushing>.addJsonRecipe("custom_create_crushing_" + output.registryName.path, 
	{
  "ingredients": [ input ],
  "results": [
    { 
		"item": output.registryName,
		"count": 1
	},
	{
		"item": output.registryName,
		"chance": 0.75
    }
  ],
  "processingTime": 400
});
}

for input, output in crushed_to_dust_map{
	<recipetype:create:crushing>.addJsonRecipe("custom_create_crushing_" + output.registryName.path, 
	{
  "ingredients": [ input ],
  "results": [
    { 
		"item": output.registryName
	},
    {
		"item": output.registryName,
		"chance": 0.25
    }
  ],
  "processingTime": 400
});
}

for input, output in ore_to_gem_map{
	<recipetype:create:crushing>.addJsonRecipe("custom_create_crushing_" + output.registryName.path, 
	{
  "ingredients": [ input ],
  "results": [
    { 
		"item": output.registryName,
		"count": 2
	}
  ],
  "processingTime": 400
});
}

for input, output in ore_to_mineral_map{
	<recipetype:create:crushing>.addJsonRecipe("custom_create_crushing_" + output.registryName.path, 
	{
  "ingredients": [ input ],
  "results": [
    { 
		"item": output.registryName,
		"count": 3
	},
	{
		"item": output.registryName,
		"chance": 0.5
    }
  ],
  "processingTime": 400
});
}

for input, output in ore_to_dust_map{
	<recipetype:create:crushing>.addJsonRecipe("custom_create_crushing_" + output.registryName.path, 
	{
  "ingredients": [ input ],
  "results": [
    { 
		"item": output.registryName,
		"count": 6
	},
	{
		"item": output.registryName,
		"chance": 0.5,
		"count": 2
    }
  ],
  "processingTime": 400
});
}

//Immersive engineering crusher

for input, output in ore_to_raw_map{
<recipetype:immersiveengineering:crusher>.addJsonRecipe("custom_ie_crushing_" + output.registryName.path, 
{
"secondaries":[{"chance":0.5,"output":{"item":output.registryName}}],"result":{"count":2,"base_ingredient":{"item":output.registryName}},"input":input,"energy":6000
});
}

for input, output in raw_to_crushed_map{
<recipetype:immersiveengineering:crusher>.addJsonRecipe("custom_ie_crushing_" + output.registryName.path, 
{
"secondaries":[{"chance":0.25,"output":{"item":output.registryName}}],"result":{"count":1,"base_ingredient":{"item":output.registryName}},"input":input,"energy":6000
});
}

for input, output in crushed_to_dust_map{
<recipetype:immersiveengineering:crusher>.addJsonRecipe("custom_ie_crushing_" + output.registryName.path, 
{
"secondaries":[{"chance":0.75,"output":{"item":output.registryName}}],"result":{"count":1,"base_ingredient":{"item":output.registryName}},"input":input,"energy":6000
});
}

for input, output in ore_to_gem_map{
<recipetype:immersiveengineering:crusher>.addJsonRecipe("custom_ie_crushing_" + output.registryName.path, 
{
"secondaries":[],"result":{"count":2,"base_ingredient":{"item":output.registryName}},"input":input,"energy":6000
});
}

for input, output in ore_to_mineral_map{
<recipetype:immersiveengineering:crusher>.addJsonRecipe("custom_ie_crushing_" + output.registryName.path, 
{
"secondaries":[{"chance":0.5,"output":{"item":output.registryName}}],"result":{"count":3,"base_ingredient":{"item":output.registryName}},"input":input,"energy":6000
});
}

for input, output in ore_to_dust_map{
<recipetype:immersiveengineering:crusher>.addJsonRecipe("custom_ie_crushing_" + output.registryName.path, 
{
"secondaries":[{"chance":0.5,"output":{"count":2,"item":output.registryName}}],"result":{"count":6,"base_ingredient":{"item":output.registryName}},"input":input,"energy":6000
});
}