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

//Tconstruct casting table

//iron plate

<recipetype:tconstruct:casting_table>.addJsonRecipe("custom_casting_iron_plate_multi", {
  "cast": {
    "tag": "tconstruct:casts/multi_use/plate"
  },
  "fluid": {
    "tag": "forge:molten_iron",
    "amount": 90
  },
  "result": {
    "item": "immersiveengineering:plate_iron"
  },
  "cooling_time": 60
});

<recipetype:tconstruct:casting_table>.addJsonRecipe("custom_casting_iron_plate_single", {
  "cast": {
    "tag": "tconstruct:casts/single_use/plate"
  },
  "fluid": {
    "tag": "forge:molten_iron",
    "amount": 90
  },
  "result": {
    "item": "immersiveengineering:plate_iron"
  },
  "cooling_time": 60
});

//gold plate

<recipetype:tconstruct:casting_table>.addJsonRecipe("custom_casting_gold_plate_multi", {
  "cast": {
    "tag": "tconstruct:casts/multi_use/plate"
  },
  "fluid": {
    "tag": "forge:molten_gold",
    "amount": 90
  },
  "result": {
    "item": "immersiveengineering:plate_gold"
  },
  "cooling_time": 60
});

<recipetype:tconstruct:casting_table>.addJsonRecipe("custom_casting_gold_plate_single", {
  "cast": {
    "tag": "tconstruct:casts/single_use/plate"
  },
  "fluid": {
    "tag": "forge:molten_gold",
    "amount": 90
  },
  "result": {
    "item": "immersiveengineering:plate_gold"
  },
  "cooling_time": 60
});

//gold wire

<recipetype:tconstruct:casting_table>.addJsonRecipe("custom_casting_gold_wire_multi", {
  "cast": {
    "tag": "tconstruct:casts/multi_use/wire"
  },
  "fluid": {
    "tag": "forge:molten_gold",
    "amount": 45
  },
  "result": {
    "item": "ftbic:gold_wire"
  },
  "cooling_time": 40
});

<recipetype:tconstruct:casting_table>.addJsonRecipe("custom_casting_gold_wire_single", {
  "cast": {
    "tag": "tconstruct:casts/single_use/wire"
  },
  "fluid": {
    "tag": "forge:molten_gold",
    "amount": 45
  },
  "result": {
    "item": "ftbic:gold_wire"
  },
  "cooling_time": 40
});

//copper plate

<recipetype:tconstruct:casting_table>.addJsonRecipe("custom_casting_copper_plate_multi", {
  "cast": {
    "tag": "tconstruct:casts/multi_use/plate"
  },
  "fluid": {
    "tag": "forge:molten_copper",
    "amount": 90
  },
  "result": {
    "item": "immersiveengineering:plate_copper"
  },
  "cooling_time": 60
});

<recipetype:tconstruct:casting_table>.addJsonRecipe("custom_casting_copper_plate_single", {
  "cast": {
    "tag": "tconstruct:casts/single_use/plate"
  },
  "fluid": {
    "tag": "forge:molten_copper",
    "amount": 90
  },
  "result": {
    "item": "immersiveengineering:plate_copper"
  },
  "cooling_time": 60
});

//Regalium gem

<recipetype:tconstruct:casting_table>.addJsonRecipe("custom_casting_regalium_gem_multi", {
  "cast": {
    "tag": "tconstruct:casts/multi_use/gem"
  },
  "fluid": {
    "tag": "forge:molten_regalium",
    "amount": 90
  },
  "result": {
    "item": "undergarden:regalium_crystal"
  },
  "cooling_time": 60
});

<recipetype:tconstruct:casting_table>.addJsonRecipe("custom_casting_regalium_gem_single", {
  "cast": {
    "tag": "tconstruct:casts/single_use/gem"
  },
  "fluid": {
    "tag": "forge:molten_regalium",
    "amount": 90
  },
  "result": {
    "item": "undergarden:regalium_crystal"
  },
  "cooling_time": 60
});

