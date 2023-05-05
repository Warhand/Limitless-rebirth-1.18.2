import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;

//iron
var ironMaterial = new GlobalMaterialRecipe();
ironMaterial.name = "iron_material";
ironMaterial.oreBlock = <tag:items:forge:ores/iron>;
ironMaterial.oreRaw = <item:minecraft:raw_iron>;
ironMaterial.oreRawBlock = <item:minecraft:raw_iron_block>;
ironMaterial.oreFragment = <item:bloodmagic:ironfragment>;
ironMaterial.oreCrushed = <item:create:crushed_iron_ore>;
ironMaterial.oreGravel = <item:bloodmagic:irongravel>;
ironMaterial.node = <item:malum:iron_node>;
ironMaterial.metalDust = <item:thermal:iron_dust>;
ironMaterial.block = <item:minecraft:iron_block>;
ironMaterial.ingot = <item:minecraft:iron_ingot>;
ironMaterial.plate = <item:thermal:iron_plate>;
ironMaterial.gear = <item:thermal:iron_gear>;
ironMaterial.molten = <fluid:kubejs:molten_iron>;
ironMaterial.nugget = <item:minecraft:iron_nugget>;
ironMaterial.build();

//copper
var copperMaterial = new GlobalMaterialRecipe();
copperMaterial.name = "copper_material";
copperMaterial.oreBlock = <tag:items:forge:ores/copper>;
copperMaterial.oreSpecial = <item:minecraft:raw_copper>;
copperMaterial.specialDrops = new outputSpecial(6, 1.0, 4, 0.5, 1.5);
copperMaterial.isSpecialMetal = true;
copperMaterial.oreRawBlock = <item:minecraft:raw_copper_block>;
copperMaterial.oreFragment = <item:bloodmagic:copperfragment>;
copperMaterial.oreCrushed = <item:create:crushed_copper_ore>;
copperMaterial.oreGravel = <item:bloodmagic:coppergravel>;
copperMaterial.ingot = <item:minecraft:copper_ingot>;
copperMaterial.block = <item:minecraft:copper_block>;
copperMaterial.wire = <item:ftbic:copper_wire>;
copperMaterial.metalDust = <item:thermal:copper_dust>;
copperMaterial.gear = <item:thermal:copper_gear>;
copperMaterial.nugget = <item:create:copper_nugget>;
copperMaterial.plate = <item:thermal:copper_plate>;
copperMaterial.molten = <fluid:kubejs:molten_copper>;
copperMaterial.node = <item:malum:copper_node>;
copperMaterial.rod = <item:ftbic:copper_rod>;
copperMaterial.build();

//gold
var goldMaterial = new GlobalMaterialRecipe();
goldMaterial.name = "gold_material";
goldMaterial.gear = <item:thermal:gold_gear>;
goldMaterial.metalDust = <item:thermal:gold_dust>;
goldMaterial.nugget = <item:minecraft:gold_nugget>;
goldMaterial.ingot = <item:minecraft:gold_ingot>;
goldMaterial.oreRaw = <item:minecraft:raw_gold>;
goldMaterial.block = <item:minecraft:gold_block>;
goldMaterial.oreRawBlock = <item:minecraft:raw_gold_block>;
goldMaterial.oreBlock = <item:minecraft:gold_ore>;
goldMaterial.rod = <item:ftbic:gold_rod>;
goldMaterial.plate = <item:thermal:gold_plate>;
goldMaterial.oreCrushed = <item:create:crushed_gold_ore>;
goldMaterial.oreGravel = <item:bloodmagic:goldgravel>;
goldMaterial.oreFragment = <item:bloodmagic:goldfragment>;
goldMaterial.wire = <item:ftbic:gold_wire>;
goldMaterial.molten = <fluid:kubejs:molten_gold>;
goldMaterial.node = <item:malum:gold_node>;
goldMaterial.build();

//zinc
var zincMaterial = new GlobalMaterialRecipe();
zincMaterial.name = "zinc_material";
zincMaterial.oreCrushed = <item:create:crushed_zinc_ore>;
zincMaterial.nugget = <item:create:zinc_nugget>;
zincMaterial.ingot = <item:create:zinc_ingot>;
zincMaterial.oreRaw = <item:create:raw_zinc>;
zincMaterial.oreRawBlock = <item:create:raw_zinc_block>;
zincMaterial.block = <item:create:zinc_block>;
zincMaterial.oreBlock = <tag:items:forge:ores/zinc>;
zincMaterial.metalDust = <item:contenttweaker:zinc_dust>;
zincMaterial.oreGravel = <item:contenttweaker:zinc_gravel>;
zincMaterial.oreFragment = <item:contenttweaker:zinc_fragment>;
zincMaterial.node = <item:malum:zinc_node>;
zincMaterial.molten = <fluid:kubejs:molten_zinc>;
zincMaterial.build();

//silver
var silverMaterial = new GlobalMaterialRecipe();
silverMaterial.name = "silver_material";
silverMaterial.oreBlock = <tag:items:forge:ores/silver>;
silverMaterial.oreRaw = <item:thermal:raw_silver>;
silverMaterial.block = <item:thermal:silver_block>;
silverMaterial.ingot = <item:thermal:silver_ingot>;
silverMaterial.nugget = <item:thermal:silver_nugget>;
silverMaterial.metalDust = <item:thermal:silver_dust>;
silverMaterial.oreCrushed = <item:create:crushed_silver_ore>;
silverMaterial.oreFragment = <item:contenttweaker:silver_fragment>;
silverMaterial.oreGravel = <item:contenttweaker:silver_gravel>;
silverMaterial.gear = <item:thermal:silver_gear>;
silverMaterial.plate = <item:thermal:silver_plate>;
silverMaterial.molten = <fluid:kubejs:molten_silver>;
silverMaterial.build();

