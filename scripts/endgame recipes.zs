import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;

//ultimate ingot
mods.extendedcrafting.CombinationCrafting.addRecipe("46b704c6-fa55-4078-9a97-ffcf1c329050", <item:extendedcrafting:the_ultimate_ingot> * 4, 500000, [
	<item:extendedcrafting:ultimate_singularity>, <item:extendedcrafting:ultimate_catalyst>, <item:extendedcrafting:ultimate_catalyst>, <item:extendedcrafting:crystaltine_ingot>, <item:extendedcrafting:crystaltine_ingot>, <item:extendedcrafting:ultimate_catalyst>, <item:extendedcrafting:ultimate_catalyst>, <item:extendedcrafting:crystaltine_ingot>, <item:extendedcrafting:crystaltine_ingot>
]);

//heart of the sea recipe
mods.extendedcrafting.TableCrafting.addShaped("3c8761a0-842c-4bdf-81ce-b41994649819", 0, <item:minecraft:heart_of_the_sea>, [
	[<item:minecraft:air>, <item:minecraft:lapis_block>, <item:minecraft:lapis_block>, <item:minecraft:lapis_block>, <item:minecraft:air>], 
	[<item:minecraft:lapis_block>, <tag:items:minecraft:fishes>, <item:minecraft:prismarine_crystals>, <tag:items:minecraft:fishes>, <item:minecraft:lapis_block>], 
	[<item:minecraft:lapis_block>, <item:minecraft:prismarine_crystals>, <item:aquaculture:neptunium_ingot>, <item:minecraft:prismarine_crystals>, <item:minecraft:lapis_block>], 
	[<item:minecraft:lapis_block>, <tag:items:minecraft:fishes>, <item:minecraft:prismarine_crystals>, <tag:items:minecraft:fishes>, <item:minecraft:lapis_block>], 
	[<item:minecraft:air>, <item:minecraft:lapis_block>, <item:minecraft:lapis_block>, <item:minecraft:lapis_block>, <item:minecraft:air>]
]);

//Create creative engine
mods.extendedcrafting.TableCrafting.addShaped("c9877edb-84f5-40ec-a3ef-130e885184e5", 0, <item:create:creative_motor>, [
	[<item:minecraft:shulker_shell>, <item:create:furnace_engine>, <item:create:large_cogwheel>, <item:create:shaft>, <item:create:sequenced_gearshift>, <item:create:shaft>, <item:create:large_cogwheel>, <item:create:furnace_engine>, <item:minecraft:shulker_shell>], 
	[<item:create:furnace_engine>, <item:create:large_cogwheel>, <item:create:belt_connector>, <item:create:belt_connector>, <item:create:shaft>, <item:create:belt_connector>, <item:create:belt_connector>, <item:create:large_cogwheel>, <item:create:furnace_engine>], 
	[<item:minecraft:shulker_shell>, <item:create:flywheel>, <item:createaddition:electric_motor>, <item:create:shaft>, <item:create:shaft>, <item:create:shaft>, <item:createaddition:electric_motor>, <item:create:flywheel>, <item:minecraft:shulker_shell>], 
	[<item:minecraft:shulker_shell>, <item:createaddition:alternator>, <item:createaddition:gold_spool>, <item:createaddition:electric_motor>, <item:create:sequenced_gearshift>, <item:createaddition:electric_motor>, <item:createaddition:gold_spool>, <item:createaddition:alternator>, <item:minecraft:shulker_shell>], 
	[<item:minecraft:shulker_shell>, <item:createaddition:alternator>, <item:createaddition:gold_spool>, <item:createaddition:electric_motor>, <item:upgradednetherite_creative:creative_upgraded_netherite_ingot>, <item:createaddition:electric_motor>, <item:createaddition:gold_spool>, <item:createaddition:alternator>, <item:minecraft:shulker_shell>], 
	[<item:minecraft:shulker_shell>, <item:createaddition:alternator>, <item:createaddition:gold_spool>, <item:createaddition:electric_motor>, <item:create:sequenced_gearshift>, <item:createaddition:electric_motor>, <item:createaddition:gold_spool>, <item:createaddition:alternator>, <item:minecraft:shulker_shell>], 
	[<item:minecraft:shulker_shell>, <item:create:flywheel>, <item:createaddition:electric_motor>, <item:create:shaft>, <item:create:shaft>, <item:create:shaft>, <item:createaddition:electric_motor>, <item:create:flywheel>, <item:minecraft:shulker_shell>], 
	[<item:create:furnace_engine>, <item:create:large_cogwheel>, <item:create:belt_connector>, <item:create:belt_connector>, <item:create:shaft>, <item:create:belt_connector>, <item:create:belt_connector>, <item:create:large_cogwheel>, <item:create:furnace_engine>], 
	[<item:minecraft:shulker_shell>, <item:create:furnace_engine>, <item:create:large_cogwheel>, <item:create:shaft>, <item:create:sequenced_gearshift>, <item:create:shaft>, <item:create:large_cogwheel>, <item:create:furnace_engine>, <item:minecraft:shulker_shell>]
]);

