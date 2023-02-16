#priority 20

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;
import crafttweaker.api.ingredient.transform.type.TransformReuse;

//powdered snow recipe
craftingTable.addShaped("powdered_snow", <item:minecraft:powder_snow_bucket>, [[<item:minecraft:ice>, <item:minecraft:snowball>, <item:minecraft:ice>], [<item:minecraft:ice>, <item:minecraft:water_bucket>, <item:minecraft:ice>], [<item:minecraft:ice>, <item:minecraft:ice>, <item:minecraft:ice>]]);

//waystones warp stone
craftingTable.remove(<item:waystones:warp_stone>);
craftingTable.addShaped("waystones_warp_stone", <item:waystones:warp_stone>, [[<item:waystones:warp_dust>, <item:minecraft:chorus_fruit>, <item:waystones:warp_dust>], [<item:minecraft:chorus_fruit>, <tag:items:forge:gems/diamond>, <item:minecraft:chorus_fruit>], [<item:waystones:warp_dust>, <item:minecraft:chorus_fruit>, <item:waystones:warp_dust>]]);

//waystones warp dust
craftingTable.remove(<item:waystones:warp_dust>);
craftingTable.addShapeless("waystones_warp_dust", <item:waystones:warp_dust>, [<tag:items:forge:dusts/ender_pearl>, <tag:items:forge:gems/amethyst>]);
craftingTable.addShapeless("ender_waystones_warp_dust", <item:waystones:warp_dust> * 4, [<tag:items:forge:dusts/ender_pearl>, <item:minecraft:chorus_fruit>, <item:minecraft:blaze_powder>]);

//minecraft lightning rod
craftingTable.remove(<item:minecraft:lightning_rod>);
craftingTable.addShaped("minecraft_lightning_rod", <item:minecraft:lightning_rod>, [[<tag:items:forge:storage_blocks/copper>], [<tag:items:forge:rods/copper>], [<tag:items:forge:rods/copper>]]);

//quark crate
craftingTable.remove(<item:quark:crate>);
craftingTable.addShaped("quark_oddities_crate", <item:quark:crate>, [[<tag:items:forge:plates/iron>, <tag:items:minecraft:planks>, <tag:items:forge:plates/iron>], [<tag:items:minecraft:planks>, <tag:items:forge:barrels/wooden>, <tag:items:minecraft:planks>], [<tag:items:forge:plates/iron>, <tag:items:minecraft:planks>, <tag:items:forge:plates/iron>]]);

//waystones scrolls custom recipes
craftingTable.remove(<item:waystones:return_scroll>);
craftingTable.remove(<item:waystones:bound_scroll>);
craftingTable.remove(<item:waystones:warp_scroll>);

craftingTable.addShapeless("waystones_bound_scroll", <item:waystones:bound_scroll> * 2, [<item:minecraft:paper>, <item:waystones:warp_dust>, <tag:items:forge:nuggets/gold>]);
craftingTable.addShapeless("waystones_warp_scroll", <item:waystones:warp_scroll>, [<item:minecraft:blaze_powder>, <item:waystones:bound_scroll>]);

//replacing ARS guidebook recipe
craftingTable.remove(<item:ars_nouveau:worn_notebook>);
craftingTable.addShapeless("ars_nouveau_worn_notebook", <item:ars_nouveau:worn_notebook>, [<tag:items:forge:gems/source>, <item:minecraft:book>]);

//Create storage interface
craftingTable.remove(<item:create:portable_storage_interface>);
craftingTable.addShapeless("portable_storage_interface", <item:create:portable_storage_interface>, [<item:create:andesite_casing>, <item:create:smart_chute>]);

//Create fluid interface
craftingTable.remove(<item:create:portable_fluid_interface>);
craftingTable.addShapeless("portable_fluid_interface", <item:create:portable_fluid_interface>, [<item:create:copper_casing>, <item:create:smart_fluid_pipe>]);

//bundle recipe redo
craftingTable.remove(<item:minecraft:bundle>);
craftingTable.addShaped("bundle", <item:minecraft:bundle>, [[<tag:items:forge:string>, <tag:items:forge:leather>, <tag:items:forge:string>], [<tag:items:forge:leather>, IIngredientEmpty.getInstance(), <tag:items:forge:leather>], [<tag:items:forge:leather>, <tag:items:forge:leather>, <tag:items:forge:leather>]]);

//stone variant crafting
craftingTable.removeByName("minecraft:diorite");
craftingTable.addShapedMirrored("minecraft_diorite", MirrorAxis.HORIZONTAL, <item:minecraft:diorite> * 4, [[<item:minecraft:stone>, <item:minecraft:calcite>], [<item:minecraft:calcite>, <item:minecraft:stone>]]);

