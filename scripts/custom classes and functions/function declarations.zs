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

//defining crushing functions
public function crushingIndustrial(recipeName as string, input as IIngredient, output1 as IItemStack, chance1 as float = 1.0, amount1 as int = 1, output2 as IItemStack = <item:minecraft:air>, chance2 as float = 0.0, amount2 as int = 0) as void {
	<recipetype:ftbic:macerating>.addJsonRecipe("custom_ftbic_macerating_" + recipeName, {
		"inputItems": [input],
	  "outputItems": [
		{
		  "item": output1.registryName,
		  "count": amount1,
		  "chance": chance1
		},
		{
		  "item": output2.registryName,
		  "count": amount2,
		  "chance": chance2
		}
	  ]
	});
}

public function crushingCreateWheel(recipeName as string, input as IIngredient, output1 as IItemStack, chance1 as float = 1.0, amount1 as int = 1, output2 as IItemStack = <item:minecraft:air>, chance2 as float = 0.0, amount2 as int = 0) as void {
	<recipetype:create:crushing>.addJsonRecipe("custom_create_crushing_" + recipeName,
		{
	  "ingredients": [ input ],
	  "results": [
		{
			"item": output1.registryName,
			"count": amount1,
			"chance": chance1

		},
		{
			"item": output2.registryName,
			"count": amount2,
			"chance": chance2
		}
	  ],
	  "processingTime": 400
	});
}

public function crushingCreateMill(recipeName as string, input as IIngredient, output1 as IItemStack, chance1 as float = 1.0, amount1 as int = 1, output2 as IItemStack = <item:minecraft:air>, chance2 as float = 0.0, amount2 as int = 0) as void {
	<recipetype:create:milling>.addJsonRecipe("custom_create_milling_" + recipeName,
		{
	  "ingredients": [ input ],
	  "results": [
		{
			"item": output1.registryName,
			"count": amount1,
			"chance": chance1

		},
		{
			"item": output2.registryName,
			"count": amount2,
			"chance": chance2
		}
	  ],
	  "processingTime": 400
	});
}

public function crushingArs(recipeName as string, input as IIngredient, output1 as IItemStack, chance1 as float = 1.0, amount1 as int = 1, output2 as IItemStack = <item:minecraft:air>, chance2 as float = 0.0, amount2 as int = 0) as void {
	<recipetype:ars_nouveau:crush>.addJsonRecipe("custom_ars_crushing_" + recipeName,
		{
	 "input":input,
	  "output": [
		{
		  "item": output1.registryName,
		  "chance": chance1,
		  "count": amount1
		},
		{
		  "item": output2.registryName,
		  "chance": chance2,
		  "count": amount2
		}
	  ]
	});
}

public function crushingImmersive(recipeName as string, input as IIngredient, output1 as IItemStack, chance1 as float = 1.0, amount1 as int = 1, output2 as IItemStack = <item:minecraft:air>, chance2 as float = 0.0, amount2 as int = 0) as void {
	<recipetype:immersiveengineering:crusher>.addJsonRecipe("custom_ie_crushing_" + recipeName,
	{
	"secondaries":[{"chance": chance2, "count": amount2, "output":{"item":output2.registryName}}],
	"result":{"count": amount1, "chance": chance1, "base_ingredient":{"item":output1.registryName}},
	"input":input,
	"energy":6000
	});
}

public function crushingBloodExplosive(recipeName as string, input as IIngredient, output1 as IItemStack, chance1 as float = 1.0, amount1 as int = 1, output2 as IItemStack = <item:minecraft:cobblestone>, chance2 as float = 0.0, amount2 as int = 0) as void {
	<recipetype:bloodmagic:arc>.addJsonRecipe("custom_blood_exploding_" + recipeName,
	{
	"input": input,
  "inputsize": 1,
  "tool": {
	"tag": "bloodmagic:arc/explosive"
  },
  "addedoutput": [
  {
	  "mainchance": 0.0,
	  "chance": chance1,
	  "type": {
		"item": output1.registryName,
		"count": amount2
	  }
	},
	{
	  "mainchance": 0.0,
	  "chance": chance2,
	  "type": {
		"item": output2.registryName,
		"count": amount2
	  }
	}
  ],
  "output": {
	"item": "minecraft:cobblestone",
	"count": 0
  },
  "consumeingredient": false,
  "mainoutputchance": chance1
	});
}

public function crushingBloodResonator(recipeName as string, input as IIngredient, output1 as IItemStack, chance1 as float = 1.0, amount1 as int = 1, output2 as IItemStack = <item:minecraft:cobblestone>, chance2 as float = 0.0, amount2 as int = 0) as void {
	<recipetype:bloodmagic:arc>.addJsonRecipe("custom_blood_resonating_" + recipeName,
	{
	"input": input,
  "inputsize": 1,
  "tool": {
	"tag": "bloodmagic:arc/resonator"
  },
  "addedoutput": [
  {
	  "mainchance": 0.0,
	  "chance": chance1,
	  "type": {
		"item": output1.registryName,
		"count": amount2
	  }
	},
	{
	  "mainchance": 0.0,
	  "chance": chance2,
	  "type": {
		"item": output2.registryName,
		"count": amount2
	  }
	}
  ],
  "output": {
	"item": "minecraft:cobblestone",
	"count": 0
  },
  "consumeingredient": false,
  "mainoutputchance": chance1
	});
}

