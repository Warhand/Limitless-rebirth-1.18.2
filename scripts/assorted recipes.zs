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
<recipetype:immersiveengineering:bottling_machine>.addJsonRecipe("bottling_honeyed_apple", {"results":[{"item":"create:honeyed_apple"}],"input":{"item":"minecraft:apple"},"fluid":{"tag":"forge:honey","amount":250}});

//powdered snow recipe
craftingTable.addShaped("powdered_snow", <item:minecraft:powder_snow_bucket>, [[<item:minecraft:ice>, <item:minecraft:snowball>, <item:minecraft:ice>], [<item:minecraft:ice>, <item:minecraft:water_bucket>, <item:minecraft:ice>], [<item:minecraft:ice>, <item:minecraft:ice>, <item:minecraft:ice>]]);

//waystones warp stone
craftingTable.remove(<item:waystones:warp_stone>);
craftingTable.addShaped("waystones_warp_stone", <item:waystones:warp_stone>, [[<item:waystones:warp_dust>, <item:minecraft:chorus_fruit>, <item:waystones:warp_dust>], [<item:minecraft:chorus_fruit>, <tag:items:forge:gems/diamond>, <item:minecraft:chorus_fruit>], [<item:waystones:warp_dust>, <item:minecraft:chorus_fruit>, <item:waystones:warp_dust>]]);

//waystones warp dust
craftingTable.remove(<item:waystones:warp_dust>);
craftingTable.addShapeless("waystones_warp_dust", <item:waystones:warp_dust>, [<tag:items:forge:dusts/ender>, <tag:items:forge:gems/amethyst>]);
craftingTable.addShapeless("ender_waystones_warp_dust", <item:waystones:warp_dust> * 4, [<tag:items:forge:dusts/ender>, <item:minecraft:chorus_fruit>, <item:minecraft:blaze_powder>]);

//minecraft lightning rod
craftingTable.remove(<item:minecraft:lightning_rod>);
craftingTable.addShaped("minecraft_lightning_rod", <item:minecraft:lightning_rod>, [[<tag:items:forge:storage_blocks/copper>], [<tag:items:forge:rods/copper>], [<tag:items:forge:rods/copper>]]);

//pretty pipes blank module
craftingTable.remove(<item:prettypipes:blank_module>);
craftingTable.addShaped("prettypipes_blank_module", <item:prettypipes:blank_module>, [[<item:minecraft:quartz>, <item:minecraft:redstone>, <item:minecraft:quartz>], [<item:minecraft:smooth_stone_slab>, <item:prettypipes:pipe>, <item:minecraft:smooth_stone_slab>], [<item:minecraft:quartz>, <item:minecraft:redstone>, <item:minecraft:quartz>]]);

//pretty pipes wrench
craftingTable.remove(<item:prettypipes:wrench>);
craftingTable.addShapedMirrored("prettypipes_wrench", <constant:minecraft:mirroraxis:all>, <item:prettypipes:wrench>, [[IIngredientEmpty.getInstance(), <item:prettypipes:pipe>, <tag:items:forge:plates/steel>], [<item:minecraft:red_terracotta>, <tag:items:forge:plates/steel>, <tag:items:forge:plates/steel>], [IIngredientEmpty.getInstance(), <item:minecraft:red_terracotta>, IIngredientEmpty.getInstance()]]);

//pretty pipes pipe
craftingTable.remove(<item:prettypipes:pipe>);
craftingTable.addShaped("prettypipes_pipe", <item:prettypipes:pipe> * 4, [[IIngredientEmpty.getInstance(), <tag:items:forge:plates/steel>, IIngredientEmpty.getInstance()], [<tag:items:forge:plates/steel>, <tag:items:forge:glass/colorless>, <tag:items:forge:plates/steel>], [IIngredientEmpty.getInstance(), <tag:items:forge:plates/steel>, IIngredientEmpty.getInstance()]]);

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

//create brass casing new recipe
craftingTable.addShaped("create_brass_casing", <item:create:brass_casing> * 8, [[<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>], [<tag:items:forge:plates/brass>, <tag:items:minecraft:logs>, <tag:items:forge:plates/brass>], [<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>]]);

//immersive engineering hammer durability upgrade and recipe change
craftingTable.remove(<item:immersiveengineering:hammer>);
craftingTable.addShaped("immersiveengineering_crafting_hammer", <item:immersiveengineering:hammer>, [[IIngredientEmpty.getInstance(), <tag:items:forge:ingots/iron>, <tag:items:forge:fiber_hemp>], [IIngredientEmpty.getInstance(), <tag:items:forge:rods/wooden>, <tag:items:forge:ingots/iron>], [<tag:items:forge:rods/wooden>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()]]);

//bundle recipe redo
craftingTable.remove(<item:minecraft:bundle>);
craftingTable.addShaped("bundle", <item:minecraft:bundle>, [[<tag:items:forge:string>, <tag:items:forge:leather>, <tag:items:forge:string>], [<tag:items:forge:leather>, IIngredientEmpty.getInstance(), <tag:items:forge:leather>], [<tag:items:forge:leather>, <tag:items:forge:leather>, <tag:items:forge:leather>]]);

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