craftingTable.removeByName("minecraft:granite");
craftingTable.addShapedMirrored("minecraft_granite", MirrorAxis.HORIZONTAL, <item:minecraft:granite> * 4, [[<item:minecraft:stone>, <item:minecraft:terracotta>], [<item:minecraft:terracotta>, <item:minecraft:stone>]]);

craftingTable.removeByName("minecraft:andesite");
craftingTable.addShapedMirrored("minecraft_andesite", MirrorAxis.HORIZONTAL, <item:minecraft:andesite> * 4, [[<item:minecraft:stone>, <item:minecraft:tuff>], [<item:minecraft:tuff>, <item:minecraft:stone>]]);

//FTB IC adding tags to recipes
craftingTable.addShaped("ftbic_shaped_copper_coil", <item:ftbic:copper_coil>, [[<item:ftbic:copper_wire>, <item:ftbic:copper_wire>, <tag:items:forge:ingots/iron>], [<item:ftbic:copper_wire>, <tag:items:forge:ingots/iron>, <item:ftbic:copper_wire>], [<tag:items:forge:ingots/iron>, <item:ftbic:copper_wire>, <item:ftbic:copper_wire>]]);

craftingTable.removeByName("ftbic:shapeless/lv_cable");
craftingTable.addShapeless("ftbic_shapeless_lv_cable", <item:ftbic:lv_cable> * 3, [<item:ftbic:copper_wire>, <item:ftbic:rubber>]);

craftingTable.removeByName("ftbic:shapeless/hv_cable");
craftingTable.addShapeless("ftbic_shapeless_hv_cable", <item:ftbic:hv_cable> * 3, [<item:ftbic:gold_wire>, <item:ftbic:rubber>]);

craftingTable.removeByName("ftbic:shapeless/mv_cable");
craftingTable.addShapeless("ftbic_shapeless_mv_cable", <item:ftbic:mv_cable> * 3, [<item:ftbic:aluminum_wire>, <item:ftbic:rubber>]);

craftingTable.removeByName("ftbic:shapeless/ev_cable");
craftingTable.addShapeless("ftbic_shapeless/ev_cable", <item:ftbic:ev_cable> * 3, [<item:ftbic:enderium_wire>, <item:ftbic:rubber>]);



//enchanted apple smithing recipes
smithing.addRecipe("enchanted_heart", <item:minecraft:enchanted_golden_apple>, <item:minecraft:golden_apple>, <item:paraglider:heart_container>);

//Changing dough recipe to use farmers delight dough istead of create dough

<recipetype:create:splashing>.addJsonRecipe("custom_create_washing_dough", {
  "ingredients": [
    {
      "tag": "forge:flour"
    }
  ],
  "results": [
    {
      "item": "farmersdelight:wheat_dough"
    }
  ]
});

<recipetype:create:mixing>.addJsonRecipe("custom_create_mixing_dough", {
  "ingredients": [
    {
      "tag": "forge:flour"
    },
    {
      "fluid": "minecraft:water",
      "nbt": {},
      "amount": 1000
    }
  ],
  "results": [
    {
      "item": "farmersdelight:wheat_dough"
    }
  ]
});

//Collar tag using plate instead of ingot
craftingTable.addShaped("collar_tag", <item:domesticationinnovation:collar_tag>, [[<item:minecraft:chain>], [<tag:items:forge:plates/copper>]]);

//black dye from coal dust
craftingTable.addShapeless("custom_coal_dye", <item:minecraft:black_dye> * 2, [<item:ftbic:charcoal_dust>|<item:ftbic:coal_dust>, <item:minecraft:potion>.withTag({Potion: "minecraft:water" as string})]);
craftingTable.addShapeless("custom_coal_dye_bucket", <item:minecraft:black_dye> * 8, [<item:ftbic:charcoal_dust>|<item:ftbic:coal_dust>, <item:ftbic:charcoal_dust>|<item:ftbic:coal_dust>, <item:ftbic:charcoal_dust>|<item:ftbic:coal_dust>, <item:ftbic:charcoal_dust>|<item:ftbic:coal_dust>, <item:minecraft:water_bucket>]);

//fixed sticky piston recipe
craftingTable.addShaped("custom_sticky_piston", <item:minecraft:sticky_piston>, [[<tag:items:forge:slimeballs>], [<item:minecraft:piston>]]);

