#NoLoad

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.tag.manager.ITagManager;


//adding val for hammers

public val hammers = [
<item:immersiveengineering:hammer>
];

//new plates recipes

public val plates = [
	<item:extendedcrafting:black_iron_slate>
];

for plate in plates {
	craftingTable.remove(plate);
}

val ingot_plate_map as IItemStack[IIngredient] = {
	<tag:items:forge:ingots/iron>.asIIngredient(): <item:immersiveengineering:plate_iron>,
	<tag:items:forge:ingots/constantan>.asIIngredient(): <item:immersiveengineering:plate_constantan>,
	<tag:items:forge:ingots/gold>.asIIngredient(): <item:immersiveengineering:plate_gold>,
	<tag:items:forge:ingots/silver>.asIIngredient(): <item:immersiveengineering:plate_silver>,
	<tag:items:forge:ingots/electrum>.asIIngredient(): <item:immersiveengineering:plate_electrum>,
	<tag:items:forge:ingots/aluminum>.asIIngredient(): <item:immersiveengineering:plate_aluminum>,
	<tag:items:forge:ingots/steel>.asIIngredient(): <item:immersiveengineering:plate_steel>,
	<tag:items:forge:ingots/uranium>.asIIngredient(): <item:immersiveengineering:plate_uranium>,
	<tag:items:forge:ingots/copper>.asIIngredient(): <item:immersiveengineering:plate_copper>,
	<tag:items:forge:ingots/nickel>.asIIngredient(): <item:immersiveengineering:plate_nickel>,
	<tag:items:forge:ingots/lead>.asIIngredient(): <item:immersiveengineering:plate_lead>,
	<tag:items:forge:ingots/zinc>.asIIngredient(): <item:createaddition:zinc_sheet>,
	<tag:items:forge:ingots/brass>.asIIngredient(): <item:create:brass_sheet>,
	<tag:items:forge:ingots/tin>.asIIngredient(): <item:ftbic:tin_plate>,
	<tag:items:forge:ingots/bronze>.asIIngredient(): <item:alloyed:bronze_sheet>
};

for ingot, plate in ingot_plate_map {
	craftingTable.remove(plate);
}

for item in hammers {
	for ingot, plate in ingot_plate_map {
	craftingTable.addShapeless("ingot_to_" + plate.registryName.path + "_with_" + item.registryName.namespace, plate, [ingot, ingot, item.anyDamage().transformDamage(1)]);
}}

for item in hammers {
craftingTable.addShapeless("black_iron_slate_recipe_with" + item.registryName.namespace, <item:extendedcrafting:black_iron_slate>, [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_ingot>, item.anyDamage().transformDamage(1)]);
}

//adding val for cutters
public val cutters = [
	<item:immersiveengineering:wirecutter>,
	<item:botania:manasteel_shears>,
	<item:botania:elementium_shears>,
	<item:alloyed:steel_shears>
];

val plate_wire_map as IItemStack[IIngredient] = {
	<tag:items:forge:plates/steel>.asIIngredient(): <item:immersiveengineering:wire_steel>,
	<tag:items:forge:plates/aluminum>.asIIngredient(): <item:immersiveengineering:wire_aluminum>,
	<tag:items:forge:plates/electrum>.asIIngredient(): <item:immersiveengineering:wire_electrum>,
	<tag:items:forge:plates/copper>.asIIngredient(): <item:immersiveengineering:wire_copper>,
	<tag:items:forge:plates/lead>.asIIngredient(): <item:immersiveengineering:wire_lead>,
	<tag:items:forge:plates/gold>.asIIngredient(): <item:ftbic:gold_wire>,
	<tag:items:forge:plates/enderium>.asIIngredient(): <item:ftbic:enderium_wire>
};

for plate, wire in plate_wire_map {
	craftingTable.remove(wire);
}

for item in cutters {
	for plate, wire in plate_wire_map {
		craftingTable.addShapeless("plate_to_ftbic_" + wire.registryName.path + "_with_" + item.registryName.path, wire, [item.anyDamage().transformDamage(1), plate]);
	}
}


//removing crafting table rod recipes and replacing them

val ingot_rod_map as IItemStack[IIngredient] = {
	<tag:items:forge:ingots/iron>.asIIngredient(): <item:immersiveengineering:stick_iron>,
	<tag:items:forge:ingots/steel>.asIIngredient(): <item:immersiveengineering:stick_steel>,
	<tag:items:forge:ingots/aluminum>.asIIngredient(): <item:immersiveengineering:stick_aluminum>,
	<tag:items:forge:ingots/copper>.asIIngredient(): <item:createaddition:copper_rod>,
	<tag:items:forge:ingots/gold>.asIIngredient(): <item:ftbic:gold_rod>,
	<tag:items:forge:ingots/lead>.asIIngredient(): <item:ftbic:lead_rod>
};

for ingot, rod in ingot_rod_map {
	craftingTable.remove(rod);
}