//Create creative blaze cake
mods.extendedcrafting.TableCrafting.addShaped("eb191e43-41a3-425b-a2bf-95a3024a5471", 0, <item:create:creative_blaze_cake>, [
	[<item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit>], 
	[<item:minecraft:popped_chorus_fruit>, <item:minecraft:enchanted_golden_apple>, <item:createaddition:chocolate_cake>, <item:create:blaze_cake>, <item:createaddition:honey_cake>, <item:create:blaze_cake>, <item:createaddition:chocolate_cake>, <item:minecraft:enchanted_golden_apple>, <item:minecraft:popped_chorus_fruit>], 
	[<item:minecraft:popped_chorus_fruit>, <item:createaddition:chocolate_cake>, <item:createaddition:chocolate_cake>, <item:create:blaze_cake>, <item:createaddition:honey_cake>, <item:create:blaze_cake>, <item:createaddition:chocolate_cake>, <item:createaddition:chocolate_cake>, <item:minecraft:popped_chorus_fruit>], 
	[<item:create:cinder_flour>, <item:create:blaze_cake>, <item:create:blaze_cake>, <item:create:sweet_roll>, <item:create:rose_quartz>, <item:create:sweet_roll>, <item:create:blaze_cake>, <item:create:blaze_cake>, <item:create:cinder_flour>], 
	[<item:create:cinder_flour>, <item:createaddition:honey_cake>, <item:createaddition:honey_cake>, <item:create:rose_quartz>, <item:upgradednetherite_creative:creative_upgraded_netherite_ingot>, <item:create:rose_quartz>, <item:createaddition:honey_cake>, <item:createaddition:honey_cake>, <item:create:cinder_flour>], 
	[<item:create:cinder_flour>, <item:create:blaze_cake>, <item:create:blaze_cake>, <item:create:sweet_roll>, <item:create:rose_quartz>, <item:create:sweet_roll>, <item:create:blaze_cake>, <item:create:blaze_cake>, <item:create:cinder_flour>], 
	[<item:create:cinder_flour>, <item:createaddition:chocolate_cake>, <item:createaddition:chocolate_cake>, <item:create:blaze_cake>, <item:createaddition:honey_cake>, <item:create:blaze_cake>, <item:createaddition:chocolate_cake>, <item:createaddition:chocolate_cake>, <item:create:cinder_flour>], 
	[<item:create:cinder_flour>, <item:minecraft:enchanted_golden_apple>, <item:createaddition:chocolate_cake>, <item:create:blaze_cake>, <item:createaddition:honey_cake>, <item:create:blaze_cake>, <item:createaddition:chocolate_cake>, <item:minecraft:enchanted_golden_apple>, <item:create:cinder_flour>], 
	[<item:create:cinder_flour>, <item:create:cinder_flour>, <item:create:cinder_flour>, <item:create:cinder_flour>, <item:create:cinder_flour>, <item:create:cinder_flour>, <item:create:cinder_flour>, <item:create:cinder_flour>, <item:create:cinder_flour>]
]);

