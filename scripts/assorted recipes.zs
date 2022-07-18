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

//adding immersive engineering bottling recipe for create honeyed apple
<recipetype:immersiveengineering:bottling_machine>.addJsonRecipe("bottling_honeyed_apple", {"result":{"item":"create:honeyed_apple"},"input":{"item":"minecraft:apple"},"fluid":{"tag":"forge:honey","amount":250}});

//powdered snow recipe
craftingTable.addShaped("powdered_snow", <item:minecraft:powder_snow_bucket>, [[<item:minecraft:ice>, <item:minecraft:snowball>, <item:minecraft:ice>], [<item:minecraft:ice>, <item:minecraft:water_bucket>, <item:minecraft:ice>], [<item:minecraft:ice>, <item:minecraft:ice>, <item:minecraft:ice>]]);

//apotheosis ender lead
craftingTable.remove(<item:apotheosis:ender_lead>);
craftingTable.addShaped("ender_lead", <item:apotheosis:ender_lead>, [[<item:minecraft:twisting_vines>, <item:minecraft:twisting_vines>, IIngredientEmpty.getInstance()], [<item:minecraft:twisting_vines>, <item:minecraft:ender_eye>, IIngredientEmpty.getInstance()], [IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance(), <item:minecraft:twisting_vines>]]);

//waystones warp stone
craftingTable.remove(<item:waystones:warp_stone>);
craftingTable.addShaped("waystones_warp_stone", <item:waystones:warp_stone>, [[<item:waystones:warp_dust>, <item:minecraft:ender_pearl>, <item:waystones:warp_dust>], [<item:minecraft:ender_pearl>, <tag:items:balm:emeralds>, <item:minecraft:ender_pearl>], [<item:waystones:warp_dust>, <item:minecraft:ender_pearl>, <item:waystones:warp_dust>]]);

//waystones warp dust
craftingTable.remove(<item:waystones:warp_dust>);
craftingTable.addShapeless("waystones_warp_dust", <item:waystones:warp_dust> * 2, [<tag:items:forge:dusts/ender>, <item:minecraft:chorus_fruit>, <item:minecraft:blaze_powder>]);

//waystone warp plate 
craftingTable.remove(<item:waystones:warp_plate>);
craftingTable.addShaped("warp_plate", <item:waystones:warp_plate>, [[<item:minecraft:stone_bricks>, <item:waystones:warp_dust>, <item:minecraft:stone_bricks>], [<item:waystones:warp_dust>, <item:minecraft:emerald>, <item:waystones:warp_dust>], [<item:minecraft:stone_bricks>, <item:waystones:warp_dust>, <item:minecraft:stone_bricks>]]);

//minecraft lightning rod
craftingTable.remove(<item:minecraft:lightning_rod>);
craftingTable.addShaped("minecraft_lightning_rod", <item:minecraft:lightning_rod>, [[<tag:items:forge:storage_blocks/copper>], [<tag:items:forge:rods/copper>], [<tag:items:forge:rods/copper>]]);

//quark ender watcher
craftingTable.remove(<item:quark:ender_watcher>);
craftingTable.addShaped("quark_ender_watcher", <item:quark:ender_watcher>, [[<item:minecraft:obsidian>, <tag:items:forge:dusts/redstone>, <item:minecraft:obsidian>], [<tag:items:forge:dusts/redstone>, <item:minecraft:ender_eye>, <tag:items:forge:dusts/redstone>], [<item:minecraft:obsidian>, <tag:items:forge:dusts/redstone>, <item:minecraft:obsidian>]]);

//pretty pipes blank module
craftingTable.remove(<item:prettypipes:blank_module>);
craftingTable.addShaped("prettypipes_blank_module", <item:prettypipes:blank_module>, [[<item:minecraft:quartz>, <item:minecraft:redstone>, <item:minecraft:quartz>], [<item:minecraft:smooth_stone_slab>, <item:prettypipes:pipe>, <item:minecraft:smooth_stone_slab>], [<item:minecraft:quartz>, <item:minecraft:redstone>, <item:minecraft:quartz>]]);

//pretty pipes wrench
craftingTable.remove(<item:prettypipes:wrench>);
craftingTable.addShapedMirrored("prettypipes_wrench", <constant:minecraft:mirroraxis:all>, <item:prettypipes:wrench>, [[IIngredientEmpty.getInstance(), <item:prettypipes:pipe>, <tag:items:forge:plates/steel>], [<item:minecraft:red_terracotta>, <tag:items:forge:plates/steel>, <tag:items:forge:plates/steel>], [IIngredientEmpty.getInstance(), <item:minecraft:red_terracotta>, IIngredientEmpty.getInstance()]]);

//pretty pipes pipe
craftingTable.remove(<item:prettypipes:pipe>);
craftingTable.addShaped("prettypipes_pipe", <item:prettypipes:pipe> * 4, [[<item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:redstone>], [<tag:items:forge:fences/steel>, <item:quark:framed_glass>, <tag:items:forge:fences/steel>], [<item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:redstone>]]);

//pretty pipes item terminal
craftingTable.remove(<item:prettypipes:item_terminal>);
craftingTable.addShaped("prettypipes_item_terminal", <item:prettypipes:item_terminal>, [[<tag:items:forge:sheetmetals/steel>, <item:quark:ender_watcher>, <tag:items:forge:sheetmetals/steel>], [<item:prettypipes:high_retrieval_module>, <item:quark:crate>, <item:prettypipes:high_extraction_module>], [<tag:items:forge:sheetmetals/steel>, <item:create:portable_storage_interface>, <tag:items:forge:sheetmetals/steel>]]);

//pretty pipes crafting terminal
craftingTable.remove(<item:prettypipes:crafting_terminal>);
craftingTable.addShaped("prettypipes_crafting_terminal", <item:prettypipes:crafting_terminal>, [[<item:minecraft:diamond>, <item:prettypipes:high_crafting_module>, <item:minecraft:diamond>], [<item:minecraft:comparator>, <item:prettypipes:item_terminal>, <item:minecraft:comparator>], [<item:minecraft:diamond>, <item:immersiveengineering:rs_engineering>, <item:minecraft:diamond>]]);

//pretty pipes pressurizer
craftingTable.remove(<item:prettypipes:pressurizer>);
craftingTable.addShaped("prettypipes_pressurizer", <item:prettypipes:pressurizer>, [[<tag:items:forge:ingots/steel>, <item:prettypipes:high_speed_module>, <tag:items:forge:ingots/steel>], [<item:prettypipes:high_speed_module>, <item:immersiveengineering:capacitor_mv>, <item:prettypipes:high_speed_module>], [<tag:items:forge:ingots/steel>, <item:prettypipes:high_speed_module>, <tag:items:forge:ingots/steel>]]);

//quark crate
craftingTable.remove(<item:quark:crate>);
craftingTable.addShaped("quark_oddities_crate", <item:quark:crate>, [[<tag:items:forge:plates/iron>, <tag:items:minecraft:planks>, <tag:items:forge:plates/iron>], [<tag:items:minecraft:planks>, <tag:items:forge:barrels/wooden>, <tag:items:minecraft:planks>], [<tag:items:forge:plates/iron>, <tag:items:minecraft:planks>, <tag:items:forge:plates/iron>]]);

//integrated dynamics logic cable
craftingTable.remove(<item:integrateddynamics:cable>);
craftingTable.addShapedMirrored("integrateddynamics_crafting_cable", <constant:minecraft:mirroraxis:all>, <item:integrateddynamics:cable> * 4, [[<item:integrateddynamics:crystalized_menril_chunk>, <item:minecraft:end_rod>, <item:integrateddynamics:crystalized_menril_chunk>], [<item:integrateddynamics:crystalized_menril_chunk>, <item:immersiveengineering:rs_engineering>, <item:integrateddynamics:crystalized_menril_chunk>], [<item:integrateddynamics:crystalized_menril_chunk>, <item:minecraft:end_rod>, <item:integrateddynamics:crystalized_menril_chunk>]]);

//integrated dynamics wrench
craftingTable.remove(<item:integrateddynamics:wrench>);
craftingTable.addShaped("integrateddynamics_crafting_wrench", <item:integrateddynamics:wrench>, [[IIngredientEmpty.getInstance(), <item:integrateddynamics:crystalized_menril_chunk>, IIngredientEmpty.getInstance()], [IIngredientEmpty.getInstance(), <tag:items:integrateddynamics:menril_logs>, <item:integrateddynamics:crystalized_menril_chunk>], [<tag:items:integrateddynamics:menril_logs>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()]]);

//integrated dynamics item interface
craftingTable.remove(<item:integratedtunnels:part_interface_item>);
craftingTable.addShaped("integratedtunnels_crafting_part_interface_item", <item:integratedtunnels:part_interface_item> * 2, [[<item:integrateddynamics:cable>, <item:create:portable_storage_interface>, <item:integrateddynamics:cable>], [<item:integrateddynamics:crystalized_menril_chunk>, <item:integrateddynamics:crystalized_menril_chunk>, <item:integrateddynamics:crystalized_menril_chunk>]]);

