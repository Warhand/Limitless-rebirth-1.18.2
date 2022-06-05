import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;

//cyclic item collector
craftingTable.remove(<item:cyclic:collector>);
craftingTable.addShaped("item_collector", <item:cyclic:collector>, [[<tag:items:forge:plates/steel>, <tag:items:forge:storage_blocks/lapis>, <tag:items:forge:plates/steel>], [<item:minecraft:hopper>, <item:minecraft:dispenser>, <item:minecraft:hopper>], [<tag:items:forge:plates/steel>, <item:minecraft:redstone>, <tag:items:forge:plates/steel>]]);

//cyclic fluid placer
craftingTable.remove(<item:cyclic:placer_fluid>);
craftingTable.addShaped("fluid_placer", <item:cyclic:placer_fluid>, [[<tag:items:forge:plates/iron>, <item:minecraft:packed_ice>, <tag:items:forge:plates/iron>], [<tag:items:forge:buckets/empty>, <item:minecraft:dispenser>, <tag:items:forge:buckets/empty>], [<tag:items:forge:plates/iron>, <item:minecraft:redstone>, <tag:items:forge:plates/iron>]]);

//cyclic harvester
craftingTable.remove(<item:cyclic:harvester>);
craftingTable.addShaped("harvester", <item:cyclic:harvester>, [[<tag:items:forge:plates/steel>, <tag:items:forge:storage_blocks/emerald>, <tag:items:forge:plates/steel>], [<item:minecraft:diamond_hoe>, <item:minecraft:dispenser>, <item:minecraft:diamond_hoe>], [<tag:items:forge:plates/steel>, <item:minecraft:redstone>, <tag:items:forge:plates/steel>]]);

//cyclic fluid collector
craftingTable.remove(<item:cyclic:collector_fluid>);
craftingTable.addShaped("fluid_collector", <item:cyclic:collector_fluid>, [[<tag:items:forge:plates/steel>, <item:minecraft:calcite>, <tag:items:forge:plates/steel>], [<item:minecraft:sponge>, <item:minecraft:dispenser>, <item:minecraft:sponge>], [<tag:items:forge:plates/steel>, <item:minecraft:redstone>, <tag:items:forge:plates/steel>]]);

//cyclic shape builder
craftingTable.remove(<item:cyclic:structure>);
craftingTable.addShapedMirrored("builder", MirrorAxis.VERTICAL, <item:cyclic:structure>, [[<tag:items:forge:plates/steel>, <tag:items:forge:obsidian>, <tag:items:forge:plates/steel>], [<item:cyclic:placer>, <item:minecraft:dispenser>, <item:cyclic:breaker>], [<tag:items:forge:plates/steel>, <item:minecraft:redstone>, <tag:items:forge:plates/steel>]]);

//cyclic shape computer
craftingTable.remove(<item:cyclic:computer_shape>);
craftingTable.addShaped("shape_computer", <item:cyclic:computer_shape>, [[<tag:items:forge:plates/iron>, <item:minecraft:redstone_block>, <tag:items:forge:plates/iron>], [<tag:items:forge:ender_pearls>, <item:minecraft:dispenser>, <tag:items:forge:ender_pearls>], [<tag:items:forge:plates/iron>, <item:minecraft:redstone>, <tag:items:forge:plates/iron>]]);

//cyclic block placer
craftingTable.remove(<item:cyclic:placer>);
craftingTable.addShaped("placer", <item:cyclic:placer>, [[<tag:items:forge:plates/iron>, <item:minecraft:smooth_quartz>, <tag:items:forge:plates/iron>], [<item:minecraft:piston>, <item:minecraft:dispenser>, <item:minecraft:piston>], [<tag:items:forge:plates/iron>, <item:minecraft:redstone>, <tag:items:forge:plates/iron>]]);

//cyclic block breaker
craftingTable.remove(<item:cyclic:breaker>);
craftingTable.addShapedMirrored("breaker", MirrorAxis.HORIZONTAL, <item:cyclic:breaker>, [[<tag:items:forge:plates/steel>, <item:minecraft:clay>, <tag:items:forge:plates/steel>], [<item:minecraft:diamond_pickaxe>, <item:minecraft:dispenser>, <item:minecraft:diamond_pickaxe>], [<tag:items:forge:plates/steel>, <item:minecraft:redstone>, <tag:items:forge:plates/steel>]]);