//tin
var tinMaterial = new GlobalMaterialRecipe();
tinMaterial.name = "tin_material";
tinMaterial.oreBlock = <tag:items:forge:ores/tin>;
tinMaterial.oreRawBlock = <item:thermal:raw_tin_block>;
tinMaterial.block = <item:thermal:tin_block>;
tinMaterial.oreRaw = <item:thermal:raw_tin>;
tinMaterial.molten = <fluid:kubejs:molten_tin>;
tinMaterial.ingot = <item:thermal:tin_ingot>;
tinMaterial.nugget = <item:thermal:tin_nugget>;
tinMaterial.metalDust = <item:thermal:tin_dust>;
tinMaterial.gear = <item:thermal:tin_gear>;
tinMaterial.oreFragment = <item:contenttweaker:tin_fragment>;
tinMaterial.oreGravel = <item:contenttweaker:tin_gravel>;
tinMaterial.oreCrushed = <item:create:crushed_tin_ore>;
tinMaterial.node = <item:malum:tin_node>;
tinMaterial.plate = <item:thermal:tin_plate>;
tinMaterial.build();

//lead
var leadMaterial = new GlobalMaterialRecipe();
leadMaterial.name = "lead_material";
leadMaterial.oreBlock = <tag:items:forge:ores/lead>;
leadMaterial.oreCrushed = <item:create:crushed_lead_ore>;
leadMaterial.oreFragment = <item:contenttweaker:lead_fragment>;
leadMaterial.oreGravel = <item:contenttweaker:lead_gravel>;
leadMaterial.oreRawBlock = <item:thermal:raw_lead_block>;
leadMaterial.block = <item:thermal:lead_block>;
leadMaterial.molten = <fluid:kubejs:molten_lead>;
leadMaterial.oreRaw = <item:thermal:raw_lead>;
leadMaterial.ingot = <item:thermal:lead_ingot>;
leadMaterial.node = <item:malum:lead_node>;
leadMaterial.plate = <item:thermal:lead_plate>;
leadMaterial.gear = <item:thermal:lead_gear>;
leadMaterial.metalDust = <item:thermal:lead_dust>;
leadMaterial.nugget = <item:thermal:lead_nugget>;
leadMaterial.build();

//aluminum
var aluminumMaterial = new GlobalMaterialRecipe();
aluminumMaterial.name = "aluminum_material";
aluminumMaterial.oreFragment = <item:contenttweaker:aluminum_fragment>;
aluminumMaterial.oreCrushed = <item:create:crushed_aluminum_ore>;
aluminumMaterial.wire = <item:ftbic:aluminum_wire>;
aluminumMaterial.oreRaw = <item:ftbic:aluminum_chunk>;
aluminumMaterial.metalDust = <item:ftbic:aluminum_dust>;
aluminumMaterial.oreRawBlock = <item:contenttweaker:raw_aluminum_block>;
aluminumMaterial.ingot = <item:ftbic:aluminum_ingot>;
aluminumMaterial.oreBlock = <tag:items:forge:ores/aluminum>;
aluminumMaterial.rod = <item:ftbic:aluminum_rod>;
aluminumMaterial.oreGravel = <item:contenttweaker:aluminum_gravel>;
aluminumMaterial.molten = <fluid:kubejs:molten_aluminum>;
aluminumMaterial.node = <item:malum:aluminum_node>;
aluminumMaterial.nugget = <item:ftbic:aluminum_nugget>;
aluminumMaterial.plate = <item:ftbic:aluminum_plate>;
aluminumMaterial.block = <item:ftbic:aluminum_block>;
aluminumMaterial.build();

//nickel
var nickelMaterial = new GlobalMaterialRecipe();
nickelMaterial.name = "nickel_material";
nickelMaterial.oreGravel = <item:contenttweaker:nickel_gravel>;
nickelMaterial.oreFragment = <item:contenttweaker:nickel_fragment>;
nickelMaterial.oreCrushed = <item:create:crushed_nickel_ore>;
nickelMaterial.molten = <fluid:kubejs:molten_nickel>;
nickelMaterial.plate = <item:thermal:nickel_plate>;
nickelMaterial.node = <item:malum:nickel_node>;
nickelMaterial.oreBlock = <tag:items:forge:ores/nickel>;
nickelMaterial.oreRawBlock = <item:thermal:raw_nickel_block>;
nickelMaterial.block = <item:thermal:nickel_block>;
nickelMaterial.oreRaw = <item:thermal:raw_nickel>;
nickelMaterial.ingot = <item:thermal:nickel_ingot>;
nickelMaterial.nugget = <item:thermal:nickel_nugget>;
nickelMaterial.gear = <item:thermal:nickel_gear>;
nickelMaterial.metalDust = <item:thermal:nickel_dust>;
nickelMaterial.build();

//uranium
var uraniumMaterial = new GlobalMaterialRecipe();
uraniumMaterial.name = "uranium_material";
uraniumMaterial.oreFragment = <item:contenttweaker:uranium_fragment>;
uraniumMaterial.oreCrushed = <item:create:crushed_uranium_ore>;
uraniumMaterial.nugget = <item:ftbic:uranium_nugget>;
uraniumMaterial.metalDust = <item:ftbic:uranium_dust>;
uraniumMaterial.oreRaw = <item:ftbic:uranium_chunk>;
uraniumMaterial.ingot = <item:ftbic:uranium_ingot>;
uraniumMaterial.oreBlock = <tag:items:forge:ores/uranium>;
uraniumMaterial.oreRawBlock = <item:contenttweaker:raw_uranium_block>;
uraniumMaterial.molten = <fluid:kubejs:molten_uranium>;
uraniumMaterial.block = <item:ftbic:uranium_block>;
uraniumMaterial.node = <item:malum:uranium_node>;
uraniumMaterial.oreGravel = <item:contenttweaker:uranium_gravel>;
uraniumMaterial.build();