//raw block blasting

<tag:items:forge:storage_blocks/raw_cloggrum>.add(<item:undergarden:raw_cloggrum_block>);
<tag:items:forge:storage_blocks/raw_froststeel>.add(<item:undergarden:raw_froststeel_block>);

val rawblock_block_map as IItemStack[IIngredient] = {
<tag:items:forge:storage_blocks/raw_iron>.asIIngredient(): <item:minecraft:iron_block>,
<tag:items:forge:storage_blocks/raw_copper>.asIIngredient(): <item:minecraft:copper_block>,
<tag:items:forge:storage_blocks/raw_gold>.asIIngredient(): <item:minecraft:gold_block>,
<tag:items:forge:storage_blocks/raw_zinc>.asIIngredient(): <item:create:zinc_block>,
<tag:items:forge:storage_blocks/raw_cloggrum>.asIIngredient(): <item:undergarden:cloggrum_block>,
<tag:items:forge:storage_blocks/raw_froststeel>.asIIngredient(): <item:undergarden:froststeel_block>,
<tag:items:forge:storage_blocks/raw_aluminum>.asIIngredient(): <item:immersiveengineering:storage_aluminum>,
<tag:items:forge:storage_blocks/raw_lead>.asIIngredient(): <item:immersiveengineering:storage_lead>,
<tag:items:forge:storage_blocks/raw_silver>.asIIngredient(): <item:immersiveengineering:storage_silver>,
<tag:items:forge:storage_blocks/raw_nickel>.asIIngredient(): <item:immersiveengineering:storage_nickel>,
<tag:items:forge:storage_blocks/raw_uranium>.asIIngredient(): <item:immersiveengineering:storage_uranium>,
<tag:items:forge:storage_blocks/raw_tin>.asIIngredient(): <item:ftbic:tin_block>,
<tag:items:forge:storage_blocks/raw_irididum>.asIIngredient(): <item:ftbic:iridium_block>
};

for rawblock, block in rawblock_block_map {
	blastFurnace.addRecipe("blasting_" + block.registryName.path, block, rawblock, 9.0, 200);
}

//red alloy ingot recipe
craftingTable.addShaped("extendedcrafting_redstone_ingot", <item:extendedcrafting:redstone_ingot>, [[<tag:items:forge:dusts/redstone>, <tag:items:forge:dusts/redstone>, <tag:items:forge:dusts/redstone>], [<tag:items:forge:dusts/redstone>, <tag:items:forge:ingots/iron>, <tag:items:forge:dusts/redstone>], [<tag:items:forge:dusts/redstone>, <tag:items:forge:dusts/redstone>, <tag:items:forge:dusts/redstone>]]);

//IE waterwheel
craftingTable.addShaped("immersiveengineering_watermill", <item:immersiveengineering:watermill>, [[IIngredientEmpty.getInstance(), <item:immersiveengineering:waterwheel_segment>, IIngredientEmpty.getInstance()], [<item:immersiveengineering:waterwheel_segment>, <tag:items:forge:rods/iron>, <item:immersiveengineering:waterwheel_segment>], [IIngredientEmpty.getInstance(), <item:immersiveengineering:waterwheel_segment>, IIngredientEmpty.getInstance()]]);

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

//FTB IC adding tags to recipes
craftingTable.addShaped("ftbic_shaped_copper_coil", <item:ftbic:copper_coil>, [[<tag:items:forge:wires/copper>, <tag:items:forge:wires/copper>, <tag:items:forge:wires/copper>], [<tag:items:forge:wires/copper>, <tag:items:forge:rods/iron>, <tag:items:forge:wires/copper>], [<tag:items:forge:wires/copper>, <tag:items:forge:wires/copper>, <tag:items:forge:wires/copper>]]);

craftingTable.removeByName("ftbic:shapeless/lv_cable");
craftingTable.addShapeless("ftbic_shapeless_lv_cable", <item:ftbic:lv_cable>, [<tag:items:forge:wires/copper>, <item:ftbic:rubber>]);

craftingTable.removeByName("ftbic:shapeless/hv_cable");
craftingTable.addShapeless("ftbic_shapeless_hv_cable", <item:ftbic:hv_cable>, [<tag:items:forge:wires/gold>, <item:ftbic:rubber>]);

craftingTable.removeByName("ftbic:shapeless/mv_cable");
craftingTable.addShapeless("ftbic_shapeless_mv_cable", <item:ftbic:mv_cable>, [<tag:items:forge:wires/aluminum>, <item:ftbic:rubber>]);

//adding new recipe thats more akin to the create belt recipe.
craftingTable.addShaped("belt_conveyor", <item:immersiveengineering:conveyor_basic>*8, [[<tag:items:forge:plates/copper>, <tag:items:forge:plates/copper>, <tag:items:forge:plates/copper>], [<item:minecraft:iron_ingot>, <item:minecraft:redstone>, <item:minecraft:iron_ingot>]]);