//cyclic forester
craftingTable.remove(<item:cyclic:forester>);
craftingTable.addShaped("forester", <item:cyclic:forester>, [[<tag:items:forge:plates/steel>, <tag:items:minecraft:leaves>, <tag:items:forge:plates/steel>], [<item:minecraft:diamond_axe>, <item:minecraft:dispenser>, <item:minecraft:diamond_axe>], [<tag:items:forge:plates/steel>, <item:minecraft:redstone>, <tag:items:forge:plates/steel>]]);

//cyclic miner
craftingTable.remove(<item:cyclic:miner>);
craftingTable.addShaped("miner", <item:cyclic:miner>, [[<tag:items:forge:plates/steel>, <item:minecraft:obsidian>, <tag:items:forge:plates/steel>], [<item:minecraft:ender_eye>, <item:minecraft:dispenser>, <item:minecraft:ender_eye>], [<tag:items:forge:plates/steel>, <item:minecraft:redstone>, <tag:items:forge:plates/steel>]]);

//cyclic precise dropper
craftingTable.remove(<item:cyclic:dropper>);
craftingTable.addShaped("precise_dropper", <item:cyclic:dropper>, [[<tag:items:forge:plates/iron>, <item:minecraft:smooth_quartz>, <tag:items:forge:plates/iron>], [<item:minecraft:quartz>, <item:minecraft:dropper>, <item:minecraft:quartz>], [<tag:items:forge:plates/iron>, <item:minecraft:redstone>, <tag:items:forge:plates/iron>]]);

//cyclic item user
craftingTable.remove(<item:cyclic:user>);
craftingTable.addShaped("item_user", <item:cyclic:user>, [[<tag:items:forge:plates/steel>, <tag:items:forge:storage_blocks/gold>, <tag:items:forge:plates/steel>], [<item:minecraft:ender_eye>, <item:minecraft:dispenser>, <item:minecraft:ender_eye>], [<tag:items:forge:plates/steel>, <item:minecraft:redstone>, <tag:items:forge:plates/steel>]]);

//cyclic wireless item transfer
craftingTable.remove(<item:cyclic:wireless_item>);
craftingTable.addShaped("cyclic_wireless_item", <item:cyclic:wireless_item> * 2, [[<tag:items:forge:gems/amethyst>, <item:minecraft:smooth_stone>, <tag:items:forge:gems/amethyst>], [<item:minecraft:smooth_stone>, <item:extendedcrafting:ender_star>, <item:minecraft:smooth_stone>], [<tag:items:forge:gems/amethyst>, <item:minecraft:smooth_stone>, <tag:items:forge:gems/amethyst>]]);

//cyclic wireless fluid transfer
craftingTable.remove(<item:cyclic:wireless_fluid>);
craftingTable.addShaped("cyclic_wireless_fluid", <item:cyclic:wireless_fluid> * 2, [[<item:minecraft:lapis_lazuli>, <item:minecraft:smooth_stone>, <item:minecraft:lapis_lazuli>], [<item:minecraft:smooth_stone>, <item:extendedcrafting:ender_star>, <item:minecraft:smooth_stone>], [<item:minecraft:lapis_lazuli>, <item:minecraft:smooth_stone>, <item:minecraft:lapis_lazuli>]]);

//cyclic wireless energy transfer
craftingTable.remove(<item:cyclic:wireless_energy>);
craftingTable.addShaped("cyclic_wireless_energy", <item:cyclic:wireless_energy> * 2, [[<tag:items:forge:dusts/redstone>, <item:minecraft:smooth_stone>, <tag:items:forge:dusts/redstone>], [<item:minecraft:smooth_stone>, <item:extendedcrafting:ender_star>, <item:minecraft:smooth_stone>], [<tag:items:forge:dusts/redstone>, <item:minecraft:smooth_stone>, <tag:items:forge:dusts/redstone>]]);

