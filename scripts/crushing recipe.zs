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

//ore to raw

val ore_to_raw_map as IItemStack[IIngredient] = {
	<tag:items:forge:ores/iron>.asIIngredient(): <item:minecraft:raw_iron>,
	<tag:items:forge:ores/gold>.asIIngredient(): <item:minecraft:raw_gold>,
	<tag:items:forge:ores/zinc>.asIIngredient(): <item:create:raw_zinc>,
	<tag:items:forge:ores/tin>.asIIngredient(): <item:ftbic:tin_chunk>,
	<tag:items:forge:ores/silver>.asIIngredient(): <item:immersiveengineering:raw_silver>,
	<tag:items:forge:ores/froststeel>.asIIngredient(): <item:undergarden:raw_froststeel>,
	<tag:items:forge:ores/lead>.asIIngredient(): <item:immersiveengineering:raw_lead>,
	<tag:items:forge:ores/aluminum>.asIIngredient(): <item:immersiveengineering:raw_aluminum>,
	<tag:items:forge:ores/nickel>.asIIngredient(): <item:immersiveengineering:raw_nickel>,
	<tag:items:forge:ores/uranium>.asIIngredient(): <item:immersiveengineering:raw_uranium>,
	<tag:items:forge:ores/cloggrum>.asIIngredient(): <item:undergarden:raw_cloggrum>,
	<tag:items:forge:ores/cobalt>.asIIngredient(): <item:tconstruct:raw_cobalt>,
	<tag:items:forge:ores/iridium>.asIIngredient(): <item:ftbic:iridium_chunk>,
	<tag:items:forge:ores/jade>.asIIngredient(): <item:sullysmod:rough_jade>,
	<tag:items:forge:ores/pendorite>.asIIngredient(): <item:byg:raw_pendorite>
};

for input, output in ore_to_raw_map{
	crushingIndustrial(input, output, 1.0, 2, output, 0.25, 1);
	crushingCreateWheel(input, output, 1.0, 2, output, 0.25, 1);
	crushingArs(input, output, 1.0, 2, output, 0.5, 1);
	crushingImmersive(input, output, 1.0, 2, output, 0.25, 1);
	crushingBloodExplosive(input, output, 1.0, 2, output, 0.5, 1);
	crushingBloodResonator(input, output, 1.0, 2, output, 0.25, 1);
	crushingCreateMill(input, output, 1.0, 2);
	crushingPlain(input, output, 1.0, 2, output, 0.1, 1);
}

// raw to crushed

val raw_to_crushed_map as IItemStack[IIngredient] = {
	<tag:items:forge:raw_materials/iron>.asIIngredient(): <item:create:crushed_iron_ore>,
	<tag:items:forge:raw_materials/copper>.asIIngredient(): <item:create:crushed_copper_ore>,
	<tag:items:forge:raw_materials/gold>.asIIngredient(): <item:create:crushed_gold_ore>,
	<tag:items:forge:raw_materials/zinc>.asIIngredient(): <item:create:crushed_zinc_ore>,
	<tag:items:forge:raw_materials/tin>.asIIngredient(): <item:create:crushed_tin_ore>,
	<tag:items:forge:raw_materials/silver>.asIIngredient(): <item:create:crushed_silver_ore>,
	<item:undergarden:raw_froststeel>: <item:jaopca:create_crushed_ores.froststeel>,
	<tag:items:forge:raw_materials/lead>.asIIngredient(): <item:create:crushed_lead_ore>,
	<tag:items:forge:raw_materials/aluminum>.asIIngredient(): <item:create:crushed_aluminum_ore>,
	<tag:items:forge:raw_materials/nickel>.asIIngredient(): <item:create:crushed_nickel_ore>,
	<tag:items:forge:raw_materials/uranium>.asIIngredient(): <item:create:crushed_uranium_ore>,
	<item:undergarden:raw_cloggrum>: <item:jaopca:create_crushed_ores.cloggrum>,
	<tag:items:forge:raw_materials/cobalt>.asIIngredient(): <item:jaopca:create_crushed_ores.cobalt>,
	<tag:items:forge:raw_materials/iridium>.asIIngredient(): <item:jaopca:create_crushed_ores.iridium>
};