//bronze
var bronzeMaterial = new GlobalMaterialRecipe();
bronzeMaterial.name = "bronze_material";
bronzeMaterial.ingot = <item:alloyed:bronze_ingot>;
bronzeMaterial.nugget = <item:alloyed:bronze_nugget>;
bronzeMaterial.plate = <item:alloyed:bronze_sheet>;
bronzeMaterial.block = <item:alloyed:bronze_block>;
bronzeMaterial.molten = <fluid:kubejs:molten_bronze>;
bronzeMaterial.metalDust = <item:thermal:bronze_dust>;
bronzeMaterial.build();

var bronzeAlloy = new AlloyMaterialClass();
bronzeAlloy.name = "bronze_alloy";
bronzeAlloy.inputCrafting = [<item:thermal:copper_dust>, <item:thermal:copper_dust>, <item:thermal:copper_dust>, <item:thermal:tin_dust>];
bronzeAlloy.inputMachine = [<item:minecraft:copper_ingot> * 3, <item:thermal:tin_ingot>];
bronzeAlloy.outputDust = <item:thermal:bronze_dust> * 4;
bronzeAlloy.outputIngot = <item:alloyed:bronze_ingot> * 4;
bronzeAlloy.outputMolten = <fluid:kubejs:molten_bronze> * 432;
bronzeAlloy.build();

//electrum
var electrumMaterial = new GlobalMaterialRecipe();
electrumMaterial.name = "electrum_material";
electrumMaterial.block = <item:thermal:electrum_block>;
electrumMaterial.molten = <fluid:kubejs:molten_electrum>;
electrumMaterial.ingot = <item:thermal:electrum_ingot>;
electrumMaterial.nugget = <item:thermal:electrum_nugget>;
electrumMaterial.metalDust = <item:thermal:electrum_dust>;
electrumMaterial.gear = <item:thermal:electrum_gear>;
electrumMaterial.plate = <item:thermal:electrum_plate>;
electrumMaterial.build();

var electrumAlloy = new AlloyMaterialClass();
electrumAlloy.name = "electrum_alloy";
electrumAlloy.inputCrafting = [<item:thermal:silver_dust>, <item:thermal:gold_dust>];
electrumAlloy.inputMachine = [<item:thermal:silver_ingot>, <item:minecraft:gold_ingot>];
electrumAlloy.outputDust = <item:thermal:electrum_dust> * 2;
electrumAlloy.outputIngot = <item:thermal:electrum_ingot> * 2;
electrumAlloy.outputMolten = <fluid:kubejs:molten_electrum> * 216;
electrumAlloy.build();

//invar
var invarMaterial = new GlobalMaterialRecipe();
invarMaterial.name = "invar_material";
invarMaterial.block = <item:thermal:invar_block>;
invarMaterial.molten = <fluid:kubejs:molten_invar>;
invarMaterial.ingot = <item:thermal:invar_ingot>;
invarMaterial.nugget = <item:thermal:invar_nugget>;
invarMaterial.metalDust = <item:thermal:invar_dust>;
invarMaterial.gear = <item:thermal:invar_gear>;
invarMaterial.plate = <item:thermal:invar_plate>;
invarMaterial.build();

var invarAlloy = new AlloyMaterialClass();
invarAlloy.name = "invar_alloy";
invarAlloy.inputCrafting = [<item:thermal:iron_dust>, <item:thermal:iron_dust>, <item:thermal:nickel_dust>];
invarAlloy.inputMachine = [<item:minecraft:iron_ingot> * 2, <item:thermal:nickel_ingot>];
invarAlloy.outputDust = <item:thermal:invar_dust> * 3;
invarAlloy.outputIngot = <item:thermal:invar_ingot> * 3;
invarAlloy.outputMolten = <fluid:kubejs:molten_invar> * 324;
invarAlloy.build();

//constantan
var constantanMaterial = new GlobalMaterialRecipe();
constantanMaterial.name = "constantan_material";
constantanMaterial.block = <item:thermal:constantan_block>;
constantanMaterial.molten = <fluid:kubejs:molten_constantan>;
constantanMaterial.ingot = <item:thermal:constantan_ingot>;
constantanMaterial.nugget = <item:thermal:constantan_nugget>;
constantanMaterial.metalDust = <item:thermal:constantan_dust>;
constantanMaterial.gear = <item:thermal:constantan_gear>;
constantanMaterial.plate = <item:thermal:constantan_plate>;
constantanMaterial.build();

var constantanAlloy = new AlloyMaterialClass();
constantanAlloy.name = "constantan_alloy";
constantanAlloy.inputCrafting = [<item:thermal:copper_dust>, <item:thermal:nickel_dust>];
constantanAlloy.inputMachine = [<item:minecraft:copper_ingot>, <item:thermal:nickel_ingot>];
constantanAlloy.outputDust = <item:thermal:constantan_dust> * 2;
constantanAlloy.outputIngot = <item:thermal:constantan_ingot> * 2;
constantanAlloy.outputMolten = <fluid:kubejs:molten_constantan> * 216;
constantanAlloy.build();

//signalum
var signalumMaterial = new GlobalMaterialRecipe();
signalumMaterial.name = "signalum_material";
signalumMaterial.molten = <fluid:kubejs:molten_signalum>;
signalumMaterial.block = <item:thermal:signalum_block>;
signalumMaterial.ingot = <item:thermal:signalum_ingot>;
signalumMaterial.nugget = <item:thermal:signalum_nugget>;
signalumMaterial.metalDust = <item:thermal:signalum_dust>;
signalumMaterial.gear = <item:thermal:signalum_gear>;
signalumMaterial.plate = <item:thermal:signalum_plate>;
signalumMaterial.build();