//cyclic gps card
craftingTable.remove(<item:cyclic:location_data>);
craftingTable.addShaped("cyclic_location_data", <item:cyclic:location_data> * 2, [[<item:minecraft:iron_nugget>, <tag:items:forge:dyes/blue>, <item:minecraft:iron_nugget>], [<item:cyclic:carbon_paper>, <item:minecraft:ender_pearl>, <item:cyclic:carbon_paper>], [<item:minecraft:iron_nugget>, <tag:items:forge:dyes/blue>, <item:minecraft:iron_nugget>]]);
  craftingTable.addShapeless("cyclic_location_wipenbt", <item:cyclic:location_data>, [<item:cyclic:location_data>]);
 
//cyclic ice scepter
craftingTable.remove(<item:cyclic:spell_ice>);
craftingTable.addShaped("cyclic_spell_ice", <item:cyclic:spell_ice>, [[<item:minecraft:blue_ice>, <tag:items:forge:gems/diamond>, <item:minecraft:blue_ice>], [IIngredientEmpty.getInstance(), <tag:items:forge:fences/nether_brick>, IIngredientEmpty.getInstance()], [IIngredientEmpty.getInstance(), <tag:items:forge:fences/nether_brick>, IIngredientEmpty.getInstance()]]);

//cyclic furnace generator
craftingTable.remove(<item:cyclic:generator_fuel>);
craftingTable.addShaped("generator_combustion", <item:cyclic:generator_fuel>, [[<item:minecraft:polished_andesite>, <item:minecraft:polished_andesite>, <item:minecraft:polished_andesite>], [<item:minecraft:polished_andesite>, <item:minecraft:blast_furnace>, <item:minecraft:polished_andesite>], [<item:minecraft:polished_andesite>, <tag:items:forge:storage_blocks/redstone>, <item:minecraft:polished_andesite>]]);

//cyclic food generator
craftingTable.remove(<item:cyclic:generator_food>);
craftingTable.addShaped("generator_food", <item:cyclic:generator_food>, [[<tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>], [<tag:items:forge:plates/iron>, <item:minecraft:smoker>, <tag:items:forge:plates/iron>], [<tag:items:forge:plates/iron>, <tag:items:forge:storage_blocks/redstone>, <tag:items:forge:plates/iron>]]);

//cyclic cloud block
craftingTable.remove(<item:cyclic:cloud>);
craftingTable.addShaped("cyclic_cloud", <item:cyclic:cloud> * 4, [[<item:minecraft:cobweb>, <tag:items:minecraft:wool>, <item:minecraft:cobweb>], [<tag:items:minecraft:wool>, <item:minecraft:powder_snow_bucket>.transformReplace(<item:minecraft:bucket>), <tag:items:minecraft:wool>], [<item:minecraft:cobweb>, <tag:items:minecraft:wool>, <item:minecraft:cobweb>]]);

//cyclic phantom cloud block
craftingTable.remove(<item:cyclic:cloud_membrane>);
craftingTable.addShaped("cyclic_cloud_membrane", <item:cyclic:cloud_membrane> * 4, [[<item:cyclic:cloud>, <tag:items:forge:salts>, <item:cyclic:cloud>], [<tag:items:forge:salts>, <item:quark:soul_bead>, <tag:items:forge:salts>], [<item:cyclic:cloud>, <tag:items:forge:salts>, <item:cyclic:cloud>]]);

//cyclic ender eye block
craftingTable.remove(<item:minecraft:ender_eye>);
craftingTable.remove(<item:cyclic:eye_redstone>);
craftingTable.addShaped("cyclic_eye_redstone", <item:cyclic:eye_redstone>, [[<item:minecraft:redstone>, <item:minecraft:ender_eye>, <item:minecraft:redstone>], [<item:minecraft:ender_eye>, <item:cyclic:eye_teleport>, <item:minecraft:ender_eye>], [<item:minecraft:redstone>, <item:minecraft:ender_eye>, <item:minecraft:redstone>]]);

//cyclic translocation platform
craftingTable.remove(<item:cyclic:teleport>);
craftingTable.addShaped("cyclic_teleport", <item:cyclic:teleport>, [[<item:minecraft:amethyst_block>, <item:waystones:warp_stone>, <item:minecraft:amethyst_block>], [<item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>, <item:minecraft:crying_obsidian>]]);

