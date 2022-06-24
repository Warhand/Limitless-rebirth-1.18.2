import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;


//adding var for hammers

public var hammers = [
<item:beyond_earth:hammer>,
<item:immersiveengineering:hammer>
];

//new plates recipes

public var plates = [
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
	<tag:items:forge:ingots/netherite>.asIIngredient(): <item:createdeco:netherite_sheet>,
	<tag:items:forge:ingots/desh>.asIIngredient(): <item:beyond_earth:desh_plate>,
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

//adding var for cutters
public var cutters = [
	<item:immersiveengineering:wirecutter>,
	<item:botania:manasteel_shears>,
	<item:botania:elementium_shears>,
	<item:alloyed:steel_shears>,
	<item:cyclic:shears_obsidian>
];

val plate_wire_map as IItemStack[IIngredient] = {
	<tag:items:forge:plates/steel>.asIIngredient(): <item:immersiveengineering:wire_steel>,
	<tag:items:forge:plates/aluminum>.asIIngredient(): <item:immersiveengineering:wire_aluminum>,
	<tag:items:forge:plates/electrum>.asIIngredient(): <item:immersiveengineering:wire_electrum>,
	<tag:items:forge:plates/copper>.asIIngredient(): <item:immersiveengineering:wire_copper>,
	<tag:items:forge:plates/lead>.asIIngredient(): <item:immersiveengineering:wire_lead>,
	<tag:items:forge:plates/iron>.asIIngredient(): <item:createaddition:iron_wire>,
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

val raw_crushed_map as IItemStack[IIngredient] = {
	<tag:items:forge:raw_materials/iron>.asIIngredient(): <item:immersiveengineering:dust_iron>,
	<tag:items:forge:raw_materials/gold>.asIIngredient(): <item:immersiveengineering:dust_gold>,
	<tag:items:forge:raw_materials/silver>.asIIngredient(): <item:immersiveengineering:dust_silver>,
	<tag:items:forge:raw_materials/aluminum>.asIIngredient(): <item:immersiveengineering:dust_aluminum>,
	<tag:items:forge:raw_materials/uranium>.asIIngredient(): <item:immersiveengineering:dust_uranium>,
	<tag:items:forge:raw_materials/copper>.asIIngredient(): <item:immersiveengineering:dust_copper>,
	<tag:items:forge:raw_materials/nickel>.asIIngredient(): <item:immersiveengineering:dust_nickel>,
	<tag:items:forge:raw_materials/lead>.asIIngredient(): <item:immersiveengineering:dust_lead>,
	<tag:items:forge:raw_materials/zinc>.asIIngredient(): <item:jaopca:dusts.zinc>,
	<tag:items:forge:raw_materials/tin>.asIIngredient(): <item:ftbic:tin_dust>,
	<tag:items:forge:ingots/steel>.asIIngredient(): <item:immersiveengineering:dust_steel>,
	<tag:items:forge:ingots/bronze>.asIIngredient(): <item:ftbic:bronze_dust>
};

for item in hammers {
	craftingTable.addShapeless("diamond_to_diamond_dust_with_" + item.registryName.namespace, <item:ftbic:diamond_dust>, [<item:minecraft:diamond>, item.anyDamage().transformDamage(1)]);
	for raw, crushed in raw_crushed_map {
	craftingTable.addShapeless("raw_to_" + crushed.registryName.path + "_with_" + item.registryName.namespace, crushed, [raw, item.anyDamage().transformDamage(1)]);
}}

for item in hammers {
	craftingTable.addShapeless("cloggrum_to_fetilizer_with_" + item.registryName.namespace, <item:immersiveengineering:fertilizer> * 2, [<item:undergarden:cloggrum_ingot>, item.anyDamage().transformDamage(1)]);
}

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

//Beyond earth recipes

for input, output in ingot_rod_map{
<recipetype:beyond_earth_giselle_addon:extruding>.addJsonRecipe("custom_extruding_beyondearth_" + output.registryName.path, {
	"input": input,
	"output": {
		"item": output.registryName,
		"count": 2
	},
	"cookTime": 50
});
}

for input, output in ingot_plate_map{
<recipetype:beyond_earth_giselle_addon:rolling>.addJsonRecipe("custom_rolling_beyondearth_" + output.registryName.path, {
	"input": input,
	"output": {
		"item": output.registryName,
		"count": 1
	},
	"cookTime": 200
});
}

for input, output in plate_wire_map{
<recipetype:beyond_earth_giselle_addon:extruding>.addJsonRecipe("custom_extruding_beyondearth_" + output.registryName.path, {
	"input": input,
	"output": {
		"item": output.registryName,
		"count": 2
	},
	"cookTime": 50
});
}

//beyond earth compressed metals recipes

val ingot_compressed_map as IItemStack[IIngredient] = {
	<tag:items:forge:ingots/steel>.asIIngredient(): <item:beyond_earth:compressed_steel>,
	<tag:items:forge:ingots/ostrum>.asIIngredient(): <item:beyond_earth:compressed_ostrum>,
	<tag:items:forge:ingots/calorite>.asIIngredient(): <item:beyond_earth:compressed_calorite>,
	<tag:items:forge:ingots/desh>.asIIngredient(): <item:beyond_earth:compressed_desh>
};

for input, output in ingot_compressed_map{
<recipetype:immersiveengineering:metal_press>.addJsonRecipe("custom_pressing_" + output.registryName.path, {
	"mold":"beyond_earth_giselle_addon:mold_compressing",
	"result":{"count":1, "base_ingredient":{"item": output.registryName}},
	"input":input,
	"energy":2400
});
}

for input, output in ingot_compressed_map{
<recipetype:create:compacting>.addJsonRecipe("custom_compacting_" + output.registryName.path, {
  "ingredients": [input],
  "results": [
    {
      "item": output.registryName
    }
  ],
  "heatRequirement": "heated"
});
}