for input, output in raw_to_crushed_map{
	crushingIndustrial(input, output, 1.0, 1, output, 0.5, 1);
	crushingCreateWheel(input, output, 1.0, 1, output, 0.5, 1);
	crushingImmersive(input, output, 1.0, 1, output, 0.25, 1);
	crushingBloodExplosive(input, output, 1.0, 1, output, 0.25, 1);
	crushingBloodResonator(input, output, 1.0, 1, output, 0.25, 1);
	crushingCreateMill(input, output, 1.0, 1);
	crushingPlain(input, output, 1.0, 1, output, 0.1, 1);
}

//crushed to gravel

val crushed_to_gravel_map as IItemStack[IIngredient] = {
	<item:create:crushed_iron_ore>: <item:bloodmagic:irongravel>,
	<item:create:crushed_copper_ore>: <item:bloodmagic:coppergravel>,
	<item:create:crushed_gold_ore>: <item:bloodmagic:goldgravel>,
	<item:create:crushed_zinc_ore>: <item:jaopca:bloodmagic_gravels.zinc>,
	<item:create:crushed_tin_ore>: <item:jaopca:bloodmagic_gravels.tin>,
	<item:create:crushed_silver_ore>: <item:jaopca:bloodmagic_gravels.silver>,
	<item:jaopca:create_crushed_ores.froststeel>: <item:jaopca:bloodmagic_gravels.froststeel>,
	<item:create:crushed_lead_ore>: <item:jaopca:bloodmagic_gravels.lead>,
	<item:create:crushed_aluminum_ore>: <item:jaopca:bloodmagic_gravels.aluminum>,
	<item:create:crushed_nickel_ore>: <item:jaopca:bloodmagic_gravels.nickel>,
	<item:create:crushed_uranium_ore>: <item:jaopca:bloodmagic_gravels.uranium>,
	<item:jaopca:create_crushed_ores.cloggrum>: <item:jaopca:bloodmagic_gravels.cloggrum>,
	<item:jaopca:create_crushed_ores.cobalt>: <item:jaopca:bloodmagic_gravels.cobalt>,
	<tag:items:create:crushed_ores/iridium>.asIIngredient(): <item:jaopca:bloodmagic_gravels.iridium>
};

for input, output in crushed_to_gravel_map{
	crushingIndustrial(input, output, 1.0, 1, output, 0.25, 1);
	crushingCreateWheel(input, output, 1.0, 1, output, 0.25, 1);
	crushingImmersive(input, output, 1.0, 1, output, 0.5, 1);
	crushingBloodExplosive(input, output, 1.0, 1, output, 0.25, 1);
	crushingBloodResonator(input, output, 1.0, 1, output, 0.5, 1);
	crushingCreateMill(input, output, 1.0, 1);
	crushingPlain(input, output, 1.0, 1, output, 0.1, 1);
}

//ore to materials (rare)

val ore_to_materials_rare as IItemStack[IIngredient] = {
	<tag:items:forge:ores/diamond>.asIIngredient(): <item:minecraft:diamond>,
	<tag:items:forge:ores/netherite_scrap>.asIIngredient(): <item:minecraft:netherite_scrap>,
	<tag:items:forge:ores/emerald>.asIIngredient(): <item:minecraft:emerald>,
	<tag:items:forge:ores/regalium>.asIIngredient(): <item:undergarden:regalium_crystal>,
	<tag:items:forge:ores/brilliance>.asIIngredient(): <item:malum:cluster_of_brilliance>
};

for input, output in ore_to_materials_rare{
	crushingIndustrial(input, output, 1.0, 1, output, 0.25, 1);
	crushingCreateWheel(input, output, 1.0, 1, output, 0.25, 1);
	crushingImmersive(input, output, 1.0, 1, output, 0.25, 1);
	crushingArs(input, output, 1.0, 1, output, 0.5, 1);
	crushingBloodExplosive(input, output, 1.0, 1, output, 0.25, 1);
	crushingBloodResonator(input, output, 1.0, 1, output, 0.5, 1);
	crushingCreateMill(input, output, 1.0, 1);
	crushingPlain(input, output, 1);
}