//Create creative tank
mods.extendedcrafting.TableCrafting.addShaped("3ebb9af5-88f2-4bd0-8352-c806bc0114df", 0, <item:create:creative_fluid_tank>, [
	[<item:minecraft:shulker_shell>, <item:minecraft:shulker_shell>, <item:create:copper_casing>, <item:create:copper_casing>, <item:create:copper_casing>, <item:create:copper_casing>, <item:create:copper_casing>, <item:minecraft:shulker_shell>, <item:minecraft:shulker_shell>], 
	[<item:minecraft:shulker_shell>, <item:create:fluid_pipe>, <item:create:fluid_pipe>, <item:create:fluid_tank>, <item:create:fluid_tank>, <item:create:fluid_tank>, <item:create:fluid_pipe>, <item:create:fluid_pipe>, <item:minecraft:shulker_shell>], 
	[<item:minecraft:glass>, <item:create:portable_fluid_interface>, <item:create:copper_casing>, <item:create:copper_casing>, <item:create:copper_casing>, <item:create:copper_casing>, <item:create:copper_casing>, <item:create:portable_fluid_interface>, <item:minecraft:glass>], 
	[<item:minecraft:glass>, <item:create:fluid_tank>, <item:create:copper_casing>, <item:create:large_cogwheel>, <item:create:precision_mechanism>, <item:create:large_cogwheel>, <item:create:copper_casing>, <item:create:fluid_tank>, <item:minecraft:glass>], 
	[<item:minecraft:glass>, <item:create:fluid_tank>, <item:create:smart_fluid_pipe>, <item:create:mechanical_pump>, <item:upgradednetherite_creative:creative_upgraded_netherite_ingot>, <item:create:mechanical_pump>, <item:create:smart_fluid_pipe>, <item:create:fluid_tank>, <item:minecraft:glass>], 
	[<item:minecraft:glass>, <item:create:fluid_tank>, <item:create:copper_casing>, <item:create:large_cogwheel>, <item:create:precision_mechanism>, <item:create:large_cogwheel>, <item:create:copper_casing>, <item:create:fluid_tank>, <item:minecraft:glass>], 
	[<item:minecraft:glass>, <item:create:portable_fluid_interface>, <item:create:copper_casing>, <item:create:copper_casing>, <item:create:copper_casing>, <item:create:copper_casing>, <item:create:copper_casing>, <item:create:portable_fluid_interface>, <item:minecraft:glass>], 
	[<item:minecraft:shulker_shell>, <item:create:fluid_pipe>, <item:create:fluid_pipe>, <item:create:fluid_tank>, <item:create:fluid_tank>, <item:create:fluid_tank>, <item:create:fluid_pipe>, <item:create:fluid_pipe>, <item:minecraft:shulker_shell>], 
	[<item:minecraft:shulker_shell>, <item:minecraft:shulker_shell>, <item:create:copper_casing>, <item:create:copper_casing>, <item:create:copper_casing>, <item:create:copper_casing>, <item:create:copper_casing>, <item:minecraft:shulker_shell>, <item:minecraft:shulker_shell>]
]);

//Botania creative mana pool and tablet
mods.extendedcrafting.TableCrafting.addShaped("652aa17d-97ec-40b1-a4c3-9b86383a670e", 0, <item:botania:creative_pool>, [
	[<item:botania:terrasteel_ingot>, <item:botania:terrasteel_ingot>, <item:botania:blaze_block>, <item:botania:blaze_block>, <item:botania:dragonstone>, <item:botania:blaze_block>, <item:botania:blaze_block>, <item:botania:terrasteel_ingot>, <item:botania:terrasteel_ingot>], 
	[<item:botania:mana_diamond_block>, <item:botania:dragonstone>, <item:botania:terrasteel_ingot>, <item:botania:blaze_block>, <item:botania:mana_diamond_block>, <item:botania:blaze_block>, <item:botania:terrasteel_ingot>, <item:botania:dragonstone>, <item:botania:mana_diamond_block>], 
	[<item:botania:rune_wrath>, <item:botania:mana_diamond_block>, <item:botania:mana_diamond_block>, <item:botania:terrasteel_ingot>, <item:botania:mana_diamond_block>, <item:botania:terrasteel_ingot>, <item:botania:mana_diamond_block>, <item:botania:mana_diamond_block>, <item:botania:rune_wrath>], 
	[<item:botania:rune_wrath>, <item:botania:rune_lust>, <item:botania:rune_pride>, <item:botania:mana_diamond_block>, <item:botania:mana_diamond_block>, <item:botania:mana_diamond_block>, <item:botania:rune_pride>, <item:botania:rune_lust>, <item:botania:rune_wrath>], 
	[<item:botania:rune_sloth>, <item:botania:rune_lust>, <item:botania:rune_pride>, <item:botania:rune_envy>, <item:botania:mana_diamond_block>, <item:botania:rune_envy>, <item:botania:rune_pride>, <item:botania:rune_lust>, <item:botania:rune_sloth>], 
	[<item:botania:shimmerrock>, <item:botania:rune_sloth>, <item:botania:rune_gluttony>, <item:botania:rune_envy>, <item:botania:gaia_ingot>, <item:botania:rune_envy>, <item:botania:rune_gluttony>, <item:botania:rune_sloth>, <item:botania:shimmerrock>], 
	[<item:botania:shimmerrock>, <item:botania:rune_greed>, <item:botania:rune_gluttony>, <item:botania:rune_greed>, <item:botania:gaia_ingot>, <item:botania:rune_greed>, <item:botania:rune_gluttony>, <item:botania:rune_greed>, <item:botania:shimmerrock>], 
	[<item:botania:shimmerrock>, <item:botania:rune_mana>, <item:botania:rune_mana>, <item:botania:rune_mana>, <item:botania:gaia_ingot>, <item:botania:rune_mana>, <item:botania:rune_mana>, <item:botania:rune_mana>, <item:botania:shimmerrock>], 
	[<item:botania:shimmerrock>, <item:botania:shimmerrock>, <item:botania:shimmerrock>, <item:botania:shimmerrock>, <item:upgradednetherite_creative:creative_upgraded_netherite_ingot>, <item:botania:shimmerrock>, <item:botania:shimmerrock>, <item:botania:shimmerrock>, <item:botania:shimmerrock>]
]);
craftingTable.addShapeless("pool_to_tablet", <item:botania:mana_tablet>.withTag({mana: 500000 as int, creative: 1 as byte}), [<item:botania:creative_pool>]);
craftingTable.addShapeless("tablet_to_pool", <item:botania:creative_pool>, [<item:botania:mana_tablet>.withTag({mana: 500000 as int, creative: 1 as byte})]);

