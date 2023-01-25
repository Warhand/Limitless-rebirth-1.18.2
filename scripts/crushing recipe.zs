import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;

//removing base game recipes

<recipetype:plaingrinder:grinder>.removeAll();
<recipetype:create:crushing>.removeAll();
<recipetype:create:milling>.removeAll();
<recipetype:ars_nouveau:crush>.removeAll();
<recipetype:ftbic:macerating>.removeAll();
<recipetype:bloodmagic:arc>.removeByRegex("bloodmagic:arc.dusts.*");
<recipetype:bloodmagic:arc>.removeByRegex("bloodmagic:arc.gravels.*");
<recipetype:bloodmagic:arc>.removeByRegex("bloodmagic:arc.fragments.*");

//simple crushing recipes

val one_to_one_map as IItemStack[IIngredient] = {
	<item:minecraft:ender_pearl>: <item:ftbic:ender_dust>,
	<item:alexsdelight:raw_bison>: <item:alexsdelight:bison_mince>,
	<item:minecraft:charcoal>: <item:ftbic:charcoal_dust>,
	<tag:items:forge:ingots/steel>.asIIngredient(): <item:thermal:steel_dust>,
	<tag:items:forge:ingots/constantan>.asIIngredient(): <item:thermal:constantan_dust>,
	<tag:items:forge:ingots/electrum>.asIIngredient(): <item:thermal:electrum_dust>,
	<tag:items:minecraft:coals>.asIIngredient(): <item:ftbic:coal_dust>,
	<tag:items:nethersdelight:raw_strider>.asIIngredient(): <item:nethersdelight:ground_strider>,
	<tag:items:forge:tea_leaves/green>.asIIngredient(): <item:delightful:matcha>,
	<tag:items:forge:raw_beef>.asIIngredient(): <item:farmersdelight:minced_beef>
};

for input, output in one_to_one_map{
	crushingAll("one_to_one_" + input.items[0].registryName.path, input, output, 1.0, 1);
}

val flower_dye_crushing as IItemStack[IIngredient] = {
	<item:undergarden:ditchbulb>: <item:undergarden:ditchbulb_paste>,
	<tag:items:lr:dye_flowers/yellow>.asIIngredient(): <item:minecraft:yellow_dye>,
	<tag:items:lr:dye_flowers/magenta>.asIIngredient(): <item:minecraft:magenta_dye>,
	<tag:items:lr:dye_flowers/red>.asIIngredient(): <item:minecraft:red_dye>,
	<tag:items:lr:dye_flowers/gray>.asIIngredient(): <item:minecraft:light_gray_dye>,
	<tag:items:lr:dye_flowers/light_blue>.asIIngredient(): <item:minecraft:light_blue_dye>,
	<tag:items:lr:dye_flowers/orange>.asIIngredient(): <item:minecraft:orange_dye>,
	<tag:items:lr:dye_flowers/pink>.asIIngredient(): <item:minecraft:pink_dye>,
	<tag:items:lr:dye_flowers/blue>.asIIngredient(): <item:minecraft:blue_dye>,
	<tag:items:lr:dye_flowers/white>.asIIngredient(): <item:minecraft:white_dye>,
	<tag:items:lr:dye_flowers/black>.asIIngredient(): <item:minecraft:black_dye>
};

for input, output in flower_dye_crushing{
	crushingIndustrial("_macerator_flower_dye_" + input.items[0].registryName.path, input, output, 1.0, 1, output, 0.25, 1);
	crushingCreateWheel("_wheel_flower_dye_" + input.items[0].registryName.path, input, output, 1.0, 1, output, 0.25, 1);
	crushingThermal("_pulverizer_flower_dye_" + input.items[0].registryName.path, input, output, 1.0, 1, output, 0.25, 1);
	crushingArs("_arsspell_flower_dye_" + input.items[0].registryName.path, input, output, 1.0, 1, output, 0.25, 1);
	crushingCreateMill("_mill_flower_dye_" + input.items[0].registryName.path, input, output, 1.0, 2, output, 0.5, 1);
	crushingPlain("_grinder_flower_dye_" + input.items[0].registryName.path, input, output, 1.0, 1, output, 0.1, 1);
}

var chance_output_with_chance_secondary = [
	new tripleArray(<item:malum:blazing_quartz>, <item:thermal:sulfur_dust>, 0.75f, <item:minecraft:blaze_powder>, 0.1f),
	new tripleArray(<item:minecraft:gravel>, <item:minecraft:sand>, 1.0f, <item:minecraft:flint>, 0.25f),
	new tripleArray(<item:nethersdelight:propelplant_cane>, <item:minecraft:gunpowder>, 1.0f, <item:nethersdelight:propelpearl>, 0.25f)
] as tripleArray[];

for group in chance_output_with_chance_secondary{
	crushingIndustrial("_industrialmacerator_chance_output_" + group.input.items[0].registryName.path, group.input, group.output1, group.chance1, 1, group.output2, group.chance2, 1);
	crushingCreateWheel("_createwheel_chance_output" + group.input.items[0].registryName.path, group.input, group.output1, group.chance1, 1, group.output2, group.chance2, 1);
	crushingThermal("_thermalpulverize_chance_output" + group.input.items[0].registryName.path, group.input, group.output1, group.chance1, 1, group.output2, group.chance2, 1);
	crushingArs("_arscrush_chance_output" + group.input.items[0].registryName.path, group.input, group.output1, group.chance1, 1, group.output2, group.chance2, 1);
	crushingBloodExplosive("_bloodexplosive_chance_output" + group.input.items[0].registryName.path, group.input, group.output1, group.chance1, 1, group.output2, group.chance2, 1);
	crushingBloodResonator("_bloodresonator_chance_output" + group.input.items[0].registryName.path, group.input, group.output1, group.chance1, 1, group.output2, group.chance2, 1);
	crushingPlain("_bettergrinder_chance_output" + group.input.items[0].registryName.path, group.input, group.output1, group.chance1, 1, group.output2, group.chance2, 1);
}

//individual recipes
crushingCreateMill("create_propelplant_milling", <item:nethersdelight:propelplant_cane>, <item:minecraft:gunpowder>, 1.0, 2, <item:nethersdelight:propelpearl>, 0.5, 1);
crushingCreateMill("create_blazing_quartz_milling", <item:malum:blazing_quartz>, <item:thermal:sulfur_dust>, 0.75, 1, <item:minecraft:blaze_powder>, 0.1, 1);

var ironMaterial = new GlobalMaterialRecipe();
ironMaterial.name = "iron_material";
ironMaterial.oreBlock = <tag:items:forge:ores/iron>;
ironMaterial.oreRaw = <item:minecraft:raw_iron>;
ironMaterial.oreFragment = <item:bloodmagic:ironfragment>;
ironMaterial.build();