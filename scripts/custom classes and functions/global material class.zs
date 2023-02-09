#priority 99

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;
import mods.jei.component.JeiIngredient;
import mods.jei.JEI;

//Defining global material recipes class

//defining special variable class for the recipes class

public class outputSpecial {
	public var amount1 as int : get;
	public var chance1 as float : get;
	public var amount2 as int : get;
	public var chance2 as float : get;
	public var thermalChance as float : get;

	public this(amount1 as int = 1, chance1 as float = 1.0, amount2 as int = 0, chance2 as float = 0.0, thermalChance as float = 0.0) {
		this.amount1 = amount1;
		this.chance1 = chance1;
		this.amount2 = amount2;
		this.chance2 = chance2;
		this.thermalChance = thermalChance;
	}
}

public class GlobalMaterialRecipe {
	public var name as string : get, set;
	public var oreBlock as IIngredient : get, set = <item:minecraft:air>;
	public var oreRaw as IIngredient : get, set = <item:minecraft:air>;
	public var oreRawBlock as IIngredient : get, set = <item:minecraft:air>;
	public var oreFragment as IIngredient : get, set = <item:minecraft:air>;
	public var oreCrushed as IIngredient : get, set = <item:minecraft:air>;
	public var oreGravel as IIngredient : get, set = <item:minecraft:air>;
	public var oreSpecial as IIngredient : get, set = <item:minecraft:air>;
	public var specialDrops as outputSpecial : get, set;
	public var isSpecialMetal as bool : get, set = false;
	public var ingot as IIngredient : get, set = <item:minecraft:air>;
	public var metalDust as IIngredient : get, set = <item:minecraft:air>;
	public var nugget as IIngredient : get, set = <item:minecraft:air>;
	public var block as IIngredient : get, set  = <item:minecraft:air>;
	public var node as IIngredient : get, set  = <item:minecraft:air>;
	public var plate as IIngredient : get, set  = <item:minecraft:air>;
	public var wire as IIngredient : get, set  = <item:minecraft:air>;
	public var rod as IIngredient : get, set  = <item:minecraft:air>;
	public var bars as IIngredient : get, set  = <item:minecraft:air>;
	public var gear as IIngredient : get, set  = <item:minecraft:air>;
	public var molten as IFluidStack : get, set = <fluid:minecraft:water>;
	