//utherium gem

<recipetype:tconstruct:casting_table>.addJsonRecipe("custom_casting_utherium_gem_multi", {
  "cast": {
    "tag": "tconstruct:casts/multi_use/gem"
  },
  "fluid": {
    "tag": "materialis:molten_utherium",
    "amount": 90
  },
  "result": {
    "item": "undergarden:utherium_crystal"
  },
  "cooling_time": 60
});

<recipetype:tconstruct:casting_table>.addJsonRecipe("custom_casting_utherium_gem_single", {
  "cast": {
    "tag": "tconstruct:casts/single_use/gem"
  },
  "fluid": {
    "tag": "materialis:molten_utherium",
    "amount": 90
  },
  "result": {
    "item": "undergarden:utherium_crystal"
  },
  "cooling_time": 60
});

//enderium wire

<recipetype:tconstruct:casting_table>.addJsonRecipe("custom_casting_enderium_wire_multi", {
  "cast": {
    "tag": "tconstruct:casts/multi_use/wire"
  },
  "fluid": {
    "tag": "tconstruct:molten_enderium",
    "amount": 45
  },
  "result": {
    "item": "ftbic:enderium_wire"
  },
  "cooling_time": 40
});

<recipetype:tconstruct:casting_table>.addJsonRecipe("custom_casting_enderium_wire_single", {
  "cast": {
    "tag": "tconstruct:casts/single_use/wire"
  },
  "fluid": {
    "tag": "tconstruct:molten_enderium",
    "amount": 45
  },
  "result": {
    "item": "ftbic:enderium_wire"
  },
  "cooling_time": 40
});

//automated casting

//ingot casting

val fluid_ingot_cast_map as IItemStack[IFluidStack] = {
	<fluid:tconstruct:molten_iron>: <item:minecraft:iron_ingot>,
	<fluid:tconstruct:molten_copper>: <item:minecraft:copper_ingot>,
	<fluid:tconstruct:molten_gold>: <item:minecraft:gold_ingot>,
	<fluid:tconstruct:molten_netherite>: <item:minecraft:netherite_ingot>,
	<fluid:tconstruct:molten_zinc>: <item:create:zinc_ingot>,
	<fluid:tconstruct:molten_brass>: <item:create:brass_ingot>,
	<fluid:tconstruct:molten_aluminum>: <item:immersiveengineering:ingot_aluminum>,
	<fluid:tconstruct:molten_lead>: <item:immersiveengineering:ingot_lead>,
	<fluid:tconstruct:molten_silver>: <item:immersiveengineering:ingot_silver>,
	<fluid:tconstruct:molten_nickel>: <item:immersiveengineering:ingot_nickel>,
	<fluid:tconstruct:molten_uranium>: <item:immersiveengineering:ingot_uranium>,
	<fluid:tconstruct:molten_constantan>: <item:immersiveengineering:ingot_constantan>,
	<fluid:tconstruct:molten_electrum>: <item:immersiveengineering:ingot_electrum>,
	<fluid:tconstruct:molten_steel>: <item:immersiveengineering:ingot_steel>,
	<fluid:tconstruct:molten_bronze>: <item:alloyed:bronze_ingot>,
	<fluid:materialis:molten_cloggrum>: <item:undergarden:cloggrum_ingot>,
	<fluid:materialis:molten_froststeel>: <item:undergarden:froststeel_ingot>,
	<fluid:materialis:molten_forgotten_metal>: <item:undergarden:forgotten_ingot>,
	<fluid:materialis:molten_neptunium>: <item:aquaculture:neptunium_ingot>,
	<fluid:tconstruct:molten_cobalt>: <item:tconstruct:cobalt_ingot>,
	<fluid:tconstruct:molten_slimesteel>: <item:tconstruct:slimesteel_ingot>,
	<fluid:tconstruct:molten_amethyst_bronze>: <item:tconstruct:amethyst_bronze_ingot>,
	<fluid:tconstruct:molten_pig_iron>: <item:tconstruct:pig_iron_ingot>,
	<fluid:tconstruct:molten_queens_slime>: <item:tconstruct:queens_slime_ingot>,
	<fluid:tconstruct:molten_manyullyn>: <item:tconstruct:manyullyn_ingot>,
	<fluid:tconstruct:molten_hepatizon>: <item:tconstruct:hepatizon_ingot>,
	<fluid:tconstruct:molten_tin>: <item:ftbic:tin_ingot>,
	<fluid:jaopca:molten.iridium>: <item:ftbic:iridium_ingot>,
	<fluid:tconstruct:molten_enderium>: <item:ftbic:enderium_ingot>,
	<fluid:materialis:molten_manasteel>: <item:botania:manasteel_ingot>,
	<fluid:materialis:molten_terrasteel>: <item:botania:terrasteel_ingot>,
	<fluid:materialis:molten_elementium>: <item:botania:elementium_ingot>,
	<fluid:materialis:molten_fairy>: <item:materialis:fairy_ingot>
};