var signalumAlloy = new AlloyMaterialClass();
signalumAlloy.name = "signalum_alloy";
signalumAlloy.inputCrafting = [<item:thermal:copper_dust>, <item:thermal:copper_dust>, <item:thermal:copper_dust>, <item:thermal:silver_dust>, <item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:redstone>];
signalumAlloy.inputMachine = [<item:minecraft:copper_ingot> * 3, <item:thermal:silver_ingot>, <item:minecraft:redstone> * 4];
signalumAlloy.outputDust = <item:thermal:signalum_dust> * 4;
signalumAlloy.outputIngot = <item:thermal:signalum_ingot> * 4;
signalumAlloy.outputMolten = <fluid:kubejs:molten_signalum> * 432;
signalumAlloy.build();

//lumium
var lumiumMaterial = new GlobalMaterialRecipe();
lumiumMaterial.name = "lumium_material";
lumiumMaterial.block = <item:thermal:lumium_block>;
lumiumMaterial.ingot = <item:thermal:lumium_ingot>;
lumiumMaterial.nugget = <item:thermal:lumium_nugget>;
lumiumMaterial.metalDust = <item:thermal:lumium_dust>;
lumiumMaterial.gear = <item:thermal:lumium_gear>;
lumiumMaterial.plate = <item:thermal:lumium_plate>;
lumiumMaterial.molten = <fluid:kubejs:molten_lumium>;
lumiumMaterial.build();

var lumiumAlloy = new AlloyMaterialClass();
lumiumAlloy.name = "lumium_alloy";
lumiumAlloy.inputCrafting = [<item:thermal:tin_dust>, <item:thermal:tin_dust>, <item:thermal:tin_dust>, <item:thermal:silver_dust>, <item:thermal:glowstone_bucket>.transformReplace(<item:minecraft:bucket>)];
lumiumAlloy.inputMachine = [<item:thermal:tin_ingot> * 3, <item:thermal:silver_ingot>, <item:minecraft:glowstone_dust> * 2];
lumiumAlloy.outputDust = <item:thermal:lumium_dust> * 4;
lumiumAlloy.outputIngot = <item:thermal:lumium_ingot> * 4;
lumiumAlloy.outputMolten = <fluid:kubejs:molten_lumium> * 432;
lumiumAlloy.build();

//enderium
var enderiumMaterial = new GlobalMaterialRecipe();
enderiumMaterial.name = "enderium_material";
enderiumMaterial.rod = <item:ftbic:enderium_rod>;
enderiumMaterial.wire = <item:ftbic:enderium_wire>;
enderiumMaterial.molten = <fluid:kubejs:molten_enderium>;
enderiumMaterial.ingot = <item:thermal:enderium_ingot>;
enderiumMaterial.nugget = <item:thermal:enderium_nugget>;
enderiumMaterial.metalDust = <item:thermal:enderium_dust>;
enderiumMaterial.gear = <item:thermal:enderium_gear>;
enderiumMaterial.plate = <item:thermal:enderium_plate>;
enderiumMaterial.block = <item:thermal:enderium_block>;
enderiumMaterial.build();

var enderiumAlloy = new AlloyMaterialClass();
enderiumAlloy.name = "enderium_alloy";
enderiumAlloy.inputCrafting = [<item:thermal:lead_dust>, <item:thermal:lead_dust>, <item:thermal:lead_dust>, <item:thermal:diamond_dust>, <item:thermal:ender_bucket>.transformReplace(<item:minecraft:bucket>)];
enderiumAlloy.inputMachine = [<item:thermal:lead_ingot> * 3, <item:minecraft:diamond>, <item:minecraft:ender_pearl> * 2];
enderiumAlloy.outputDust = <item:thermal:enderium_dust> * 2;
enderiumAlloy.outputIngot = <item:thermal:enderium_ingot> * 2;
enderiumAlloy.outputMolten = <fluid:kubejs:molten_enderium> * 216;
enderiumAlloy.build();

//steel
var steelMaterial = new GlobalMaterialRecipe();
steelMaterial.name = "steel_material";
steelMaterial.ingot = <item:alloyed:steel_ingot>;
steelMaterial.nugget = <item:alloyed:steel_nugget>;
steelMaterial.plate = <item:alloyed:steel_sheet>;
steelMaterial.block = <item:alloyed:steel_block>;
steelMaterial.metalDust = <item:thermal:steel_dust>;
steelMaterial.molten = <fluid:kubejs:molten_steel>;
steelMaterial.build();

var steelAlloy = new AlloyMaterialClass();
steelAlloy.name = "steel_alloy";
steelAlloy.hasCraftingRecipe = false;
steelAlloy.inputMachine = [<item:thermal:coal_coke>, <item:minecraft:iron_ingot> * 2];
steelAlloy.outputDust = <item:thermal:steel_dust>;
steelAlloy.outputIngot = <item:alloyed:steel_ingot>;
steelAlloy.outputMolten = <fluid:kubejs:molten_steel> * 108;
steelAlloy.build();

//froststeel
var froststeelMaterial = new GlobalMaterialRecipe();
froststeelMaterial.name = "froststeel_material";
froststeelMaterial.molten = <fluid:kubejs:molten_froststeel>;
froststeelMaterial.block = <item:undergarden:froststeel_block>;
froststeelMaterial.oreRawBlock = <item:undergarden:raw_froststeel_block>;
froststeelMaterial.oreBlock = <tag:items:forge:ores/froststeel>;
froststeelMaterial.nugget = <item:undergarden:froststeel_nugget>;
froststeelMaterial.ingot = <item:undergarden:froststeel_ingot>;
froststeelMaterial.oreCrushed = <item:contenttweaker:crushed_froststeel>;
froststeelMaterial.oreGravel = <item:contenttweaker:froststeel_gravel>;
froststeelMaterial.oreRaw = <item:undergarden:raw_froststeel>;
froststeelMaterial.oreFragment = <item:contenttweaker:froststeel_fragment>;
froststeelMaterial.metalDust = <item:contenttweaker:froststeel_dust>;
froststeelMaterial.build();