//FTBic creative battery
mods.extendedcrafting.TableCrafting.addShaped("0b96b8be-38e2-427a-b00e-79ac1168c562", 0, <item:ftbic:creative_battery>, [
	[<item:ftbic:iridium_alloy>, <item:minecraft:shulker_shell>, <item:ftbic:iridium_alloy>, <item:minecraft:shulker_shell>, <item:ftbic:dense_copper_plate>, <item:minecraft:shulker_shell>, <item:ftbic:iridium_alloy>, <item:minecraft:shulker_shell>, <item:ftbic:iridium_alloy>], 
	[<item:minecraft:shulker_shell>, <item:ftbic:ev_cable>, <item:ftbic:ev_battery>, <item:ftbic:iridium_circuit>, <item:ftbic:nuclear_reactor_chamber>, <item:ftbic:iridium_circuit>, <item:ftbic:ev_battery>, <item:ftbic:ev_cable>, <item:minecraft:shulker_shell>], 
	[<item:ftbic:iridium_alloy>, <item:ftbic:ev_cable>, <item:ftbic:ev_battery>, <item:ftbic:nuclear_reactor_chamber>, <item:ftbic:antimatter_crystal>, <item:ftbic:nuclear_reactor_chamber>, <item:ftbic:ev_battery>, <item:ftbic:ev_cable>, <item:ftbic:iridium_alloy>], 
	[<item:minecraft:shulker_shell>, <item:ftbic:ev_cable>, <item:ftbic:ev_battery>, <item:ftbic:nuclear_reactor_chamber>, <item:ftbic:antimatter_crystal>, <item:ftbic:nuclear_reactor_chamber>, <item:ftbic:ev_battery>, <item:ftbic:ev_cable>, <item:minecraft:shulker_shell>], 
	[<item:ftbic:iridium_alloy>, <item:ftbic:ev_battery_box>, <item:ftbic:ev_cable>, <item:ftbic:energy_crystal>, <item:upgradednetherite_creative:creative_upgraded_netherite_ingot>, <item:ftbic:energy_crystal>, <item:ftbic:ev_cable>, <item:ftbic:ev_battery_box>, <item:ftbic:iridium_alloy>], 
	[<item:minecraft:shulker_shell>, <item:ftbic:ev_cable>, <item:ftbic:ev_battery>, <item:ftbic:nuclear_reactor_chamber>, <item:ftbic:antimatter_crystal>, <item:ftbic:nuclear_reactor_chamber>, <item:ftbic:ev_battery>, <item:ftbic:ev_cable>, <item:minecraft:shulker_shell>], 
	[<item:ftbic:iridium_alloy>, <item:ftbic:ev_cable>, <item:ftbic:ev_battery>, <item:ftbic:nuclear_reactor_chamber>, <item:ftbic:antimatter_crystal>, <item:ftbic:nuclear_reactor_chamber>, <item:ftbic:ev_battery>, <item:ftbic:ev_cable>, <item:ftbic:iridium_alloy>], 
	[<item:minecraft:shulker_shell>, <item:ftbic:ev_cable>, <item:ftbic:ev_battery>, <item:ftbic:iridium_circuit>, <item:ftbic:nuclear_reactor_chamber>, <item:ftbic:iridium_circuit>, <item:ftbic:ev_battery>, <item:ftbic:ev_cable>, <item:minecraft:shulker_shell>], 
	[<item:ftbic:iridium_alloy>, <item:minecraft:shulker_shell>, <item:ftbic:iridium_alloy>, <item:minecraft:shulker_shell>, <item:ftbic:iridium_alloy>, <item:minecraft:shulker_shell>, <item:ftbic:iridium_alloy>, <item:minecraft:shulker_shell>, <item:ftbic:iridium_alloy>]
]);

