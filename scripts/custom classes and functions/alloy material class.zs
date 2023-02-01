#priority 98

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;
import mods.jei.component.JeiIngredient;
import mods.jei.JEI;

public class itemWithAmount {
	public var item as IIngredient : get;
	public var amount as int : get;

	public this(item as IIngredient = <item:minecraft:air>, amount as int = 1) {
		this.item = item;
		this.amount = amount;
	}
}
public class fluidWithAmount {
	public var fluid as IFluidStack : get;
	public var amount as int : get;

	public this(fluid as IFluidStack = <fluid:minecraft:water>, amount as int = 1) {
		this.fluid = fluid;
		this.amount = amount;
	}
}

//registering alloy material class

public class AlloyMaterialClass {
	public var name as string : get, set;
	public var isThreeInput as bool : get, set = false;
	public var inputIngot as IIngredient[] : get, set;
	public var inputDust as IIngredient[] : get, set;
	public var inputmolten as fluidWithAmount : get, set;
	public var outputIngot as IItemStack : get, set;
	public var outputDust as IItemStack : get, set;
	public var outputMolten as IFluidStack : get, set;
	
	public build() as void {
			craftingTable.remove(outputDust);
			craftingTable.addShapeless(name + "_blend_shapeless_two_input", outputDust, inputDust);
	}
}