//integrated dynamics energy interface
craftingTable.remove(<item:integratedtunnels:part_interface_energy>);
craftingTable.addShaped("integratedtunnels_crafting_part_interface_energy", <item:integratedtunnels:part_interface_energy> * 2, [[<item:integrateddynamics:cable>, <item:immersiveengineering:coil_mv>, <item:integrateddynamics:cable>], [<item:integrateddynamics:crystalized_menril_chunk>, <item:integrateddynamics:crystalized_menril_chunk>, <item:integrateddynamics:crystalized_menril_chunk>]]);

//integrated dynamics fluid interface
craftingTable.remove(<item:integratedtunnels:part_interface_fluid>);
craftingTable.addShaped("integratedtunnels_crafting_part_interface_fluid", <item:integratedtunnels:part_interface_fluid> * 2, [[<item:integrateddynamics:cable>, <item:create:portable_fluid_interface>, <item:integrateddynamics:cable>], [<item:integrateddynamics:crystalized_menril_chunk>, <item:integrateddynamics:crystalized_menril_chunk>, <item:integrateddynamics:crystalized_menril_chunk>]]);

//integrated dynamic input variable transformer
craftingTable.remove(<item:integrateddynamics:variable_transformer_input>);
craftingTable.addShaped("integrateddynamics_crafting_variable_transformer_input", <item:integrateddynamics:variable_transformer_input> * 2, [[IIngredientEmpty.getInstance(), <item:integrateddynamics:variable>, IIngredientEmpty.getInstance()], [<item:integrateddynamics:cable>, <item:minecraft:sticky_piston>, <item:integrateddynamics:cable>], [IIngredientEmpty.getInstance(), <item:integrateddynamics:variable>, IIngredientEmpty.getInstance()]]);

//integrated dynamics output variable transformer
craftingTable.remove(<item:integrateddynamics:variable_transformer_output>);
craftingTable.addShaped("integrateddynamics_crafting_variable_transformer_output", <item:integrateddynamics:variable_transformer_output> * 2, [[IIngredientEmpty.getInstance(), <item:integrateddynamics:variable>, IIngredientEmpty.getInstance()], [<item:integrateddynamics:cable>, <item:minecraft:piston>, <item:integrateddynamics:cable>], [IIngredientEmpty.getInstance(), <item:integrateddynamics:variable>, IIngredientEmpty.getInstance()]]);

//integrated dynamics battery
craftingTable.remove(<item:integrateddynamics:energy_battery>);
craftingTable.addShaped("integrateddynamics_crafting_energy_battery", <item:integrateddynamics:energy_battery>.withTag({energy: 0 as int}), [[<tag:items:integrateddynamics:menril_logs>, <item:integrateddynamics:crystalized_menril_block>, <tag:items:integrateddynamics:menril_logs>], [<tag:items:integrateddynamics:menril_logs>, <item:immersiveengineering:capacitor_mv>, <tag:items:integrateddynamics:menril_logs>], [<tag:items:integrateddynamics:menril_logs>, <item:integrateddynamics:crystalized_menril_block>, <tag:items:integrateddynamics:menril_logs>]]);

//supplementaries blue bomb
craftingTable.addShapeless("supplementaries_bomb_blue", <item:supplementaries:bomb_blue>, [<item:quark:blue_rune>, <item:supplementaries:bomb>]);

//storage drawers glowing label
craftingTable.remove(<item:storagedrawers:illumination_upgrade>);
craftingTable.addShaped("storagedrawers_illumination_upgrade", <item:storagedrawers:illumination_upgrade> * 8, [[<item:minecraft:glow_ink_sac>, <tag:items:forge:rods/wooden>, <item:minecraft:glow_ink_sac>], [<tag:items:forge:rods/wooden>, <item:storagedrawers:upgrade_template>, <tag:items:forge:rods/wooden>], [<item:minecraft:glow_ink_sac>, <tag:items:forge:rods/wooden>, <item:minecraft:glow_ink_sac>]]);

//waystones return scroll
craftingTable.remove(<item:waystones:return_scroll>);
craftingTable.addShaped("waystones_return_scroll", <item:waystones:return_scroll> * 2, [[<tag:items:balm:gold_nuggets>, <item:waystones:warp_dust>, <tag:items:balm:gold_nuggets>], [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>]]);

//waystones bound scroll
craftingTable.remove(<item:waystones:bound_scroll>);
craftingTable.addShaped("waystones_bound_scroll", <item:waystones:bound_scroll> * 4, [[<tag:items:balm:gold_nuggets>, IIngredientEmpty.getInstance(), <tag:items:balm:gold_nuggets>], [<item:waystones:warp_dust>, <tag:items:balm:gold_nuggets>, <item:waystones:warp_dust>], [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>]]);

//waystones warp scroll
craftingTable.remove(<item:waystones:warp_scroll>);
craftingTable.addShaped("waystones_warp_scroll", <item:waystones:warp_scroll> * 4, [[<tag:items:balm:gold_nuggets>, <item:waystones:warp_stone>, <tag:items:balm:gold_nuggets>], [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>]]);

//replacing ARS guidebook recipe
craftingTable.remove(<item:ars_nouveau:worn_notebook>);
craftingTable.addShapeless("ars_nouveau_worn_notebook", <item:ars_nouveau:worn_notebook>, [<tag:items:forge:gems/source>, <item:minecraft:book>]);

//Create storage interface
craftingTable.remove(<item:create:portable_storage_interface>);
craftingTable.addShapeless("portable_storage_interface", <item:create:portable_storage_interface>, [<item:create:andesite_casing>, <item:create:smart_chute>]);

//Create fluid interface
craftingTable.remove(<item:create:portable_fluid_interface>);
craftingTable.addShapeless("portable_fluid_interface", <item:create:portable_fluid_interface>, [<item:create:copper_casing>, <item:create:smart_fluid_pipe>]);

//create brass casing new recipe
craftingTable.addShaped("create_brass_casing", <item:create:brass_casing> * 8, [[<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>], [<tag:items:forge:plates/brass>, <tag:items:minecraft:logs>, <tag:items:forge:plates/brass>], [<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>]]);

//beyond earth removing blast furnace steel recipe
blastFurnace.remove(<item:beyond_earth:steel_ingot>);

//rose quarts tooltip
<item:biomesoplenty:rose_quartz_shard>.addTooltip("Found in large patches in the nether.");

//rose quartz uncrafting block
craftingTable.addShapeless("uncrafting_rose_quartz", <item:biomesoplenty:rose_quartz_block> * 4, [<item:biomesoplenty:rose_quartz_shard>]);

//beyond earth hammer durability upgrade
<item:beyond_earth:hammer>.maxDamage = 75;

//immersive engineering hammer durability upgrade and recipe change
craftingTable.remove(<item:immersiveengineering:hammer>);
craftingTable.addShaped("immersiveengineering_crafting_hammer", <item:immersiveengineering:hammer>, [[IIngredientEmpty.getInstance(), <tag:items:forge:ingots/iron>, <tag:items:forge:fiber_hemp>], [IIngredientEmpty.getInstance(), <tag:items:forge:rods/wooden>, <tag:items:forge:ingots/iron>], [<tag:items:forge:rods/wooden>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()]]);

//bundle recipe redo
craftingTable.remove(<item:minecraft:bundle>);
craftingTable.addShaped("bundle", <item:minecraft:bundle>, [[<tag:items:forge:string>, <tag:items:forge:leather>, <tag:items:forge:string>], [<tag:items:forge:leather>, IIngredientEmpty.getInstance(), <tag:items:forge:leather>], [<tag:items:forge:leather>, <tag:items:forge:leather>, <tag:items:forge:leather>]]);

//quarryplus marker plus recipe
craftingTable.remove(<item:quarryplus:marker>);
craftingTable.addShaped("marker_plus", <item:quarryplus:marker>, [[<item:minecraft:gold_ingot>], [<item:minecraft:redstone_torch>]]);

//quarryplus chunk marker recipe
craftingTable.remove(<item:quarryplus:marker16>);
craftingTable.addShaped("marker_chunk", <item:quarryplus:marker16>, [[IIngredientEmpty.getInstance(), <item:quarryplus:marker>, IIngredientEmpty.getInstance()], [<item:quarryplus:marker>, <tag:items:forge:rods/blaze>, <item:quarryplus:marker>], [IIngredientEmpty.getInstance(), <tag:items:forge:rods/blaze>, IIngredientEmpty.getInstance()]]);

//quarryplus recipe
craftingTable.addShaped("quarry", <item:quarryplus:quarry>, [[<tag:items:forge:plates/steel>, <item:quarryplus:marker>, <tag:items:forge:plates/steel>], [<item:minecraft:diamond>, <item:quarryplus:mining_well>, <item:minecraft:diamond>], [<tag:items:forge:plates/steel>, <item:minecraft:diamond_pickaxe>, <tag:items:forge:plates/steel>]]);

//quarryplus statuschecker recipe
craftingTable.addShaped("quarry_statuschecker", <item:quarryplus:status_checker>, [[<item:quarryplus:marker>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()], [<tag:items:forge:ingots/iron>, <tag:items:forge:dusts/redstone>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:minecraft:buttons>, <tag:items:forge:ingots/iron>]]);