//Immersive engineering creative accumulator
mods.extendedcrafting.TableCrafting.addShaped("857b66fb-a51f-4680-8b7d-a4c8d5d883e1", 0, <item:immersiveengineering:capacitor_creative>, [
	[<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>, <item:minecraft:shulker_shell>, <item:minecraft:shulker_shell>, <item:immersiveengineering:connector_hv_relay>, <item:minecraft:shulker_shell>, <item:minecraft:shulker_shell>, <item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>], 
	[<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:storage_uranium>, <item:immersiveengineering:thermoelectric_generator>, <item:minecraft:blue_ice>, <item:immersiveengineering:capacitor_hv>, <item:minecraft:blue_ice>, <item:immersiveengineering:thermoelectric_generator>, <item:immersiveengineering:storage_uranium>, <item:immersiveengineering:treated_wood_horizontal>], 
	[<item:immersiveengineering:generator>, <item:immersiveengineering:storage_uranium>, <item:immersiveengineering:thermoelectric_generator>, <item:minecraft:blue_ice>, <item:immersiveengineering:capacitor_hv>, <item:minecraft:blue_ice>, <item:immersiveengineering:thermoelectric_generator>, <item:immersiveengineering:storage_uranium>, <item:immersiveengineering:generator>], 
	[<item:immersiveengineering:radiator>, <item:immersiveengineering:heavy_engineering>, <item:immersiveengineering:connector_hv>, <item:immersiveengineering:wirecoil_steel>, <item:immersiveengineering:capacitor_hv>, <item:immersiveengineering:wirecoil_steel>, <item:immersiveengineering:connector_hv>, <item:immersiveengineering:heavy_engineering>, <item:immersiveengineering:radiator>], 
	[<item:immersiveengineering:component_steel>, <item:immersiveengineering:heavy_engineering>, <item:immersiveengineering:coil_hv>, <item:immersiveengineering:coil_hv>, <item:upgradednetherite_creative:creative_upgraded_netherite_ingot>, <item:immersiveengineering:coil_hv>, <item:immersiveengineering:coil_hv>, <item:immersiveengineering:heavy_engineering>, <item:immersiveengineering:component_steel>], 
	[<item:immersiveengineering:radiator>, <item:immersiveengineering:heavy_engineering>, <item:immersiveengineering:connector_hv>, <item:immersiveengineering:wirecoil_steel>, <item:immersiveengineering:capacitor_hv>, <item:immersiveengineering:wirecoil_steel>, <item:immersiveengineering:connector_hv>, <item:immersiveengineering:heavy_engineering>, <item:immersiveengineering:radiator>], 
	[<item:immersiveengineering:generator>, <item:immersiveengineering:storage_uranium>, <item:immersiveengineering:thermoelectric_generator>, <item:minecraft:blue_ice>, <item:immersiveengineering:capacitor_hv>, <item:minecraft:blue_ice>, <item:immersiveengineering:thermoelectric_generator>, <item:immersiveengineering:storage_uranium>, <item:immersiveengineering:generator>], 
	[<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:storage_uranium>, <item:immersiveengineering:thermoelectric_generator>, <item:minecraft:blue_ice>, <item:immersiveengineering:capacitor_hv>, <item:minecraft:blue_ice>, <item:immersiveengineering:thermoelectric_generator>, <item:immersiveengineering:storage_uranium>, <item:immersiveengineering:treated_wood_horizontal>], 
	[<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>, <item:minecraft:shulker_shell>, <item:minecraft:shulker_shell>, <item:immersiveengineering:connector_hv_relay>, <item:minecraft:shulker_shell>, <item:minecraft:shulker_shell>, <item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>]
]);

