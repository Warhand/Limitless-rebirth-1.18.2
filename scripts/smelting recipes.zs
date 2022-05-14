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


//removing default dust melting recipe
<recipetype:tconstruct:melting>.removeByRegex("tconstruct:smeltery.*melting.*metal.*dust");

val dust_to_molten_map as IFluidStack[IIngredient] = {
	<tag:items:forge:raw_materials/iron>.asIIngredient(): <fluid:tconstruct:molten_iron>,
	<item:create:crushed_iron_ore>: <fluid:tconstruct:molten_iron>,
	<tag:items:forge:dusts/iron>.asIIngredient(): <fluid:tconstruct:molten_iron>,
	<tag:items:forge:raw_ores/aluminum>.asIIngredient(): <fluid:tconstruct:molten_aluminum>,
	<tag:items:create:crushed_ores/aluminum>.asIIngredient(): <fluid:tconstruct:molten_aluminum>,
	<tag:items:forge:dusts/aluminum>.asIIngredient(): <fluid:tconstruct:molten_aluminum>,
	<tag:items:forge:raw_materials/gold>.asIIngredient(): <fluid:tconstruct:molten_gold>,
	<item:create:crushed_gold_ore>: <fluid:tconstruct:molten_gold>,
	<tag:items:forge:dusts/gold>.asIIngredient(): <fluid:tconstruct:molten_gold>,
	<tag:items:forge:raw_ores/uranium>.asIIngredient(): <fluid:tconstruct:molten_uranium>,
	<tag:items:create:crushed_ores/uranium>.asIIngredient(): <fluid:tconstruct:molten_uranium>,
	<tag:items:forge:dusts/uranium>.asIIngredient(): <fluid:tconstruct:molten_uranium>,
	<tag:items:forge:raw_ores/nickel>.asIIngredient(): <fluid:tconstruct:molten_nickel>,
	<tag:items:create:crushed_ores/nickel>.asIIngredient(): <fluid:tconstruct:molten_nickel>,
	<tag:items:forge:dusts/nickel>.asIIngredient(): <fluid:tconstruct:molten_nickel>,
	<tag:items:forge:raw_ores/lead>.asIIngredient(): <fluid:tconstruct:molten_lead>,
	<tag:items:create:crushed_ores/lead>.asIIngredient(): <fluid:tconstruct:molten_lead>
	<tag:items:forge:dusts/lead>.asIIngredient(): <fluid:tconstruct:molten_lead>
	<tag:items:forge:raw_ores/silver>.asIIngredient(): <fluid:tconstruct:molten_silver>,
	<tag:items:create:crushed_ores/silver>: <fluid:tconstruct:molten_silver>,
	<tag:items:forge:dusts/silver>.asIIngredient(): <fluid:tconstruct:molten_silver>,
	<tag:items:forge:raw_materials/copper>.asIIngredient(): <fluid:tconstruct:molten_copper>,
	<item:create:crushed_copper_ore>: <fluid:tconstruct:molten_copper>,
	<tag:items:forge:dusts/copper>.asIIngredient(): <fluid:tconstruct:molten_copper>,
	<tag:items:forge:raw_ores/tin>.asIIngredient(): <fluid:tconstruct:molten_tin>,
	<tag:items:create:crushed_ores/tin>.asIIngredient(): <fluid:tconstruct:molten_tin>,
	<tag:items:forge:dusts/tin>.asIIngredient(): <fluid:tconstruct:molten_tin>,
	<tag:items:forge:raw_materials/cobalt>.asIIngredient(): <fluid:tconstruct:molten_cobalt>,
	<tag:items:create:crushed_ores/cobalt>.asIIngredient(): <fluid:tconstruct:molten_cobalt>,
	<tag:items:forge:dusts/cobalt>.asIIngredient(): <fluid:tconstruct:molten_cobalt>,
	<tag:items:forge:raw_materials/falsite>.asIIngredient(): <fluid:jaopca:molten.falsite>,
	<tag:items:create:crushed_ores/falsite>.asIIngredient(): <fluid:jaopca:molten.falsite>,
	<tag:items:forge:dusts/falsite>.asIIngredient(): <fluid:jaopca:molten.falsite>,
	<tag:items:forge:raw_materials/horizonite>.asIIngredient(): <fluid:jaopca:molten.horizonite>,
	<tag:items:create:crushed_ores/horizonite>.asIIngredient(): <fluid:jaopca:molten.horizonite>,
	<tag:items:forge:dusts/horizonite>.asIIngredient(): <fluid:jaopca:molten.horizonite>,
	<tag:items:forge:raw_materials/ventium>.asIIngredient(): <fluid:jaopca:molten.ventium>,
	<tag:items:create:crushed_ores/ventium>.asIIngredient(): <fluid:jaopca:molten.ventium>,
	<tag:items:forge:dusts/ventium>.asIIngredient(): <fluid:jaopca:molten.ventium>,
	<tag:items:forge:raw_materials/zinc>.asIIngredient(): <fluid:tconstruct:molten_zinc>,
	<item:create:crushed_zinc_ore>: <fluid:tconstruct:molten_zinc>,
	<tag:items:forge:dusts/zinc>.asIIngredient(): <fluid:tconstruct:molten_zinc>,
	<tag:items:forge:raw_materials/ostrum>.asIIngredient(): <fluid:beyond_earth:molten_ostrum>,
	<tag:items:create:crushed_ores/ostrum>.asIIngredient(): <fluid:beyond_earth:molten_ostrum>,
	<tag:items:forge:dusts/ostrum>.asIIngredient(): <fluid:beyond_earth:molten_ostrum>,
	<item:undergarden:raw_cloggrum>: <fluid:jaopca:molten.cloggrum>,
	<tag:items:create:crushed_ores/cloggrum>.asIIngredient(): <fluid:jaopca:molten.cloggrum>,
	<tag:items:forge:dusts/cloggrum>.asIIngredient(): <fluid:jaopca:molten.cloggrum>,
	<tag:items:forge:raw_materials/calorite>.asIIngredient(): <fluid:beyond_earth:molten_calorite>,
	<tag:items:create:crushed_ores/calorite>.asIIngredient(): <fluid:beyond_earth:molten_calorite>,
	<tag:items:forge:dusts/calorite>.asIIngredient(): <fluid:beyond_earth:molten_calorite>,
	<tag:items:forge:raw_materials/desh>.asIIngredient(): <fluid:beyond_earth:molten_desh>,
	<tag:items:create:crushed_ores/desh>.asIIngredient(): <fluid:beyond_earth:molten_desh>,
	<tag:items:forge:dusts/desh>.asIIngredient(): <fluid:beyond_earth:molten_desh>,
	<item:undergarden:raw_froststeel>: <fluid:jaopca:molten.froststeel>,
	<tag:items:create:crushed_ores/froststeel>.asIIngredient(): <fluid:jaopca:molten.froststeel>,
	<tag:items:forge:dusts/froststeel>.asIIngredient(): <fluid:jaopca:molten.froststeel>
};

for input, output in dust_to_molten_map{
<recipetype:tconstruct:melting>.addJsonRecipe("custom_melting_dust_to_" + output.registryName.path, {
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
<recipetype:create:mixing>.addJsonRecipe("custom_mixing_dust_to_" + output.registryName.path, {
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