//quarryplus quarry Y setter recipe
craftingTable.addShaped("quarry_y_setter", <item:quarryplus:y_setter>, [[<item:quarryplus:marker>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()], [<tag:items:forge:gems/diamond>, <tag:items:forge:dusts/redstone>, <tag:items:forge:gems/diamond>], [<tag:items:forge:gems/diamond>, <tag:items:minecraft:buttons>, <tag:items:forge:gems/diamond>]]);

//quarryplus mining well recipe
craftingTable.addShaped("mining_well", <item:quarryplus:mining_well>, [[<tag:items:forge:plates/iron>, <tag:items:forge:rods/copper>, <tag:items:forge:plates/iron>], [<tag:items:forge:dusts/redstone>, <tag:items:forge:rods/copper>, <tag:items:forge:dusts/redstone>], [<tag:items:forge:plates/iron>, <item:minecraft:iron_pickaxe>, <tag:items:forge:plates/iron>]]);

//quarryplus pump module recipe
craftingTable.remove(<item:quarryplus:pump_module>);
craftingTable.addShaped("pump_module", <item:quarryplus:pump_module>, [[<tag:items:forge:ingots/iron>, <item:immersiveengineering:fluid_pipe>, <tag:items:forge:ingots/iron>], [<tag:items:forge:dusts/redstone>, <item:immersiveengineering:fluid_pipe>, <tag:items:forge:dusts/redstone>], [<tag:items:forge:ingots/iron>, <item:immersiveengineering:fluid_pump>, <tag:items:forge:ingots/iron>]]);

//dimensional dungeons portal keystone
craftingTable.remove(<item:dimdungeons:block_portal_keyhole>);
craftingTable.addShaped("portal_keystone", <item:dimdungeons:block_portal_keyhole>, [[<item:dimdungeons:block_gilded_portal>, <item:supplementaries:lock_block>, <item:dimdungeons:block_gilded_portal>], [<item:supplementaries:lock_block>, <item:minecraft:ender_eye>, <item:supplementaries:lock_block>], [<item:dimdungeons:block_gilded_portal>, <item:supplementaries:lock_block>, <item:dimdungeons:block_gilded_portal>]]);

//updating computercraft recipes
craftingTable.remove(<item:computercraft:computer_normal>);

craftingTable.addShaped("computercraft_computer_normal", <item:computercraft:computer_normal>, [[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <item:minecraft:comparator>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:glass_panes>, <tag:items:forge:ingots/iron>]]);
craftingTable.removeByName("computercraft:computer_advanced");

craftingTable.addShaped("computercraft_computer_advanced", <item:computercraft:computer_advanced>, [[<tag:items:forge:ingots/gold>, <tag:items:forge:ingots/gold>, <tag:items:forge:ingots/gold>], [<tag:items:forge:ingots/gold>, <item:minecraft:comparator>, <tag:items:forge:ingots/gold>], [<tag:items:forge:ingots/gold>, <tag:items:forge:glass_panes>, <tag:items:forge:ingots/gold>]]);

craftingTable.remove(<item:computercraft:pocket_computer_normal>);

craftingTable.addShaped("computercraft_tablet", <item:computercraft:pocket_computer_normal>, [[<tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>], [<tag:items:forge:plates/iron>, <item:minecraft:comparator>, <tag:items:forge:plates/iron>], [<tag:items:forge:plates/iron>, <tag:items:forge:glass_panes>, <tag:items:forge:plates/iron>]]);

craftingTable.addShaped("computercraft_tablet_advanced", <item:computercraft:pocket_computer_advanced>, [[<tag:items:forge:plates/gold>, <tag:items:forge:plates/gold>, <tag:items:forge:plates/gold>], [<tag:items:forge:plates/gold>, <item:minecraft:comparator>, <tag:items:forge:plates/gold>], [<tag:items:forge:plates/gold>, <tag:items:forge:glass_panes>, <tag:items:forge:plates/gold>]]);

craftingTable.remove(<item:computercraft:disk_drive>);
craftingTable.addShaped("computercraft_disk_drive", <item:computercraft:disk_drive>, [[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:dusts/redstone>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:dusts/redstone>, <tag:items:forge:ingots/iron>]]);

craftingTable.remove(<item:computercraft:speaker>);
craftingTable.addShaped("computercraft_speaker", <item:computercraft:speaker>, [[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <item:minecraft:note_block>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:dusts/redstone>, <tag:items:forge:ingots/iron>]]);

craftingTable.remove(<item:computercraft:printer>);
craftingTable.addShaped("computercraft_printer", <item:computercraft:printer>, [[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:dusts/redstone>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:dyes>, <tag:items:forge:ingots/iron>]]);

craftingTable.remove(<item:computercraft:wireless_modem_normal>);
craftingTable.addShaped("computercraft_wireless_modem_normal", <item:computercraft:wireless_modem_normal>, [[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:ender_pearls>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>]]);

craftingTable.remove(<item:computercraft:monitor_normal>);
craftingTable.addShaped("computercraft_monitor_normal", <item:computercraft:monitor_normal> * 4, [[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:glass_panes>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>]]);

craftingTable.remove(<item:computercraft:cable>);
craftingTable.addShaped("computercraft_cable", <item:computercraft:cable> * 8, [[IIngredientEmpty.getInstance(), <tag:items:forge:plates/iron>, IIngredientEmpty.getInstance()], [<tag:items:forge:plates/iron>, <tag:items:forge:dusts/redstone>, <tag:items:forge:plates/iron>], [IIngredientEmpty.getInstance(), <tag:items:forge:plates/iron>, IIngredientEmpty.getInstance()]]);

craftingTable.removeByName("computercraft:wired_modem");
craftingTable.addShaped("computercraft_wired_modem", <item:computercraft:wired_modem>, [[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:dusts/redstone>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>]]);

//tooltip lucky rabbits foot
<item:apotheosis:lucky_foot>.addTooltip("A rare drop from rabbits.");

//stone variant crafting
craftingTable.removeByName("minecraft:diorite");
craftingTable.addShapedMirrored("minecraft_diorite", MirrorAxis.HORIZONTAL, <item:minecraft:diorite> * 4, [[<item:minecraft:stone>, <item:minecraft:calcite>], [<item:minecraft:calcite>, <item:minecraft:stone>]]);

craftingTable.removeByName("minecraft:granite");
craftingTable.addShapedMirrored("minecraft_granite", MirrorAxis.HORIZONTAL, <item:minecraft:granite> * 4, [[<item:minecraft:stone>, <item:minecraft:terracotta>], [<item:minecraft:terracotta>, <item:minecraft:stone>]]);

craftingTable.removeByName("minecraft:andesite");
craftingTable.addShapedMirrored("minecraft_andesite", MirrorAxis.HORIZONTAL, <item:minecraft:andesite> * 4, [[<item:minecraft:stone>, <item:minecraft:tuff>], [<item:minecraft:tuff>, <item:minecraft:stone>]]);

//advanced machine casing
//craftingTable.remove(<item:indreb:advanced_machine_casing>);
//craftingTable.addShaped("indreb_block_advanced_machine_casing", <item:indreb:advanced_machine_casing>, [[<tag:items:forge:plates/steel>, <item:indreb:carbon_plate>, <tag:items:forge:plates/steel>], [<item:indreb:advanced_alloy>, <item:indreb:basic_machine_casing>, <item:indreb:advanced_alloy>], [<tag:items:forge:plates/steel>, <item:indreb:carbon_plate>, <tag:items:forge:plates/steel>]]);

//Reach upgrade level 1 recipe
craftingTable.remove(<item:effortlessbuilding:reach_upgrade1>);
craftingTable.addShaped("effortlessbuilding_reach_upgrade1", <item:effortlessbuilding:reach_upgrade1>, [[IIngredientEmpty.getInstance(), <item:tconstruct:earth_slime_crystal>, IIngredientEmpty.getInstance()], [<item:tconstruct:earth_slime_crystal>, <item:minecraft:slime_ball>, <item:tconstruct:earth_slime_crystal>], [IIngredientEmpty.getInstance(), <item:tconstruct:earth_slime_crystal>, IIngredientEmpty.getInstance()]]);

//reach upgrade level 2 recipe
craftingTable.remove(<item:effortlessbuilding:reach_upgrade2>);
craftingTable.addShaped("effortlessbuilding_reach_upgrade2", <item:effortlessbuilding:reach_upgrade2>, [[IIngredientEmpty.getInstance(), <item:tconstruct:ichor_slime_crystal>, IIngredientEmpty.getInstance()], [<item:tconstruct:ichor_slime_crystal>, <item:tconstruct:ichor_slime_ball>, <item:tconstruct:ichor_slime_crystal>], [IIngredientEmpty.getInstance(), <item:tconstruct:ichor_slime_crystal>, IIngredientEmpty.getInstance()]]);

