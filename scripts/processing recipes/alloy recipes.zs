#noload

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;

//invar
craftingTable.addShapeless("custom_invar_blend_shapeless", <item:thermal:invar_dust> * 3, [<item:thermal:iron_dust>, <item:thermal:iron_dust>, <item:thermal:nickel_dust>]);
craftingTable.addShapeless("custom_invar_ingot_shapeless", <item:thermal:invar_ingot> * 3, [<item:thermal:iron_dust>, <item:thermal:iron_dust>, <item:thermal:nickel_dust>, <item:minecraft:fire_charge>]);
<recipetype:create:mixing>.addJsonRecipe("custom_invar_alloy_item_mixing", {
  "ingredients": [
    {
      "item": "thermal:iron_dust",
	  "count": 2
    },
    {
      "item": "thermal:nickel_dust"
    }
  ],
  "results": [
    {
      "item": "thermal:invar_dust",
      "count": 3
    }
  ],
  "heatRequirement": "heated"
});
<recipetype:create:mixing>.addJsonRecipe("custom_invar_alloy_molten_mixing", {
  "ingredients": [
    {
      "fluid": "kubejs:molten_iron",
	  "nbt": {},
	  "amount": 216
    },
    {
      "fluid": "kubejs:molten_nickel",
	  "nbt": {},
	  "amount": 108
    }
  ],
  "results": [
    {
      "fluid": "kubejs:molten_invar",
	  "nbt": {},
	  "amount": 324
    }
  ],
  "heatRequirement": "heated"
});
<recipetype:thermal:smelter>.addJsonRecipe("custom_invar_alloy_item_smelting", {
	"ingredient": [
	{
		"item": "thermal:iron_dust",
		"count": 2
	},
	{
		"item": "thermal:nickel_dust"
	}
	],
	"result": [
		{
		  "item": "thermal:invar_ingot",
		  "count": 3
		}
	],
	"energy_mod": 0.5
});