//cyclic reverse stirrups
craftingTable.remove(<item:cyclic:stirrups_reverse>);
craftingTable.addShaped("cyclic_stirrups_reverse", <item:cyclic:stirrups_reverse>, [[IIngredientEmpty.getInstance(), <item:minecraft:lead>, <tag:items:forge:leather>], [<tag:items:forge:ingots/steel>, <item:minecraft:saddle>, <item:minecraft:lead>], [<tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>, IIngredientEmpty.getInstance()]]);

//cyclic stirrups
craftingTable.remove(<item:cyclic:stirrups>);
craftingTable.addShaped("cyclic_stirrups", <item:cyclic:stirrups>, [[IIngredientEmpty.getInstance(), <item:minecraft:lead>, <tag:items:forge:leather>], [<tag:items:forge:ingots/steel>, <item:minecraft:saddle>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, IIngredientEmpty.getInstance()]]);

//cyclic sleeping bag
craftingTable.remove(<item:cyclic:sleeping_mat>);
craftingTable.addShaped("cyclic_sleeping_mat", <item:cyclic:sleeping_mat>, [[IIngredientEmpty.getInstance(), <tag:items:minecraft:carpets>, <tag:items:minecraft:wool>], [<tag:items:minecraft:carpets>, <tag:items:minecraft:wool>, <tag:items:minecraft:carpets>], [<tag:items:minecraft:wool>, <tag:items:minecraft:carpets>, IIngredientEmpty.getInstance()]]);

//cyclic tempered dark glass
craftingTable.remove(<item:cyclic:dark_glass>);
craftingTable.remove(<item:cyclic:dark_glass_connected>);
craftingTable.addShaped("tempered_glass", <item:cyclic:dark_glass_connected> * 4, [[<item:minecraft:tinted_glass>, <item:create:powdered_obsidian>, <item:minecraft:tinted_glass>], [<item:create:powdered_obsidian>, <tag:items:forge:nuggets/netherite>, <item:create:powdered_obsidian>], [<item:minecraft:tinted_glass>, <item:create:powdered_obsidian>, <item:minecraft:tinted_glass>]]);

//cyclic ender pearl block
craftingTable.remove(<item:cyclic:eye_teleport>);
craftingTable.addShaped("cyclic_eye_teleport", <item:cyclic:eye_teleport>, [[<item:waystones:warp_dust>, <item:minecraft:ender_pearl>, <item:waystones:warp_dust>], [<item:minecraft:ender_pearl>, <item:minecraft:ender_pearl>, <item:minecraft:ender_pearl>], [<item:waystones:warp_dust>, <item:minecraft:ender_pearl>, <item:waystones:warp_dust>]]);

//cyclic terra glass
craftingTable.remove(<item:cyclic:terra_glass>);
craftingTable.addShaped("terra_glass", <item:cyclic:terra_glass> * 8, [[<item:immersiveengineering:insulating_glass>, <item:immersiveengineering:insulating_glass>, <item:immersiveengineering:insulating_glass>], [<item:immersiveengineering:insulating_glass>, <item:cyclic:terra_preta>, <item:immersiveengineering:insulating_glass>], [<item:immersiveengineering:insulating_glass>, <item:immersiveengineering:insulating_glass>, <item:immersiveengineering:insulating_glass>]]);

//cyclic void anvil
craftingTable.remove(<item:cyclic:anvil_void>);
craftingTable.addShaped("anvil_void", <item:cyclic:anvil_void>, [[<tag:items:forge:storage_blocks/iron>, <tag:items:forge:storage_blocks/iron>, <tag:items:forge:storage_blocks/iron>], [IIngredientEmpty.getInstance(), <tag:items:forge:ingots/steel>, IIngredientEmpty.getInstance()], [<tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>]]);

//cyclic magma anvil
craftingTable.remove(<item:cyclic:anvil_magma>);
craftingTable.addShaped("anvil_magma", <item:cyclic:anvil_magma>, [[<item:minecraft:magma_block>, <item:minecraft:magma_block>, <item:minecraft:magma_block>], [IIngredientEmpty.getInstance(), <item:minecraft:netherite_ingot>, IIngredientEmpty.getInstance()], [<tag:items:forge:obsidian>, <item:minecraft:netherite_ingot>, <tag:items:forge:obsidian>]]);

