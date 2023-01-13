#priority 99

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;
import mods.jei.component.JeiIngredient;
import mods.jei.JEI;

//Defining global material recipes class

//defining special variable class for the recipes class

public class outputSpecial {
	public var output as IIngredient : get;
	public var amount1 as int : get;
	public var chance1 as float : get;
	public var amount2 as int : get;
	public var chance2 as float : get;

	public this(output as IIngredient, amount1 as int = 1, chance1 as float = 1.0, amount2 as int = 0, chance2 as float = 0.0) {}
}

public class GlobalMaterialRecipe {
	public var name as string : get, set;
	public var oreBlock as IIngredient : get, set = <item:minecraft:air>;
	public var oreRaw as IIngredient : get, set = <item:minecraft:air>;
	public var oreFragment as IIngredient : get, set = <item:minecraft:air>;
	public var oreCrushed as IIngredient : get, set = <item:minecraft:air>;
	public var oreGravel as IIngredient : get, set = <item:minecraft:air>;
	public var oreSpecial as outputSpecial : get, set;
	public var ingot as IIngredient : get, set = <item:minecraft:air>;
	public var metalDust as IIngredient : get, set = <item:minecraft:air>;
	public var nugget as IIngredient : get, set = <item:minecraft:air>;
	public var block as IIngredient : get, set  = <item:minecraft:air>;
	public var node as IIngredient : get, set  = <item:minecraft:air>;
	public var plate as IIngredient : get, set  = <item:minecraft:air>;
	public var wire as IIngredient : get, set  = <item:minecraft:air>;
	public var rod as IIngredient : get, set  = <item:minecraft:air>;
	public var bars as IIngredient : get, set  = <item:minecraft:air>;
	public var molten as IIngredient : get, set  = <item:minecraft:air>;
	
	public build() as void {
		println("building material recipes for: " + name);
		
		//ore blocks to raw ore
		if (!oreRaw.isEmpty()) {
				crushingIndustrial(name + "_" + oreRaw.items[0].registryName.path, oreBlock, oreRaw, 1.0, 2, oreRaw, 0.25, 1);
				crushingCreateWheel(name + "_" + oreRaw.items[0].registryName.path, oreBlock, oreRaw, 1.0, 2, oreRaw, 0.25, 1);
				crushingArs(name + "_" + oreRaw.items[0].registryName.path, oreBlock, oreRaw, 1.0, 2, oreRaw, 0.5, 1);
				crushingImmersive(name + "_" + oreRaw.items[0].registryName.path, oreBlock, oreRaw, 1.0, 2, oreRaw, 0.25, 1);
				crushingBloodExplosive(name + "_" + oreRaw.items[0].registryName.path, oreBlock, oreRaw, 1.0, 2, oreRaw, 0.5, 1);
				crushingBloodResonator(name + "_" + oreRaw.items[0].registryName.path, oreBlock, oreRaw, 1.0, 2, oreRaw, 0.25, 1);
				crushingCreateMill(name + "_" + oreRaw.items[0].registryName.path, oreBlock, oreRaw, 1.0, 1, oreRaw, 0.5, 1);
				crushingPlain(name + "_" + oreRaw.items[0].registryName.path, oreBlock, oreRaw, 1.0, 1, oreRaw, 0.5, 1);
		}
		
		//raw ore to crushed ore
		if (!oreCrushed.isEmpty()) {
				crushingIndustrial(name + "_" + oreCrushed.items[0].registryName.path, oreRaw, oreCrushed, 1.0, 1, oreCrushed, 0.25, 1);
				crushingCreateWheel(name + "_" + oreCrushed.items[0].registryName.path, oreRaw, oreCrushed, 1.0, 1, oreCrushed, 0.5, 1);
				crushingArs(name + "_" + oreCrushed.items[0].registryName.path, oreRaw, oreCrushed, 1.0, 1, oreCrushed, 0.25, 1);
				crushingImmersive(name + "_" + oreCrushed.items[0].registryName.path, oreRaw, oreCrushed, 1.0, 1, oreCrushed, 0.25, 1);
				crushingBloodExplosive(name + "_" + oreCrushed.items[0].registryName.path, oreRaw, oreCrushed, 1.0, 1, oreCrushed, 0.25, 1);
				crushingBloodResonator(name + "_" + oreCrushed.items[0].registryName.path, oreRaw, oreCrushed, 1.0, 1, oreCrushed, 0.5, 1);
				crushingCreateMill(name + "_" + oreCrushed.items[0].registryName.path, oreRaw, oreCrushed, 1.0, 1, oreCrushed, 0.1, 1);
				crushingPlain(name + "_" + oreCrushed.items[0].registryName.path, oreRaw, oreCrushed, 1.0, 1, oreCrushed, 0.1, 1);
		}
		
		//crushed ore to gravel
		if (!oreGravel.isEmpty()) {
				crushingIndustrial(name + "_" + oreGravel.items[0].registryName.path, oreCrushed, oreGravel, 1.0, 1, oreGravel, 0.5, 1);
				crushingCreateWheel(name + "_" + oreGravel.items[0].registryName.path, oreCrushed, oreGravel, 1.0, 1, oreGravel, 0.25, 1);
				crushingArs(name + "_" + oreGravel.items[0].registryName.path, oreCrushed, oreGravel, 1.0, 1, oreGravel, 0.25, 1);
				crushingImmersive(name + "_" + oreGravel.items[0].registryName.path, oreCrushed, oreGravel, 1.0, 1, oreGravel, 0.5, 1);
				crushingBloodExplosive(name + "_" + oreGravel.items[0].registryName.path, oreCrushed, oreGravel, 1.0, 1, oreGravel, 0.25, 1);
				crushingBloodResonator(name + "_" + oreGravel.items[0].registryName.path, oreCrushed, oreGravel, 1.0, 1, oreGravel, 0.25, 1);
				crushingCreateMill(name + "_" + oreGravel.items[0].registryName.path, oreCrushed, oreGravel, 1.0, 1, oreGravel, 0.1, 1);
				crushingPlain(name + "_" + oreGravel.items[0].registryName.path, oreCrushed, oreGravel, 1.0, 1, oreGravel, 0.1, 1);
		}
		
		//raw ore to fragments
		if (!oreRaw.isEmpty() && !oreFragment.isEmpty()) {
		
			craftingTable.addShapeless(name + "_smashing_" + oreRaw.items[0].registryName.path + "_with_ie_hammer", oreFragment as IItemStack * 10, [oreRaw, <item:immersiveengineering:hammer>.anyDamage().transformDamage(1)]);
			
			craftingTable.addShapeless(name + "_smashing_" + oreRaw.items[0].registryName.path + "_with_tetra_hammer", oreFragment as IItemStack * 10, [oreRaw, <item:tetra:modular_double>.withTag({"double/handle": "double/basic_handle" as string, "double/head_left": "double/basic_hammer_left" as string, "double/head_right": "double/basic_hammer_right" as string}).anyDamage().transformDamage(1)]);
		}
		
		//crushed/gravel washing
		if (!oreFragment.isEmpty()) {
		<recipetype:create:splashing>.addJsonRecipe(name + "_washing_" + oreCrushed.items[0].registryName.path, {
						  "ingredients": [oreCrushed | oreGravel],
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
	}
}