//reach upgrade level 2 recipe
craftingTable.remove(<item:effortlessbuilding:reach_upgrade3>);
craftingTable.addShaped("effortlessbuilding_reach_upgrade3", <item:effortlessbuilding:reach_upgrade3>, [[IIngredientEmpty.getInstance(), <item:tconstruct:ender_slime_crystal>, IIngredientEmpty.getInstance()], [<item:tconstruct:ender_slime_crystal>, <item:tconstruct:ender_slime_ball>, <item:tconstruct:ender_slime_crystal>], [IIngredientEmpty.getInstance(), <item:tconstruct:ender_slime_crystal>, IIngredientEmpty.getInstance()]]);

//raw block blasting

<tag:items:forge:storage_blocks/raw_cloggrum>.add(<item:undergarden:raw_cloggrum_block>);
<tag:items:forge:storage_blocks/raw_froststeel>.add(<item:undergarden:raw_froststeel_block>);

val rawblock_block_map as IItemStack[IIngredient] = {
<tag:items:forge:storage_blocks/raw_iron>.asIIngredient(): <item:minecraft:iron_block>,
<tag:items:forge:storage_blocks/raw_copper>.asIIngredient(): <item:minecraft:copper_block>,
<tag:items:forge:storage_blocks/raw_gold>.asIIngredient(): <item:minecraft:gold_block>,
<tag:items:forge:storage_blocks/raw_zinc>.asIIngredient(): <item:create:zinc_block>,
<tag:items:forge:storage_blocks/raw_desh>.asIIngredient(): <item:beyond_earth:desh_block>,
<tag:items:forge:storage_blocks/raw_ostrum>.asIIngredient(): <item:beyond_earth:ostrum_block>,
<tag:items:forge:storage_blocks/raw_calorite>.asIIngredient(): <item:beyond_earth:calorite_block>,
<tag:items:forge:storage_blocks/raw_cloggrum>.asIIngredient(): <item:undergarden:cloggrum_block>,
<tag:items:forge:storage_blocks/raw_froststeel>.asIIngredient(): <item:undergarden:froststeel_block>,
<tag:items:forge:storage_blocks/raw_aluminum>.asIIngredient(): <item:immersiveengineering:storage_aluminum>,
<tag:items:forge:storage_blocks/raw_lead>.asIIngredient(): <item:immersiveengineering:storage_lead>,
<tag:items:forge:storage_blocks/raw_silver>.asIIngredient(): <item:immersiveengineering:storage_silver>,
<tag:items:forge:storage_blocks/raw_nickel>.asIIngredient(): <item:immersiveengineering:storage_nickel>,
<tag:items:forge:storage_blocks/raw_uranium>.asIIngredient(): <item:immersiveengineering:storage_uranium>,
<tag:items:forge:storage_blocks/raw_cobalt>.asIIngredient(): <item:tconstruct:cobalt_block>,
<tag:items:forge:storage_blocks/raw_tin>.asIIngredient(): <item:ftbic:tin_block>
};

for rawblock, block in rawblock_block_map {
	blastFurnace.addRecipe("blasting_" + block.registryName.path, block, rawblock, 9.0, 200);
}

//red alloy ingot recipe
craftingTable.addShaped("extendedcrafting_redstone_ingot", <item:extendedcrafting:redstone_ingot>, [[<tag:items:forge:dusts/redstone>, <tag:items:forge:dusts/redstone>, <tag:items:forge:dusts/redstone>], [<tag:items:forge:dusts/redstone>, <tag:items:forge:ingots/iron>, <tag:items:forge:dusts/redstone>], [<tag:items:forge:dusts/redstone>, <tag:items:forge:dusts/redstone>, <tag:items:forge:dusts/redstone>]]);

//Tinkers slime crystal tooltips
<item:tconstruct:earth_slime_crystal>.addTooltip("Found in geodes in the Overworld.");
<item:tconstruct:sky_slime_crystal>.addTooltip("Found in geodes in the Overworld.");
<item:tconstruct:ichor_slime_crystal>.addTooltip("Found in geodes in the Nether.");
<item:tconstruct:ender_slime_crystal>.addTooltip("Found in geodes in the End.");

//Biomes o plenty brimstone fumarole recipe
craftingTable.addShaped("custom_brimstone_fumarole", <item:biomesoplenty:brimstone_fumarole>, [[<item:biomesoplenty:brimstone>, <item:minecraft:campfire>, <item:biomesoplenty:brimstone>], [<item:biomesoplenty:brimstone>, <item:minecraft:magma_block>, <item:biomesoplenty:brimstone>]]);

//IE waterwheel
craftingTable.addShaped("immersiveengineering_watermill", <item:immersiveengineering:watermill>, [[IIngredientEmpty.getInstance(), <item:immersiveengineering:waterwheel_segment>, IIngredientEmpty.getInstance()], [<item:immersiveengineering:waterwheel_segment>, <tag:items:forge:rods/steel>, <item:immersiveengineering:waterwheel_segment>], [IIngredientEmpty.getInstance(), <item:immersiveengineering:waterwheel_segment>, IIngredientEmpty.getInstance()]]);

//IE windmill
craftingTable.addShaped("immersiveengineering_windmill", <item:immersiveengineering:windmill>, [[<item:immersiveengineering:windmill_blade>, <item:immersiveengineering:windmill_blade>, <item:immersiveengineering:windmill_blade>], [<item:immersiveengineering:windmill_blade>, <tag:items:forge:rods/iron>, <item:immersiveengineering:windmill_blade>], [<item:immersiveengineering:windmill_blade>, <item:immersiveengineering:windmill_blade>, <item:immersiveengineering:windmill_blade>]]);

//immersive engineering wire connectors

craftingTable.addShaped("immersiveengineering_crafting_connector_lv", <item:immersiveengineering:connector_lv> * 4, [[IIngredientEmpty.getInstance(), <tag:items:forge:ingots/copper>, IIngredientEmpty.getInstance()], [<item:minecraft:terracotta>, <tag:items:forge:ingots/copper>, <item:minecraft:terracotta>], [<item:minecraft:terracotta>, <tag:items:forge:ingots/copper>, <item:minecraft:terracotta>]]);

craftingTable.addShaped("immersiveengineering_crafting_connector_lv_relay", <item:immersiveengineering:connector_lv_relay> * 8, [[IIngredientEmpty.getInstance(), <tag:items:forge:ingots/copper>, IIngredientEmpty.getInstance()], [<item:minecraft:terracotta>, <tag:items:forge:ingots/copper>, <item:minecraft:terracotta>]]);

craftingTable.addShaped("immersiveengineering_crafting_connector_mv", <item:immersiveengineering:connector_mv> * 4, [[IIngredientEmpty.getInstance(), <tag:items:forge:ingots/electrum>, IIngredientEmpty.getInstance()], [<item:minecraft:terracotta>, <tag:items:forge:ingots/electrum>, <item:minecraft:terracotta>], [<item:minecraft:terracotta>, <tag:items:forge:ingots/electrum>, <item:minecraft:terracotta>]]);

craftingTable.addShaped("immersiveengineering_crafting_connector_mv_relay", <item:immersiveengineering:connector_mv_relay> * 8, [[IIngredientEmpty.getInstance(), <tag:items:forge:ingots/electrum>, IIngredientEmpty.getInstance()], [<item:minecraft:terracotta>, <tag:items:forge:ingots/electrum>, <item:minecraft:terracotta>]]);

craftingTable.addShaped("immersiveengineering_crafting_connector_hv", <item:immersiveengineering:connector_hv> * 4, [[IIngredientEmpty.getInstance(), <tag:items:forge:ingots/aluminum>, IIngredientEmpty.getInstance()], [<item:minecraft:terracotta>, <tag:items:forge:ingots/aluminum>, <item:minecraft:terracotta>], [<item:minecraft:terracotta>, <tag:items:forge:ingots/aluminum>, <item:minecraft:terracotta>]]);

craftingTable.addShaped("immersiveengineering_crafting_connector_hv_relay", <item:immersiveengineering:connector_hv_relay> * 8, [[IIngredientEmpty.getInstance(), <tag:items:forge:ingots/aluminum>, IIngredientEmpty.getInstance()], [<item:immersiveengineering:insulating_glass>, <tag:items:forge:ingots/aluminum>, <item:immersiveengineering:insulating_glass>], [<item:immersiveengineering:insulating_glass>, <tag:items:forge:ingots/aluminum>, <item:immersiveengineering:insulating_glass>]]);

//extended crafting crafting core
mods.extendedcrafting.TableCrafting.addShaped("6f70060a-99fa-4e8b-9542-8504804183c1", 0, <item:extendedcrafting:crafting_core>, [
	[<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:elite_catalyst>, <item:extendedcrafting:elite_catalyst>, <item:extendedcrafting:elite_catalyst>, <item:extendedcrafting:black_iron_ingot>], 
	[<item:extendedcrafting:elite_component>, <item:extendedcrafting:frame>, <item:extendedcrafting:ender_ingot>, <item:extendedcrafting:frame>, <item:extendedcrafting:elite_component>], 
	[<item:extendedcrafting:elite_component>, <item:extendedcrafting:ender_ingot>, <item:extendedcrafting:luminessence>, <item:extendedcrafting:ender_ingot>, <item:extendedcrafting:elite_component>], 
	[<item:extendedcrafting:elite_component>, <item:extendedcrafting:frame>, <item:extendedcrafting:ender_ingot>, <item:extendedcrafting:frame>, <item:extendedcrafting:elite_component>], 
	[<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_slate>, <item:extendedcrafting:black_iron_ingot>]
]);