//cyclic sack of holding
craftingTable.remove(<item:cyclic:tile_transporter_empty>);
craftingTable.addShaped("tile_transporter_empty", <item:cyclic:tile_transporter_empty>, [[IIngredientEmpty.getInstance(), <tag:items:forge:string>, IIngredientEmpty.getInstance()], [<tag:items:forge:leather>, <item:minecraft:barrel>, <tag:items:forge:leather>], [<tag:items:forge:leather>, <tag:items:forge:leather>, <tag:items:forge:leather>]]);

//cyclic advanced handheld crafting table
craftingTable.remove(<item:cyclic:crafting_bag>);
craftingTable.addShaped("advanced_crafting_stick2", <item:cyclic:crafting_bag>, [[IIngredientEmpty.getInstance(), <item:extendedcrafting:black_iron_slate>, IIngredientEmpty.getInstance()], [<item:extendedcrafting:black_iron_slate>, <item:cyclic:crafting_stick>, <item:extendedcrafting:black_iron_slate>], [IIngredientEmpty.getInstance(), <item:extendedcrafting:black_iron_slate>, IIngredientEmpty.getInstance()]]);

//cyclic handheld crafting table
craftingTable.addShaped("crafting_stick", <item:cyclic:crafting_stick>, [[IIngredientEmpty.getInstance(), <tag:items:minecraft:planks>, <tag:items:minecraft:planks>], [IIngredientEmpty.getInstance(), <tag:items:minecraft:planks>, <tag:items:minecraft:planks>], [<tag:items:forge:rods/wooden>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()]]);

//cyclic workbench
craftingTable.remove(<item:cyclic:workbench>);
craftingTable.addShaped("cyclic_workbench", <item:cyclic:workbench>, [[<item:minecraft:tuff>, <item:minecraft:tuff> ,<item:minecraft:tuff>], [<item:minecraft:tuff>, <item:minecraft:crafting_table>, <item:minecraft:tuff>], [<item:minecraft:tuff>, <item:minecraft:tuff>, <item:minecraft:tuff>]]);

//cyclic fluid hopper
craftingTable.remove(<item:cyclic:hopper_fluid>);
craftingTable.addShaped("hopper_fluid", <item:cyclic:hopper_fluid>, [[<item:minecraft:terracotta>, IIngredientEmpty.getInstance(), <item:minecraft:terracotta>], [<item:minecraft:terracotta>, <item:create:fluid_pipe>, <item:minecraft:terracotta>], [IIngredientEmpty.getInstance(), <item:minecraft:terracotta>, IIngredientEmpty.getInstance()]]);

//Cyclic garden scythe
craftingTable.remove(<item:cyclic:scythe_harvest>);
craftingTable.addShaped("harvest_scythe", <item:cyclic:scythe_harvest>, [[<tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>], [IIngredientEmpty.getInstance(), <item:minecraft:blaze_rod>, <tag:items:forge:ingots/steel>], [<item:minecraft:blaze_rod>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()]]);

//Cyclic scythe of foraging
craftingTable.remove(<item:cyclic:scythe_forage>);
craftingTable.addShaped("forage_scythe", <item:cyclic:scythe_forage>, [[<tag:items:forge:ingots/gold>, <tag:items:forge:ingots/gold>, <tag:items:forge:ingots/gold>], [IIngredientEmpty.getInstance(), <item:minecraft:stick>, <tag:items:forge:ingots/gold>], [<item:minecraft:stick>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()]]);

//Cyclic tree scythe
craftingTable.remove(<item:cyclic:scythe_leaves>);
craftingTable.addShaped("tree_scythe", <item:cyclic:scythe_leaves>, [[<tag:items:forge:ingots/lead>, <tag:items:forge:ingots/lead>, <tag:items:forge:ingots/lead>], [IIngredientEmpty.getInstance(), <item:minecraft:stick>, <tag:items:forge:ingots/lead>], [<item:minecraft:stick>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()]]);

