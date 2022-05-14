import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;

//replacing IE gun part recipes with cheaper options
craftingTable.remove(<item:immersiveengineering:gunpart_barrel>);
craftingTable.remove(<item:immersiveengineering:gunpart_drum>);
craftingTable.remove(<item:immersiveengineering:gunpart_hammer>);

craftingTable.addShaped("gunpart_barrel", <item:immersiveengineering:gunpart_barrel>, [[<tag:items:forge:rods/iron>, <tag:items:forge:rods/iron>]]);

craftingTable.addShaped("gunpart_drum", <item:immersiveengineering:gunpart_drum>, [[<item:minecraft:air>, <tag:items:forge:ingots/iron>, <item:minecraft:air>], [<tag:items:forge:ingots/iron>, <item:immersiveengineering:component_iron>, <tag:items:forge:ingots/iron>], [<item:minecraft:air>, <tag:items:forge:ingots/iron>, <item:minecraft:air>]]);

craftingTable.addShaped("gunpart_hammer", <item:immersiveengineering:gunpart_hammer>, [[<tag:items:forge:ingots/iron>, <item:minecraft:air>, <item:minecraft:air>], [<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <item:minecraft:air>], [<item:minecraft:air>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>]]);

//removing default CGM gun recipes
<recipetype:cgm:workbench>.remove(<item:cgm:pistol>);
<recipetype:cgm:workbench>.remove(<item:cgm:shotgun>);
<recipetype:cgm:workbench>.remove(<item:cgm:rifle>);
<recipetype:cgm:workbench>.remove(<item:cgm:mini_gun>);
<recipetype:cgm:workbench>.remove(<item:cgm:assault_rifle>);
<recipetype:cgm:workbench>.remove(<item:cgm:bazooka>);
<recipetype:cgm:workbench>.remove(<item:cgm:heavy_rifle>);
<recipetype:cgm:workbench>.remove(<item:cgm:machine_pistol>);
<recipetype:cgm:workbench>.remove(<item:cgm:grenade_launcher>);

//adding new CGM gun recipes
<recipetype:cgm:workbench>.addJsonRecipe("pistol", {"materials": [
    {
      "tag": "forge:ingots/steel",
      "count": 6
    },
    {
      "item": "immersiveengineering:component_steel",
      "count": 1
    },
	{
		"tag": "forge:rods/steel",
		"count": 1
	},
	{
		"tag": "forge:plates/steel",
		"count": 2
	}
  ],
  "result": {
    "item": "cgm:pistol",
  }
});

<recipetype:cgm:workbench>.addJsonRecipe("shotgun", {"materials": [
    {
      "tag": "forge:ingots/steel",
      "count": 10
    },
    {
      "item": "immersiveengineering:component_steel"
    },
	{
		"tag": "forge:rods/steel",
		"count": 2
	},
	{
		"tag": "forge:plates/steel",
		"count": 3
	}
  ],
  "result": {
    "item": "cgm:shotgun",
  }
});

<recipetype:cgm:workbench>.addJsonRecipe("rifle", {"materials": [
    {
      "tag": "forge:ingots/steel",
      "count": 10
    },
    {
      "item": "immersiveengineering:component_steel"
    },
	{
		"tag": "forge:rods/steel",
		"count": 3
	},
	{
		"tag": "forge:plates/steel",
		"count": 2
	}
  ],
  "result": {
    "item": "cgm:rifle",
  }
});

<recipetype:cgm:workbench>.addJsonRecipe("assault_rifle", {"materials": [
    {
     "item": "cgm:rifle"
    },
	{
		"item": "minecraft:netherite_ingot"
	},
	{
		"item": "minecraft:comparator",
		"count": 4
	}
  ],
  "result": {
    "item": "cgm:assault_rifle",
  }
});

<recipetype:cgm:workbench>.addJsonRecipe("heavy_rifle", {"materials": [
    {
     "item": "cgm:rifle"
    },
	{
		"item": "minecraft:netherite_ingot"
	},
	{
		"item": "minecraft:repeater",
		"count": 4
	}
  ],
  "result": {
    "item": "cgm:heavy_rifle",
  }
});

<recipetype:cgm:workbench>.addJsonRecipe("machine_pistol", {"materials": [
    {
     "item": "cgm:pistol"
    },
	{
		"item": "minecraft:netherite_ingot"
	},
	{
		"item": "immersiveengineering:speedloader"
	}
  ],
  "result": {
    "item": "cgm:machine_pistol",
  }
});

<recipetype:cgm:workbench>.addJsonRecipe("mini_gun", {"materials": [
    {
      "tag": "forge:ingots/steel",
      "count": 16
    },
    {
      "item": "immersiveengineering:component_steel",
	  "count": 4
    },
	{
		"tag": "forge:rods/steel",
		"count": 4
	},
	{
		"tag": "forge:plates/steel",
		"count": 6
	},
	{
		"item": "minecraft:netherite_ingot",
		"count": 2
	}
  ],
  "result": {
    "item": "cgm:mini_gun",
  }
});

<recipetype:cgm:workbench>.addJsonRecipe("bazooka", {"materials": [
    {
      "tag": "forge:ingots/steel",
      "count": 20
    },
    {
      "item": "immersiveengineering:component_steel",
	  "count": 4
    },
	{
		"tag": "forge:rods/steel",
		"count": 4
	},
	{
		"tag": "forge:plates/steel",
		"count": 6
	},
	{
		"item": "minecraft:netherite_ingot",
		"count": 4
	}
  ],
  "result": {
    "item": "cgm:bazooka",
  }
});

<recipetype:cgm:workbench>.addJsonRecipe("grenade_launcher", {"materials": [
    {
      "tag": "forge:ingots/steel",
      "count": 16
    },
    {
      "item": "immersiveengineering:component_steel",
	  "count": 2
    },
	{
		"tag": "forge:rods/steel",
		"count": 8
	},
	{
		"tag": "forge:plates/steel",
		"count": 2
	},
	{
		"item": "minecraft:netherite_ingot"
	}
  ],
  "result": {
    "item": "cgm:grenade_launcher",
  }
});

//removing CGM gun attachment recipes
//<recipetype:cgm:workbench>.remove(<item:cgm:short_scope>);
//<recipetype:cgm:workbench>.remove(<item:cgm:medium_scope>);
//<recipetype:cgm:workbench>.remove(<item:cgm:long_scope>);
//<recipetype:cgm:workbench>.remove(<item:cgm:silencer>);
//<recipetype:cgm:workbench>.remove(<item:cgm:light_stock>);
//<recipetype:cgm:workbench>.remove(<item:cgm:tactical_stock>);
//<recipetype:cgm:workbench>.remove(<item:cgm:weighted_stock>);
//<recipetype:cgm:workbench>.remove(<item:cgm:light_grip>);
//<recipetype:cgm:workbench>.remove(<item:cgm:specialised_grip>);

//replacing CGM workbench recipes
craftingTable.remove(<item:cgm:workbench>);

craftingTable.addShaped("cgm_workbench", <item:cgm:workbench>, [[<item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>], [<tag:items:forge:rods/iron>, <tag:items:forge:storage_blocks/iron>, <tag:items:forge:rods/iron>], [<tag:items:forge:rods/iron>, <item:minecraft:air>, <tag:items:forge:rods/iron>]]);