//Pretty pipes upgrade modules, adding plates to recipes

craftingTable.addShaped("prettypipes_medium_extraction_module", <item:prettypipes:medium_extraction_module>, [[IIngredientEmpty.getInstance(), <tag:items:forge:plates/iron>, IIngredientEmpty.getInstance()], [<tag:items:forge:plates/iron>, <item:prettypipes:low_extraction_module>, <tag:items:forge:plates/iron>], [IIngredientEmpty.getInstance(), <tag:items:forge:plates/iron>, IIngredientEmpty.getInstance()]]);

craftingTable.addShaped("prettypipes_medium_crafting_module", <item:prettypipes:medium_crafting_module>, [[<tag:items:forge:plates/gold>, <tag:items:forge:plates/iron>, <tag:items:forge:plates/gold>], [<tag:items:forge:plates/iron>, <item:prettypipes:low_crafting_module>, <tag:items:forge:plates/iron>], [<tag:items:forge:plates/gold>, <tag:items:forge:plates/iron>, <tag:items:forge:plates/gold>]]);

craftingTable.addShaped("prettypipes_medium_filter_module", <item:prettypipes:medium_filter_module>, [[IIngredientEmpty.getInstance(), <tag:items:forge:plates/iron>, IIngredientEmpty.getInstance()], [<item:minecraft:iron_ingot>, <item:prettypipes:low_filter_module>, <item:minecraft:iron_ingot>], [IIngredientEmpty.getInstance(), <tag:items:forge:plates/iron>, IIngredientEmpty.getInstance()]]);

craftingTable.addShaped("prettypipes_medium_speed_module", <item:prettypipes:medium_speed_module>, [[<tag:items:forge:plates/iron>, <item:minecraft:sugar>, <tag:items:forge:plates/iron>], [<item:minecraft:sugar>, <item:prettypipes:low_speed_module>, <item:minecraft:sugar>], [<tag:items:forge:plates/iron>, <item:minecraft:sugar>, <tag:items:forge:plates/iron>]]);

craftingTable.addShaped("prettypipes_medium_retrieval_module", <item:prettypipes:medium_retrieval_module>, [[<item:minecraft:redstone_block>, <item:minecraft:redstone_block>, <item:minecraft:redstone_block>], [<tag:items:forge:plates/gold>, <item:prettypipes:low_retrieval_module>, <tag:items:forge:plates/gold>], [IIngredientEmpty.getInstance(), <tag:items:forge:plates/gold>, IIngredientEmpty.getInstance()]]);

craftingTable.addShaped("prettypipes_high_extraction_module", <item:prettypipes:high_extraction_module>, [[<tag:items:forge:plates/gold>, <item:minecraft:diamond>, <tag:items:forge:plates/gold>], [<tag:items:forge:plates/gold>, <item:prettypipes:medium_extraction_module>, <tag:items:forge:plates/gold>], [<tag:items:forge:plates/gold>, <tag:items:forge:plates/gold>, <tag:items:forge:plates/gold>]]);

craftingTable.addShaped("prettypipes_high_filter_module", <item:prettypipes:high_filter_module>, [[<tag:items:forge:plates/gold>, <item:minecraft:iron_bars>, <tag:items:forge:plates/gold>], [<item:minecraft:iron_bars>, <item:prettypipes:medium_filter_module>, <item:minecraft:iron_bars>], [<tag:items:forge:plates/gold>, <item:minecraft:iron_bars>, <tag:items:forge:plates/gold>]]);

craftingTable.addShaped("prettypipes_high_speed_module", <item:prettypipes:high_speed_module>, [[<tag:items:forge:plates/gold>, <item:minecraft:sugar>, <tag:items:forge:plates/gold>], [<item:minecraft:sugar>, <item:prettypipes:medium_speed_module>, <item:minecraft:sugar>], [<tag:items:forge:plates/gold>, <item:minecraft:sugar>, <tag:items:forge:plates/gold>]]);

craftingTable.addShaped("prettypipes_high_retrieval_module", <item:prettypipes:high_retrieval_module>, [[<item:minecraft:redstone_block>, <item:minecraft:diamond>, <item:minecraft:redstone_block>], [<tag:items:forge:plates/gold>, <item:prettypipes:medium_retrieval_module>, <tag:items:forge:plates/gold>], [<item:minecraft:redstone_block>, <tag:items:forge:plates/gold>, <item:minecraft:redstone_block>]]);

craftingTable.addShaped("prettypipes_high_crafting_module", <item:prettypipes:high_crafting_module>, [[<tag:items:forge:plates/gold>, <tag:items:forge:plates/iron>, <tag:items:forge:plates/gold>], [<tag:items:forge:plates/gold>, <item:prettypipes:medium_crafting_module>, <tag:items:forge:plates/gold>], [<tag:items:forge:plates/gold>, <tag:items:forge:plates/iron>, <tag:items:forge:plates/gold>]]);

//storage drawers overhauled
craftingTable.addShaped("storagedrawers_tier_one_storage_upgrade", <item:storagedrawers:obsidian_storage_upgrade>, [[<tag:items:forge:plates/iron>, <tag:items:forge:rods/wooden>, <tag:items:forge:plates/iron>], [<tag:items:forge:rods/wooden>, <item:storagedrawers:upgrade_template>, <tag:items:forge:rods/wooden>], [<tag:items:forge:plates/iron>, <tag:items:forge:rods/wooden>, <tag:items:forge:plates/iron>]]);

craftingTable.addShaped("storagedrawers_tier_two_storage_upgrade", <item:storagedrawers:iron_storage_upgrade>, [[<tag:items:forge:plates/gold>, <tag:items:forge:rods/wooden>, <tag:items:forge:plates/gold>], [<tag:items:forge:rods/wooden>, <item:storagedrawers:obsidian_storage_upgrade>, <tag:items:forge:rods/wooden>], [<tag:items:forge:plates/gold>, <tag:items:forge:rods/wooden>, <tag:items:forge:plates/gold>]]);

craftingTable.addShaped("storagedrawers_tier_three_storage_upgrade", <item:storagedrawers:gold_storage_upgrade>, [[<tag:items:forge:gems/diamond>, <tag:items:forge:rods/wooden>, <tag:items:forge:gems/diamond>], [<tag:items:forge:rods/wooden>, <item:storagedrawers:iron_storage_upgrade>, <tag:items:forge:rods/wooden>], [<tag:items:forge:gems/diamond>, <tag:items:forge:rods/wooden>, <tag:items:forge:gems/diamond>]]);

//FTB IC adding tags to recipes
craftingTable.addShaped("ftbic_shaped_copper_coil", <item:ftbic:copper_coil>, [[<tag:items:forge:wires/copper>, <tag:items:forge:wires/copper>, <tag:items:forge:wires/copper>], [<tag:items:forge:wires/copper>, <tag:items:forge:rods/iron>, <tag:items:forge:wires/copper>], [<tag:items:forge:wires/copper>, <tag:items:forge:wires/copper>, <tag:items:forge:wires/copper>]]);

craftingTable.removeByName("ftbic:shapeless/lv_cable");
craftingTable.addShapeless("ftbic_shapeless_lv_cable", <item:ftbic:lv_cable>, [<tag:items:forge:wires/copper>, <item:ftbic:rubber>]);

craftingTable.removeByName("ftbic:shapeless/hv_cable");
craftingTable.addShapeless("ftbic_shapeless_hv_cable", <item:ftbic:hv_cable>, [<tag:items:forge:wires/gold>, <item:ftbic:rubber>]);

craftingTable.removeByName("ftbic:shapeless/mv_cable");
craftingTable.addShapeless("ftbic_shapeless_mv_cable", <item:ftbic:mv_cable>, [<tag:items:forge:wires/aluminum>, <item:ftbic:rubber>]);

//enchanting quarry
mods.extendedcrafting.CombinationCrafting.addRecipe("8ece23eb-e021-403f-b5cc-681d50da8416", <item:quarryplus:quarry>.withTag({Enchantments: [{lvl: 5 as short, id: "minecraft:efficiency" as string}, {lvl: 3 as short, id: "minecraft:unbreaking" as string}, {lvl: 1 as short, id: "minecraft:silk_touch" as string}]}), 100000, [
	<item:quarryplus:quarry>,
	<item:minecraft:enchanted_book>.withTag({
 StoredEnchantments: [
  {
   lvl: 1 as short,
   id: "minecraft:silk_touch"
  }
 ]
}), <item:minecraft:enchanted_book>.withTag({
 StoredEnchantments: [
  {
   lvl: 5 as short,
   id: "minecraft:efficiency"
  }
 ]
}), <item:minecraft:enchanted_book>.withTag({
 StoredEnchantments: [
  {
   lvl: 3 as short,
   id: "minecraft:unbreaking"
  }
 ]
})
]);