//cloggrum
var cloggrumMaterial = new GlobalMaterialRecipe();
cloggrumMaterial.name = "cloggrum_material";
cloggrumMaterial.metalDust = <item:contenttweaker:cloggrum_dust>;
cloggrumMaterial.block = <item:undergarden:cloggrum_block>;
cloggrumMaterial.oreRawBlock = <item:undergarden:raw_cloggrum_block>;
cloggrumMaterial.oreBlock = <tag:items:forge:ores/cloggrum>;
cloggrumMaterial.nugget = <item:undergarden:cloggrum_nugget>;
cloggrumMaterial.ingot = <item:undergarden:cloggrum_ingot>;
cloggrumMaterial.oreRaw = <item:undergarden:raw_cloggrum>;
cloggrumMaterial.oreCrushed = <item:contenttweaker:crushed_cloggrum>;
cloggrumMaterial.molten = <fluid:kubejs:molten_cloggrum>;
cloggrumMaterial.oreGravel = <item:contenttweaker:cloggrum_gravel>;
cloggrumMaterial.oreFragment = <item:contenttweaker:cloggrum_fragment>;
cloggrumMaterial.build();

//forgotten metal
var forgottenMaterial = new GlobalMaterialRecipe();
forgottenMaterial.name = "forgotten_material";
forgottenMaterial.ingot = <item:undergarden:forgotten_ingot>;
forgottenMaterial.nugget = <item:undergarden:forgotten_nugget>;
forgottenMaterial.block = <item:undergarden:forgotten_block>;
forgottenMaterial.molten = <fluid:kubejs:molten_forgotten_metal>;
forgottenMaterial.metalDust = <item:contenttweaker:forgotten_dust>;
forgottenMaterial.build();

//demonite
var hellforgedMaterial = new GlobalMaterialRecipe();
hellforgedMaterial.name = "hellforged_material";
hellforgedMaterial.oreCrushed = <item:contenttweaker:crushed_hellforged>;
hellforgedMaterial.metalDust = <item:contenttweaker:hellforged_dust>;
hellforgedMaterial.ingot = <item:bloodmagic:ingot_hellforged>;
hellforgedMaterial.oreRaw = <item:bloodmagic:rawdemonite>;
hellforgedMaterial.oreFragment = <item:bloodmagic:demonitefragment>;
hellforgedMaterial.oreRawBlock = <item:bloodmagic:rawdemoniteblock>;
hellforgedMaterial.oreBlock = <tag:items:forge:ores/hellforged>;
hellforgedMaterial.oreGravel = <item:bloodmagic:demonitegravel>;
hellforgedMaterial.molten = <fluid:kubejs:molten_hellforged>;
hellforgedMaterial.block = <item:bloodmagic:dungeon_metal>;
hellforgedMaterial.build();

//netherite
var netheriteMaterial = new GlobalMaterialRecipe();
netheriteMaterial.name = "netherite_material";
netheriteMaterial.block = <item:minecraft:netherite_block>;
netheriteMaterial.ingot = <item:minecraft:netherite_ingot>;
netheriteMaterial.molten = <fluid:kubejs:molten_netherite>;
netheriteMaterial.metalDust = <item:contenttweaker:netherite_blend>;
netheriteMaterial.build();

var netheriteAlloy = new AlloyMaterialClass();
netheriteAlloy.name = "netherite_alloy";
netheriteAlloy.hasCraftingRecipe = false;
netheriteAlloy.inputMachine = [<item:minecraft:gold_ingot> * 4, <item:minecraft:netherite_scrap> * 4];
netheriteAlloy.outputDust = <item:contenttweaker:netherite_blend> * 2;
netheriteAlloy.outputIngot = <item:minecraft:netherite_ingot> * 2;
netheriteAlloy.outputMolten = <fluid:kubejs:molten_netherite> * 216;
netheriteAlloy.build();

//ancient debris
var debrisMaterial = new GlobalMaterialRecipe();
debrisMaterial.name = "ancient_debris_material";
debrisMaterial.oreBlock = <item:minecraft:ancient_debris>;
debrisMaterial.oreSpecial = <item:minecraft:netherite_scrap>;
debrisMaterial.specialDrops = new outputSpecial(1, 1.0, 1, 0.1, 1.1);
debrisMaterial.build();

//pendorite
var pendoriteMaterial = new GlobalMaterialRecipe();
pendoriteMaterial.name = "pendorite_material";
pendoriteMaterial.metalDust = <item:contenttweaker:pendorite_blend>;
pendoriteMaterial.molten = <fluid:kubejs:molten_pendorite>;
pendoriteMaterial.block = <item:byg:pendorite_block>;
pendoriteMaterial.ingot = <item:byg:pendorite_ingot>;
pendoriteMaterial.build();

var pendoriteAlloy = new AlloyMaterialClass();
pendoriteAlloy.name = "pendorite_alloy";
pendoriteAlloy.hasCraftingRecipe = false;
pendoriteAlloy.inputMachine = [<item:byg:pendorite_scraps> * 4, <item:byg:emeraldite_shards> * 2, <item:minecraft:diamond> * 2];
pendoriteAlloy.outputDust = <item:contenttweaker:pendorite_blend>;
pendoriteAlloy.outputIngot = <item:byg:pendorite_ingot>;
pendoriteAlloy.outputMolten = <fluid:kubejs:molten_pendorite>;
pendoriteAlloy.build();

//pendorite scraps
var scrapMaterial = new GlobalMaterialRecipe();
scrapMaterial.name = "pendorite_scrap_material";
scrapMaterial.oreBlock = <tag:items:forge:ores/pendorite>;
scrapMaterial.oreSpecial = <item:byg:pendorite_scraps>;
scrapMaterial.specialDrops = new outputSpecial(1, 1.0, 1, 0.1, 1.1);
scrapMaterial.build();

