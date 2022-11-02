import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;
import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.entity.effect.MobEffectInstance;

//adding food properties to food core
//var comfort = new MobEffectInstance(<mobeffect:farmersdelight:comfort>, 999999);
//<item:contenttweaker:food_core>.setFood(FoodProperties.create(20, 1.0).addEffect(comfort, 1.0));

//temporary recipe for mote of limitless rebirth
mods.extendedcrafting.TableCrafting.addShaped("8e5e468c-cd14-44f1-b4dc-dee42e7ca96a", 0, <item:contenttweaker:limitless_potential_core>, [
	[<item:alexsmobs:mimicream>, <item:minecraft:shulker_shell>, <item:byg:ametrine_gems>, <item:undergarden:forgotten_ingot>, <item:minecraft:netherite_ingot>, <item:undergarden:forgotten_ingot>, <item:byg:ametrine_gems>, <item:minecraft:shulker_shell>, <item:alexsmobs:mimicream>], 
	[<item:minecraft:shulker_shell>, <item:byg:ametrine_gems>, <item:tconstruct:cobalt_ingot>, <item:infernalexp:molten_gold_cluster>, <item:crittersandcompanions:pearl>, <item:infernalexp:molten_gold_cluster>, <item:tconstruct:cobalt_ingot>, <item:byg:ametrine_gems>, <item:minecraft:shulker_shell>], 
	[<item:byg:ametrine_gems>, <item:tconstruct:cobalt_ingot>, <item:paraglider:spirit_orb>, <item:create:precision_mechanism>, <item:botania:life_essence>, <item:create:precision_mechanism>, <item:paraglider:spirit_orb>, <item:tconstruct:cobalt_ingot>, <item:byg:ametrine_gems>], 
	[<item:undergarden:forgotten_ingot>, <item:infernalexp:molten_gold_cluster>, <item:immersiveengineering:component_electronic_adv>, <item:graveyard:corruption>, <item:ftbic:antimatter>, <item:graveyard:corruption>, <item:immersiveengineering:component_electronic_adv>, <item:infernalexp:molten_gold_cluster>, <item:undergarden:forgotten_ingot>], 
	[<item:minecraft:netherite_ingot>, <item:alexsmobs:mimicream>, <item:ftbic:antimatter>, <item:malum:corrupted_resonance>, <item:minecraft:nether_star>, <item:malum:corrupted_resonance>, <item:ftbic:antimatter>, <item:alexsmobs:mimicream>, <item:minecraft:netherite_ingot>], 
	[<item:undergarden:forgotten_ingot>, <item:infernalexp:molten_gold_cluster>, <item:immersiveengineering:component_electronic_adv>, <item:graveyard:corruption>, <item:ftbic:antimatter>, <item:graveyard:corruption>, <item:immersiveengineering:component_electronic_adv>, <item:infernalexp:molten_gold_cluster>, <item:undergarden:forgotten_ingot>], 
	[<item:byg:ametrine_gems>, <item:tconstruct:cobalt_ingot>, <item:paraglider:spirit_orb>, <item:create:precision_mechanism>, <item:botania:life_essence>, <item:create:precision_mechanism>, <item:paraglider:spirit_orb>, <item:tconstruct:cobalt_ingot>, <item:byg:ametrine_gems>], 
	[<item:minecraft:shulker_shell>, <item:byg:ametrine_gems>, <item:tconstruct:cobalt_ingot>, <item:infernalexp:molten_gold_cluster>, <item:crittersandcompanions:pearl>, <item:infernalexp:molten_gold_cluster>, <item:tconstruct:cobalt_ingot>, <item:byg:ametrine_gems>, <item:minecraft:shulker_shell>], 
	[<item:alexsmobs:mimicream>, <item:minecraft:shulker_shell>, <item:byg:ametrine_gems>, <item:undergarden:forgotten_ingot>, <item:minecraft:netherite_ingot>, <item:undergarden:forgotten_ingot>, <item:byg:ametrine_gems>, <item:minecraft:shulker_shell>, <item:alexsmobs:mimicream>]
]);

//Quantum armor

