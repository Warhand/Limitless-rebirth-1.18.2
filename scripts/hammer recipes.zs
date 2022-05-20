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
	<item:minecraft:shears>,
	<item:botania:manasteel_shears>,
	<item:botania:elementium_shears>,
	<item:alloyed:steel_shears>,
	<item:cyclic:shears_obsidian>
];

val plate_wire_map as IItemStack[IIngredient] = {
	<tag:items:forge:plates/steel>.asIIngredient(): <item:immersiveengineering:wire_steel>,
	<tag:items:forge:plates/aluminum>.asIIngredient(): <item:immersiveengineering:wire_aluminum>,
	<tag:items:forge:plates/electrum>.asIIngredient(): <item:immersiveengineering:wire_electrum>,
	<tag:items:forge:plates/copper>.asIIngredient(): <item:createaddition:copper_wire>,
	<tag:items:forge:plates/lead>.asIIngredient(): <item:immersiveengineering:wire_lead>,
	<tag:items:forge:plates/iron>.asIIngredient(): <item:createaddition:iron_wire>,
	<tag:items:forge:plates/gold>.asIIngredient(): <item:createaddition:gold_wire>,
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
	<tag:items:forge:ingots/gold>.asIIngredient(): <item:createaddition:gold_rod>
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
	<tag:items:forge:raw_materials/iron>.asIIngredient(): <item:create:crushed_iron_ore>,
	<tag:items:forge:raw_materials/gold>.asIIngredient(): <item:create:crushed_gold_ore>,
	<tag:items:forge:raw_materials/silver>.asIIngredient(): <item:create:crushed_silver_ore>,
	<tag:items:forge:raw_materials/aluminum>.asIIngredient(): <item:create:crushed_aluminum_ore>,
	<tag:items:forge:raw_materials/uranium>.asIIngredient(): <item:create:crushed_uranium_ore>,
	<tag:items:forge:raw_materials/copper>.asIIngredient(): <item:create:crushed_copper_ore>,
	<tag:items:forge:raw_materials/nickel>.asIIngredient(): <item:create:crushed_nickel_ore>,
	<tag:items:forge:raw_materials/lead>.asIIngredient(): <item:create:crushed_lead_ore>,
	<tag:items:forge:raw_materials/zinc>.asIIngredient(): <item:create:crushed_zinc_ore>,
	<tag:items:forge:raw_materials/tin>.asIIngredient(): <item:create:crushed_tin_ore>
};

for item in hammers {
	craftingTable.addShapeless("diamond_to_diamond_dust_with_" + item.registryName.namespace, <item:ftbic:diamond_dust>, [<item:minecraft:diamond>, item.anyDamage().transformDamage(1)]);
	for raw, crushed in raw_crushed_map {
	craftingTable.addShapeless("raw_to_" + crushed.registryName.path + "_with_" + item.registryName.namespace, crushed, [raw, item.anyDamage().transformDamage(1)]);
}}