//iridium
var iridiumMaterial = new GlobalMaterialRecipe();
iridiumMaterial.name = "iridium_material";
iridiumMaterial.oreBlock = <tag:items:forge:ores/iridium>;
iridiumMaterial.ingot = <item:ftbic:iridium_ingot>;
iridiumMaterial.oreRaw = <item:ftbic:iridium_chunk>;
iridiumMaterial.metalDust = <item:ftbic:iridium_dust>;
iridiumMaterial.nugget = <item:ftbic:iridium_nugget>;
iridiumMaterial.plate = <item:ftbic:iridium_plate>;
iridiumMaterial.block = <item:ftbic:iridium_block>;
iridiumMaterial.molten = <fluid:kubejs:molten_iridium>;
iridiumMaterial.oreFragment = <item:contenttweaker:iridium_fragment>;
iridiumMaterial.oreRawBlock = <item:contenttweaker:raw_iridium_block>;
iridiumMaterial.oreCrushed = <item:contenttweaker:crushed_iridium>;
iridiumMaterial.oreGravel = <item:contenttweaker:iridium_gravel>;
iridiumMaterial.build();

//manasteel
var manasteelMaterial = new GlobalMaterialRecipe();
manasteelMaterial.name = "manasteel_material";
manasteelMaterial.block = <item:botania:manasteel_block>;
manasteelMaterial.ingot = <item:botania:manasteel_ingot>;
manasteelMaterial.nugget = <item:botania:manasteel_nugget>;
manasteelMaterial.molten = <fluid:kubejs:molten_manasteel>;
manasteelMaterial.metalDust = <item:contenttweaker:manasteel_blend>;
manasteelMaterial.build();

//terrasteel
var terrasteelMaterial = new GlobalMaterialRecipe();
terrasteelMaterial.name = "terrasteel_material";
terrasteelMaterial.block = <item:botania:terrasteel_block>;
terrasteelMaterial.ingot = <item:botania:terrasteel_ingot>;
terrasteelMaterial.nugget = <item:botania:terrasteel_nugget>;
terrasteelMaterial.molten = <fluid:kubejs:molten_terrasteel>;
terrasteelMaterial.metalDust = <item:contenttweaker:terrasteel_blend>;
terrasteelMaterial.build();

//elementium
var elementiumMaterial = new GlobalMaterialRecipe();
elementiumMaterial.name = "elementium_material";
elementiumMaterial.block = <item:botania:elementium_block>;
elementiumMaterial.ingot = <item:botania:elementium_ingot>;
elementiumMaterial.nugget = <item:botania:elementium_nugget>;
elementiumMaterial.molten = <fluid:kubejs:molten_elementium>;
elementiumMaterial.metalDust = <item:contenttweaker:elementium_blend>;
elementiumMaterial.build();

//gaia spirit metal
var gaiaMaterial = new GlobalMaterialRecipe();
gaiaMaterial.name = "gaia_material";
gaiaMaterial.ingot = <item:botania:gaia_ingot>;
gaiaMaterial.metalDust = <item:contenttweaker:gaia_spirit_blend>;
gaiaMaterial.build();

//brass
var brassMaterial = new GlobalMaterialRecipe();
brassMaterial.name = "brass_material";
brassMaterial.ingot = <item:create:brass_ingot>;
brassMaterial.nugget = <item:create:brass_nugget>;
brassMaterial.plate = <item:create:brass_sheet>;
brassMaterial.molten = <fluid:kubejs:molten_brass>;
brassMaterial.block = <item:create:brass_block>;
brassMaterial.metalDust = <item:contenttweaker:brass_blend>;
brassMaterial.build();

var brassAlloy = new AlloyMaterialClass();
brassAlloy.name = "brass_alloy";
brassAlloy.inputCrafting = [<item:thermal:copper_dust>, <item:contenttweaker:zinc_dust>];
brassAlloy.inputMachine = [<item:minecraft:copper_ingot>, <item:create:zinc_ingot>];
brassAlloy.outputDust = <item:contenttweaker:brass_blend> * 2;
brassAlloy.outputIngot = <item:create:brass_ingot> * 2;
brassAlloy.outputMolten = <fluid:kubejs:molten_brass> * 216;
brassAlloy.build();

//hallowed gold
var hallowedMaterial = new GlobalMaterialRecipe();
hallowedMaterial.name = "hallowed_gold_material";
hallowedMaterial.ingot = <item:malum:hallowed_gold_ingot>;
hallowedMaterial.nugget = <item:malum:hallowed_gold_nugget>;
hallowedMaterial.block = <item:malum:block_of_hallowed_gold>;
hallowedMaterial.molten = <fluid:kubejs:molten_hallowed_gold>;
hallowedMaterial.metalDust = <item:contenttweaker:hallowed_gold_blend>;
hallowedMaterial.build();

//soulstained steel
var soulstainedMaterial = new GlobalMaterialRecipe();
soulstainedMaterial.name = "soulstained_steel_material";
soulstainedMaterial.molten = <fluid:kubejs:molten_soulstained>;
soulstainedMaterial.ingot = <item:malum:soul_stained_steel_ingot>;
soulstainedMaterial.nugget = <item:malum:soul_stained_steel_nugget>;
soulstainedMaterial.block = <item:malum:block_of_soul_stained_steel>;
soulstainedMaterial.metalDust = <item:contenttweaker:soulstained_steel_blend>;
soulstainedMaterial.build();