//fixed magenta pet bed
craftingTable.addShaped("custom_pet_bed_magenta", <item:domesticationinnovation:pet_bed_magenta>, [[<item:minecraft:magenta_wool>, <item:minecraft:magenta_wool>, <item:minecraft:magenta_wool>], [<tag:items:minecraft:planks>, <item:minecraft:bone>, <tag:items:minecraft:planks>]]);

//reach upgrades, new recipes
craftingTable.addShaped("custom_reach_upgrade1", <item:effortlessbuilding:reach_upgrade1>, [[IIngredientEmpty.getInstance(), <item:minecraft:emerald>, IIngredientEmpty.getInstance()], [<item:minecraft:emerald>, <item:minecraft:slime_ball>, <item:minecraft:emerald>], [IIngredientEmpty.getInstance(), <item:minecraft:emerald>, IIngredientEmpty.getInstance()]]);

craftingTable.addShaped("custom_reach_upgrade2", <item:effortlessbuilding:reach_upgrade2>, [[<item:nethersdelight:propelpearl>, <item:infernalexp:molten_gold_cluster>, <item:nethersdelight:propelpearl>], [<item:infernalexp:molten_gold_cluster>, <item:minecraft:magma_cream>, <item:infernalexp:molten_gold_cluster>], [<item:nethersdelight:propelpearl>, <item:infernalexp:molten_gold_cluster>, <item:nethersdelight:propelpearl>]]);

craftingTable.addShaped("custom_reach_upgrade3", <item:effortlessbuilding:reach_upgrade3>, [[<item:minecraft:shulker_shell>, <item:minecraft:chorus_fruit>, <item:minecraft:shulker_shell>], [<item:minecraft:chorus_fruit>, <item:minecraft:end_crystal>, <item:minecraft:chorus_fruit>], [<item:minecraft:shulker_shell>, <item:minecraft:chorus_fruit>, <item:minecraft:shulker_shell>]]);


//Illager items from crude cladding

craftingTable.addShapeless("custom_blast_plating", <item:savage_and_ravage:blast_proof_plating>, [<item:biomemakeover:crude_cladding>, <tag:items:forge:ingots/gold>, <item:savage_and_ravage:creeper_spores>, <item:savage_and_ravage:creeper_spores>]);

val tapestry_array as IItemStack[IItemStack] = {
<item:minecraft:white_banner>      : <item:biomemakeover:white_tapestry>,
<item:minecraft:orange_banner>     : <item:biomemakeover:orange_tapestry>,
<item:minecraft:magenta_banner>    : <item:biomemakeover:magenta_tapestry>,
<item:minecraft:light_blue_banner> : <item:biomemakeover:light_blue_tapestry>,
<item:minecraft:yellow_banner>     : <item:biomemakeover:yellow_tapestry>,
<item:minecraft:lime_banner>       : <item:biomemakeover:lime_tapestry>,
<item:minecraft:pink_banner>       : <item:biomemakeover:pink_tapestry>,
<item:minecraft:gray_banner>       : <item:biomemakeover:gray_tapestry>,
<item:minecraft:light_gray_banner> : <item:biomemakeover:light_gray_tapestry>,
<item:minecraft:cyan_banner>       : <item:biomemakeover:cyan_tapestry>,
<item:minecraft:purple_banner>     : <item:biomemakeover:purple_tapestry>,
<item:minecraft:blue_banner>       : <item:biomemakeover:blue_tapestry>,
<item:minecraft:brown_banner>      : <item:biomemakeover:brown_tapestry>,
<item:minecraft:green_banner>      : <item:biomemakeover:green_tapestry>,
<item:minecraft:red_banner>        : <item:biomemakeover:red_tapestry>,
<item:minecraft:black_banner>      : <item:biomemakeover:black_tapestry>
};

for input, output in tapestry_array {
	smithing.addRecipe("custom_recipe_for_" + output.registryName.path, output, input, <item:biomemakeover:crude_cladding>);
}

//burning malum reagants for original drops
furnace.addRecipe("reagants_to_flesh", <item:malum:rotting_essence>, <item:minecraft:rotten_flesh> * 2, 1.0, 200);
furnace.addRecipe("reagants_to_bone", <item:malum:grim_talc>, <item:minecraft:bone> * 2, 1.0, 200);
furnace.addRecipe("reagants_to_membrane", <item:malum:astral_weave>, <item:minecraft:phantom_membrane> * 2, 1.0, 200);

blastFurnace.addRecipe("blast_reagants_to_flesh", <item:malum:rotting_essence>, <item:minecraft:rotten_flesh> * 2, 1.0, 100);
blastFurnace.addRecipe("blast_reagants_to_bone", <item:malum:grim_talc>, <item:minecraft:bone> * 2, 1.0, 100);
blastFurnace.addRecipe("blast_reagants_to_membrane", <item:malum:astral_weave>, <item:minecraft:phantom_membrane> * 2, 1.0, 100);