for input, output in fluid_ingot_cast_map{
<recipetype:create:filling>.addJsonRecipe("custom_casting_create_" + output.registryName.path, {
  "ingredients": [
    {
      "tag": "tconstruct:casts/single_use/ingot"
    },
    {
      "fluid": input.registryName,
      "nbt": {},
      "amount": 90
    }
  ],
  "results": [
    {
      "item": output.registryName
    }
  ]
});
}

for input, output in fluid_ingot_cast_map{
var fluidtag1 = <tagManager:fluids>.tag("lr:casting/" + input.registryName.path);
fluidtag1.add(input);

<recipetype:immersiveengineering:bottling_machine>.addJsonRecipe("custom_casting_single_use_ie_" + output.registryName.path, {
"results":[{"item": output.registryName}],
"input":{"tag": "tconstruct:casts/single_use/ingot"},
"fluid":{"tag": fluidtag1.id, "amount":90}
});
}

//plate casting

val fluid_plate_cast_map as IItemStack[IFluidStack] = {
	<fluid:tconstruct:molten_iron>: <item:immersiveengineering:plate_iron>,
	<fluid:tconstruct:molten_copper>: <item:immersiveengineering:plate_copper>,
	<fluid:tconstruct:molten_gold>: <item:immersiveengineering:plate_gold>,
	<fluid:tconstruct:molten_zinc>: <item:createaddition:zinc_sheet>,
	<fluid:tconstruct:molten_brass>: <item:create:brass_sheet>,
	<fluid:tconstruct:molten_aluminum>: <item:immersiveengineering:plate_aluminum>,
	<fluid:tconstruct:molten_lead>: <item:immersiveengineering:plate_lead>,
	<fluid:tconstruct:molten_silver>: <item:immersiveengineering:plate_silver>,
	<fluid:tconstruct:molten_nickel>: <item:immersiveengineering:plate_nickel>,
	<fluid:tconstruct:molten_uranium>: <item:immersiveengineering:plate_uranium>,
	<fluid:tconstruct:molten_constantan>: <item:immersiveengineering:plate_constantan>,
	<fluid:tconstruct:molten_electrum>: <item:immersiveengineering:plate_electrum>,
	<fluid:tconstruct:molten_steel>: <item:immersiveengineering:plate_steel>,
	<fluid:tconstruct:molten_bronze>: <item:alloyed:bronze_sheet>,
	<fluid:tconstruct:molten_tin>: <item:ftbic:tin_plate>,
	<fluid:jaopca:molten.iridium>: <item:ftbic:iridium_plate>,
	<fluid:tconstruct:molten_enderium>: <item:ftbic:enderium_plate>
};

for input, output in fluid_plate_cast_map{
<recipetype:create:filling>.addJsonRecipe("custom_casting_create_" + output.registryName.path, {
  "ingredients": [
    {
      "tag": "tconstruct:casts/single_use/plate"
    },
    {
      "fluid": input.registryName,
      "nbt": {},
      "amount": 90
    }
  ],
  "results": [
    {
      "item": output.registryName
    }
  ]
});
}