//Ars nouveau creative source jar
mods.extendedcrafting.TableCrafting.addShaped("66859159-0c04-4318-9c48-774939134ab5", 0, <item:ars_nouveau:creative_source_jar>, [
	[<item:ars_nouveau:archwood_planks>, <item:ars_nouveau:archwood_planks>, <item:ars_nouveau:archwood_planks>, <item:ars_nouveau:archwood_planks>, <item:minecraft:gold_block>, <item:ars_nouveau:archwood_planks>, <item:ars_nouveau:archwood_planks>, <item:ars_nouveau:archwood_planks>, <item:ars_nouveau:archwood_planks>], 
	[<item:minecraft:glass>, <item:ars_nouveau:relay>, <item:ars_nouveau:source_jar>, <item:ars_nouveau:source_jar>, <item:ars_nouveau:as_gold_stone>, <item:ars_nouveau:source_jar>, <item:ars_nouveau:source_jar>, <item:ars_nouveau:relay>, <item:minecraft:glass>], 
	[<item:minecraft:glass>, <item:ars_nouveau:source_jar>, <item:ars_nouveau:archmage_spell_book>, <item:ars_nouveau:source_gem_block>, <item:ars_nouveau:air_essence>, <item:ars_nouveau:source_gem_block>, <item:ars_nouveau:archmage_spell_book>, <item:ars_nouveau:source_jar>, <item:minecraft:glass>], 
	[<item:minecraft:glass>, <item:ars_nouveau:source_jar>, <item:ars_nouveau:source_gem_block>, <item:ars_nouveau:conjuration_essence>, <item:ars_nouveau:air_essence>, <item:ars_nouveau:conjuration_essence>, <item:ars_nouveau:source_gem_block>, <item:ars_nouveau:source_jar>, <item:minecraft:glass>], 
	[<item:minecraft:glass>, <item:ars_nouveau:magebloom_fiber>, <item:ars_nouveau:earth_essence>, <item:ars_nouveau:fire_essence>, <item:upgradednetherite_creative:creative_upgraded_netherite_ingot>, <item:ars_nouveau:fire_essence>, <item:ars_nouveau:earth_essence>, <item:ars_nouveau:magebloom_fiber>, <item:minecraft:glass>], 
	[<item:minecraft:glass>, <item:ars_nouveau:source_jar>, <item:ars_nouveau:source_gem_block>, <item:ars_nouveau:conjuration_essence>, <item:ars_nouveau:water_essence>, <item:ars_nouveau:conjuration_essence>, <item:ars_nouveau:source_gem_block>, <item:ars_nouveau:source_jar>, <item:minecraft:glass>], 
	[<item:minecraft:glass>, <item:ars_nouveau:source_jar>, <item:ars_nouveau:archmage_spell_book>, <item:ars_nouveau:source_gem_block>, <item:ars_nouveau:water_essence>, <item:ars_nouveau:source_gem_block>, <item:ars_nouveau:archmage_spell_book>, <item:ars_nouveau:source_jar>, <item:minecraft:glass>], 
	[<item:ars_nouveau:archwood_planks>, <item:ars_nouveau:relay>, <item:ars_nouveau:source_jar>, <item:ars_nouveau:source_jar>, <item:ars_nouveau:as_gold_stone>, <item:ars_nouveau:source_jar>, <item:ars_nouveau:source_jar>, <item:ars_nouveau:relay>, <item:ars_nouveau:archwood_planks>], 
	[<item:ars_nouveau:archwood_planks>, <item:minecraft:gold_block>, <item:ars_nouveau:as_gold_stone>, <item:minecraft:gold_block>, <item:ars_nouveau:as_gold_stone>, <item:minecraft:gold_block>, <item:ars_nouveau:as_gold_stone>, <item:minecraft:gold_block>, <item:ars_nouveau:archwood_planks>]
]);

