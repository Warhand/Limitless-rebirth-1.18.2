import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

//removing default rose quarts recipe
craftingTable.removeByName("create:crafting/materials/rose_quartz");
//new rose quarts recipe
craftingTable.addShaped("custom-rose-quartz", <item:create:rose_quartz>, [[<item:minecraft:air>, <item:biomesoplenty:rose_quartz_shard>, <item:minecraft:air>], [<item:biomesoplenty:rose_quartz_shard>, <item:minecraft:redstone>, <item:biomesoplenty:rose_quartz_shard>], [<item:minecraft:air>, <item:biomesoplenty:rose_quartz_shard>, <item:minecraft:air>]]);



//adding recipe for rolling lead wire
<recipetype:createaddition:rolling>.addJsonRecipe("lead_wire", {
	"input": {
      	"tag": "forge:ingots/lead"
	},
	"result": {
		"item": "immersiveengineering:wire_lead",
		"count": 2
	}
});

//adding recipe for create mechanical press for IE plates

val ingot_plate_press as IItemStack[IIngredient] = {
	<tag:items:forge:ingots/iron>.asIIngredient(): <item:immersiveengineering:plate_iron>,
	<tag:items:forge:ingots/constantan>.asIIngredient(): <item:immersiveengineering:plate_constantan>,
	<tag:items:forge:ingots/gold>.asIIngredient(): <item:immersiveengineering:plate_gold>,
	<tag:items:forge:ingots/silver>.asIIngredient(): <item:immersiveengineering:plate_silver>,
	<tag:items:forge:ingots/electrum>.asIIngredient(): <item:immersiveengineering:plate_electrum>,
	<tag:items:forge:ingots/aluminum>.asIIngredient(): <item:immersiveengineering:plate_aluminum>,
	<tag:items:forge:ingots/steel>.asIIngredient(): <item:immersiveengineering:plate_steel>,
	<tag:items:forge:ingots/uranium>.asIIngredient(): <item:immersiveengineering:plate_uranium>,
	<tag:items:forge:ingots/copper>.asIIngredient(): <item:immersiveengineering:plate_copper>,
	<tag:items:forge:ingots/nickel>.asIIngredient(): <item:immersiveengineering:plate_nickel>,
	<tag:items:forge:ingots/lead>.asIIngredient(): <item:immersiveengineering:plate_lead>
};

for ingot, plate in ingot_plate_press {
	<recipetype:create:pressing>.addJsonRecipe("create_pressed_" + plate.registryName.path, 
	{"ingredients": [ ingot ],
	"results": [ plate ]
});
}

//replacing steel mechanical component recipe
craftingTable.remove(<item:immersiveengineering:component_steel>);
craftingTable.addShaped("component_steel", <item:immersiveengineering:component_steel>, [[<tag:items:forge:plates/steel>, <item:minecraft:air>, <tag:items:forge:plates/steel>], [<item:minecraft:air>, <tag:items:forge:ingots/brass>, <item:minecraft:air>], [<tag:items:forge:plates/steel>, <item:minecraft:air>, <tag:items:forge:plates/steel>]]);

<recipetype:immersiveengineering:blueprint>.addJsonRecipe("component_steel_blueprint", {"inputs":[{"count":2,"base_ingredient":{"tag":"forge:plates/steel"}},{"tag":"forge:ingots/brass"}],"category":"components","result":{"item":"immersiveengineering:component_steel"}});

//replacing create propellor recipe
craftingTable.remove(<item:create:propeller>);
craftingTable.addShaped("custom_propeller", <item:create:propeller>, [[<item:minecraft:air>, <tag:items:forge:plates/steel>, <item:minecraft:air>], [<tag:items:forge:plates/steel>, <item:create:andesite_alloy>, <tag:items:forge:plates/steel>], [<item:minecraft:air>, <tag:items:forge:plates/steel>, <item:minecraft:air>]]);

//washing terracotta into colorless terracotta with Create
<recipetype:create:splashing>.addJsonRecipe("washed_terracotta", {"ingredients": [
    {
      "tag": "forge:terracotta"
    }
  ],
  "results": [
    {
      "item": "minecraft:terracotta"
    }
]});

//haunting obsidian to get crying obsidian
<recipetype:create:haunting>.addJsonRecipe("crying_obsidian", {"ingredients": [
    {
      "tag": "forge:obsidian"
    }
  ],
  "results": [
    {
      "item": "minecraft:crying_obsidian"
    }
]});