//andesite alloy
var andesiteAlloyZinc = new AlloyMaterialClass();
andesiteAlloyZinc.name = "andesitezinc_alloy";
andesiteAlloyZinc.hasCraftingRecipe = false;
andesiteAlloyZinc.inputMachine = [<item:create:zinc_nugget>, <item:minecraft:andesite>];
andesiteAlloyZinc.outputIngot = <item:create:andesite_alloy>;
andesiteAlloyZinc.build();
var andesiteAlloyIron = new AlloyMaterialClass();
andesiteAlloyIron.name = "andesiteiron_alloy";
andesiteAlloyIron.hasCraftingRecipe = false;
andesiteAlloyIron.inputMachine = [<item:minecraft:iron_nugget>, <item:minecraft:andesite>];
andesiteAlloyIron.outputIngot = <item:create:andesite_alloy>;
andesiteAlloyIron.build();

//decorative alloys
var sunmetalAlloy = new AlloyMaterialClass();
sunmetalAlloy.name = "sunmetal_alloy";
sunmetalAlloy.hasCraftingRecipe = false;
sunmetalAlloy.inputMachine = [<item:minecraft:soul_sand> * 2, <item:minecraft:gold_nugget> * 2];
sunmetalAlloy.outputIngot = <item:architects_palette:sunmetal_brick> * 4;
sunmetalAlloy.build();

var netherBrassAlloy = new AlloyMaterialClass();
netherBrassAlloy.name = "netherbrass_alloy";
netherBrassAlloy.hasCraftingRecipe = false;
netherBrassAlloy.inputMachine = [<item:minecraft:soul_sand> * 2, <item:minecraft:iron_nugget>, <item:minecraft:copper_ingot>];
netherBrassAlloy.outputIngot = <item:architects_palette:nether_brass_ingot> * 4;
netherBrassAlloy.build();

//diamond
var diamondMaterial = new GlobalMaterialRecipe();
diamondMaterial.name = "diamond_material";
diamondMaterial.oreBlock = <tag:items:forge:ores/diamond>;
diamondMaterial.oreSpecial = <item:minecraft:diamond>;
diamondMaterial.specialDrops = new outputSpecial(1, 1.0, 1, 0.25, 1.25);
diamondMaterial.build();

//nether quartz
var netherQuartzMaterial = new GlobalMaterialRecipe();
netherQuartzMaterial.name = "netherquartz_material";
netherQuartzMaterial.oreBlock = <tag:items:forge:ores/quartz>;
netherQuartzMaterial.oreSpecial = <item:minecraft:quartz>;
netherQuartzMaterial.specialDrops = new outputSpecial(2, 1.0, 2, 0.25, 2.25);
netherQuartzMaterial.build();

//blazing quartz
var blazingQuartzMaterial = new GlobalMaterialRecipe();
blazingQuartzMaterial.name = "blazingquartz_material";
blazingQuartzMaterial.oreBlock = <item:malum:blazing_quartz_ore>;
blazingQuartzMaterial.oreSpecial = <item:malum:blazing_quartz>;
blazingQuartzMaterial.specialDrops = new outputSpecial(2, 1.0, 1, 0.4, 2.25);
blazingQuartzMaterial.build();

//soulstone
var soulstoneMaterial = new GlobalMaterialRecipe();
soulstoneMaterial.name = "soulstone_material";
soulstoneMaterial.oreBlock = <tag:items:forge:ores/soulstone>;
soulstoneMaterial.oreRaw = <item:malum:raw_soulstone>;
soulstoneMaterial.oreCrushed = <item:malum:crushed_soulstone>;
soulstoneMaterial.oreRawBlock = <item:malum:block_of_raw_soulstone>;
soulstoneMaterial.ingot = <item:malum:processed_soulstone>;
soulstoneMaterial.block = <item:malum:block_of_soulstone>;
soulstoneMaterial.build();

//brilliance chunks
var brillianceMaterial = new GlobalMaterialRecipe();
brillianceMaterial.name = "brilliance_material";
brillianceMaterial.oreBlock = <tag:items:forge:ores/brilliance>;
brillianceMaterial.oreRaw = <item:malum:cluster_of_brilliance>;
brillianceMaterial.oreCrushed = <item:malum:crushed_brilliance>;
brillianceMaterial.ingot = <item:malum:chunk_of_brilliance>;
brillianceMaterial.block = <item:malum:block_of_brilliance>;
brillianceMaterial.build();

//advanced alloy
var advancedAlloy = new AlloyMaterialClass();
advancedAlloy.name = "advanced_alloy";
advancedAlloy.inputCrafting = [<item:thermal:lead_dust>, <item:thermal:lead_dust>, <item:thermal:lead_dust>, <item:thermal:bronze_dust>, <item:thermal:bronze_dust>, <item:thermal:bronze_dust>, <item:thermal:tin_dust>, <item:thermal:tin_dust>, <item:thermal:tin_dust>];
advancedAlloy.inputMachine = [<item:thermal:lead_ingot> * 3, <item:alloyed:bronze_ingot> * 3, <item:thermal:tin_ingot> * 3];
advancedAlloy.outputDust = <item:ftbic:mixed_metal_blend>;
advancedAlloy.outputIngot = <item:ftbic:advanced_alloy>;
advancedAlloy.build();

//redstone
var redstoneMaterial = new GlobalMaterialRecipe();
redstoneMaterial.name = "redstone_material";
redstoneMaterial.oreBlock = <tag:items:forge:ores/redstone>;
redstoneMaterial.oreSpecial = <item:minecraft:redstone>;
redstoneMaterial.specialDrops = new outputSpecial(6, 1.0, 4, 0.5, 8.0);
redstoneMaterial.build();

//lapis lazuli
var lapisMaterial = new GlobalMaterialRecipe();
lapisMaterial.name = "lapis_material";
lapisMaterial.oreBlock = <tag:items:forge:ores/lapis>;
lapisMaterial.oreSpecial = <item:minecraft:lapis_lazuli>;
lapisMaterial.specialDrops = new outputSpecial(14, 1.0, 14, 0.75, 24.0);
lapisMaterial.build();