	public build() as void {
		println("building material recipes for: " + name);
		
		//Basic grinding
		
		if (!oreRaw.isEmpty() && !oreBlock.isEmpty()) {
				<recipetype:ftbic:macerating>.remove(oreRaw);
				<recipetype:create:crushing>.remove(oreRaw);
				<recipetype:create:milling>.remove(oreRaw);
				<recipetype:ars_nouveau:crush>.remove(oreRaw);
				<recipetype:thermal:pulverizer>.remove(oreRaw);
				<recipetype:bloodmagic:arc>.remove(oreRaw);
				<recipetype:plaingrinder:grinder>.remove(oreRaw);
		
				crushingIndustrial(name + "_" + oreRaw.items[0].registryName.path, oreBlock, oreRaw, 1.0, 2, oreRaw, 0.25, 1);
				crushingCreateWheel(name + "_" + oreRaw.items[0].registryName.path, oreBlock, oreRaw, 1.0, 2, oreRaw, 0.25, 1);
				crushingArs(name + "_" + oreRaw.items[0].registryName.path, oreBlock, oreRaw, 1.0, 2, oreRaw, 0.5, 1);
				crushingThermal(name + "_" + oreRaw.items[0].registryName.path, oreBlock, oreRaw, 2.0, 1);
				crushingBloodExplosive(name + "_" + oreRaw.items[0].registryName.path, oreBlock, oreRaw, 1.0, 2, oreRaw, 0.5, 1);
				crushingBloodResonator(name + "_" + oreRaw.items[0].registryName.path, oreBlock, oreRaw, 1.0, 2, oreRaw, 0.25, 1);
				crushingCreateMill(name + "_" + oreRaw.items[0].registryName.path, oreBlock, oreRaw, 1.0, 1, oreRaw, 0.5, 1);
				crushingPlain(name + "_" + oreRaw.items[0].registryName.path, oreBlock, oreRaw, 1.0, 1, oreRaw, 0.5, 1);
		}
		
		if (!oreCrushed.isEmpty() && !oreRaw.isEmpty()) {
				<recipetype:ftbic:macerating>.remove(oreCrushed);
				<recipetype:create:crushing>.remove(oreCrushed);
				<recipetype:create:milling>.remove(oreCrushed);
				<recipetype:ars_nouveau:crush>.remove(oreCrushed);
				<recipetype:thermal:pulverizer>.remove(oreCrushed);
				<recipetype:bloodmagic:arc>.remove(oreCrushed);
				<recipetype:plaingrinder:grinder>.remove(oreCrushed);
		
				crushingIndustrial(name + "_" + oreCrushed.items[0].registryName.path, oreRaw, oreCrushed, 1.0, 1, oreCrushed, 0.25, 1);
				crushingCreateWheel(name + "_" + oreCrushed.items[0].registryName.path, oreRaw, oreCrushed, 1.0, 1, oreCrushed, 0.5, 1);
				crushingThermal(name + "_" + oreCrushed.items[0].registryName.path, oreRaw, oreCrushed, 1.25, 1);
				crushingBloodExplosive(name + "_" + oreCrushed.items[0].registryName.path, oreRaw, oreCrushed, 1.0, 1, oreCrushed, 0.25, 1);
				crushingBloodResonator(name + "_" + oreCrushed.items[0].registryName.path, oreRaw, oreCrushed, 1.0, 1, oreCrushed, 0.5, 1);
				crushingCreateMill(name + "_" + oreCrushed.items[0].registryName.path, oreRaw, oreCrushed, 1.0, 1, oreCrushed, 0.1, 1);
				crushingPlain(name + "_" + oreCrushed.items[0].registryName.path, oreRaw, oreCrushed, 1.0, 1, oreCrushed, 0.1, 1);
		}
		
		if (!oreGravel.isEmpty() && !oreCrushed.isEmpty()) {
				<recipetype:ftbic:macerating>.remove(oreGravel);
				<recipetype:create:crushing>.remove(oreGravel);
				<recipetype:create:milling>.remove(oreGravel);
				<recipetype:ars_nouveau:crush>.remove(oreGravel);
				<recipetype:thermal:pulverizer>.remove(oreGravel);
				<recipetype:bloodmagic:arc>.remove(oreGravel);
				<recipetype:plaingrinder:grinder>.remove(oreGravel);
		
				crushingIndustrial(name + "_" + oreGravel.items[0].registryName.path, oreCrushed, oreGravel, 1.0, 1, oreGravel, 0.5, 1);
				crushingCreateWheel(name + "_" + oreGravel.items[0].registryName.path, oreCrushed, oreGravel, 1.0, 1, oreGravel, 0.25, 1);
				crushingThermal(name + "_" + oreGravel.items[0].registryName.path, oreCrushed, oreGravel, 1.5, 1);
				crushingBloodExplosive(name + "_" + oreGravel.items[0].registryName.path, oreCrushed, oreGravel, 1.0, 1, oreGravel, 0.25, 1);
				crushingBloodResonator(name + "_" + oreGravel.items[0].registryName.path, oreCrushed, oreGravel, 1.0, 1, oreGravel, 0.25, 1);
				crushingCreateMill(name + "_" + oreGravel.items[0].registryName.path, oreCrushed, oreGravel, 1.0, 1, oreGravel, 0.1, 1);
				crushingPlain(name + "_" + oreGravel.items[0].registryName.path, oreCrushed, oreGravel, 1.0, 1, oreGravel, 0.1, 1);
		}
		
		if (!oreSpecial.isEmpty() && !oreBlock.isEmpty()) {
				<recipetype:ftbic:macerating>.remove(oreSpecial);
				<recipetype:create:crushing>.remove(oreSpecial);
				<recipetype:create:milling>.remove(oreSpecial);
				<recipetype:ars_nouveau:crush>.remove(oreSpecial);
				<recipetype:thermal:pulverizer>.remove(oreSpecial);
				<recipetype:bloodmagic:arc>.remove(oreSpecial);
				<recipetype:plaingrinder:grinder>.remove(oreSpecial);
		
				crushingIndustrial(name + "_orespecial_" + oreSpecial.items[0].registryName.path, oreBlock, oreSpecial, specialDrops.chance1, specialDrops.amount1, oreSpecial, specialDrops.chance2, specialDrops.amount2);
				crushingCreateWheel(name + "_orespecial_" + oreSpecial.items[0].registryName.path, oreBlock, oreSpecial, specialDrops.chance1, specialDrops.amount1, oreSpecial, specialDrops.chance2, specialDrops.amount2);
				crushingArs(name + "_orespecial_" + oreSpecial.items[0].registryName.path, oreBlock, oreSpecial, specialDrops.chance1, specialDrops.amount1, oreSpecial, specialDrops.chance2, specialDrops.amount2);
				crushingThermal(name + "_orespecial_" + oreSpecial.items[0].registryName.path, oreBlock, oreSpecial, specialDrops.thermalChance, specialDrops.amount1);
				crushingBloodExplosive(name + "_orespecial_" + oreSpecial.items[0].registryName.path, oreBlock, oreSpecial, specialDrops.chance1, specialDrops.amount1, oreSpecial, specialDrops.chance2, specialDrops.amount2);
				crushingBloodResonator(name + "_orespecial_" + oreSpecial.items[0].registryName.path, oreBlock, oreSpecial, specialDrops.chance1, specialDrops.amount1, oreSpecial, specialDrops.chance2, specialDrops.amount2);
				crushingCreateMill(name + "_orespecial_" + oreSpecial.items[0].registryName.path, oreBlock, oreSpecial, specialDrops.chance1, specialDrops.amount1, oreSpecial, specialDrops.chance2, specialDrops.amount2);
				crushingPlain(name + "_orespecial_" + oreSpecial.items[0].registryName.path, oreBlock, oreSpecial, specialDrops.chance1, specialDrops.amount1, oreSpecial, specialDrops.chance2, specialDrops.amount2);
				
				if (!oreCrushed.isEmpty()) {
					<recipetype:ftbic:macerating>.remove(oreCrushed);
					<recipetype:create:crushing>.remove(oreCrushed);
					<recipetype:create:milling>.remove(oreCrushed);
					<recipetype:ars_nouveau:crush>.remove(oreCrushed);
					<recipetype:thermal:pulverizer>.remove(oreCrushed);
					<recipetype:bloodmagic:arc>.remove(oreCrushed);
					<recipetype:plaingrinder:grinder>.remove(oreCrushed);
			
					crushingIndustrial(name + "_orespecial_crushed_" + oreSpecial.items[0].registryName.path, oreSpecial, oreCrushed, 1.0, 1, oreCrushed, 0.25, 1);
					crushingCreateWheel(name + "_orespecial_crushed_" + oreSpecial.items[0].registryName.path, oreSpecial, oreCrushed, 1.0, 1, oreCrushed, 0.5, 1);
					crushingThermal(name + "_orespecial_crushed_" + oreSpecial.items[0].registryName.path, oreSpecial, oreCrushed, 1.25, 1);
					crushingBloodExplosive(name + "_orespecial_crushed_" + oreSpecial.items[0].registryName.path, oreSpecial, oreCrushed, 1.0, 1, oreCrushed, 0.25, 1);
					crushingBloodResonator(name + "_orespecial_crushed_" + oreSpecial.items[0].registryName.path, oreSpecial, oreCrushed, 1.0, 1, oreCrushed, 0.5, 1);
					crushingCreateMill(name + "_orespecial_crushed_" + oreSpecial.items[0].registryName.path, oreSpecial, oreCrushed, 1.0, 1, oreCrushed, 0.1, 1);
					crushingPlain(name + "_orespecial_crushed_" + oreSpecial.items[0].registryName.path, oreSpecial, oreCrushed, 1.0, 1, oreCrushed, 0.1, 1);
			}
		}
		
		if (!metalDust.isEmpty() && !ingot.isEmpty()) {
				crushingAll(name + "_ingot_to_dust", ingot, metalDust, 1.0, 1);
				crushingThermal(name + "_ingot_to_dust_thermal", ingot, metalDust, -1.0, 1);
		}
		
		//raw ore to fragments
		if (!oreRaw.isEmpty() && !oreFragment.isEmpty()) {
			craftingTable.addShapeless(name + "_smashing_" + oreRaw.items[0].registryName.path + "_with_ie_hammer", oreFragment as IItemStack * 10, [oreRaw, <tag:items:lr:hammers>.asIIngredient().anyDamage().transformDamage(1)]);
			
			craftingTable.addShapeless(name + "_smashing_" + oreRaw.items[0].registryName.path + "_with_tetra_hammer", oreFragment as IItemStack * 10, [oreRaw, <item:tetra:modular_double>.withTag({"double/handle": "double/basic_handle" as string, "double/head_left": "double/basic_hammer_left" as string, "double/head_right": "double/basic_hammer_right" as string}).anyDamage().transformDamage(1)]);
		}
		if (!oreSpecial.isEmpty() && !oreFragment.isEmpty() && isSpecialMetal == true) {
			craftingTable.addShapeless(name + "_special_smashing_" + oreSpecial.items[0].registryName.path + "_with_ie_hammer", oreFragment as IItemStack * 10, [oreSpecial, <tag:items:lr:hammers>.asIIngredient().anyDamage().transformDamage(1)]);
			
			craftingTable.addShapeless(name + "_special_smashing_" + oreSpecial.items[0].registryName.path + "_with_tetra_hammer", oreFragment as IItemStack * 10, [oreSpecial, <item:tetra:modular_double>.withTag({"double/handle": "double/basic_handle" as string, "double/head_left": "double/basic_hammer_left" as string, "double/head_right": "double/basic_hammer_right" as string}).anyDamage().transformDamage(1)]);
		}
		
		//crushed/gravel washing
		if (!oreFragment.isEmpty() && !oreCrushed.isEmpty()) {
			<recipetype:create:splashing>.addJsonRecipe(name + "_washing_" + oreCrushed.items[0].registryName.path, {
							  "ingredients": [oreCrushed],
				  "results": [
					{
					  "item": oreFragment.items[0].registryName,
					  "count": 7
					},
					{
					  "item": oreFragment.items[0].registryName,
					  "count": 2,
					  "chance": 0.5
					},
					{
					  "item": oreFragment.items[0].registryName,
					  "count": 2,
					  "chance": 0.25
					}
				  ]
				}); 
		}
		if (!oreFragment.isEmpty() && !oreGravel.isEmpty()) {
			<recipetype:create:splashing>.addJsonRecipe(name + "_washing_" + oreGravel.items[0].registryName.path, {
							  "ingredients": [oreGravel],
				  "results": [
					{
					  "item": oreFragment.items[0].registryName,
					  "count": 7
					},
					{
					  "item": oreFragment.items[0].registryName,
					  "count": 2,
					  "chance": 0.5
					},
					{
					  "item": oreFragment.items[0].registryName,
					  "count": 2,
					  "chance": 0.25
					}
				  ]
				}); 
		}
		
		//ore fragment to nugget
		if (!oreFragment.isEmpty() && !nugget.isEmpty()) {
			blastFurnace.addRecipe(name + "_fragment_to_nugget_blast_furnace", nugget, oreFragment, 0.1, 50);
			furnace.addRecipe(name + "_fragment_to_nugget_furnace", nugget, oreFragment, 0.1, 100);
			<recipetype:thermal:smelter>.addJsonRecipe(name + "_fragment_to_nugget_thermal_smelter", {
					"ingredient": oreFragment,
					"result": [
						{
						  "item": nugget.items[0].registryName,
						  "count": 1,
						  "locked": true
						}
					],
					"energy_mod": 0.1
				});
		}
		
		//raw material to ingot
			if (!ingot.isEmpty()) {
				furnace.remove(ingot);
				blastFurnace.remove(ingot);
				
				if (!oreBlock.isEmpty()) {
					blastFurnace.addRecipe(name + "_block_to_ingot_blast_furnace", ingot, oreBlock, 0.5, 100);
					furnace.addRecipe(name + "_block_to_ingot_furnace", ingot, oreBlock, 0.5, 200);
				}
				if (!oreRaw.isEmpty()) {
					blastFurnace.addRecipe(name + "_raw_to_ingot_blast_furnace", ingot, oreRaw, 0.5, 100);
					furnace.addRecipe(name + "_raw_to_ingot_furnace", ingot, oreRaw, 0.5, 200);
				}
				if (!oreSpecial.isEmpty() && isSpecialMetal == true) {
					blastFurnace.addRecipe(name + "_special_to_ingot_blast_furnace", oreSpecial, oreRaw, 0.5, 100);
					furnace.addRecipe(name + "_special_to_ingot_furnace", oreSpecial, oreRaw, 0.5, 200);
				}
				if (!oreCrushed.isEmpty()) {
					blastFurnace.addRecipe(name + "_crushed_to_ingot_blast_furnace", ingot, oreCrushed, 0.5, 100);
					furnace.addRecipe(name + "_crushed_to_ingot_furnace", ingot, oreCrushed, 0.5, 200);
				}
				if (!oreGravel.isEmpty()) {
					blastFurnace.addRecipe(name + "_gravel_to_ingot_blast_furnace", ingot, oreGravel, 0.5, 100);
					furnace.addRecipe(name + "_gravel_to_ingot_furnace", ingot, oreGravel, 0.5, 200);
				}
				if (!metalDust.isEmpty()) {
					blastFurnace.addRecipe(name + "_dust_to_ingot_blast_furnace", ingot, metalDust, 0.5, 100);
					furnace.addRecipe(name + "_dust_to_ingot_furnace", ingot, metalDust, 0.5, 200);
				}
				
				if (!oreRaw.isEmpty()) {
					<recipetype:thermal:smelter>.addJsonRecipe(name + "_raw_to_ingot_thermal_smelter", {
						"ingredient": oreRaw,
						"result": [
							{
							  "item": ingot.items[0].registryName,
							  "chance": 1.3
							},
							{
							  "item": "thermal:rich_slag",
							  "chance": 0.2
							}
						],
						"experience": 0.4
					});
				}
				if (!oreCrushed.isEmpty()) {
					<recipetype:thermal:smelter>.addJsonRecipe(name + "_crushed_to_ingot_thermal_smelter", {
						"ingredient": oreCrushed,
						"result": [
							{
							  "item": ingot.items[0].registryName,
							  "chance": 1.2
							},
							{
							  "item": "thermal:rich_slag",
							  "chance": 0.2
							}
						],
						"experience": 0.4
					});
				}
				if (!oreGravel.isEmpty()) {
					<recipetype:thermal:smelter>.addJsonRecipe(name + "_gravel_to_ingot_thermal_smelter", {
						"ingredient": oreGravel,
						"result": [
							{
							  "item": ingot.items[0].registryName,
							  "chance": 1.2
							},
							{
							  "item": "thermal:rich_slag",
							  "chance": 0.2
							}
						],
						"experience": 0.3
					});
				}
				if (!oreBlock.isEmpty()) {
					<recipetype:thermal:smelter>.addJsonRecipe(name + "_block_to_ingot_thermal_smelter", {
					"ingredient": oreBlock,
					"result": [
						{
						  "item": ingot.items[0].registryName,
						  "chance": 2.0
						},
						{
						  "item": "thermal:rich_slag",
						  "chance": 0.2
						}
					],
					"experience": 0.5
					});
				}
				if (!metalDust.isEmpty()) {
					<recipetype:thermal:smelter>.addJsonRecipe(name + "_dust_to_ingot_thermal_smelter", {
					"ingredient": metalDust,
					"result": [
						{
						  "item": ingot.items[0].registryName,
						  "count": 1
						}
					],
					"energy_mod": 0.5
					});
				}
			}
			
		//raw material to blocks
		if (!oreRawBlock.isEmpty() && !block.isEmpty()) {
			blastFurnace.addRecipe(name + "_raw_block_to_finished_block_blast_furnace", block, oreRawBlock, 9.0, 200);
			<recipetype:thermal:smelter>.addJsonRecipe(name + "_raw_block_to_finished_block_thermal_smelter", {
					"ingredient": oreRawBlock,
					"result": [
						{
						  "item": block.items[0].registryName,
						  "chance": 1.0
						}
					],
					"experience": 0.5
				});
		}
		
		//molten metal to processed metals
		if (molten != <fluid:minecraft:water>) {
		
			//superheated melting
			if (!oreBlock.isEmpty()) {
				<recipetype:create:mixing>.addJsonRecipe(name + "_melting_block_to_molten_superheated_oretag", {
				  "ingredients": [
					oreBlock
				  ],
				  "results": [
					{
					  "fluid": molten.registryName,
					  "amount": 324
					}
				  ],
				  "heatRequirement": "superheated"
				});
				<recipetype:thermal:crucible>.addJsonRecipe(name + "_melting_block_to_molten_crucible_oretag", {
				  "ingredient": oreBlock,
					  "result": [
						{
						  "fluid": molten.registryName,
						  "amount": 324
						}
					  ],
					"energy": 8000
				});
			}
			if (!oreCrushed.isEmpty()) {
				<recipetype:create:mixing>.addJsonRecipe(name + "_melting_crushed_to_molten_superheated", {
					  "ingredients": [
						oreCrushed
					  ],
					  "results": [
						{
						  "fluid": molten.registryName,
						  "amount": 192
						}
					  ],
					  "heatRequirement": "superheated"
				});
				<recipetype:thermal:crucible>.addJsonRecipe(name + "_melting_crushed_to_molten_crucible", {
					  "ingredient": oreCrushed,
					  "result": [
						{
						  "fluid": molten.registryName,
						  "amount": 192
						}
					  ],
					"energy": 8000
				});
			}
			if (!oreGravel.isEmpty()) {
				<recipetype:create:mixing>.addJsonRecipe(name + "_melting_gravel_to_molten_superheated", {
					  "ingredients": [
						oreGravel
					  ],
					  "results": [
						{
						  "fluid": molten.registryName,
						  "amount": 180
						}
					  ],
					  "heatRequirement": "superheated"
				});
				<recipetype:thermal:crucible>.addJsonRecipe(name + "_melting_gravel_to_molten_crucible", {
					  "ingredient": oreGravel,
					  "result": [
						{
						  "fluid": molten.registryName,
						  "amount": 180
						}
					  ],
					"energy": 8000
				});
			}
			if (!oreRaw.isEmpty()) {
				<recipetype:create:mixing>.addJsonRecipe(name + "_melting_raw_to_molten_superheated", {
					  "ingredients": [
						oreRaw
					  ],
					  "results": [
						{
						  "fluid": molten.registryName,
						  "amount": 216
						}
					  ],
					  "heatRequirement": "superheated"
				});
				<recipetype:thermal:crucible>.addJsonRecipe(name + "_melting_raw_to_molten_crucible", {
					  "ingredient": oreRaw,
					  "result": [
						{
						  "fluid": molten.registryName,
						  "amount": 216
						}
					  ],
					"energy": 8000
				});
			}
			if (!oreSpecial.isEmpty() && isSpecialMetal == true) {
				<recipetype:create:mixing>.addJsonRecipe(name + "_melting_special_to_molten_superheated", {
					  "ingredients": [
						oreSpecial
					  ],
					  "results": [
						{
						  "fluid": molten.registryName,
						  "amount": 216
						}
					  ],
					  "heatRequirement": "superheated"
				});
				<recipetype:thermal:crucible>.addJsonRecipe(name + "_melting_special_to_molten_crucible", {
					  "ingredient": oreSpecial,
					  "result": [
						{
						  "fluid": molten.registryName,
						  "amount": 216
						}
					  ],
					"energy": 8000
				});
			}
			if (!oreRawBlock.isEmpty()) {
				<recipetype:create:mixing>.addJsonRecipe(name + "_melting_raw_block_to_molten_superheated", {
					  "ingredients": [
						oreRawBlock
					  ],
					  "results": [
						{
						  "fluid": molten.registryName,
						  "amount": 1944
						}
					  ],
					  "heatRequirement": "superheated"
				});
				<recipetype:thermal:crucible>.addJsonRecipe(name + "_melting_raw_block_to_molten_crucible", {
					  "ingredient": oreRawBlock,
					  "result": [
						{
						  "fluid": molten.registryName,
						  "amount": 1944
						}
					  ],
					"energy": 8000
				});
			}
			if (!node.isEmpty()) {
				<recipetype:create:mixing>.addJsonRecipe(name + "_melting_node_to_molten_superheated", {
					  "ingredients": [
						node
					  ],
					  "results": [
						{
						  "fluid": molten.registryName,
						  "amount": 48
						}
					  ],
					"heatRequirement": "superheated"
				});
				<recipetype:thermal:crucible>.addJsonRecipe(name + "_melting_node_to_molten_crucible", {
					  "ingredient": node,
					  "result": [
						{
						  "fluid": molten.registryName,
						  "amount": 216
						}
					  ],
					"energy": 8000
				});
			}
			
			//heated melting
			if (!ingot.isEmpty()) {
				<recipetype:create:mixing>.addJsonRecipe(name + "_melting_ingot_to_molten_basic", {
				  "ingredients": [
					ingot
				  ],
				  "results": [
					{
					  "fluid": molten.registryName,
					  "amount": 108
					}
				  ],
				  "heatRequirement": "heated"
				});
				<recipetype:thermal:crucible>.addJsonRecipe(name + "_melting_ingot_to_molten_crucible", {
					  "ingredient": ingot,
					  "result": [
						{
						  "fluid": molten.registryName,
						  "amount": 108
						}
					  ],
					"energy": 2000
				});
			}
			if (!plate.isEmpty()) {
				<recipetype:create:mixing>.addJsonRecipe(name + "_melting_plate_to_molten_basic", {
				  "ingredients": [
					plate
				  ],
				  "results": [
					{
					  "fluid": molten.registryName,
					  "amount": 108
					}
				  ],
				  "heatRequirement": "heated"
				});
				<recipetype:thermal:crucible>.addJsonRecipe(name + "_melting_plate_to_molten_crucible", {
					  "ingredient": plate,
					  "result": [
						{
						  "fluid": molten.registryName,
						  "amount": 108
						}
					  ],
					"energy": 2000
				});
			}
			if (!rod.isEmpty()) {
				<recipetype:create:mixing>.addJsonRecipe(name + "_melting_rod_to_molten_basic", {
				  "ingredients": [
					rod
				  ],
				  "results": [
					{
					  "fluid": molten.registryName,
					  "amount": 108
					}
				  ],
				  "heatRequirement": "heated"
				});
				<recipetype:thermal:crucible>.addJsonRecipe(name + "_melting_rod_to_molten_crucible", {
					  "ingredient": rod,
					  "result": [
						{
						  "fluid": molten.registryName,
						  "amount": 108
						}
					  ],
					"energy": 2000
				});
			}
			if (!oreFragment.isEmpty()) {
				<recipetype:create:mixing>.addJsonRecipe(name + "_melting_fragment_to_molten_basic", {
				  "ingredients": [
					oreFragment
				  ],
				  "results": [
					{
					  "fluid": molten.registryName,
					  "amount": 12
					}
				  ],
				  "heatRequirement": "heated"
				});
				<recipetype:thermal:crucible>.addJsonRecipe(name + "_melting_fragment_to_molten_crucible", {
					  "ingredient": oreFragment,
					  "result": [
						{
						  "fluid": molten.registryName,
						  "amount": 12
						}
					  ],
					"energy": 2000
				});
			}
		}
			
			//molding recipes
				if (!ingot.isEmpty()) {
					<recipetype:create:filling>.addJsonRecipe(name + "_create_casting_to_ingot", {
						  "ingredients": [
							{
							  "item": "contenttweaker:ingot_mold"
							},
							{
							  "fluid": molten.registryName,
							  "amount": 108
							}
						  ],
						  "results": [
							{
							  "item": ingot.items[0].registryName
							}
						  ]
						});
						<recipetype:thermal:bottler>.addJsonRecipe(name + "_thermal_casting_to_ingot", {
						  "ingredients": [
							{
							  "item": "contenttweaker:ingot_mold"
							},
							{
							  "fluid": molten.registryName,
							  "amount": 108
							}
						  ],
						  "results": [
							{
							  "item": ingot.items[0].registryName
							}
						  ],
						  "energy": 2000
						});
				}
				if (!plate.isEmpty()) {
					<recipetype:create:filling>.addJsonRecipe(name + "_create_casting_to_plate", {
						  "ingredients": [
							{
							  "item": "contenttweaker:plate_mold"
							},
							{
							  "fluid": molten.registryName,
							  "amount": 108
							}
						  ],
						  "results": [
							{
							  "item": plate.items[0].registryName
							}
						  ]
						});
						<recipetype:thermal:bottler>.addJsonRecipe(name + "_thermal_casting_to_plate", {
						  "ingredients": [
							{
							  "item": "contenttweaker:plate_mold"
							},
							{
							  "fluid": molten.registryName,
							  "amount": 108
							}
						  ],
						  "results": [
							{
							  "item": plate.items[0].registryName
							}
						  ],
						  "energy": 2000
						});
				}
				if (!rod.isEmpty()) {
					<recipetype:create:filling>.addJsonRecipe(name + "_create_casting_to_rod", {
						  "ingredients": [
							{
							  "item": "contenttweaker:rod_mold"
							},
							{
							  "fluid": molten.registryName,
							  "amount": 108
							}
						  ],
						  "results": [
							{
							  "item": rod.items[0].registryName
							}
						  ]
						});
						<recipetype:thermal:bottler>.addJsonRecipe(name + "_thermal_casting_to_rod", {
						  "ingredients": [
							{
							  "item": "contenttweaker:rod_mold"
							},
							{
							  "fluid": molten.registryName,
							  "amount": 108
							}
						  ],
						  "results": [
							{
							  "item": rod.items[0].registryName
							}
						  ],
						  "energy": 2000
						});
				}
				if (!nugget.isEmpty()) {
					<recipetype:create:filling>.addJsonRecipe(name + "_create_casting_to_nugget", {
						  "ingredients": [
							{
							  "item": "contenttweaker:nugget_mold"
							},
							{
							  "fluid": molten.registryName,
							  "amount": 12
							}
						  ],
						  "results": [
							{
							  "item": nugget.items[0].registryName
							}
						  ]
						});
						<recipetype:thermal:bottler>.addJsonRecipe(name + "_thermal_casting_to_nugget", {
						  "ingredients": [
							{
							  "item": "contenttweaker:nugget_mold"
							},
							{
							  "fluid": molten.registryName,
							  "amount": 12
							}
						  ],
						  "results": [
							{
							  "item": nugget.items[0].registryName
							}
						  ],
						  "energy": 2000
						});
				}
				if (!gear.isEmpty()) {
					<recipetype:create:filling>.addJsonRecipe(name + "_create_casting_to_gear", {
						  "ingredients": [
							{
							  "item": "contenttweaker:gear_mold"
							},
							{
							  "fluid": molten.registryName,
							  "amount": 432
							}
						  ],
						  "results": [
							{
							  "item": gear.items[0].registryName
							}
						  ]
						});
						<recipetype:thermal:bottler>.addJsonRecipe(name + "_thermal_casting_to_gear", {
						  "ingredients": [
							{
							  "item": "contenttweaker:gear_mold"
							},
							{
							  "fluid": molten.registryName,
							  "amount": 432
							}
						  ],
						  "results": [
							{
							  "item": gear.items[0].registryName
							}
						  ],
						  "energy": 2000
						});
				}
		
		//ingots to components
		if (!ingot.isEmpty()) {
			if (!plate.isEmpty()) {
				<recipetype:create:pressing>.addJsonRecipe(name + "_ingot_to_plate_pressing", {
						    "ingredients": [ ingot],
							"results": [ plate ]
						});
				<recipetype:thermal:press>.addJsonRecipe(name + "_ingot_to_plate_thermal_press", {
					"ingredient": ingot,
					  "result": [
						plate
					  ]
				});
				<recipetype:ftbic:rolling>.addJsonRecipe(name + "_ingot_to_plate_ftbic_rolling_machine", {
				  "inputItems": [ingot],
				  "outputItems": [
					{
					  "item": plate.items[0].registryName,
					  "count": 1
					}
				  ]
				});
			}
			
			if (!wire.isEmpty()) {
				if (!rod.isEmpty()) {
					<recipetype:ftbic:extruding>.addJsonRecipe(name + "_plate_to_wire_ftbic_extruder", {
					  "inputItems":[rod],
					  "outputItems": [
						{
						  "item": wire.items[0].registryName,
						  "count": 2
						}
					  ]
					});
				}
			}
			
			if (!rod.isEmpty()) {
				craftingTable.remove(rod);
				<recipetype:ftbic:extruding>.addJsonRecipe(name + "_ingot_to_rod_ftbic_extruder", {
				  "inputItems":[ingot],
				  "outputItems": [
					{
					  "item": rod.items[0].registryName,
					  "count": 2
					}
				  ]
				});
				<recipetype:thermal:press>.addJsonRecipe(name + "_ingot_to_rod_thermal_press", {
					"ingredients": [
						{
						  "item": ingot.items[0].registryName
						},
						{
						  "item": "thermal:chiller_rod_cast"
						}
					  ],
					  "result": [
						{
					  "item": rod.items[0].registryName,
					  "count": 2
						}
					  ]
				});
			}
			
			if (!gear.isEmpty()) {
				craftingTable.remove(gear);
				<recipetype:thermal:press>.remove(gear);
				craftingTable.addShaped(name + "_ingot_to_gear_crafting", gear, [[IIngredientEmpty.getInstance(), ingot, IIngredientEmpty.getInstance()], [ingot, <tag:items:forge:nuggets/iron>, ingot], [IIngredientEmpty.getInstance(), ingot, IIngredientEmpty.getInstance()]]);
				<recipetype:thermal:press>.addJsonRecipe(name + "_ingot_to_gear_thermal_press", {
					"ingredients": [
						{
						  "item": ingot.items[0].registryName,
						  "count": 4
						},
						{
						  "item": "thermal:press_gear_die"
						}
					  ],
					  "result": [gear]
				});
					if (!plate.isEmpty()) {
						<recipetype:ftbic:extruding>.addJsonRecipe(name + "_plate_to_gear_ftbic_extruder", {
						  "inputItems": [plate],
						  "outputItems": [
							{
							  "item": gear.items[0].registryName,
							  "count": 2
							}
						  ]
						});
				}
			}
		}
		
		//node recipes
		if (!node.isEmpty()) {
			if (!nugget.isEmpty()) {
				blastFurnace.addRecipe(name + "_node_to_nugget_blast_furnace", nugget as IItemStack * 3, node, 0.7, 100);
				furnace.addRecipe(name + "_node_to_nugget_furnace", nugget as IItemStack * 3, node, 0.7, 200);
				<recipetype:thermal:smelter>.addJsonRecipe(name + "_node_to_nugget_thermal_smelter", {
					"ingredient": node,
					"result": [
						{
						  "item": nugget.items[0].registryName,
						  "chance": 4.0
						}
					],
					"energy_mod": 0.5
				});
			}
		}
		
		//packing and unpacking
		if (!block.isEmpty() && !ingot.isEmpty()) {
			craftingTable.remove(block);
			<recipetype:thermal:press>.remove(block);
			craftingTable.remove(ingot);
			<recipetype:thermal:press>.remove(ingot);
		}
		if (!nugget.isEmpty() && !ingot.isEmpty()) {
			craftingTable.remove(nugget);
			<recipetype:thermal:press>.remove(nugget);
			craftingTable.remove(ingot);
			<recipetype:thermal:press>.remove(ingot);
		}
		
		if (!oreRaw.isEmpty() && !oreRawBlock.isEmpty()) {
			craftingTable.remove(oreRaw);
			<recipetype:thermal:press>.remove(oreRaw);
			craftingTable.remove(oreRawBlock);
			<recipetype:thermal:press>.remove(oreRawBlock);
		}
		
		if (!oreSpecial.isEmpty() && !oreRawBlock.isEmpty()) {
			craftingTable.remove(oreSpecial);
			<recipetype:thermal:press>.remove(oreSpecial);
			craftingTable.remove(oreRawBlock);
			<recipetype:thermal:press>.remove(oreRawBlock);
		}
		
			if (!ingot.isEmpty() && !block.isEmpty()) {
				craftingTable.addShaped(name + "_ingot_to_block_crafting", block, [[ingot, ingot, ingot], [ingot, ingot, ingot], [ingot, ingot, ingot]]);
				craftingTable.addShapeless(name + "_block_to_ingot_crafting", ingot as IItemStack * 9, [block]);
				
				<recipetype:thermal:press>.addJsonRecipe(name + "_ingot_to_block_thermal_press", {
					"ingredients": [
						{
						  "item": ingot.items[0].registryName,
						  "count": 9
						},
						{
						  "item": "thermal:press_packing_3x3_die"
						}
					  ],
					  "result": [block],
					  "energy": 400
				});
				<recipetype:thermal:press>.addJsonRecipe(name + "_block_to_ingot_thermal_press", {
					"ingredients": [
						{
						  "item": block.items[0].registryName
						},
						{
						  "item": "thermal:press_unpacking_die"
						}
					  ],
					  "result": [
					  {
						  "item": ingot.items[0].registryName,
						  "count": 9
						}
					  ],
					  "energy": 400
				});
			}
			
			if (!ingot.isEmpty() && !nugget.isEmpty()) {
				craftingTable.addShaped(name + "_nugget_to_ingot_crafting", ingot, [[nugget, nugget, nugget], [nugget, nugget, nugget], [nugget, nugget, nugget]]);
				craftingTable.addShapeless(name + "_ingot_to_nugget_crafting", nugget as IItemStack * 9, [ingot]);
				
				<recipetype:thermal:press>.addJsonRecipe(name + "_nugget_to_ingot_thermal_press", {
					"ingredients": [
						{
						  "item": nugget.items[0].registryName,
						  "count": 9
						},
						{
						  "item": "thermal:press_packing_3x3_die"
						}
					  ],
					  "result": [ingot],
					  "energy": 400
				});
				<recipetype:thermal:press>.addJsonRecipe(name + "_ingot_to_nugget_thermal_press", {
					"ingredients": [
						{
						  "item": ingot.items[0].registryName
						},
						{
						  "item": "thermal:press_unpacking_die"
						}
					  ],
					  "result": [
					  {
						  "item": nugget.items[0].registryName,
						  "count": 9
						}
					  ],
					  "energy": 400
				});
			}
			
			if (!oreRawBlock.isEmpty()) {
				if (!oreRaw.isEmpty()) {
					craftingTable.addShaped(name + "_raw_to_rawblock_crafting", oreRawBlock, [[oreRaw, oreRaw, oreRaw], [oreRaw, oreRaw, oreRaw], [oreRaw, oreRaw, oreRaw]]);
					craftingTable.addShapeless(name + "_rawblock_to_raw_crafting", oreRaw as IItemStack * 9, [oreRawBlock]);
				
					<recipetype:thermal:press>.addJsonRecipe(name + "_raw_to_rawblock_thermal_press", {
					"ingredients": [
						{
						  "item": oreRaw.items[0].registryName,
						  "count": 9
						},
						{
						  "item": "thermal:press_packing_3x3_die"
						}
					  ],
					  "result": [oreRawBlock],
					  "energy": 400
					});
					<recipetype:thermal:press>.addJsonRecipe(name + "_rawblock_to_raw_thermal_press", {
					"ingredients": [
						{
						  "item": oreRawBlock.items[0].registryName
						},
						{
						  "item": "thermal:press_unpacking_die"
						}
					  ],
					  "result": [
					  {
						  "item": oreRaw.items[0].registryName,
						  "count": 9
						}
					  ],
					  "energy": 400
					});
				}
				if (!oreSpecial.isEmpty()) {
					craftingTable.addShaped(name + "_special_to_rawblock_crafting", oreRawBlock, [[oreSpecial, oreSpecial, oreSpecial], [oreSpecial, oreSpecial, oreSpecial], [oreSpecial, oreSpecial, oreSpecial]]);
					craftingTable.addShapeless(name + "_rawblock_to_special_crafting", oreSpecial as IItemStack * 9, [oreRawBlock]);
				
					<recipetype:thermal:press>.addJsonRecipe(name + "_special_to_rawblock_thermal_press", {
					"ingredients": [
						{
						  "item": oreSpecial.items[0].registryName,
						  "count": 9
						},
						{
						  "item": "thermal:press_packing_3x3_die"
						}
					  ],
					  "result": [oreRawBlock],
					  "energy": 400
					});
					<recipetype:thermal:press>.addJsonRecipe(name + "_rawblock_to_special_thermal_press", {
					"ingredients": [
						{
						  "item": oreRawBlock.items[0].registryName
						},
						{
						  "item": "thermal:press_unpacking_die"
						}
					  ],
					  "result": [
					  {
						  "item": oreSpecial.items[0].registryName,
						  "count": 9
						}
					  ],
					  "energy": 400
					});
				}
			}
	}
}