public function crushingPlain(recipeName as string, input as IIngredient, output1 as IItemStack, chance1 as float = 1.0, amount1 as int = 1, output2 as IItemStack = <item:minecraft:cobblestone>, chance2 as float = 0.0, amount2 as int = 0) as void {
	<recipetype:plaingrinder:grinder>.addRecipe("custom_better_grinding" + recipeName, [input], output1 * amount1, chance1, output2 * amount2, chance2);
}

public function crushingAll(recipeName as string, input as IIngredient, output1 as IItemStack, chance1 as float = 1.0, amount1 as int = 1, output2 as IItemStack = <item:minecraft:cobblestone>, chance2 as float = 0.0, amount2 as int = 0) as void {
	<recipetype:ftbic:macerating>.addJsonRecipe("custom_ftbic_macerating_universal_recipe_" + recipeName, {
		"inputItems": [input],
	  "outputItems": [
		{
		  "item": output1.registryName,
		  "count": amount1,
		  "chance": chance1
		},
		{
		  "item": output2.registryName,
		  "count": amount2,
		  "chance": chance2
		}
	  ]
	});

	<recipetype:create:crushing>.addJsonRecipe("custom_create_crushing_universal_recipe_" + recipeName,
		{
	  "ingredients": [ input ],
	  "results": [
		{
			"item": output1.registryName,
			"count": amount1,
			"chance": chance1

		},
		{
			"item": output2.registryName,
			"count": amount2,
			"chance": chance2
		}
	  ],
	  "processingTime": 400
	});

	<recipetype:create:milling>.addJsonRecipe("custom_create_milling_universal_recipe_" + recipeName,
		{
	  "ingredients": [ input ],
	  "results": [
		{
			"item": output1.registryName,
			"count": amount1,
			"chance": chance1

		},
		{
			"item": output2.registryName,
			"count": amount2,
			"chance": chance2
		}
	  ],
	  "processingTime": 400
	});

	<recipetype:immersiveengineering:crusher>.addJsonRecipe("custom_ie_crushing_" + recipeName,
	{
	"secondaries":[{"chance": chance2, "count": amount2, "output":{"item":output2.registryName}}],
	"result":{"count": amount1, "chance": chance1, "base_ingredient":{"item":output1.registryName}},
	"input":input,
	"energy":6000
	});

	<recipetype:bloodmagic:arc>.addJsonRecipe("custom_blood_exploding_universal_recipe_" + recipeName,
	{
	"input": input,
  "inputsize": 1,
  "tool": {
	"tag": "bloodmagic:arc/explosive"
  },
  "addedoutput": [
	{
	  "mainchance": 0.0,
	  "chance": chance1,
	  "type": {
		"item": output1.registryName,
		"count": amount2
	  }
	},
	{
	  "mainchance": 0.0,
	  "chance": chance2,
	  "type": {
		"item": output2.registryName,
		"count": amount2
	  }
	}
  ],
  "output": {
	"item": "minecraft:cobblestone",
	"count": 0
  },
  "consumeingredient": false,
  "mainoutputchance": 0.0
	});

	<recipetype:bloodmagic:arc>.addJsonRecipe("custom_blood_resonating_universal_recipe_" + recipeName,
	{
	"input": input,
  "inputsize": 1,
  "tool": {
	"tag": "bloodmagic:arc/resonator"
  },
  "addedoutput": [
	{
	  "mainchance": 0.0,
	  "chance": chance1,
	  "type": {
		"item": output1.registryName,
		"count": amount2
	  }
	},
	{
	  "mainchance": 0.0,
	  "chance": chance2,
	  "type": {
		"item": output2.registryName,
		"count": amount2
	  }
	}
  ],
  "output": {
	"item": "minecraft:cobblestone",
	"count": 0
  },
  "consumeingredient": false,
  "mainoutputchance": 0.0
	});

	<recipetype:plaingrinder:grinder>.addRecipe("custom_better_grinding_universal_recipe_" + recipeName, [input], output1 * amount1, chance1, output2 * amount2, chance2);
}

//declaring mob summoning builder class

public class SummonMob {
	public var name as string : get, set;
	public var summon as string : get, set;
	public var summonData as string : get, set = "{}";
	public var sacrifice as string : get, set;
	public var input1 as IIngredient : get, set;
	public var input2 as IIngredient : get, set;
	public var input3 as IIngredient : get, set;
	public var block as string : get, set = "minecraft:spawner";

	public build() as void {
		println("building summon recipe:" + name);

		//actual recipe
			<recipetype:summoningrituals:altar>.addJsonRecipe("custom_ritual_" + name, {
			"catalyst": { "item": "minecraft:amethyst_shard" },
			"outputs": [
				{
				"mob": summon,
				"data": summonData
				}
			],
			"inputs": [
				{ "ingredient": input1, "count": 1 },
				{ "ingredient": input2, "count": 1 },
				{ "ingredient": input3, "count": 1 }
			],
			"sacrifices": {
				"mobs": [
					{ "mob": sacrifice }
				]
			},
			"recipe_time": 200,
			"block_below": { "block": block }
	});
	}
}

//Defining a custom function to add descriptions more easily (Thanks to Kazu for this!)

public function description(m as JeiIngredient, s as string) as void {
	JEI.addDescription(m, [s]);
}

//defining IItemStack array with 3 values
public class tripleArray {

	public var input as IItemStack : get;
	public var output1 as IItemStack : get;
	public var chance1 as float : get;
	public var output2 as IItemStack : get;
	public var chance2 as float : get;

	public this(input as IItemStack, output1 as IItemStack, chance1 as float = 1.0, output2 as IItemStack, chance2 as float = 0.0) {
		this.input = input;
		this.output1 = output1;
		this.output2 = output2;
	}
}