//tinkers EFLN
craftingTable.addShaped("tinkers_efln", <item:tconstruct:efln_ball>, [[<item:minecraft:blaze_powder>, <tag:items:forge:dusts/redstone>, <item:minecraft:blaze_powder>], [<item:minecraft:blaze_powder>, <item:minecraft:fire_charge>, <item:minecraft:blaze_powder>], [<tag:items:forge:dusts/redstone>, <item:minecraft:blaze_powder>, <tag:items:forge:dusts/redstone>]]);

//adding new recipe thats more akin to the create belt recipe.
craftingTable.addShaped("belt_conveyor", <item:immersiveengineering:conveyor_basic>*8, [[<tag:items:forge:plates/copper>, <tag:items:forge:plates/copper>, <tag:items:forge:plates/copper>], [<item:minecraft:iron_ingot>, <item:minecraft:redstone>, <item:minecraft:iron_ingot>]]);

//enchanted apple smithing recipes
smithing.addRecipe("enchanted_heart", <item:minecraft:enchanted_golden_apple>, <item:minecraft:golden_apple>, <item:paraglider:heart_container>);

smithing.remove(<item:upgradednetherite_items:enchanted_netherite_apple>);
smithing.addRecipe("enchanted_netherite_heart", <item:upgradednetherite_items:enchanted_netherite_apple>, <item:upgradednetherite_items:netherite_apple>, <item:paraglider:heart_container>);

smithing.addRecipe("enchanted_golderite_heart", <item:upgradednetherite_items:enchanted_gold_upgraded_netherite_apple>, <item:upgradednetherite_items:gold_upgraded_netherite_apple>, <item:paraglider:heart_container>);

//steel equipment recipe, replacing IE equipment with C:A equipment

craftingTable.addShaped("armor_steel_feet", <item:alloyed:steel_boots>, [[<tag:items:forge:plates/steel>, IIngredientEmpty.getInstance(), <tag:items:forge:plates/steel>], [<tag:items:forge:plates/steel>, IIngredientEmpty.getInstance(), <tag:items:forge:plates/steel>]]);

craftingTable.addShaped("armor_steel_legs", <item:alloyed:steel_leggings>, [[<tag:items:forge:plates/steel>, <tag:items:forge:plates/steel>, <tag:items:forge:plates/steel>], [<tag:items:forge:plates/steel>, IIngredientEmpty.getInstance(), <tag:items:forge:plates/steel>], [<tag:items:forge:plates/steel>, IIngredientEmpty.getInstance(), <tag:items:forge:plates/steel>]]);

craftingTable.addShaped("armor_steel_chest", <item:alloyed:steel_chestplate>, [[<tag:items:forge:plates/steel>, IIngredientEmpty.getInstance(), <tag:items:forge:plates/steel>], [<tag:items:forge:plates/steel>, <tag:items:forge:plates/steel>, <tag:items:forge:plates/steel>], [<tag:items:forge:plates/steel>, <tag:items:forge:plates/steel>, <tag:items:forge:plates/steel>]]);

craftingTable.addShaped("armor_steel_head", <item:alloyed:steel_helmet>, [[<tag:items:forge:plates/steel>, <tag:items:forge:plates/steel>, <tag:items:forge:plates/steel>], [<tag:items:forge:plates/steel>, IIngredientEmpty.getInstance(), <tag:items:forge:plates/steel>]]);


craftingTable.addShaped("pickaxe_steel", <item:alloyed:steel_pickaxe>, [[<tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>], [IIngredientEmpty.getInstance(), <tag:items:forge:rods/treated_wood>, IIngredientEmpty.getInstance()], [IIngredientEmpty.getInstance(), <tag:items:forge:rods/treated_wood>, IIngredientEmpty.getInstance()]]);

craftingTable.addShaped("shovel_steel", <item:alloyed:steel_shovel>, [[<tag:items:forge:ingots/steel>], [<tag:items:forge:rods/treated_wood>], [<tag:items:forge:rods/treated_wood>]]);

craftingTable.addShaped("axe_steel", <item:alloyed:steel_axe>, [[<tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>], [<tag:items:forge:ingots/steel>, <tag:items:forge:rods/treated_wood>], [IIngredientEmpty.getInstance(), <tag:items:forge:rods/treated_wood>]]);

craftingTable.addShaped("hoe_steel", <item:alloyed:steel_hoe>, [[<tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>], [IIngredientEmpty.getInstance(), <tag:items:forge:rods/treated_wood>], [IIngredientEmpty.getInstance(), <tag:items:forge:rods/treated_wood>]]);

craftingTable.addShaped("sword_steel", <item:alloyed:steel_sword>, [[<tag:items:forge:ingots/steel>], [<tag:items:forge:ingots/steel>], [<tag:items:forge:rods/treated_wood>]]);


craftingTable.addShaped("fishing_rod_steel", <item:alloyed:steel_fishing_rod>, [[IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance(), <tag:items:forge:ingots/steel>], [IIngredientEmpty.getInstance(), <tag:items:forge:ingots/steel>, <tag:items:forge:string>], [<tag:items:forge:rods/wooden>, IIngredientEmpty.getInstance(), <tag:items:forge:string>]]);

craftingTable.addShaped("shears_steel", <item:alloyed:steel_shears>, [[IIngredientEmpty.getInstance(), <tag:items:forge:ingots/steel>], [<tag:items:forge:ingots/steel>, IIngredientEmpty.getInstance()]]);

//painting palette

craftingTable.addShapeless("painting_palette", <item:xercapaint:item_palette>.withTag({basic: [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]}), [<tag:items:minecraft:wooden_slabs>, <tag:items:forge:dyes/black>, <tag:items:forge:dyes/purple>, <tag:items:forge:dyes/orange>, <tag:items:forge:dyes/green>, <tag:items:forge:dyes/white>, <tag:items:forge:dyes/yellow>, <tag:items:forge:dyes/blue>, <tag:items:forge:dyes/red>]);

//Ostrum to netherite

craftingTable.addShapeless("ostrum_netherite", <item:minecraft:netherite_ingot>, [<item:minecraft:netherite_scrap>, <item:minecraft:netherite_scrap>, <tag:items:forge:ingots/ostrum>, <tag:items:forge:ingots/ostrum>]);

//milling flour and dough recipes changed to croptopia flour and dough
<recipetype:create:milling>.addJsonRecipe("custom_create_milling_flour", {
  "ingredients": [
    {
      "tag": "forge:grain"
    }
  ],
  "results": [
    {
      "item": "create:wheat_flour"
    },
    {
      "item": "create:wheat_flour",
      "count": 2,
      "chance": 0.25
    },
    {
      "item": "minecraft:wheat_seeds",
      "chance": 0.25
    }
  ],
  "processingTime": 150
});

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

<recipetype:immersiveengineering:bottling_machine>.addJsonRecipe("custom_ie_mixing_dough", {
"result":{"item":"farmersdelight:wheat_dough"},"input":{"tag":"forge:flour"},"fluid":{"tag":"minecraft:water","amount":1000}
});

//milling sourceberries
<recipetype:create:milling>.addJsonRecipe("custom_create_milling_sourceberry", {
  "ingredients": [
    {
      "item": "ars_nouveau:source_berry"
    }
  ],
  "results": [
    {
      "item": "minecraft:purple_dye"
    },
    {
      "item": "minecraft:purple_dye",
      "chance": 0.5
    }
  ],
  "processingTime": 150
});

<recipetype:ftbic:macerating>.addJsonRecipe("custom_ftb_ic_macerating_sourceberry", {
	"inputItems": [{
      "item": "ars_nouveau:source_berry"
    }],
  "outputItems": [
    {
      "item": "minecraft:purple_dye"
    },
	{
      "item": "minecraft:purple_dye",
      "count": 1,
	  "chance": 0.5
    }
  ]
});

<recipetype:immersiveengineering:crusher>.addJsonRecipe("custom_ie_crushing_sourceberries", 
{
"secondaries":[{"chance":0.5,"output":{"count":1,"item":"minecraft:purple_dye"}}],"result":{"count":1,"base_ingredient":{"item":"minecraft:purple_dye"}},"input":{"item": "ars_nouveau:source_berry"},"energy":2000
});

<recipetype:integrateddynamics:squeezer>.addJsonRecipe("custom_squeeze_sourceberries", {
  "item": [
    {
      "item": "ars_nouveau:source_berry"
    }
  ],
  "result": {
    "items": [
		{
			"item": {
			  "item": "minecraft:purple_dye",
			  "count": 1
			}
		},
		{
        "item": "minecraft:purple_dye",
        "chance": 0.25 as float
       }
    ]
  }
});

<recipetype:integrateddynamics:mechanical_squeezer>.addJsonRecipe("custom_mech_squeeze_sourceberries", {
  "item": [
    {
      "item": "ars_nouveau:source_berry"
    }
  ],
  "result": {
    "items": [
		{
			"item": {
			  "item": "minecraft:purple_dye",
			  "count": 1
			}
		},
		{
        "item": "minecraft:purple_dye",
        "chance": 0.25 as float
       }
    ]
  },
  "duration": 20
});

