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
public function crushingIndustrial(input as IIngredient, output1 as IItemStack, chance1 as float = 1.0, amount1 as int = 1, output2 as IItemStack = <item:minecraft:air>, chance2 as float = 0.0, amount2 as int = 0) as void {
	<recipetype:ftbic:macerating>.addJsonRecipe("custom_ftbic_macerating_" + input.items[0].registryName.path + "_to_" + output1.registryName.path, {
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

public function crushingCreateWheel(input as IIngredient, output1 as IItemStack, chance1 as float = 1.0, amount1 as int = 1, output2 as IItemStack = <item:minecraft:air>, chance2 as float = 0.0, amount2 as int = 0) as void {
	<recipetype:create:crushing>.addJsonRecipe("custom_create_crushing_" + input.items[0].registryName.path + "_to_" + output1.registryName.path, 
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

public function crushingCreateMill(input as IIngredient, output1 as IItemStack, chance1 as float = 1.0, amount1 as int = 1, output2 as IItemStack = <item:minecraft:air>, chance2 as float = 0.0, amount2 as int = 0) as void {
	<recipetype:create:milling>.addJsonRecipe("custom_create_milling_" + input.items[0].registryName.path + "_to_" + output1.registryName.path, 
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

public function crushingArs(input as IIngredient, output1 as IItemStack, chance1 as float = 1.0, amount1 as int = 1, output2 as IItemStack = <item:minecraft:air>, chance2 as float = 0.0, amount2 as int = 0) as void {
	<recipetype:ars_nouveau:crush>.addJsonRecipe("custom_ars_crushing_" + input.items[0].registryName.path + "_to_" + output1.registryName.path, 
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

public function crushingImmersive(input as IIngredient, output1 as IItemStack, chance1 as float = 1.0, amount1 as int = 1, output2 as IItemStack = <item:minecraft:air>, chance2 as float = 0.0, amount2 as int = 0) as void {
	<recipetype:immersiveengineering:crusher>.addJsonRecipe("custom_ie_crushing_" + input.items[0].registryName.path + "_to_" + output1.registryName.path, 
	{
	"secondaries":[{"chance": chance2, "count": amount2, "output":{"item":output2.registryName}}],
	"result":{"count": amount1, "chance": chance1, "base_ingredient":{"item":output1.registryName}},
	"input":input,
	"energy":6000
	});
}

public function crushingBloodExplosive(input as IIngredient, output1 as IItemStack, chance1 as float = 1.0, amount1 as int = 1, output2 as IItemStack = <item:minecraft:cobblestone>, chance2 as float = 0.0, amount2 as int = 0) as void {
	<recipetype:bloodmagic:arc>.addJsonRecipe("custom_blood_exploding_" + input.items[0].registryName.path + "_to_" + output1.registryName.path, 
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

public function crushingBloodResonator(input as IIngredient, output1 as IItemStack, chance1 as float = 1.0, amount1 as int = 1, output2 as IItemStack = <item:minecraft:cobblestone>, chance2 as float = 0.0, amount2 as int = 0) as void {
	<recipetype:bloodmagic:arc>.addJsonRecipe("custom_blood_resonating_" + input.items[0].registryName.path + "_to_" + output1.registryName.path, 
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

public function crushingPlain(input as IIngredient, output1 as IItemStack, chance1 as float = 1.0, amount1 as int = 1, output2 as IItemStack = <item:minecraft:cobblestone>, chance2 as float = 0.0, amount2 as int = 0) as void {
	<recipetype:plaingrinder:grinder>.addRecipe("custom_better_grinding" + input.items[0].registryName.path + "_to_" + output1.registryName.path, [input], output1 * amount1, chance1, output2 * amount2, chance2);
}

public function crushingAll(input as IIngredient, output1 as IItemStack, chance1 as float = 1.0, amount1 as int = 1, output2 as IItemStack = <item:minecraft:cobblestone>, chance2 as float = 0.0, amount2 as int = 0) as void {
	<recipetype:ftbic:macerating>.addJsonRecipe("custom_ftbic_macerating_" + input.items[0].registryName.path + "_to_" + output1.registryName.path, {
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
	
	<recipetype:create:crushing>.addJsonRecipe("custom_create_crushing_" + input.items[0].registryName.path + "_to_" + output1.registryName.path, 
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
	
	<recipetype:create:milling>.addJsonRecipe("custom_create_milling_" + input.items[0].registryName.path + "_to_" + output1.registryName.path, 
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
	
	<recipetype:immersiveengineering:crusher>.addJsonRecipe("custom_ie_crushing_" + input.items[0].registryName.path + "_to_" + output1.registryName.path, 
	{
	"secondaries":[{"chance": chance2, "count": amount2, "output":{"item":output2.registryName}}],
	"result":{"count": amount1, "chance": chance1, "base_ingredient":{"item":output1.registryName}},
	"input":input,
	"energy":6000
	});
	
	<recipetype:bloodmagic:arc>.addJsonRecipe("custom_blood_exploding_" + input.items[0].registryName.path + "_to_" + output1.registryName.path, 
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
	
	<recipetype:bloodmagic:arc>.addJsonRecipe("custom_blood_resonating_" + input.items[0].registryName.path + "_to_" + output1.registryName.path, 
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
	
	<recipetype:plaingrinder:grinder>.addRecipe("custom_better_grinding" + input.items[0].registryName.path + "_to_" + output1.registryName.path, [input], output1 * amount1, chance1, output2 * amount2, chance2);
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

//defining an extractinator function
public function extracting(input as IIngredient, output1 as IItemStack, output2 as IItemStack, output3 as IItemStack, chance1 as float = 0.10, chance2 as float = 0.075, chance3 as float = 0.005) as void {
	<recipetype:extractinator:extractinating>.addJsonRecipe("custom_extracting_" + input.items[0].registryName.path, {
	  "input": input,
	  "drops": [
		{
		  "drop": output1.registryName,
		  "drop_chance": chance1
		},
		{
		  "drop": output2.registryName,
		  "drop_chance": chance2
		},
		{
		  "drop": output3.registryName,
		  "drop_chance": chance3
		}
	  ]
	});
}