mods.extendedcrafting.TableCrafting.addShaped("59bd19ab-ca17-43c5-a6ea-125eaf089fd7", 0, <item:ftbic:quantum_chestplate>, [
	[<item:minecraft:air>, <item:ftbic:industrial_grade_metal>, <item:ftbic:industrial_grade_metal>, <item:ftbic:industrial_grade_metal>, <item:minecraft:air>, <item:ftbic:industrial_grade_metal>, <item:ftbic:industrial_grade_metal>, <item:ftbic:industrial_grade_metal>, <item:minecraft:air>], 
	[<item:ftbic:industrial_grade_metal>, <item:ftbic:iridium_alloy>, <item:ftbic:rubber>, <item:ftbic:iridium_alloy>, <item:ftbic:industrial_grade_metal>, <item:ftbic:iridium_alloy>, <item:ftbic:rubber>, <item:ftbic:iridium_alloy>, <item:ftbic:industrial_grade_metal>], 
	[<item:ftbic:industrial_grade_metal>, <item:ftbic:rubber>, <item:ftbic:ev_battery_box>, <item:ftbic:iridium_circuit>, <item:ftbic:enderium_plate>, <item:ftbic:iridium_circuit>, <item:ftbic:ev_battery_box>, <item:ftbic:rubber>, <item:ftbic:industrial_grade_metal>], 
	[<item:ftbic:industrial_grade_metal>, <item:ftbic:advanced_machine_block>, <item:ftbic:ev_cable>, <item:ftbic:enderium_plate>, <item:contenttweaker:limitless_potential_core>, <item:ftbic:enderium_plate>, <item:ftbic:ev_cable>, <item:ftbic:advanced_machine_block>, <item:ftbic:industrial_grade_metal>], 
	[<item:ftbic:industrial_grade_metal>, <item:ftbic:iridium_alloy>, <item:ftbic:overclocked_heat_vent>, <item:ftbic:iridium_circuit>, <item:ftbic:enderium_plate>, <item:ftbic:iridium_circuit>, <item:ftbic:overclocked_heat_vent>, <item:ftbic:iridium_alloy>, <item:ftbic:industrial_grade_metal>], 
	[<item:minecraft:air>, <item:ftbic:industrial_grade_metal>, <item:ftbic:ev_cable>, <item:ftbic:ev_battery_box>, <item:ftbic:ev_cable>, <item:ftbic:ev_battery_box>, <item:ftbic:ev_cable>, <item:ftbic:industrial_grade_metal>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:ftbic:industrial_grade_metal>, <item:ftbic:iridium_alloy>, <item:ftbic:antimatter_crystal>, <item:ftbic:ev_cable>, <item:ftbic:antimatter_crystal>, <item:ftbic:iridium_alloy>, <item:ftbic:industrial_grade_metal>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:ftbic:industrial_grade_metal>, <item:ftbic:iridium_alloy>, <item:ftbic:advanced_machine_block>, <item:ftbic:iridium_alloy>, <item:ftbic:industrial_grade_metal>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:ftbic:industrial_grade_metal>, <item:ftbic:industrial_grade_metal>, <item:ftbic:industrial_grade_metal>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.addShaped("custom_quantum_leggings", <item:ftbic:quantum_leggings>, [[<item:ftbic:iridium_alloy>, <item:ftbic:iridium_alloy>, <item:ftbic:iridium_alloy>], [<item:ftbic:advanced_machine_block>, <item:ftbic:enderium_plate>, <item:ftbic:advanced_machine_block>], [<tag:items:forge:dusts/glowstone>, IIngredientEmpty.getInstance(), <tag:items:forge:dusts/glowstone>]]);

craftingTable.addShaped("custom_quantum_boots", <item:ftbic:quantum_boots>, [[<item:ftbic:iridium_alloy>, <item:ftbic:enderium_plate>, <item:ftbic:iridium_alloy>], [<item:ftbic:reinforced_stone>, <item:minecraft:leather_boots>, <item:ftbic:reinforced_stone>]]);

craftingTable.addShaped("custom_quantum_helmet", <item:ftbic:quantum_helmet>, [[IIngredientEmpty.getInstance(), <item:ftbic:enderium_plate>, IIngredientEmpty.getInstance()], [<item:ftbic:iridium_alloy>, <tag:items:forge:dusts/glowstone>, <item:ftbic:iridium_alloy>], [<item:ftbic:iridium_circuit>, <item:ftbic:reinforced_glass>, <item:ftbic:iridium_circuit>]]);

//Botania infinite mana pool

mods.extendedcrafting.TableCrafting.addShaped("652aa17d-97ec-40b1-a4c3-9b86383a670e", 0, <item:botania:creative_pool>, [
	[<item:botania:terrasteel_ingot>, <item:botania:terrasteel_ingot>, <item:botania:blaze_block>, <item:botania:blaze_block>, <item:botania:dragonstone>, <item:botania:blaze_block>, <item:botania:blaze_block>, <item:botania:terrasteel_ingot>, <item:botania:terrasteel_ingot>], 
	[<item:botania:mana_diamond_block>, <item:botania:dragonstone>, <item:botania:terrasteel_ingot>, <item:botania:blaze_block>, <item:botania:mana_diamond_block>, <item:botania:blaze_block>, <item:botania:terrasteel_ingot>, <item:botania:dragonstone>, <item:botania:mana_diamond_block>], 
	[<item:botania:rune_wrath>, <item:botania:mana_diamond_block>, <item:botania:mana_diamond_block>, <item:botania:terrasteel_ingot>, <item:botania:mana_diamond_block>, <item:botania:terrasteel_ingot>, <item:botania:mana_diamond_block>, <item:botania:mana_diamond_block>, <item:botania:rune_wrath>], 
	[<item:botania:rune_wrath>, <item:botania:rune_lust>, <item:botania:rune_pride>, <item:botania:mana_diamond_block>, <item:botania:mana_diamond_block>, <item:botania:mana_diamond_block>, <item:botania:rune_pride>, <item:botania:rune_lust>, <item:botania:rune_wrath>], 
	[<item:botania:rune_sloth>, <item:botania:rune_lust>, <item:botania:rune_pride>, <item:botania:rune_envy>, <item:botania:mana_diamond_block>, <item:botania:rune_envy>, <item:botania:rune_pride>, <item:botania:rune_lust>, <item:botania:rune_sloth>], 
	[<item:botania:shimmerrock>, <item:botania:rune_sloth>, <item:botania:rune_gluttony>, <item:botania:rune_envy>, <item:botania:gaia_ingot>, <item:botania:rune_envy>, <item:botania:rune_gluttony>, <item:botania:rune_sloth>, <item:botania:shimmerrock>], 
	[<item:botania:shimmerrock>, <item:botania:rune_greed>, <item:botania:rune_gluttony>, <item:botania:rune_greed>, <item:botania:gaia_ingot>, <item:botania:rune_greed>, <item:botania:rune_gluttony>, <item:botania:rune_greed>, <item:botania:shimmerrock>], 
	[<item:botania:shimmerrock>, <item:botania:rune_mana>, <item:botania:rune_mana>, <item:botania:rune_mana>, <item:botania:gaia_ingot>, <item:botania:rune_mana>, <item:botania:rune_mana>, <item:botania:rune_mana>, <item:botania:shimmerrock>], 
	[<item:botania:shimmerrock>, <item:botania:shimmerrock>, <item:botania:shimmerrock>, <item:botania:shimmerrock>, <item:contenttweaker:limitless_potential_core>, <item:botania:shimmerrock>, <item:botania:shimmerrock>, <item:botania:shimmerrock>, <item:botania:shimmerrock>]
]);
craftingTable.addShapeless("pool_to_tablet", <item:botania:mana_tablet>.withTag({mana: 500000 as int, creative: 1 as byte}), [<item:botania:creative_pool>]);
craftingTable.addShapeless("tablet_to_pool", <item:botania:creative_pool>, [<item:botania:mana_tablet>.withTag({mana: 500000 as int, creative: 1 as byte})]);

//IE infinite battery
mods.extendedcrafting.TableCrafting.addShaped("857b66fb-a51f-4680-8b7d-a4c8d5d883e1", 0, <item:immersiveengineering:capacitor_creative>, [
	[<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>, <item:minecraft:shulker_shell>, <item:minecraft:shulker_shell>, <item:immersiveengineering:connector_hv_relay>, <item:minecraft:shulker_shell>, <item:minecraft:shulker_shell>, <item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>], 
	[<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:storage_uranium>, <item:immersiveengineering:thermoelectric_generator>, <item:minecraft:blue_ice>, <item:immersiveengineering:capacitor_hv>, <item:minecraft:blue_ice>, <item:immersiveengineering:thermoelectric_generator>, <item:immersiveengineering:storage_uranium>, <item:immersiveengineering:treated_wood_horizontal>], 
	[<item:immersiveengineering:generator>, <item:immersiveengineering:storage_uranium>, <item:immersiveengineering:thermoelectric_generator>, <item:minecraft:blue_ice>, <item:immersiveengineering:capacitor_hv>, <item:minecraft:blue_ice>, <item:immersiveengineering:thermoelectric_generator>, <item:immersiveengineering:storage_uranium>, <item:immersiveengineering:generator>], 
	[<item:immersiveengineering:radiator>, <item:immersiveengineering:heavy_engineering>, <item:immersiveengineering:connector_hv>, <item:immersiveengineering:wirecoil_steel>, <item:immersiveengineering:capacitor_hv>, <item:immersiveengineering:wirecoil_steel>, <item:immersiveengineering:connector_hv>, <item:immersiveengineering:heavy_engineering>, <item:immersiveengineering:radiator>], 
	[<item:immersiveengineering:component_steel>, <item:immersiveengineering:heavy_engineering>, <item:immersiveengineering:coil_hv>, <item:immersiveengineering:coil_hv>, <item:contenttweaker:limitless_potential_core>, <item:immersiveengineering:coil_hv>, <item:immersiveengineering:coil_hv>, <item:immersiveengineering:heavy_engineering>, <item:immersiveengineering:component_steel>], 
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
	[<item:minecraft:glass>, <item:ars_nouveau:magebloom_fiber>, <item:ars_nouveau:earth_essence>, <item:ars_nouveau:fire_essence>, <item:contenttweaker:limitless_potential_core>, <item:ars_nouveau:fire_essence>, <item:ars_nouveau:earth_essence>, <item:ars_nouveau:magebloom_fiber>, <item:minecraft:glass>], 
	[<item:minecraft:glass>, <item:ars_nouveau:source_jar>, <item:ars_nouveau:source_gem_block>, <item:ars_nouveau:conjuration_essence>, <item:ars_nouveau:water_essence>, <item:ars_nouveau:conjuration_essence>, <item:ars_nouveau:source_gem_block>, <item:ars_nouveau:source_jar>, <item:minecraft:glass>], 
	[<item:minecraft:glass>, <item:ars_nouveau:source_jar>, <item:ars_nouveau:archmage_spell_book>, <item:ars_nouveau:source_gem_block>, <item:ars_nouveau:water_essence>, <item:ars_nouveau:source_gem_block>, <item:ars_nouveau:archmage_spell_book>, <item:ars_nouveau:source_jar>, <item:minecraft:glass>], 
	[<item:ars_nouveau:archwood_planks>, <item:ars_nouveau:relay>, <item:ars_nouveau:source_jar>, <item:ars_nouveau:source_jar>, <item:ars_nouveau:as_gold_stone>, <item:ars_nouveau:source_jar>, <item:ars_nouveau:source_jar>, <item:ars_nouveau:relay>, <item:ars_nouveau:archwood_planks>], 
	[<item:ars_nouveau:archwood_planks>, <item:minecraft:gold_block>, <item:ars_nouveau:as_gold_stone>, <item:minecraft:gold_block>, <item:ars_nouveau:as_gold_stone>, <item:minecraft:gold_block>, <item:ars_nouveau:as_gold_stone>, <item:minecraft:gold_block>, <item:ars_nouveau:archwood_planks>]
]);


//Create creative blaze cake
mods.extendedcrafting.TableCrafting.addShaped("eb191e43-41a3-425b-a2bf-95a3024a5471", 0, <item:create:creative_blaze_cake>, [
	[<item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit>], 
	[<item:minecraft:popped_chorus_fruit>, <item:minecraft:enchanted_golden_apple>, <item:createaddition:chocolate_cake>, <item:create:blaze_cake>, <item:createaddition:honey_cake>, <item:create:blaze_cake>, <item:createaddition:chocolate_cake>, <item:minecraft:enchanted_golden_apple>, <item:minecraft:popped_chorus_fruit>], 
	[<item:minecraft:popped_chorus_fruit>, <item:createaddition:chocolate_cake>, <item:createaddition:chocolate_cake>, <item:create:blaze_cake>, <item:createaddition:honey_cake>, <item:create:blaze_cake>, <item:createaddition:chocolate_cake>, <item:createaddition:chocolate_cake>, <item:minecraft:popped_chorus_fruit>], 
	[<item:create:cinder_flour>, <item:create:blaze_cake>, <item:create:blaze_cake>, <item:create:sweet_roll>, <item:create:rose_quartz>, <item:create:sweet_roll>, <item:create:blaze_cake>, <item:create:blaze_cake>, <item:create:cinder_flour>], 
	[<item:create:cinder_flour>, <item:createaddition:honey_cake>, <item:createaddition:honey_cake>, <item:create:rose_quartz>, <item:contenttweaker:limitless_potential_core>, <item:create:rose_quartz>, <item:createaddition:honey_cake>, <item:createaddition:honey_cake>, <item:create:cinder_flour>], 
	[<item:create:cinder_flour>, <item:create:blaze_cake>, <item:create:blaze_cake>, <item:create:sweet_roll>, <item:create:rose_quartz>, <item:create:sweet_roll>, <item:create:blaze_cake>, <item:create:blaze_cake>, <item:create:cinder_flour>], 
	[<item:create:cinder_flour>, <item:createaddition:chocolate_cake>, <item:createaddition:chocolate_cake>, <item:create:blaze_cake>, <item:createaddition:honey_cake>, <item:create:blaze_cake>, <item:createaddition:chocolate_cake>, <item:createaddition:chocolate_cake>, <item:create:cinder_flour>], 
	[<item:create:cinder_flour>, <item:minecraft:enchanted_golden_apple>, <item:createaddition:chocolate_cake>, <item:create:blaze_cake>, <item:createaddition:honey_cake>, <item:create:blaze_cake>, <item:createaddition:chocolate_cake>, <item:minecraft:enchanted_golden_apple>, <item:create:cinder_flour>], 
	[<item:create:cinder_flour>, <item:create:cinder_flour>, <item:create:cinder_flour>, <item:create:cinder_flour>, <item:create:cinder_flour>, <item:create:cinder_flour>, <item:create:cinder_flour>, <item:create:cinder_flour>, <item:create:cinder_flour>]
]);

//Create creative engine
mods.extendedcrafting.TableCrafting.addShaped("c9877edb-84f5-40ec-a3ef-130e885184e5", 0, <item:create:creative_motor>, [
	[<item:minecraft:shulker_shell>, <item:create:steam_engine>, <item:create:large_cogwheel>, <item:create:shaft>, <item:create:sequenced_gearshift>, <item:create:shaft>, <item:create:large_cogwheel>, <item:create:steam_engine>, <item:minecraft:shulker_shell>], 
	[<item:create:steam_engine>, <item:create:large_cogwheel>, <item:create:belt_connector>, <item:create:belt_connector>, <item:create:shaft>, <item:create:belt_connector>, <item:create:belt_connector>, <item:create:large_cogwheel>, <item:create:steam_engine>], 
	[<item:minecraft:shulker_shell>, <item:create:flywheel>, <item:createaddition:electric_motor>, <item:create:shaft>, <item:create:shaft>, <item:create:shaft>, <item:createaddition:electric_motor>, <item:create:flywheel>, <item:minecraft:shulker_shell>], 
	[<item:minecraft:shulker_shell>, <item:createaddition:alternator>, <item:createaddition:gold_spool>, <item:createaddition:electric_motor>, <item:create:sequenced_gearshift>, <item:createaddition:electric_motor>, <item:createaddition:gold_spool>, <item:createaddition:alternator>, <item:minecraft:shulker_shell>], 
	[<item:minecraft:shulker_shell>, <item:createaddition:alternator>, <item:createaddition:gold_spool>, <item:createaddition:electric_motor>, <item:contenttweaker:limitless_potential_core>, <item:createaddition:electric_motor>, <item:createaddition:gold_spool>, <item:createaddition:alternator>, <item:minecraft:shulker_shell>], 
	[<item:minecraft:shulker_shell>, <item:createaddition:alternator>, <item:createaddition:gold_spool>, <item:createaddition:electric_motor>, <item:create:sequenced_gearshift>, <item:createaddition:electric_motor>, <item:createaddition:gold_spool>, <item:createaddition:alternator>, <item:minecraft:shulker_shell>], 
	[<item:minecraft:shulker_shell>, <item:create:flywheel>, <item:createaddition:electric_motor>, <item:create:shaft>, <item:create:shaft>, <item:create:shaft>, <item:createaddition:electric_motor>, <item:create:flywheel>, <item:minecraft:shulker_shell>], 
	[<item:create:steam_engine>, <item:create:large_cogwheel>, <item:create:belt_connector>, <item:create:belt_connector>, <item:create:shaft>, <item:create:belt_connector>, <item:create:belt_connector>, <item:create:large_cogwheel>, <item:create:steam_engine>], 
	[<item:minecraft:shulker_shell>, <item:create:steam_engine>, <item:create:large_cogwheel>, <item:create:shaft>, <item:create:sequenced_gearshift>, <item:create:shaft>, <item:create:large_cogwheel>, <item:create:steam_engine>, <item:minecraft:shulker_shell>]
]);