//Cyclic brush scythe
craftingTable.remove(<item:cyclic:scythe_brush>);
craftingTable.addShaped("brush_scythe", <item:cyclic:scythe_brush>, [[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>], [IIngredientEmpty.getInstance(), <item:minecraft:stick>, <tag:items:forge:ingots/iron>], [<item:minecraft:stick>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()]]);

//cyclic ender pearl block uncrafting
craftingTable.remove(<item:minecraft:ender_pearl>);
craftingTable.addShaped("cyclic_eye_teleport_rev", <item:minecraft:ender_pearl> * 5, [[<item:cyclic:eye_teleport>]]);

//cyclic glistering chorus fruit
craftingTable.remove(<item:cyclic:chorus_flight>);
craftingTable.addShaped("cyclic_chorus_flight", <item:cyclic:chorus_flight>, [[<item:minecraft:chorus_fruit>, <item:minecraft:glowstone_dust>, <item:minecraft:chorus_fruit>], [<item:minecraft:glowstone_dust>, <item:cyclic:apple_ender>, <item:minecraft:glowstone_dust>], [<item:minecraft:chorus_fruit>, <item:minecraft:glowstone_dust>, <item:minecraft:chorus_fruit>]]);

//cyclic monster ball
craftingTable.remove(<item:cyclic:magic_net>);
craftingTable.addShaped("cyclic_magic_net", <item:cyclic:magic_net>, [[IIngredientEmpty.getInstance(), <tag:items:forge:ender_pearls>, IIngredientEmpty.getInstance()], [<tag:items:forge:ender_pearls>, <item:apotheosis:ender_lead>.withTag({entity_data: {}})], [IIngredientEmpty.getInstance(), <tag:items:forge:ender_pearls>, IIngredientEmpty.getInstance()]]);

//cyclic disenchanter
craftingTable.remove(<item:cyclic:disenchanter>);
craftingTable.addShaped("cyclic_disenchanter", <item:cyclic:disenchanter>, [[IIngredientEmpty.getInstance(), <item:apotheosis:scrap_tome>, IIngredientEmpty.getInstance()], [<item:tconstruct:earth_slime_crystal_block>, <item:minecraft:obsidian>, <item:tconstruct:earth_slime_crystal_block>], [<item:minecraft:obsidian>, <item:minecraft:obsidian>, <item:minecraft:obsidian>]]);

//removing cyclic solidifier and melter recipes
craftingTable.remove(<item:cyclic:solidifier>);
craftingTable.remove(<item:cyclic:melter>);
<recipetype:cyclic:solidifier>.removeAll();
<recipetype:cyclic:melter>.removeAll();

//cyclic uncrafter
craftingTable.remove(<item:cyclic:uncrafter>);
craftingTable.addShaped("cyclic_uncrafter", <item:cyclic:uncrafter>, [[<tag:items:forge:storage_blocks/diamond>, <tag:items:forge:obsidian>, <tag:items:forge:storage_blocks/diamond>], [<item:minecraft:smooth_stone>, <tag:items:forge:nether_stars>, <item:minecraft:smooth_stone>], [<item:minecraft:smooth_stone>, <tag:items:forge:ingots/netherite>, <item:minecraft:smooth_stone>]]);

//Cyclic soundproofing
craftingTable.addShaped("cyclic_soundproofing", <item:cyclic:soundproofing> * 4, [[<tag:items:minecraft:occludes_vibration_signals>, <item:minecraft:white_terracotta>, <tag:items:minecraft:occludes_vibration_signals>], [<item:minecraft:white_terracotta>, <item:ftbic:rubber>, <item:minecraft:white_terracotta>], [<tag:items:minecraft:occludes_vibration_signals>, <item:minecraft:white_terracotta>, <tag:items:minecraft:occludes_vibration_signals>]]);

//cyclic pharros beacon
craftingTable.addShaped("cyclic_beacon", <item:cyclic:beacon>, [[<item:extendedcrafting:frame>, <item:extendedcrafting:frame>, <item:extendedcrafting:frame>], [<item:extendedcrafting:frame>, <item:extendedcrafting:ender_star>, <item:extendedcrafting:frame>], [<item:extendedcrafting:ultimate_catalyst>, <tag:items:forge:storage_blocks/emerald>, <item:extendedcrafting:ultimate_catalyst>]]);