//tinkers creative ability modifier
mods.extendedcrafting.TableCrafting.addShaped("fbbca6a0-24b1-4cf7-8dfd-f128756b5a08", 0, <item:tconstruct:creative_slot>.withTag({slot: "abilities" as string}), [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:tconstruct:rose_gold_block>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:tconstruct:rose_gold_block>, <item:tconstruct:rose_gold_block>, <item:tconstruct:rose_gold_block>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:tconstruct:rose_gold_block>, <item:extendedcrafting:nether_star_block>, <item:tconstruct:rose_gold_block>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:tconstruct:rose_gold_block>, <item:tconstruct:rose_gold_block>, <item:materialis:fairy_block>, <item:tconstruct:manyullyn_block>, <item:materialis:fairy_block>, <item:tconstruct:rose_gold_block>, <item:tconstruct:rose_gold_block>, <item:minecraft:air>], 
	[<item:tconstruct:rose_gold_block>, <item:tconstruct:rose_gold_block>, <item:extendedcrafting:nether_star_block>, <item:tconstruct:manyullyn_block>, <item:upgradednetherite_creative:creative_upgraded_netherite_ingot>, <item:tconstruct:manyullyn_block>, <item:extendedcrafting:nether_star_block>, <item:tconstruct:rose_gold_block>, <item:tconstruct:rose_gold_block>], 
	[<item:minecraft:air>, <item:tconstruct:rose_gold_block>, <item:tconstruct:rose_gold_block>, <item:materialis:fairy_block>, <item:tconstruct:manyullyn_block>, <item:materialis:fairy_block>, <item:tconstruct:rose_gold_block>, <item:tconstruct:rose_gold_block>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:tconstruct:rose_gold_block>, <item:extendedcrafting:nether_star_block>, <item:tconstruct:rose_gold_block>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:tconstruct:rose_gold_block>, <item:tconstruct:rose_gold_block>, <item:tconstruct:rose_gold_block>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:tconstruct:rose_gold_block>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.addShapeless("ability_to_soul", <item:tconstruct:creative_slot>.withTag({slot: "souls" as string}), [<item:tconstruct:creative_slot>.withTag({slot: "abilities" as string}), <item:minecraft:soul_lantern>]);
craftingTable.addShapeless("ability_to_upgrade", <item:tconstruct:creative_slot>.withTag({slot: "upgrades" as string}), [<item:tconstruct:creative_slot>.withTag({slot: "abilities" as string}), <item:minecraft:anvil>]);
craftingTable.addShapeless("ability_to_defense", <item:tconstruct:creative_slot>.withTag({slot: "defense" as string}), [<item:tconstruct:creative_slot>.withTag({slot: "abilities" as string}), <item:minecraft:diamond_chestplate>]);

craftingTable.addShapeless("soul_to_ability", <item:tconstruct:creative_slot>.withTag({slot: "abilities" as string}), [<item:tconstruct:creative_slot>.withTag({slot: "souls" as string}), <tag:items:forge:ingots/rose_gold>]);
craftingTable.addShapeless("soul_to_upgrade", <item:tconstruct:creative_slot>.withTag({slot: "upgrades" as string}), [<item:tconstruct:creative_slot>.withTag({slot: "souls" as string}), <item:minecraft:anvil>]);
craftingTable.addShapeless("soul_to_defense", <item:tconstruct:creative_slot>.withTag({slot: "defense" as string}), [<item:tconstruct:creative_slot>.withTag({slot: "souls" as string}), <item:minecraft:diamond_chestplate>]);

craftingTable.addShapeless("upgrade_to_ability", <item:tconstruct:creative_slot>.withTag({slot: "abilities" as string}), [<item:tconstruct:creative_slot>.withTag({slot: "upgrades" as string}), <tag:items:forge:ingots/rose_gold>]);
craftingTable.addShapeless("upgrade_to_soul", <item:tconstruct:creative_slot>.withTag({slot: "souls" as string}), [<item:tconstruct:creative_slot>.withTag({slot: "upgrades" as string}), <item:minecraft:soul_lantern>]);
craftingTable.addShapeless("upgrade_to_defense", <item:tconstruct:creative_slot>.withTag({slot: "defense" as string}), [<item:tconstruct:creative_slot>.withTag({slot: "upgrades" as string}), <item:minecraft:diamond_chestplate>]);

craftingTable.addShapeless("defense_to_ability", <item:tconstruct:creative_slot>.withTag({slot: "abilities" as string}), [<item:tconstruct:creative_slot>.withTag({slot: "defense" as string}), <tag:items:forge:ingots/rose_gold>]);
craftingTable.addShapeless("defense_to_upgrade", <item:tconstruct:creative_slot>.withTag({slot: "upgrades" as string}), [<item:tconstruct:creative_slot>.withTag({slot: "defense" as string}), <item:minecraft:anvil>]);
craftingTable.addShapeless("defense_to_soul", <item:tconstruct:creative_slot>.withTag({slot: "souls" as string}), [<item:tconstruct:creative_slot>.withTag({slot: "defense" as string}), <item:minecraft:soul_lantern>]);

//storage drawer infinite storage upgrade
mods.extendedcrafting.TableCrafting.addShaped("feb1fef0-6aad-49bb-934a-454d6fd38fb9", 0, <item:storagedrawers:creative_storage_upgrade>, [
	[<item:storagedrawers:upgrade_template>, <item:minecraft:smooth_quartz>, <item:minecraft:smooth_quartz>, <item:storagedrawers:upgrade_template>, <item:storagedrawers:gold_storage_upgrade>, <item:storagedrawers:upgrade_template>, <item:minecraft:smooth_quartz>, <item:minecraft:smooth_quartz>, <item:storagedrawers:upgrade_template>], 
	[<item:minecraft:smooth_quartz>, <item:storagedrawers:conversion_upgrade>, <item:storagedrawers:gold_storage_upgrade>, <item:storagedrawers:gold_storage_upgrade>, <item:storagedrawers:void_upgrade>, <item:storagedrawers:gold_storage_upgrade>, <item:storagedrawers:gold_storage_upgrade>, <item:storagedrawers:conversion_upgrade>, <item:minecraft:smooth_quartz>], 
	[<item:minecraft:smooth_quartz>, <item:storagedrawers:gold_storage_upgrade>, <item:storagedrawers:controller>, <item:storagedrawers:compacting_drawers_3>, <item:storagedrawers:gold_storage_upgrade>, <item:storagedrawers:compacting_drawers_3>, <item:storagedrawers:controller>, <item:storagedrawers:gold_storage_upgrade>, <item:minecraft:smooth_quartz>], 
	[<item:storagedrawers:upgrade_template>, <item:storagedrawers:gold_storage_upgrade>, <item:storagedrawers:compacting_drawers_3>, <item:storagedrawers:controller>, <item:storagedrawers:gold_storage_upgrade>, <item:storagedrawers:controller>, <item:storagedrawers:compacting_drawers_3>, <item:storagedrawers:gold_storage_upgrade>, <item:storagedrawers:upgrade_template>], 
	[<item:storagedrawers:gold_storage_upgrade>, <item:storagedrawers:void_upgrade>, <item:storagedrawers:gold_storage_upgrade>, <item:storagedrawers:gold_storage_upgrade>, <item:upgradednetherite_creative:creative_upgraded_netherite_ingot>, <item:storagedrawers:gold_storage_upgrade>, <item:storagedrawers:gold_storage_upgrade>, <item:storagedrawers:void_upgrade>, <item:storagedrawers:gold_storage_upgrade>], 
	[<item:storagedrawers:upgrade_template>, <item:storagedrawers:gold_storage_upgrade>, <item:storagedrawers:compacting_drawers_3>, <item:storagedrawers:controller>, <item:storagedrawers:gold_storage_upgrade>, <item:storagedrawers:controller>, <item:storagedrawers:compacting_drawers_3>, <item:storagedrawers:gold_storage_upgrade>, <item:storagedrawers:upgrade_template>], 
	[<item:minecraft:smooth_quartz>, <item:storagedrawers:gold_storage_upgrade>, <item:storagedrawers:controller>, <item:storagedrawers:compacting_drawers_3>, <item:storagedrawers:gold_storage_upgrade>, <item:storagedrawers:compacting_drawers_3>, <item:storagedrawers:controller>, <item:storagedrawers:gold_storage_upgrade>, <item:minecraft:smooth_quartz>], 
	[<item:minecraft:smooth_quartz>, <item:storagedrawers:conversion_upgrade>, <item:storagedrawers:gold_storage_upgrade>, <item:storagedrawers:gold_storage_upgrade>, <item:storagedrawers:void_upgrade>, <item:storagedrawers:gold_storage_upgrade>, <item:storagedrawers:gold_storage_upgrade>, <item:storagedrawers:conversion_upgrade>, <item:minecraft:smooth_quartz>], 
	[<item:storagedrawers:upgrade_template>, <item:minecraft:smooth_quartz>, <item:minecraft:smooth_quartz>, <item:storagedrawers:upgrade_template>, <item:storagedrawers:gold_storage_upgrade>, <item:storagedrawers:upgrade_template>, <item:minecraft:smooth_quartz>, <item:minecraft:smooth_quartz>, <item:storagedrawers:upgrade_template>]
]);