val ore_to_materials_common as IItemStack[IIngredient] = {
	<tag:items:forge:ores/utherium>.asIIngredient(): <item:undergarden:utherium_crystal>,
	<tag:items:forge:ores/coal>.asIIngredient(): <item:minecraft:coal>,
	<tag:items:forge:ores/quartz>.asIIngredient(): <item:minecraft:quartz>,
	<tag:items:rosie:malum/blazing>.asIIngredient(): <item:malum:blazing_quartz>,
	<tag:items:forge:ores/soulstone>.asIIngredient(): <item:malum:raw_soulstone>,
	<tag:items:createaddition:plants>.asIIngredient(): <item:createaddition:biomass>
};

for input, output in ore_to_materials_common{
	crushingIndustrial(input, output, 1.0, 2, output, 0.25, 1);
	crushingCreateWheel(input, output, 1.0, 2, output, 0.25, 1);
	crushingImmersive(input, output, 1.0, 2, output, 0.5, 1);
	crushingArs(input, output, 1.0, 2, output, 0.25, 1);
	crushingBloodExplosive(input, output, 1.0, 2, output, 0.5, 1);
	crushingBloodResonator(input, output, 1.0, 2, output, 0.25, 1);
	crushingCreateMill(input, output, 1.0, 2);
	crushingPlain(input, output, 1.0, 2, output, 0.1, 1);
}

val ore_to_materials_abundant as IItemStack[IIngredient] = {
	<tag:items:forge:ores/redstone>.asIIngredient(): <item:minecraft:redstone>,
	<tag:items:forge:ores/lapis>.asIIngredient(): <item:minecraft:lapis_lazuli>,
	<tag:items:forge:ores/nethergold>.asIIngredient(): <item:minecraft:gold_nugget>,
	<tag:items:forge:ores/copper>.asIIngredient(): <item:minecraft:raw_copper>
};

for input, output in ore_to_materials_abundant{
	crushingIndustrial(input, output, 1.0, 6, output, 0.25, 3);
	crushingCreateWheel(input, output, 1.0, 6, output, 0.25, 3);
	crushingImmersive(input, output, 1.0, 6, output, 0.5, 3);
	crushingArs(input, output, 1.0, 6, output, 0.25, 3);
	crushingBloodExplosive(input, output, 1.0, 6, output, 0.5, 3);
	crushingBloodResonator(input, output, 1.0, 6, output, 0.25, 3);
	crushingCreateMill(input, output, 1.0, 3);
	crushingPlain(input, output, 1.0, 3, output, 0.25, 2);
}

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
	crushingAll(input, output, 1.0, 1);
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
	crushingIndustrial(input, output, 1.0, 1, output, 0.25, 1);
	crushingCreateWheel(input, output, 1.0, 1, output, 0.25, 1);
	crushingImmersive(input, output, 1.0, 1, output, 0.25, 1);
	crushingArs(input, output, 1.0, 1, output, 0.25, 1);
	crushingBloodExplosive(input, output, 1.0, 1, output, 0.25, 1);
	crushingBloodResonator(input, output, 1.0, 1, output, 0.25, 1);
	crushingCreateMill(input, output, 1.0, 2, output, 0.5, 1);
	crushingPlain(input, output, 1.0, 1, output, 0.1, 1);
}

var chance_output_with_chance_secondary = [
	new tripleArray(<item:malum:blazing_quartz>, <item:immersiveengineering:dust_sulfur>, 0.75, <item:minecraft:blaze_powder>, 0.1),
	new tripleArray(<item:minecraft:gravel>, <item:minecraft:sand>, 1.0, <item:minecraft:flint>, 0.25),
	new tripleArray(<item:nethersdelight:propelplant_cane>, <item:minecraft:gunpowder>, 1.0, <item:nethersdelight:propelpearl>, 0.25)
] as tripleArray[];

for group in chance_output_with_chance_secondary{
	crushingAll(group.input, group.output1, group.chance1, 1, group.output2, group.chance2, 1);
}

//individual recipes
crushingCreateMill(<item:nethersdelight:propelplant_cane>, <item:minecraft:gunpowder>, 1.0, 2, <item:nethersdelight:propelpearl>, 0.5, 1);