//milling magebloom
<recipetype:create:milling>.addJsonRecipe("custom_create_milling_magebloom", {
  "ingredients": [
    {
      "item": "ars_nouveau:magebloom"
    }
  ],
  "results": [
    {
      "item": "ars_nouveau:magebloom_fiber",
	  "count": 4
    },
    {
      "item": "ars_nouveau:magebloom_fiber",
	  "count": 2,
      "chance": 0.25
    },
	{
      "item": "ars_nouveau:magebloom_crop",
	  "chance": 0.25
    }
  ],
  "processingTime": 150
});

<recipetype:ftbic:macerating>.addJsonRecipe("custom_ftb_ic_macerating_magebloom", {
	"inputItems": [{
      "item": "ars_nouveau:magebloom"
    }],
  "outputItems": [
    {
      "item": "ars_nouveau:magebloom_fiber",
	  "count": 4
    },
	{
      "item": "ars_nouveau:magebloom_fiber",
      "count": 2,
	  "chance": 0.25
    }
  ]
});

<recipetype:immersiveengineering:crusher>.addJsonRecipe("custom_ie_crushing_magebloom", 
{
"secondaries":[{"chance":0.25,"output":{"count":2,"item":"ars_nouveau:magebloom_fiber"}},{"chance":0.25,"output":{"count":1,"item":"ars_nouveau:magebloom_crop"}}],"result":{"count":4,"base_ingredient":{"item":"ars_nouveau:magebloom_fiber"}},"input":{"item": "ars_nouveau:magebloom"},"energy":2000
});

//Collar tag using plate instead of ingot
craftingTable.addShaped("collar_tag", <item:domesticationinnovation:collar_tag>, [[<item:minecraft:chain>], [<tag:items:forge:plates/copper>]]);


//Craftable sand casts
craftingTable.addShaped("sand_cast_ingot", <item:tconstruct:ingot_sand_cast> * 32, [[<tag:items:forge:sand>, <tag:items:forge:sand>, <tag:items:forge:sand>], [<tag:items:forge:sand>, <tag:items:forge:ingots>, <tag:items:forge:sand>], [<tag:items:forge:sand>, <tag:items:forge:sand>, <tag:items:forge:sand>]]);

craftingTable.addShaped("red_sand_cast_ingot", <item:tconstruct:ingot_red_sand_cast> * 32, [[<item:minecraft:red_sand>, <item:minecraft:red_sand>, <item:minecraft:red_sand>], [<item:minecraft:red_sand>, <tag:items:forge:ingots>, <item:minecraft:red_sand>], [<item:minecraft:red_sand>, <item:minecraft:red_sand>, <item:minecraft:red_sand>]]);

//Sculk sensor recipe
craftingTable.addShaped("custom_sculk", <item:minecraft:comparator>, [[IIngredientEmpty.getInstance(), <item:graveyard:corruption>, IIngredientEmpty.getInstance()], [<item:graveyard:corruption>, <item:minecraft:ender_eye>, <item:graveyard:corruption>], [<item:biomesoplenty:flesh>, <item:biomesoplenty:flesh>, <item:biomesoplenty:flesh>]]);

//flesh block crafting and uncrafting
craftingTable.addShaped("custom_crafting_flesh_block", <item:biomesoplenty:flesh>, [[<item:minecraft:rotten_flesh>, <item:minecraft:rotten_flesh>], [<item:minecraft:rotten_flesh>, <item:minecraft:rotten_flesh>]]);
craftingTable.addShapeless("custom_uncrafting_flesh_block", <item:minecraft:rotten_flesh> * 4, [<item:biomesoplenty:flesh>]);

//black dye from coal dust
craftingTable.addShapeless("custom_coal_dye", <item:minecraft:black_dye> * 2, [<item:ftbic:charcoal_dust>|<item:ftbic:coal_dust>, <item:minecraft:potion>.withTag({Potion: "minecraft:water" as string})]);
craftingTable.addShapeless("custom_coal_dye_bucket", <item:minecraft:black_dye> * 8, [<item:ftbic:charcoal_dust>|<item:ftbic:coal_dust>, <item:ftbic:charcoal_dust>|<item:ftbic:coal_dust>, <item:ftbic:charcoal_dust>|<item:ftbic:coal_dust>, <item:ftbic:charcoal_dust>|<item:ftbic:coal_dust>, <item:minecraft:water_bucket>]);

//Fixed cfm crates
craftingTable.addShaped("custom_stripped_warped_crate", <item:cfm:stripped_warped_crate> * 4, [[<item:minecraft:stripped_warped_stem>, <item:minecraft:warped_stem>, <item:minecraft:stripped_warped_stem>], [<item:minecraft:warped_stem>, <tag:items:forge:chests/wooden>, <item:minecraft:warped_stem>], [<item:minecraft:stripped_warped_stem>, <item:minecraft:warped_stem>, <item:minecraft:stripped_warped_stem>]]);

craftingTable.addShaped("custom_stripped_oak_crate", <item:cfm:stripped_oak_crate> * 4, [[<item:minecraft:stripped_oak_log>, <item:minecraft:oak_log>, <item:minecraft:stripped_oak_log>], [<item:minecraft:oak_log>, <tag:items:forge:chests/wooden>, <item:minecraft:oak_log>], [<item:minecraft:stripped_oak_log>, <item:minecraft:oak_log>, <item:minecraft:stripped_oak_log>]]);

craftingTable.addShaped("custom_stripped_spruce_crate", <item:cfm:stripped_spruce_crate> * 4, [[<item:minecraft:stripped_spruce_log>, <item:minecraft:spruce_log>, <item:minecraft:stripped_spruce_log>], [<item:minecraft:spruce_log>, <tag:items:forge:chests/wooden>, <item:minecraft:spruce_log>], [<item:minecraft:stripped_spruce_log>, <item:minecraft:spruce_log>, <item:minecraft:stripped_spruce_log>]]);

craftingTable.addShaped("custom_stripped_birch_crate", <item:cfm:stripped_birch_crate> * 4, [[<item:minecraft:stripped_birch_log>, <item:minecraft:birch_log>, <item:minecraft:stripped_birch_log>], [<item:minecraft:birch_log>, <tag:items:forge:chests/wooden>, <item:minecraft:birch_log>], [<item:minecraft:stripped_birch_log>, <item:minecraft:birch_log>, <item:minecraft:stripped_birch_log>]]);

craftingTable.addShaped("custom_stripped_jungle_crate", <item:cfm:stripped_jungle_crate> * 4, [[<item:minecraft:stripped_jungle_log>, <item:minecraft:jungle_log>, <item:minecraft:stripped_jungle_log>], [<item:minecraft:jungle_log>, <tag:items:forge:chests/wooden>, <item:minecraft:jungle_log>], [<item:minecraft:stripped_jungle_log>, <item:minecraft:jungle_log>, <item:minecraft:stripped_jungle_log>]]);

craftingTable.addShaped("custom_stripped_acacia_crate", <item:cfm:stripped_acacia_crate> * 4, [[<item:minecraft:stripped_acacia_log>, <item:minecraft:acacia_log>, <item:minecraft:stripped_acacia_log>], [<item:minecraft:acacia_log>, <tag:items:forge:chests/wooden>, <item:minecraft:acacia_log>], [<item:minecraft:stripped_acacia_log>, <item:minecraft:acacia_log>, <item:minecraft:stripped_acacia_log>]]);

craftingTable.addShaped("custom_stripped_dark_oak_crate", <item:cfm:stripped_dark_oak_crate> * 4, [[<item:minecraft:stripped_dark_oak_log>, <item:minecraft:dark_oak_log>, <item:minecraft:stripped_dark_oak_log>], [<item:minecraft:dark_oak_log>, <tag:items:forge:chests/wooden>, <item:minecraft:dark_oak_log>], [<item:minecraft:stripped_dark_oak_log>, <item:minecraft:dark_oak_log>, <item:minecraft:stripped_dark_oak_log>]]);

craftingTable.addShaped("custom_stripped_crimson_crate", <item:cfm:stripped_crimson_crate> * 4, [[<item:minecraft:stripped_crimson_stem>, <item:minecraft:crimson_stem>, <item:minecraft:stripped_crimson_stem>], [<item:minecraft:crimson_stem>, <tag:items:forge:chests/wooden>, <item:minecraft:crimson_stem>], [<item:minecraft:stripped_crimson_stem>, <item:minecraft:crimson_stem>, <item:minecraft:stripped_crimson_stem>]]);

//fixed sticky piston recipe
craftingTable.addShaped("custom_sticky_piston", <item:minecraft:sticky_piston>, [[<tag:items:forge:slimeballs>], [<item:minecraft:piston>]]);

//fixed cfm bedside cabinets
craftingTable.addShaped("custom_stripped_oak_bedside_cabinet", <item:cfm:stripped_oak_bedside_cabinet> * 2, [[<item:minecraft:stripped_oak_log>, <item:minecraft:stripped_oak_log>, <item:minecraft:stripped_oak_log>], [<item:minecraft:oak_log>, <tag:items:forge:chests/wooden>, <item:minecraft:oak_log>], [<item:minecraft:oak_log>, <item:minecraft:oak_log>, <item:minecraft:oak_log>]]);