for item in hammers {
	for ingot, rod in ingot_rod_map {
		craftingTable.addShapedMirrored("ingot_to_" + rod.registryName.path + "_with_" + item.registryName.namespace, <constant:minecraft:mirroraxis:all>, rod*2, [[item.anyDamage().transformDamage(1), ingot], [<item:minecraft:air>, ingot], [<item:minecraft:air>, ingot]]);
	}
}

//crushing raw ore into dust with hammers

//JSON recipe loops
//Create adddition recipes

for input, output in plate_wire_map{
<recipetype:createaddition:rolling>.addJsonRecipe("custom_rolling_" + output.registryName.path, {
	"input": input,
	"result": {
		"item": output.registryName,
		"count": 2
	}
});
}

for input, output in ingot_rod_map{
<recipetype:createaddition:rolling>.addJsonRecipe("custom_rolling_" + output.registryName.path, {
	"input": input,
	"result": {
		"item": output.registryName,
		"count": 2
	}
});
}

<recipetype:create:compacting>.addJsonRecipe("custom_compacting_compressed_copper_plates", {
  "ingredients": [
    {
      "tag": "forge:plates/copper"
    },
	{
      "tag": "forge:plates/copper"
    },
	{
      "tag": "forge:plates/copper"
    },
	{
      "tag": "forge:plates/copper"
    },
	{
      "tag": "forge:plates/copper"
    },
	{
      "tag": "forge:plates/copper"
    },
	{
      "tag": "forge:plates/copper"
    },
	{
      "tag": "forge:plates/copper"
    }
  ],
  "results": [
    {
      "item": "ftbic:dense_copper_plate"
    }
  ]
});

//IE recipes

for input, output in plate_wire_map{
<recipetype:immersiveengineering:metal_press>.addJsonRecipe("custom_pressing_" + output.registryName.path, {
	"mold":"immersiveengineering:mold_wire",
	"result":{"count":2, "base_ingredient":{"item": output.registryName}},
	"input":input,
	"energy":2400
});
}

for input, output in ingot_plate_map{
<recipetype:immersiveengineering:metal_press>.addJsonRecipe("custom_pressing_" + output.registryName.path, {
	"mold":"immersiveengineering:mold_plate",
	"result":{"count":1, "base_ingredient":{"item": output.registryName}},
	"input":input,
	"energy":2400
});
}

for input, output in ingot_rod_map{
<recipetype:immersiveengineering:metal_press>.addJsonRecipe("custom_pressing_" + output.registryName.path, {
	"mold":"immersiveengineering:mold_rod",
	"result":{"count":2, "base_ingredient":{"item": output.registryName}},
	"input":input,
	"energy":2400
});
}

<recipetype:immersiveengineering:metal_press>.addJsonRecipe("custom_pressing_bullet_copper", {
	"mold":"immersiveengineering:mold_bullet_casing",
	"result":{"item": "immersiveengineering:empty_casing", "count":2},
	"input":{"tag":"forge:plates/copper"},
	"energy":2400
});

<recipetype:immersiveengineering:metal_press>.addJsonRecipe("custom_pressing_bullet_brass", {
	"mold":"immersiveengineering:mold_bullet_casing",
	"result":{"item": "immersiveengineering:empty_casing", "count":4},
	"input":{"tag":"forge:plates/brass"},
	"energy":2400
});

<recipetype:immersiveengineering:metal_press>.addJsonRecipe("custom_pressing_graphite_rod", {
	"mold":"immersiveengineering:mold_rod",
	"result":{"item":"immersiveengineering:graphite_electrode"},
	"input":{"count":4, "base_ingredient":{"tag": "forge:ingots/hop_graphite"}},
	"energy":2400
});

<recipetype:immersiveengineering:metal_press>.addJsonRecipe("custom_pressing_compressed_copper_plate", {
	"mold":"immersiveengineering:mold_plate",
	"result":{"item":"ftbic:dense_copper_plate"},
	"input":{"count":8, "base_ingredient":{"tag": "forge:plates/copper"}},
	"energy":2400
});

//FTBIC recipes

for input, output in ingot_rod_map{
<recipetype:ftbic:extruding>.addJsonRecipe("custom_extruding_" + output.registryName.path, {
  "inputItems":[input],
  "outputItems": [
    {
      "item": output.registryName,
      "count": 2
    }
  ]
});
}

for input, output in plate_wire_map{
<recipetype:ftbic:extruding>.addJsonRecipe("custom_extruding_" + output.registryName.path, {
  "inputItems":[input],
  "outputItems": [
    {
      "item": output.registryName,
      "count": 2
    }
  ]
});
}

for input, output in ingot_plate_map{
<recipetype:ftbic:rolling>.addJsonRecipe("custom_rolling_ftbic_" + output.registryName.path, {
  "inputItems": [input],
  "outputItems": [
    {
      "item": output.registryName,
      "count": 1
    }
  ]
});
}