for input, output in fluid_plate_cast_map{
var fluidtag2 = <tagManager:fluids>.tag("lr:casting/" + input.registryName.path);
fluidtag2.add(input);

<recipetype:immersiveengineering:bottling_machine>.addJsonRecipe("custom_casting_single_use_ie_" + output.registryName.path, {
"results":[{"item": output.registryName}],
"input":{"tag": "tconstruct:casts/single_use/plate"},
"fluid":{"tag": fluidtag2.id, "amount":90}
});
}

//gem casting

val fluid_gem_cast_map as IItemStack[IFluidStack] = {
	<fluid:materialis:molten_utherium>: <item:undergarden:utherium_crystal>,
	<fluid:materialis:molten_regalium>: <item:undergarden:regalium_crystal>,
	<fluid:jaopca:molten.lapis>: <item:minecraft:lapis_lazuli>,
	<fluid:tconstruct:molten_amethyst>: <item:minecraft:amethyst_shard>,
	<fluid:tconstruct:molten_quartz>: <item:minecraft:quartz>,
	<fluid:tconstruct:molten_emerald>: <item:minecraft:emerald>,
	<fluid:tconstruct:molten_diamond>: <item:minecraft:diamond>
};

for input, output in fluid_gem_cast_map{
<recipetype:create:filling>.addJsonRecipe("custom_casting_create_" + output.registryName.path, {
  "ingredients": [
    {
      "tag": "tconstruct:casts/single_use/gem"
    },
    {
      "fluid": input.registryName,
      "nbt": {},
      "amount": 90
    }
  ],
  "results": [
    {
      "item": output.registryName
    }
  ]
});
}

for input, output in fluid_gem_cast_map{
var fluidtag3 = <tagManager:fluids>.tag("lr:casting/" + input.registryName.path);
fluidtag3.add(input);

<recipetype:immersiveengineering:bottling_machine>.addJsonRecipe("custom_casting_single_use_ie_" + output.registryName.path, {
"results":[{"item": output.registryName}],
"input":{"tag": "tconstruct:casts/single_use/gem"},
"fluid":{"tag": fluidtag3.id, "amount":90}
});
}

//wire casting

val fluid_wire_cast_map as IItemStack[IFluidStack] = {
	<fluid:tconstruct:molten_enderium>: <item:ftbic:enderium_wire>,
	<fluid:tconstruct:molten_gold>: <item:ftbic:gold_wire>,
	<fluid:tconstruct:molten_copper>: <item:immersiveengineering:wire_copper>,
	<fluid:tconstruct:molten_electrum>: <item:immersiveengineering:wire_electrum>,
	<fluid:tconstruct:molten_aluminum>: <item:immersiveengineering:wire_aluminum>,
	<fluid:tconstruct:molten_steel>: <item:immersiveengineering:wire_steel>,
	<fluid:tconstruct:molten_lead>: <item:immersiveengineering:wire_lead>
};

for input, output in fluid_wire_cast_map{
var fluidtag4 = <tagManager:fluids>.tag("lr:casting/" + input.registryName.path);
fluidtag4.add(input);

<recipetype:immersiveengineering:bottling_machine>.addJsonRecipe("custom_casting_single_use_ie_" + output.registryName.path, {
"results":[{"item": output.registryName}],
"input":{"tag": "tconstruct:casts/single_use/wire"},
"fluid":{"tag": fluidtag4.id, "amount":90}
});
}

for input, output in fluid_wire_cast_map{
<recipetype:create:filling>.addJsonRecipe("custom_casting_create_" + output.registryName.path, {
  "ingredients": [
    {
      "tag": "tconstruct:casts/single_use/wire"
    },
    {
      "fluid": input.registryName,
      "nbt": {},
      "amount": 90
    }
  ],
  "results": [
    {
      "item": output.registryName
    }
  ]
});
}