craftingTable.addShaped("custom_stripped_spruce_bedside_cabinet", <item:cfm:stripped_spruce_bedside_cabinet> * 2, [[<item:minecraft:stripped_spruce_log>, <item:minecraft:stripped_spruce_log>, <item:minecraft:stripped_spruce_log>], [<item:minecraft:spruce_log>, <tag:items:forge:chests/wooden>, <item:minecraft:spruce_log>], [<item:minecraft:spruce_log>, <item:minecraft:spruce_log>, <item:minecraft:spruce_log>]]);

craftingTable.addShaped("custom_stripped_birch_bedside_cabinet", <item:cfm:stripped_birch_bedside_cabinet> * 2, [[<item:minecraft:stripped_birch_log>, <item:minecraft:stripped_birch_log>, <item:minecraft:stripped_birch_log>], [<item:minecraft:birch_log>, <tag:items:forge:chests/wooden>, <item:minecraft:birch_log>], [<item:minecraft:birch_log>, <item:minecraft:birch_log>, <item:minecraft:birch_log>]]);

craftingTable.addShaped("custom_stripped_jungle_bedside_cabinet", <item:cfm:stripped_jungle_bedside_cabinet> * 2, [[<item:minecraft:stripped_jungle_log>, <item:minecraft:stripped_jungle_log>, <item:minecraft:stripped_jungle_log>], [<item:minecraft:jungle_log>, <tag:items:forge:chests/wooden>, <item:minecraft:jungle_log>], [<item:minecraft:jungle_log>, <item:minecraft:jungle_log>, <item:minecraft:jungle_log>]]);

craftingTable.addShaped("custom_stripped_acacia_bedside_cabinet", <item:cfm:stripped_acacia_bedside_cabinet> * 2, [[<item:minecraft:stripped_acacia_log>, <item:minecraft:stripped_acacia_log>, <item:minecraft:stripped_acacia_log>], [<item:minecraft:acacia_log>, <tag:items:forge:chests/wooden>, <item:minecraft:acacia_log>], [<item:minecraft:acacia_log>, <item:minecraft:acacia_log>, <item:minecraft:acacia_log>]]);

craftingTable.addShaped("custom_stripped_dark_oak_bedside_cabinet", <item:cfm:stripped_dark_oak_bedside_cabinet> * 2, [[<item:minecraft:stripped_dark_oak_log>, <item:minecraft:stripped_dark_oak_log>, <item:minecraft:stripped_dark_oak_log>], [<item:minecraft:dark_oak_log>, <tag:items:forge:chests/wooden>, <item:minecraft:dark_oak_log>], [<item:minecraft:dark_oak_log>, <item:minecraft:dark_oak_log>, <item:minecraft:dark_oak_log>]]);

craftingTable.addShaped("custom_stripped_crimson_bedside_cabinet", <item:cfm:stripped_crimson_bedside_cabinet> * 2, [[<item:minecraft:stripped_crimson_stem>, <item:minecraft:stripped_crimson_stem>, <item:minecraft:stripped_crimson_stem>], [<item:minecraft:crimson_stem>, <tag:items:forge:chests/wooden>, <item:minecraft:crimson_stem>], [<item:minecraft:crimson_stem>, <item:minecraft:crimson_stem>, <item:minecraft:crimson_stem>]]);

craftingTable.addShaped("custom_stripped_warped_bedside_cabinet", <item:cfm:stripped_warped_bedside_cabinet> * 2, [[<item:minecraft:stripped_warped_stem>, <item:minecraft:stripped_warped_stem>, <item:minecraft:stripped_warped_stem>], [<item:minecraft:warped_stem>, <tag:items:forge:chests/wooden>, <item:minecraft:warped_stem>], [<item:minecraft:warped_stem>, <item:minecraft:warped_stem>, <item:minecraft:warped_stem>]]);

//fixed cfm regular cabinets
craftingTable.addShaped("custom_stripped_warped_cabinet", <item:cfm:stripped_warped_cabinet> * 2, [[<item:minecraft:stripped_warped_stem>, <item:minecraft:stripped_warped_stem>, <item:minecraft:warped_stem>], [<item:minecraft:stripped_warped_stem>, <tag:items:forge:chests/wooden>, <item:minecraft:warped_stem>], [<item:minecraft:stripped_warped_stem>, <item:minecraft:stripped_warped_stem>, <item:minecraft:warped_stem>]]);

craftingTable.addShaped("custom_stripped_crimson_cabinet", <item:cfm:stripped_crimson_cabinet> * 2, [[<item:minecraft:stripped_crimson_stem>, <item:minecraft:stripped_crimson_stem>, <item:minecraft:crimson_stem>], [<item:minecraft:stripped_crimson_stem>, <tag:items:forge:chests/wooden>, <item:minecraft:crimson_stem>], [<item:minecraft:stripped_crimson_stem>, <item:minecraft:stripped_crimson_stem>, <item:minecraft:crimson_stem>]]);

craftingTable.addShaped("custom_stripped_dark_oak_cabinet", <item:cfm:stripped_dark_oak_cabinet> * 2, [[<item:minecraft:stripped_dark_oak_log>, <item:minecraft:stripped_dark_oak_log>, <item:minecraft:dark_oak_log>], [<item:minecraft:stripped_dark_oak_log>, <tag:items:forge:chests/wooden>, <item:minecraft:dark_oak_log>], [<item:minecraft:stripped_dark_oak_log>, <item:minecraft:stripped_dark_oak_log>, <item:minecraft:dark_oak_log>]]);

craftingTable.addShaped("custom_stripped_acacia_cabinet", <item:cfm:stripped_acacia_cabinet> * 2, [[<item:minecraft:stripped_acacia_log>, <item:minecraft:stripped_acacia_log>, <item:minecraft:acacia_log>], [<item:minecraft:stripped_acacia_log>, <tag:items:forge:chests/wooden>, <item:minecraft:acacia_log>], [<item:minecraft:stripped_acacia_log>, <item:minecraft:stripped_acacia_log>, <item:minecraft:acacia_log>]]);

craftingTable.addShaped("custom_stripped_jungle_cabinet", <item:cfm:stripped_jungle_cabinet> * 2, [[<item:minecraft:stripped_jungle_log>, <item:minecraft:stripped_jungle_log>, <item:minecraft:jungle_log>], [<item:minecraft:stripped_jungle_log>, <tag:items:forge:chests/wooden>, <item:minecraft:jungle_log>], [<item:minecraft:stripped_jungle_log>, <item:minecraft:stripped_jungle_log>, <item:minecraft:jungle_log>]]);

craftingTable.addShaped("custom_stripped_birch_cabinet", <item:cfm:stripped_birch_cabinet> * 2, [[<item:minecraft:stripped_birch_log>, <item:minecraft:stripped_birch_log>, <item:minecraft:birch_log>], [<item:minecraft:stripped_birch_log>, <tag:items:forge:chests/wooden>, <item:minecraft:birch_log>], [<item:minecraft:stripped_birch_log>, <item:minecraft:stripped_birch_log>, <item:minecraft:birch_log>]]);

craftingTable.addShaped("custom_stripped_spruce_cabinet", <item:cfm:stripped_spruce_cabinet> * 2, [[<item:minecraft:stripped_spruce_log>, <item:minecraft:stripped_spruce_log>, <item:minecraft:spruce_log>], [<item:minecraft:stripped_spruce_log>, <tag:items:forge:chests/wooden>, <item:minecraft:spruce_log>], [<item:minecraft:stripped_spruce_log>, <item:minecraft:stripped_spruce_log>, <item:minecraft:spruce_log>]]);

craftingTable.addShaped("custom_stripped_oak_cabinet", <item:cfm:stripped_oak_cabinet> * 2, [[<item:minecraft:stripped_oak_log>, <item:minecraft:stripped_oak_log>, <item:minecraft:oak_log>], [<item:minecraft:stripped_oak_log>, <tag:items:forge:chests/wooden>, <item:minecraft:oak_log>], [<item:minecraft:stripped_oak_log>, <item:minecraft:stripped_oak_log>, <item:minecraft:oak_log>]]);

//fixed magenta pet bed
craftingTable.addShaped("custom_pet_bed_magenta", <item:domesticationinnovation:pet_bed_magenta>, [[<item:minecraft:magenta_wool>, <item:minecraft:magenta_wool>, <item:minecraft:magenta_wool>], [<tag:items:minecraft:planks>, <item:minecraft:bone>, <tag:items:minecraft:planks>]]);

//fixed lattice
craftingTable.addShaped("custom_lattice", <item:decorative_blocks:lattice> * 4, [[<tag:items:forge:fences/wooden>, <item:minecraft:stick>, <tag:items:forge:fences/wooden>], [<item:minecraft:stick>, IIngredientEmpty.getInstance(), <item:minecraft:stick>], [<tag:items:forge:fences/wooden>, <item:minecraft:stick>, <tag:items:forge:fences/wooden>]]);