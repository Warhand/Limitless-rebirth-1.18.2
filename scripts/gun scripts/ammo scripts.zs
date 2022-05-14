//removing bullet recipe.
<recipetype:cgm:workbench>.remove(<item:cgm:basic_bullet>);
//removing advanced bullet recipe.
<recipetype:cgm:workbench>.remove(<item:cgm:advanced_bullet>);
//removing shells recipe.
<recipetype:cgm:workbench>.remove(<item:cgm:shell>);
//removing missile recipe.
<recipetype:cgm:workbench>.remove(<item:cgm:missile>);
//removing grenade recipe
<recipetype:cgm:workbench>.remove(<item:cgm:grenade>);
//removing stun grenade recipe
<recipetype:cgm:workbench>.remove(<item:cgm:stun_grenade>);

//replacing IE shells recipe
craftingTable.remove(<item:immersiveengineering:empty_shell>);

craftingTable.addShaped("empty_shell", <item:immersiveengineering:empty_shell> * 8, [[<item:minecraft:paper>, <tag:items:forge:dyes/red>, <item:minecraft:paper>], [<item:minecraft:paper>, <tag:items:forge:dyes/red>, <item:minecraft:paper>], [<item:minecraft:air>, <tag:items:forge:plates/brass>, <item:minecraft:air>]]);

//replacign IE casings recipe
craftingTable.remove(<item:immersiveengineering:empty_casing>);

 craftingTable.addShaped("empty_casing", <item:immersiveengineering:empty_casing> * 8, [[<tag:items:forge:plates/brass>, <item:minecraft:air>, <tag:items:forge:plates/brass>], [<tag:items:forge:plates/brass>, <item:minecraft:air>, <tag:items:forge:plates/brass>], [<item:minecraft:air>, <tag:items:forge:plates/brass>, <item:minecraft:air>]]);


//adding new bullet recipe that uses lead instead of iron.
<recipetype:cgm:workbench>.addJsonRecipe("custom_basic_bullet", {"materials": [
    {
      "tag": "forge:nuggets/lead",
      "count": 4
    },
    {
      "tag": "forge:gunpowder",
      "count": 1
    },
	{
		"item": "immersiveengineering:empty_casing",
		"count": 16
	}
  ],
  "result": {
    "item": "cgm:basic_bullet",
    "count": 16
  }
});
//adding new advanced bullet recipe that uses lead and steel instead of iron.
<recipetype:cgm:workbench>.addJsonRecipe("custom_advanced_bullet", {"materials": [
    {
      "tag": "forge:nuggets/lead",
      "count": 3
    },
	{
      "tag": "forge:nuggets/steel",
      "count": 1
    },
    {
      "tag": "forge:gunpowder",
      "count": 1
    },
	{
		"item": "immersiveengineering:empty_casing",
		"count": 8
	}
  ],
  "result": {
    "item": "cgm:advanced_bullet",
    "count": 8
  }
});
//adding new shell recipe that uses lead and paper instead of iron.
<recipetype:cgm:workbench>.addJsonRecipe("custom_shell", {"materials": [
    {
      "tag": "forge:nuggets/lead",
      "count": 3
    },
	{
		"item": "immersiveengineering:empty_shell",
		"count": 8
	},
    {
      "tag": "forge:gunpowder",
      "count": 1
    }
  ],
  "result": {
    "item": "cgm:shell",
    "count": 8
  }
});
//adding new missile recipe that uses tnt and blaze powder instead of iron
<recipetype:cgm:workbench>.addJsonRecipe("custom_missile", {"materials": [
    {
      "item": "minecraft:blaze_powder",
      "count": 2
    },
    {
      "item": "minecraft:tnt",
    },
	{
		"tag": "forge:ingots/iron",
	}
  ],
  "result": {
    "item": "cgm:missile",
  }
});
//adding new grenade recipe that uses iron plates and tnt instead of iron nuggets and gunpowder
<recipetype:cgm:workbench>.addJsonRecipe("custom_grenade", {"materials": [
    {
      "tag": "forge:plates/iron",
      "count": 2
    },
    {
      "item": "minecraft:tnt",
    }
  ],
  "result": {
    "item": "cgm:grenade",
  }
});
//adding new grenade recipe that uses iron plates, blaze powder, and aluminum instead of iron nuggets, glowpowder, and gunpowder
<recipetype:cgm:workbench>.addJsonRecipe("custom_stun_grenade", {"materials": [
    {
      "tag": "forge:plates/iron",
      "count": 2
    },
    {
      "item": "minecraft:blaze_powder",
	  "count": 2
    },
	{
		"tag": "forge:dusts/aluminum"
	}
  ],
  "result": {
    "item": "cgm:stun_grenade",
  }
});