//emerald
var emeraldMaterial = new GlobalMaterialRecipe();
emeraldMaterial.name = "emerald_material";
emeraldMaterial.oreBlock = <tag:items:forge:ores/emerald>;
emeraldMaterial.oreSpecial = <item:minecraft:emerald>;
emeraldMaterial.specialDrops = new outputSpecial(1, 1.0, 1, 0.4, 1.25);
emeraldMaterial.build();

//ametrine
var ametrineMaterial = new GlobalMaterialRecipe();
ametrineMaterial.name = "ametrine_material";
ametrineMaterial.oreBlock = <tag:items:forge:ores/ametrine>;
ametrineMaterial.oreSpecial = <item:byg:ametrine_gems>;
ametrineMaterial.specialDrops = new outputSpecial(1, 1.0, 1, 0.4, 1.25);
ametrineMaterial.build();

//niter
var niterMaterial = new GlobalMaterialRecipe();
niterMaterial.name = "niter_material";
niterMaterial.oreBlock = <tag:items:forge:ores/niter>;
niterMaterial.oreSpecial = <item:thermal:niter>;
niterMaterial.specialDrops = new outputSpecial(6, 1.0, 2, 0.5, 6.0);
niterMaterial.build();

//sulfur
var sulfurMaterial = new GlobalMaterialRecipe();
sulfurMaterial.name = "sulfur_material";
sulfurMaterial.oreBlock = <tag:items:forge:ores/sulfur>;
sulfurMaterial.oreSpecial = <item:thermal:sulfur>;
sulfurMaterial.specialDrops = new outputSpecial(6, 1.0, 4, 0.5, 8.0);
sulfurMaterial.build();

//nether gold
var nethergoldMaterial = new GlobalMaterialRecipe();
nethergoldMaterial.name = "nethergold_material";
nethergoldMaterial.oreBlock = <tag:items:forge:ores/nethergold>;
nethergoldMaterial.oreSpecial = <item:bloodmagic:goldfragment>;
nethergoldMaterial.specialDrops = new outputSpecial(6, 1.0, 2, 0.75, 6.5);
nethergoldMaterial.build();

//cinnabar
var cinnabarMaterial = new GlobalMaterialRecipe();
cinnabarMaterial.name = "cinnabar_material";
cinnabarMaterial.oreBlock = <tag:items:forge:ores/cinnabar>;
cinnabarMaterial.oreSpecial = <item:thermal:cinnabar>;
cinnabarMaterial.specialDrops = new outputSpecial(1, 1.0, 1, 0.5, 1.25);
cinnabarMaterial.build();

//regalium
var regaliumMaterial = new GlobalMaterialRecipe();
regaliumMaterial.name = "regalium_material";
regaliumMaterial.oreBlock = <tag:items:forge:ores/regalium>;
regaliumMaterial.oreSpecial = <item:undergarden:regalium_crystal>;
regaliumMaterial.specialDrops = new outputSpecial(1, 1.0, 1, 0.5, 1.25);
regaliumMaterial.build();

//utherium
var utheriumMaterial = new GlobalMaterialRecipe();
utheriumMaterial.name = "utherium_material";
utheriumMaterial.oreBlock = <tag:items:forge:ores/utherium>;
utheriumMaterial.oreSpecial = <item:undergarden:utherium_crystal>;
utheriumMaterial.specialDrops = new outputSpecial(1, 1.0, 1, 0.35, 1.25);
utheriumMaterial.build();

//coal
var coalMaterial = new GlobalMaterialRecipe();
coalMaterial.name = "coal_material";
coalMaterial.oreBlock = <tag:items:forge:ores/coal>;
coalMaterial.oreSpecial = <item:minecraft:coal>;
coalMaterial.specialDrops = new outputSpecial(2, 1.0, 2, 0.25, 2.5);
coalMaterial.build();

//emeraldite
var emeralditeMaterial = new GlobalMaterialRecipe();
emeralditeMaterial.name = "emeraldite_material";
emeralditeMaterial.oreBlock = <tag:items:forge:ores/emeraldite>;
emeralditeMaterial.oreSpecial = <item:byg:emeraldite_shards>;
emeralditeMaterial.specialDrops = new outputSpecial(2, 1.0, 1, 0.5, 2.25);
emeralditeMaterial.build();

//Anthracite
var anthraciteMaterial = new GlobalMaterialRecipe();
anthraciteMaterial.name = "anthracite_material";
anthraciteMaterial.oreBlock = <tag:items:forge:ores/anthracite>;
anthraciteMaterial.oreSpecial = <item:byg:anthracite>;
anthraciteMaterial.specialDrops = new outputSpecial(2, 1.0, 2, 0.25, 2.5);
anthraciteMaterial.build();

//Lignite
var ligniteMaterial = new GlobalMaterialRecipe();
ligniteMaterial.name = "lignite_material";
ligniteMaterial.oreBlock = <tag:items:forge:ores/lignite>;
ligniteMaterial.oreSpecial = <item:byg:lignite>;
ligniteMaterial.specialDrops = new outputSpecial(2, 1.0, 2, 0.25, 2.5);
ligniteMaterial.build();

//ruby
var rubyMaterial = new GlobalMaterialRecipe();
rubyMaterial.name = "ruby_material";
rubyMaterial.oreBlock = <tag:items:forge:ores/ruby>;
rubyMaterial.oreSpecial = <item:thermal:ruby>;
rubyMaterial.specialDrops = new outputSpecial(1, 1.0, 1, 0.4, 1.25);
rubyMaterial.build();

//sapphire
var sapphireMaterial = new GlobalMaterialRecipe();
sapphireMaterial.name = "sapphire_material";
sapphireMaterial.oreBlock = <tag:items:forge:ores/sapphire>;
sapphireMaterial.oreSpecial = <item:thermal:sapphire>;
sapphireMaterial.specialDrops = new outputSpecial(1, 1.0, 1, 0.4, 1.25);
sapphireMaterial.build();