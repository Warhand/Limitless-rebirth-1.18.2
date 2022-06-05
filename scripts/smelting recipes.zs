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


//removing default dust melting recipes
<recipetype:tconstruct:melting>.removeByRegex("tconstruct:smeltery.*melting.*metal.*dust");
<recipetype:tconstruct:melting>.removeByRegex("beyond_earth:smeltery.melting.*.dust");
<recipetype:immersiveengineering:arc_furnace>.removeByRegex("immersiveengineering:arfurnace.raw_*_.*");
<recipetype:immersiveengineering:arc_furnace>.removeByRegex("immersiveengineering:arfurnace.ore.*");
<recipetype:immersiveengineering:arc_furnace>.removeByRegex("immersiveengineering:arfurnace.dust.*");
<recipetype:immersiveengineering:arc_furnace>.removeByRegex("jaopca:immersiveengineering.*_to_*..*");
<recipetype:immersiveengineering:arc_furnace>.removeByName("immersiveengineering:arcfurnace/netherite_scrap");

val dust_to_molten_map as IFluidStack[IIngredient] = {
	<tag:items:forge:raw_materials/iron>.asIIngredient(): <fluid:tconstruct:molten_iron>,
	<item:create:crushed_iron_ore>: <fluid:tconstruct:molten_iron>,
	<tag:items:forge:dusts/iron>.asIIngredient(): <fluid:tconstruct:molten_iron>,
	<tag:items:forge:raw_materials/aluminum>.asIIngredient(): <fluid:tconstruct:molten_aluminum>,
	<tag:items:create:crushed_ores/aluminum>.asIIngredient(): <fluid:tconstruct:molten_aluminum>,
	<tag:items:forge:dusts/aluminum>.asIIngredient(): <fluid:tconstruct:molten_aluminum>,
	<tag:items:forge:raw_materials/gold>.asIIngredient(): <fluid:tconstruct:molten_gold>,
	<item:create:crushed_gold_ore>: <fluid:tconstruct:molten_gold>,
	<tag:items:forge:dusts/gold>.asIIngredient(): <fluid:tconstruct:molten_gold>,
	<tag:items:forge:raw_materials/uranium>.asIIngredient(): <fluid:tconstruct:molten_uranium>,
	<tag:items:create:crushed_ores/uranium>.asIIngredient(): <fluid:tconstruct:molten_uranium>,
	<tag:items:forge:dusts/uranium>.asIIngredient(): <fluid:tconstruct:molten_uranium>,
	<tag:items:forge:raw_materials/nickel>.asIIngredient(): <fluid:tconstruct:molten_nickel>,
	<tag:items:create:crushed_ores/nickel>.asIIngredient(): <fluid:tconstruct:molten_nickel>,
	<tag:items:forge:dusts/nickel>.asIIngredient(): <fluid:tconstruct:molten_nickel>,
	<tag:items:forge:raw_materials/lead>.asIIngredient(): <fluid:tconstruct:molten_lead>,
	<tag:items:create:crushed_ores/lead>.asIIngredient(): <fluid:tconstruct:molten_lead>,
	<tag:items:forge:dusts/lead>.asIIngredient(): <fluid:tconstruct:molten_lead>,
	<tag:items:forge:raw_materials/silver>.asIIngredient(): <fluid:tconstruct:molten_silver>,
	<tag:items:create:crushed_ores/silver>: <fluid:tconstruct:molten_silver>,
	<tag:items:forge:dusts/silver>.asIIngredient(): <fluid:tconstruct:molten_silver>,
	<tag:items:forge:raw_materials/copper>.asIIngredient(): <fluid:tconstruct:molten_copper>,
	<item:create:crushed_copper_ore>: <fluid:tconstruct:molten_copper>,
	<tag:items:forge:dusts/copper>.asIIngredient(): <fluid:tconstruct:molten_copper>,
	<tag:items:forge:raw_materials/tin>.asIIngredient(): <fluid:tconstruct:molten_tin>,
	<tag:items:create:crushed_ores/tin>.asIIngredient(): <fluid:tconstruct:molten_tin>,
	<tag:items:forge:dusts/tin>.asIIngredient(): <fluid:tconstruct:molten_tin>,
	<tag:items:forge:raw_materials/cobalt>.asIIngredient(): <fluid:tconstruct:molten_cobalt>,
	<tag:items:create:crushed_ores/cobalt>.asIIngredient(): <fluid:tconstruct:molten_cobalt>,
	<tag:items:forge:dusts/cobalt>.asIIngredient(): <fluid:tconstruct:molten_cobalt>,
	<tag:items:forge:raw_materials/zinc>.asIIngredient(): <fluid:tconstruct:molten_zinc>,
	<item:create:crushed_zinc_ore>: <fluid:tconstruct:molten_zinc>,
	<tag:items:forge:dusts/zinc>.asIIngredient(): <fluid:tconstruct:molten_zinc>,
	<item:undergarden:raw_cloggrum>: <fluid:materialis:molten_cloggrum>,
	<tag:items:create:crushed_ores/cloggrum>.asIIngredient(): <fluid:materialis:molten_cloggrum>,
	<tag:items:forge:dusts/cloggrum>.asIIngredient(): <fluid:materialis:molten_cloggrum>,
	<item:undergarden:raw_froststeel>: <fluid:materialis:molten_froststeel>,
	<tag:items:create:crushed_ores/froststeel>.asIIngredient(): <fluid:materialis:molten_froststeel>,
	<tag:items:forge:dusts/froststeel>.asIIngredient(): <fluid:materialis:molten_froststeel>,
	<tag:items:forge:raw_materials/ostrum>.asIIngredient(): <fluid:beyond_earth:molten_ostrum>,
	<tag:items:create:crushed_ores/ostrum>.asIIngredient(): <fluid:beyond_earth:molten_ostrum>,
	<tag:items:forge:dusts/ostrum>.asIIngredient(): <fluid:beyond_earth:molten_ostrum>,
	<tag:items:forge:raw_materials/desh>.asIIngredient(): <fluid:beyond_earth:molten_desh>,
	<tag:items:create:crushed_ores/desh>.asIIngredient(): <fluid:beyond_earth:molten_desh>,
	<tag:items:forge:dusts/desh>.asIIngredient(): <fluid:beyond_earth:molten_desh>,
	<tag:items:forge:raw_materials/calorite>.asIIngredient(): <fluid:beyond_earth:molten_calorite>,
	<tag:items:create:crushed_ores/calorite>.asIIngredient(): <fluid:beyond_earth:molten_calorite>,
	<tag:items:forge:dusts>.asIIngredient(): <fluid:beyond_earth:molten_calorite>
};

