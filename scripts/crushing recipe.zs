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
<recipetype:immersiveengineering:crusher>.removeAll();
<recipetype:ars_nouveau:crush>.removeAll();
<recipetype:ftbic:macerating>.removeAll();
<recipetype:bloodmagic:arc>.removeByRegex("bloodmagic:arc.dusts.*");
<recipetype:bloodmagic:arc>.removeByRegex("bloodmagic:arc.gravels.*");
<recipetype:bloodmagic:arc>.removeByRegex("bloodmagic:arc.fragments.*");

//simple crushing recipes

val one_to_one_map as IItemStack[IIngredient] = {
	<item:minecraft:ender_pearl>: <item:ftbic:ender_dust>,
	<item:alexsdelight:raw_bison>: <item:alexsdelight:bison_mince>,
	<tag:items:forge:ingots/steel>.asIIngredient(): <item:immersiveengineering:dust_steel>,
	<tag:items:forge:ingots/constantan>.asIIngredient(): <item:immersiveengineering:dust_constantan>,
	<tag:items:forge:ingots/electrum>.asIIngredient(): <item:immersiveengineering:dust_electrum>,
	<tag:items:forge:coal_coke>.asIIngredient(): <item:immersiveengineering:dust_coke>,
	<tag:items:minecraft:coals>.asIIngredient(): <item:ftbic:coal_dust>,
	<tag:items:forge:charcoal>.asIIngredient(): <item:ftbic:charcoal_dust>,
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
	crushingIndustrial("macerator_flower_dye_" + input.items[0].registryName.path, input, output, 1.0, 1, output, 0.25, 1);
	crushingCreateWheel("wheel_flower_dye_" + input.items[0].registryName.path, input, output, 1.0, 1, output, 0.25, 1);
	crushingImmersive("crusher_flower_dye_" + input.items[0].registryName.path, input, output, 1.0, 1, output, 0.25, 1);
	crushingArs("arsspell_flower_dye_" + input.items[0].registryName.path, input, output, 1.0, 1, output, 0.25, 1);
	crushingCreateMill("mill_flower_dye_" + input.items[0].registryName.path, input, output, 1.0, 2, output, 0.5, 1);
	crushingPlain("grinder_flower_dye_" + input.items[0].registryName.path, input, output, 1.0, 1, output, 0.1, 1);
}

var chance_output_with_chance_secondary = [
	new tripleArray(<item:malum:blazing_quartz>, <item:immersiveengineering:dust_sulfur>, 0.75, <item:minecraft:blaze_powder>, 0.1),
	new tripleArray(<item:minecraft:gravel>, <item:minecraft:sand>, 1.0, <item:minecraft:flint>, 0.25),
	new tripleArray(<item:nethersdelight:propelplant_cane>, <item:minecraft:gunpowder>, 1.0, <item:nethersdelight:propelpearl>, 0.25)
] as tripleArray[];

for group in chance_output_with_chance_secondary{
	crushingIndustrial("industrialmacerator_chance_output" + group.input.items[0].registryName.path, group.input, group.output1, group.chance1, 1, group.output2, group.chance2, 1);
	crushingCreateWheel("createwheel_chance_output" + group.input.items[0].registryName.path, group.input, group.output1, group.chance1, 1, group.output1, group.chance2, 1);
	crushingImmersive("immersivecrush_chance_output" + group.input.items[0].registryName.path, group.input, group.output1, group.chance1, 1, group.output1, group.chance2, 1);
	crushingArs("arscrush_chance_output" + group.input.items[0].registryName.path, group.input, group.output1, group.chance1, 1, group.output1, group.chance2, 1);
	crushingBloodExplosive("bloodexplosive_chance_output" + group.input.items[0].registryName.path, group.input, group.output1, group.chance1, 1, group.output1, group.chance2, 1);
	crushingBloodResonator("bloodresonator_chance_output" + group.input.items[0].registryName.path, group.input, group.output1, group.chance1, 1, group.output1, group.chance2, 1);
	crushingPlain("bettergrinder_chance_output" + group.input.items[0].registryName.path, group.input, group.output1, group.chance1, 1, group.output1, group.chance2, 1);
}

//individual recipes
crushingCreateMill("create_propelplant_milling", <item:nethersdelight:propelplant_cane>, <item:minecraft:gunpowder>, 1.0, 2, <item:nethersdelight:propelpearl>, 0.5, 1);

var ironMaterial = new GlobalMaterialRecipe();
ironMaterial.name = "iron_material";
ironMaterial.oreBlock = <tag:items:forge:ores/iron>;
ironMaterial.oreRaw = <item:minecraft:raw_iron>;
ironMaterial.oreFragment = <item:bloodmagic:ironfragment>;
ironMaterial.build();