//custom summoning altar recipe

craftingTable.addShaped("custom_summoning_altar", <item:summoningrituals:altar>, [[<tag:items:minecraft:candles>, <item:minecraft:player_head>.withTag({SkullOwner: {Id: [1345610511, 728973417, -1894814960, 1553756194], Properties: {textures: [{Value: "ewogICJ0aW1lc3RhbXAiIDogMTY3NDYyODg1NzM4NiwKICAicHJvZmlsZUlkIiA6ICI1MDM0NjMwZjJiNzM0MDY5OGYwZjZiMTA1YzljNzAyMiIsCiAgInByb2ZpbGVOYW1lIiA6ICJSb3NpZUhvbHN0ZWluIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzU4NGMxYmI5MzJjODEwZjIwNjk2NmIxZTQ2MmNjMjIxYWRmOGY1YjBhNmQ2NGQ3ZWNiZGZlMGYwNTIxN2U0YzgiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfSwKICAgICJDQVBFIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS8yMzQwYzBlMDNkZDI0YTExYjE1YThiMzNjMmE3ZTllMzJhYmIyMDUxYjI0ODFkMGJhN2RlZmQ2MzVjYTdhOTMzIgogICAgfQogIH0KfQ==" as string, Signature: "Wz7pQCf57iYzM4zD0dcBtIU5VAVNF1TStGaZXOsUXGw3voNNNbx4ww5xRUYpiVoAvnCjpMq8amS2WBXsgn9Efs2SaqeMoIn3E4XLFNsEUlWVPW5bOtN0cXwx9kmeEGOjtxrSz9DyLZ69na+/lam9S1KippAJfcC0DrDPZ2KEswOlzcj8eTb4cD/39og5OFO0Qi8Pvfd4fuvh5hfvKHnHB7fbzYBTnyybAd+lQ5a0uz6Hp33Lqb2o5AIeiEJAzd5HUbEZTJN7/M8E7SsqhAf02iDHvmbMoK62mvke8JJgTFgxreGsw969ipq0Fc2RcejQBVxaTm5OeHy25reDaVAjUacUvZ6xGV0uHLxs6HELk8FKOxGM2r2VwpeiqaL8tb1ZMjeOqZ3HgKC1gH4vkXgqRNavBhazVcDsmPWSg9pr+4PU2ehwpsLCyjA8VpHfhw4TOwYbnU+cbdsd9eBYKQG3OOIEgtaOngmYZzj70jTeeTPf78sa5afAgL3fMXlBXiiPoh4wjnP8FK7R6IXvNVpTJSNOyldX9g75V4TwKm/gEgWVrCrubpnzTMoHJJuca7d814Y8eVzDvonuqHalaXi7vw9atBkFWY1xCtPFdPdQcobueq7tMCIQ4QOvKzDSn+fPbgP/Y9Zp4n9kW9K+KkswZcZX/o8S+HoMhXMOf0JSb9s=" as string}]}, Name: "Rotwalker" as string}}), <tag:items:minecraft:candles>], [<item:undergarden:forgotten_ingot>, <tag:items:minecraft:planks>, <item:undergarden:forgotten_ingot>], [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]]);

//reworked plain grinder recipes
craftingTable.addShaped("custom_grinder", <item:plaingrinder:grinder>, [[<tag:items:forge:cobblestone>, <item:thermal:iron_gear>, <tag:items:forge:cobblestone>], [<tag:items:forge:cobblestone>, <item:minecraft:flint>, <tag:items:forge:cobblestone>], [<tag:items:forge:cobblestone>, <tag:items:forge:cobblestone>, <tag:items:forge:cobblestone>]]);

craftingTable.addShaped("custom_handle", <item:plaingrinder:handle>, [[<tag:items:forge:rods/wooden>, <tag:items:forge:rods/wooden>], [IIngredientEmpty.getInstance(), <tag:items:forge:rods/wooden>], [IIngredientEmpty.getInstance(), <tag:items:forge:rods/wooden>]]);

//updated channeling stone recipe

craftingTable.addShaped("custom_channeling_stone", <item:advanced_xp:channeling_stone>, [[<item:minecraft:mossy_stone_bricks>, <item:minecraft:mossy_stone_bricks>, <item:minecraft:mossy_stone_bricks>], [<item:malum:chunk_of_brilliance>, <item:minecraft:experience_bottle>, <item:malum:chunk_of_brilliance>], [<item:minecraft:mossy_stone_bricks>, <item:minecraft:mossy_stone_bricks>, <item:minecraft:mossy_stone_bricks>]]);