//enchanted apple smithing recipes
smithing.addRecipe("enchanted_heart", <item:minecraft:enchanted_golden_apple>, <item:minecraft:golden_apple>, <item:paraglider:heart_container>);

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

<recipetype:immersiveengineering:bottling_machine>.addJsonRecipe("custom_ie_mixing_dough", {
"results":[{"item":"farmersdelight:wheat_dough"}],"input":{"tag":"forge:flour"},"fluid":{"tag":"minecraft:water","amount":1000}
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

//black dye from coal dust
craftingTable.addShapeless("custom_coal_dye", <item:minecraft:black_dye> * 2, [<item:ftbic:charcoal_dust>|<item:ftbic:coal_dust>, <item:minecraft:potion>.withTag({Potion: "minecraft:water" as string})]);
craftingTable.addShapeless("custom_coal_dye_bucket", <item:minecraft:black_dye> * 8, [<item:ftbic:charcoal_dust>|<item:ftbic:coal_dust>, <item:ftbic:charcoal_dust>|<item:ftbic:coal_dust>, <item:ftbic:charcoal_dust>|<item:ftbic:coal_dust>, <item:ftbic:charcoal_dust>|<item:ftbic:coal_dust>, <item:minecraft:water_bucket>]);

//fixed sticky piston recipe
craftingTable.addShaped("custom_sticky_piston", <item:minecraft:sticky_piston>, [[<tag:items:forge:slimeballs>], [<item:minecraft:piston>]]);

//fixed magenta pet bed
craftingTable.addShaped("custom_pet_bed_magenta", <item:domesticationinnovation:pet_bed_magenta>, [[<item:minecraft:magenta_wool>, <item:minecraft:magenta_wool>, <item:minecraft:magenta_wool>], [<tag:items:minecraft:planks>, <item:minecraft:bone>, <tag:items:minecraft:planks>]]);

//fixed lattice
craftingTable.addShaped("custom_lattice", <item:decorative_blocks:lattice> * 4, [[<tag:items:forge:fences/wooden>, <item:minecraft:stick>, <tag:items:forge:fences/wooden>], [<item:minecraft:stick>, IIngredientEmpty.getInstance(), <item:minecraft:stick>], [<tag:items:forge:fences/wooden>, <item:minecraft:stick>, <tag:items:forge:fences/wooden>]]);

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

craftingTable.addShaped("custom_summoning_altar", <item:summoningrituals:altar>, [[<tag:items:minecraft:candles>, <item:minecraft:wither_skeleton_skull>, <tag:items:minecraft:candles>], [<tag:items:forge:ingots/gold>, <item:minecraft:red_carpet>, <tag:items:forge:ingots/gold>], [<item:graveyard:dark_iron_block>, <item:graveyard:dark_iron_block>, <item:graveyard:dark_iron_block>]]);

//reworked plain grinder recipes
craftingTable.addShaped("custom_grinder", <item:plaingrinder:grinder>, [[<tag:items:forge:cobblestone>, <tag:items:forge:ingots/iron>, <tag:items:forge:cobblestone>], [<tag:items:forge:cobblestone>, <item:minecraft:flint>, <tag:items:forge:cobblestone>], [<tag:items:forge:cobblestone>, <tag:items:forge:cobblestone>, <tag:items:forge:cobblestone>]]);

craftingTable.addShaped("custom_handle", <item:plaingrinder:handle>, [[<tag:items:forge:rods/wooden>, <tag:items:forge:rods/wooden>], [IIngredientEmpty.getInstance(), <tag:items:forge:rods/wooden>], [IIngredientEmpty.getInstance(), <tag:items:forge:rods/wooden>]]);

//updated channeling stone recipe

craftingTable.addShaped("custom_channeling_stone", <item:advanced_xp:channeling_stone>, [[<item:minecraft:mossy_stone_bricks>, <item:minecraft:mossy_stone_bricks>, <item:minecraft:mossy_stone_bricks>], [<item:malum:chunk_of_brilliance>, <item:minecraft:experience_bottle>, <item:malum:chunk_of_brilliance>], [<item:minecraft:mossy_stone_bricks>, <item:minecraft:mossy_stone_bricks>, <item:minecraft:mossy_stone_bricks>]]);

//brewing bottles of enchanting	
brewing.addRecipe(<item:minecraft:experience_bottle>, <item:minecraft:potion>.withTag({Potion: "minecraft:water" as string}), <item:malum:chunk_of_brilliance>);

//cloggrum fertilizer
craftingTable.addShapeless("custom_fertilizer_cloggrum", <item:immersiveengineering:fertilizer> * 8, [<item:immersiveengineering:dust_sulfur>, <item:undergarden:raw_cloggrum>]);

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
    "item": "immersiveengineering:dust_sulfur"
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
    "item": "immersiveengineering:dust_sulfur",
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
    "item": "immersiveengineering:dust_sulfur",
    "count": 4
  },
  "syphon": 200,
  "ticks": 100,
  "upgradeLevel": 0
});