for input, output in dust_to_molten_map{
<recipetype:tconstruct:melting>.addJsonRecipe("custom_melting_" + input.items[0].registryName.path + "_to_" + output.registryName.path, {
  "ingredient": input,
  "result": {
    "fluid": output.registryName,
    "amount": 120
  },
  "temperature": 700,
  "time": 43
});
}

for input, output in dust_to_molten_map{
<recipetype:create:mixing>.addJsonRecipe("custom_mixing_dust_" + input.items[0].registryName.path + "_to_" + output.registryName.path, {
  "ingredients": [
    input
  ],
  "results": [
    {
      "fluid": output.registryName,
      "amount": 180
    }
  ],
  "heatRequirement": "superheated"
});
}

val dust_to_nugget_map as IItemStack[IIngredient] = {
	<tag:items:forge:raw_materials/iron>.asIIngredient(): <item:minecraft:iron_nugget>,
	<item:create:crushed_iron_ore>: <item:minecraft:iron_nugget>,
	<tag:items:forge:dusts/iron>.asIIngredient(): <item:minecraft:iron_nugget>,
	<tag:items:forge:raw_materials/aluminum>.asIIngredient(): <item:immersiveengineering:nugget_aluminum>,
	<tag:items:create:crushed_ores/aluminum>.asIIngredient(): <item:immersiveengineering:nugget_aluminum>,
	<tag:items:forge:dusts/aluminum>.asIIngredient(): <item:immersiveengineering:nugget_aluminum>,
	<tag:items:forge:raw_materials/gold>.asIIngredient(): <item:minecraft:gold_nugget>,
	<item:create:crushed_gold_ore>: <item:minecraft:gold_nugget>,
	<tag:items:forge:dusts/gold>.asIIngredient(): <item:minecraft:gold_nugget>,
	<tag:items:forge:raw_materials/uranium>.asIIngredient(): <item:immersiveengineering:nugget_uranium>,
	<tag:items:create:crushed_ores/uranium>.asIIngredient(): <item:immersiveengineering:nugget_uranium>,
	<tag:items:forge:dusts/uranium>.asIIngredient(): <item:immersiveengineering:nugget_uranium>,
	<tag:items:forge:raw_materials/nickel>.asIIngredient(): <item:immersiveengineering:nugget_nickel>,
	<tag:items:create:crushed_ores/nickel>.asIIngredient(): <item:immersiveengineering:nugget_nickel>,
	<tag:items:forge:dusts/nickel>.asIIngredient(): <item:immersiveengineering:nugget_nickel>,
	<tag:items:forge:raw_materials/lead>.asIIngredient(): <item:immersiveengineering:nugget_lead>,
	<tag:items:create:crushed_ores/lead>.asIIngredient(): <item:immersiveengineering:nugget_lead>,
	<tag:items:forge:dusts/lead>.asIIngredient(): <item:immersiveengineering:nugget_lead>,
	<tag:items:forge:raw_materials/silver>.asIIngredient(): <item:immersiveengineering:nugget_silver>,
	<tag:items:create:crushed_ores/silver>: <item:immersiveengineering:nugget_silver>,
	<tag:items:forge:dusts/silver>.asIIngredient(): <item:immersiveengineering:nugget_silver>,
	<tag:items:forge:raw_materials/copper>.asIIngredient(): <item:create:copper_nugget>,
	<item:create:crushed_copper_ore>: <item:create:copper_nugget>,
	<tag:items:forge:dusts/copper>.asIIngredient(): <item:create:copper_nugget>,
	<tag:items:forge:raw_materials/tin>.asIIngredient(): <item:ftbic:tin_nugget>,
	<tag:items:create:crushed_ores/tin>.asIIngredient(): <item:ftbic:tin_nugget>,
	<tag:items:forge:dusts/tin>.asIIngredient(): <item:ftbic:tin_nugget>,
	<tag:items:forge:raw_materials/cobalt>.asIIngredient(): <item:tconstruct:cobalt_nugget>,
	<tag:items:create:crushed_ores/cobalt>.asIIngredient(): <item:tconstruct:cobalt_nugget>,
	<tag:items:forge:dusts/cobalt>.asIIngredient(): <item:tconstruct:cobalt_nugget>,
	<tag:items:forge:raw_materials/zinc>.asIIngredient(): <item:create:zinc_nugget>,
	<item:create:crushed_zinc_ore>: <item:create:zinc_nugget>,
	<tag:items:forge:dusts/zinc>.asIIngredient(): <item:create:zinc_nugget>,
	<item:undergarden:raw_cloggrum>: <item:undergarden:cloggrum_nugget>,
	<tag:items:create:crushed_ores/cloggrum>.asIIngredient(): <item:undergarden:cloggrum_nugget>,
	<tag:items:forge:dusts/cloggrum>.asIIngredient(): <item:undergarden:cloggrum_nugget>,
	<item:undergarden:raw_froststeel>: <item:undergarden:froststeel_nugget>,
	<tag:items:create:crushed_ores/froststeel>.asIIngredient(): <item:undergarden:froststeel_nugget>,
	<tag:items:forge:dusts/froststeel>.asIIngredient(): <item:undergarden:froststeel_nugget>,
	<tag:items:forge:raw_materials/ostrum>.asIIngredient(): <item:beyond_earth:ostrum_nugget>,
	<tag:items:create:crushed_ores/ostrum>.asIIngredient(): <item:beyond_earth:ostrum_nugget>,
	<tag:items:forge:dusts/ostrum>.asIIngredient(): <item:beyond_earth:ostrum_nugget>,
	<tag:items:forge:raw_materials/desh>.asIIngredient(): <item:beyond_earth:desh_nugget>,
	<tag:items:create:crushed_ores/desh>.asIIngredient(): <item:beyond_earth:desh_nugget>,
	<tag:items:forge:dusts/desh>.asIIngredient(): <item:beyond_earth:desh_nugget>,
	<tag:items:forge:raw_materials/calorite>.asIIngredient(): <item:beyond_earth:calorite_nugget>,
	<tag:items:create:crushed_ores/calorite>.asIIngredient(): <item:beyond_earth:calorite_nugget>,
	<tag:items:forge:dusts>.asIIngredient(): <item:beyond_earth:calorite_nugget>
};

