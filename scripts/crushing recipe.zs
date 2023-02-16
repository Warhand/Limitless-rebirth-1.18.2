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
<recipetype:thermal:pulverizer>.removeAll();
<recipetype:bloodmagic:arc>.removeByRegex("bloodmagic:arc.dusts.*");
<recipetype:bloodmagic:arc>.removeByRegex("bloodmagic:arc.gravels.*");
<recipetype:bloodmagic:arc>.removeByRegex("bloodmagic:arc.fragments.*");

//altering thermal pulverizer catalyst bonuses
<recipetype:thermal:pulverizer_catalyst>.removeAll();

<recipetype:thermal:pulverizer_catalyst>.addJsonRecipe("custom_flint_catalyst", {
	"ingredient": {
		"item": "minecraft:flint"
	  },
	  "primary_mod": 1.25,
	  "secondary_mod": 1.25,
	  "energy_mod": 1.1,
	  "min_chance": 0.05,
	  "use_chance": 0.20
});
<recipetype:thermal:pulverizer_catalyst>.addJsonRecipe("custom_basalz_catalyst", {
	"ingredient": {
		"item": "thermal:basalz_powder"
	  },
	  "primary_mod": 1.5,
	  "secondary_mod": 1.5,
	  "energy_mod": 0.75,
	  "min_chance": 0.05,
	  "use_chance": 0.40
});

//simple crushing recipes

val one_to_one_map as IItemStack[IIngredient] = {
	<item:minecraft:ender_pearl>: <item:thermal:ender_pearl_dust>,
	<item:alexsdelight:raw_bison>: <item:alexsdelight:bison_mince>,
	<item:minecraft:charcoal>: <item:ftbic:charcoal_dust>,
	<item:nethersdelight:strider_slice>: <item:nethersdelight:ground_strider>,
	<item:thermal:apatite>: <item:thermal:apatite_dust>,
	<item:thermal:ruby>: <item:thermal:ruby_dust>,
	<item:thermal:sapphire>: <item:thermal:sapphire_dust>,
	<item:thermal:sulfur>: <item:thermal:sulfur_dust>,
	<item:minecraft:obsidian>: <item:create:powdered_obsidian>,
	<item:minecraft:diamond>: <item:thermal:diamond_dust>,
	<item:minecraft:emerald>: <item:thermal:emerald_dust>,
	<item:minecraft:lapis_lazuli>: <item:thermal:lapis_dust>,
	<item:minecraft:quartz>: <item:thermal:quartz_dust>,
	<item:thermal:sulfur>: <item:thermal:sulfur_dust>,
	<item:thermal:niter>: <item:thermal:niter_dust>,
	<item:thermal:cinnabar>: <item:thermal:cinnabar_dust>,
	<tag:items:minecraft:planks>.asIIngredient(): <item:thermal:sawdust>,
	<tag:items:forge:ingots/steel>.asIIngredient(): <item:thermal:steel_dust>,
	<tag:items:forge:ingots/constantan>.asIIngredient(): <item:thermal:constantan_dust>,
	<tag:items:forge:ingots/electrum>.asIIngredient(): <item:thermal:electrum_dust>,
	<tag:items:minecraft:coals>.asIIngredient(): <item:ftbic:coal_dust>,
	<tag:items:forge:tea_leaves/green>.asIIngredient(): <item:delightful:matcha>,
	<tag:items:forge:raw_beef>.asIIngredient(): <item:farmersdelight:minced_beef>
};

for input, output in one_to_one_map{
	crushingAll("one_to_one_" + input.items[0].registryName.path, input, output, 1.0, 1);
	crushingThermal("one_to_one_thermal_" + input.items[0].registryName.path, input, output, -1.0, 1);
	craftingTable.remove(output);
	craftingTable.addShapeless("one_to_one_charge_crafting_" + input.items[0].registryName.path, output, [input, <item:thermal:earth_charge>]);
}

val one_to_four_map as IItemStack[IIngredient] = {
	<item:minecraft:glowstone>: <item:minecraft:glowstone_dust>
};

for input, output in one_to_four_map{
	crushingAll("one_to_four_" + input.items[0].registryName.path, input, output, 1.0, 4);
	crushingThermal("one_to_four_thermal_" + input.items[0].registryName.path, input, output, -1.0, 4);
	craftingTable.remove(output);
	craftingTable.addShapeless("one_to_four_charge_crafting_" + input.items[0].registryName.path, output * 4, [input, <item:thermal:earth_charge>]);
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
	new tripleArrayWithChance(<item:malum:blazing_quartz>, <item:thermal:sulfur_dust>, 0.75f, <item:minecraft:blaze_powder>, 0.1f),
	new tripleArrayWithChance(<item:minecraft:gravel>, <item:minecraft:sand>, 1.0f, <item:minecraft:flint>, 0.25f),
	new tripleArrayWithChance(<item:nethersdelight:propelplant_cane>, <item:minecraft:gunpowder>, 1.0f, <item:nethersdelight:propelpearl>, 0.25f)
] as tripleArrayWithChance[];

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
crushingCreateMill("create_gravel_milling", <item:minecraft:gravel>, <item:minecraft:sand>, 1.0, 1, <item:minecraft:flint>, 0.25, 1);
crushingCreateMill("create_blazing_quartz_milling", <item:malum:blazing_quartz>, <item:thermal:sulfur_dust>, 0.75, 1, <item:minecraft:blaze_powder>, 0.1, 1);

var elemental_rods_crushing = [
	new tripleArray(<item:thermal:blizz_rod>, <item:thermal:blizz_powder>, <item:minecraft:snowball>),
	new tripleArray(<item:thermal:basalz_rod>, <item:thermal:basalz_powder>, <item:thermal:slag>),
	new tripleArray(<item:thermal:blitz_rod>, <item:thermal:blitz_powder>, <item:thermal:niter>),
	new tripleArray(<item:minecraft:blaze_rod>, <item:minecraft:blaze_powder>, <item:thermal:sulfur>)
] as tripleArray[];

for group in elemental_rods_crushing{
	crushingAll("_elemental_rod_to_" + group.two.items[0].registryName.path, group.one, group.two, 1.0, 3, group.three, 0.25, 1);
	crushingThermal("_elemental_rod_to_" + group.two.items[0].registryName.path, group.one, group.two, 1.0, 3, group.three, 0.25, 1);
}