//Custom gravisand recipe that uses warped soul sand.
craftingTable.addShapeless("custom_gravisand_alternative", <item:quark:gravisand> * 2, [<item:byg:warped_soul_sand>, <item:minecraft:redstone>]);

//making blood magic recipes produce the proper type of sulfur

<recipetype:bloodmagic:arc>.addJsonRecipe("custom_sulfur_arc", {
	"input": {
    "tag": "forge:netherrack"
  },
  "inputsize": 1,
  "tool": {
    "tag": "bloodmagic:arc/explosive"
  },
  "outputFluid": {
    "fluid": "minecraft:lava",
    "amount": 50
  },
  "output": {
    "item": "thermal:sulfur_dust"
  },
  "consumeingredient": false,
  "mainoutputchance": 0.0
});

<recipetype:bloodmagic:alchemytable>.addJsonRecipe("custom_sulfur_alchemy_lava", {
  "input": [
    {
      "item": "minecraft:lava_bucket"
    },
    {
      "tag": "forge:cobblestone"
    }
  ],
  "output": {
    "item": "thermal:sulfur_dust",
    "count": 4
  },
  "syphon": 200,
  "ticks": 100,
  "upgradeLevel": 0
});

<recipetype:bloodmagic:alchemytable>.addJsonRecipe("custom_sulfur_alchemy_sigil", {
  "input": [
    {
      "item": "bloodmagic:lavasigil"
    },
    {
      "tag": "forge:cobblestone"
    }
  ],
  "output": {
    "item": "thermal:sulfur_dust",
    "count": 4
  },
  "syphon": 200,
  "ticks": 100,
  "upgradeLevel": 0
});

//numismatic overhaul coins in thermal numismatic dynamo
<recipetype:thermal:numismatic_fuel>.addJsonRecipe("custom_bronze_coin_dynamo", {
  "ingredient": {
    "item": "numismaticoverhaul:bronze_coin"
  },
  "energy": 32000
});
<recipetype:thermal:numismatic_fuel>.addJsonRecipe("custom_silver_coin_dynamo", {
  "ingredient": {
    "item": "numismaticoverhaul:silver_coin"
  },
  "energy": 64000
});
<recipetype:thermal:numismatic_fuel>.addJsonRecipe("custom_gold_coin_dynamo", {
  "ingredient": {
    "item": "numismaticoverhaul:gold_coin"
  },
  "energy": 160000
});

//custom extruder recipe
craftingTable.addShaped("custom_ftbic_extruder", <item:ftbic:extruder>, [[<tag:items:forge:plates/iron>, <item:ftbic:electronic_circuit>, <tag:items:forge:plates/iron>], [<tag:items:forge:plates/iron>, <item:ftbic:machine_block>, <tag:items:forge:plates/iron>]]);

//alternate rope recipe
craftingTable.addShapeless("custom_alternate_rope_recipe", <item:supplementaries:rope> * 4, [<item:farmersdelight:rope>, <item:farmersdelight:rope>]);
craftingTable.addShaped("custom_alternate_rope_vine", <item:supplementaries:rope> * 2, [[<tag:items:lr:vines>], [<tag:items:lr:vines>]]);

//custom safety net recipe
craftingTable.addShaped("custom_safety_net", <item:farmersdelight:safety_net> * 2, [[<tag:items:forge:rope>, <tag:items:forge:rope>], [<tag:items:forge:rope>, <tag:items:forge:rope>]]);

//custom warp scroll recipe
craftingTable.addShaped("custom_warp_scroll_recipe", <item:waystones:warp_scroll> * 4, [[IIngredientEmpty.getInstance(), <item:waystones:warp_dust>, IIngredientEmpty.getInstance()], [<item:waystones:warp_dust>, <item:minecraft:paper>, <item:waystones:warp_dust>], [IIngredientEmpty.getInstance(), <item:waystones:warp_dust>, IIngredientEmpty.getInstance()]]);

//compost from cloggrum
craftingTable.addShapeless("cloggrum_and_sulfur_to_compost", <item:thermal:compost> * 6, [<item:thermal:sulfur_dust>, <item:contenttweaker:cloggrum_dust>]);

//custom coal coke recipe
blastFurnace.addRecipe("custom_coal_coke", <item:thermal:coal_coke>, <item:minecraft:coal>, 0.5, 100);

//custom generic chest recipes
craftingTable.addShapeless("custom_shapeless_chest_conversion", <item:minecraft:chest>, [<tag:items:forge:chests/wooden>]);