<recipetype:immersiveengineering:arc_furnace>.removeAll();

for input, output in dust_to_nugget_map{
<recipetype:immersiveengineering:arc_furnace>.addJsonRecipe("custom_arc_furnace_dust_" + input.items[0].registryName.path + "_to_" + output.registryName.path, {
"results":[{"count":15, "base_ingredient":{"item": output.registryName}}],
"additives":[],
"input":input,
"slag":{"tag":"forge:slag"},
"time":100,
"energy":51200
}
);
}

//metal impetus smelting recipes

val node_to_nugget_map as IItemStack[IItemStack] = {
	<item:malum:tin_node>: <item:ftbic:tin_nugget>,
	<item:malum:iron_node>: <item:minecraft:iron_nugget>,
	<item:malum:copper_node>: <item:create:copper_nugget>,
	<item:malum:gold_node>: <item:minecraft:gold_nugget>,
	<item:malum:lead_node>: <item:ftbic:lead_nugget>,
	<item:malum:silver_node>: <item:immersiveengineering:nugget_silver>,
	<item:malum:aluminum_node>: <item:immersiveengineering:nugget_aluminum>,
	<item:malum:nickel_node>: <item:immersiveengineering:nugget_nickel>,
	<item:malum:uranium_node>: <item:immersiveengineering:nugget_uranium>,
	<item:malum:zinc_node>: <item:create:zinc_nugget>
};

for input, output in node_to_nugget_map{
furnace.addRecipe("smelting_" + output.registryName.path + "_impetus", output * 3, input, 0.4, 200);
blastFurnace.addRecipe("blasting_" + output.registryName.path + "_impetus", output * 3, input, 0.4, 100);
}