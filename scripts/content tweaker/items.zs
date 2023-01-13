#loader contenttweaker

import contenttweaker.builder.vanilla.item.Basic;
import contenttweaker.object.vanilla.property.StandardItemProperties;
import contenttweaker.builder.vanilla.item.BlockItem;

//creative tab for custom crafting items
<factory:creative_tab>.create("limitlessrebirth", <item:contenttweaker:limitless_potential_core>);
val limitlessrebirth = <tab:limitlessrebirth>;

//unstackable item property
val unstackable = <item:minecraft:cake>.findProperties<StandardItemProperties>();

//stackable item property
val stackable = <item:minecraft:cobblestone>.findProperties<StandardItemProperties>();

//special crafting items
<factory:item>.typed<Basic>().cloning(unstackable).tab(limitlessrebirth).rarity(<constant:minecraft:item/rarity:epic>).build("food_core");
<factory:item>.typed<Basic>().cloning(unstackable).tab(limitlessrebirth).rarity(<constant:minecraft:item/rarity:epic>).build("animal_core");
<factory:item>.typed<Basic>().cloning(unstackable).tab(limitlessrebirth).rarity(<constant:minecraft:item/rarity:epic>).build("overworld_core");
<factory:item>.typed<Basic>().cloning(unstackable).tab(limitlessrebirth).rarity(<constant:minecraft:item/rarity:epic>).build("death_core");
<factory:item>.typed<Basic>().cloning(unstackable).tab(limitlessrebirth).rarity(<constant:minecraft:item/rarity:epic>).build("nether_core");
<factory:item>.typed<Basic>().cloning(unstackable).tab(limitlessrebirth).rarity(<constant:minecraft:item/rarity:epic>).build("life_core");
<factory:item>.typed<Basic>().cloning(unstackable).tab(limitlessrebirth).rarity(<constant:minecraft:item/rarity:epic>).build("engineer_core");
<factory:item>.typed<Basic>().cloning(unstackable).tab(limitlessrebirth).rarity(<constant:minecraft:item/rarity:epic>).build("undergarden_core");
<factory:item>.typed<Basic>().cloning(unstackable).tab(limitlessrebirth).rarity(<constant:minecraft:item/rarity:epic>).build("mana_core");
<factory:item>.typed<Basic>().cloning(unstackable).tab(limitlessrebirth).rarity(<constant:minecraft:item/rarity:epic>).build("dungeon_core");
<factory:item>.typed<Basic>().cloning(unstackable).tab(limitlessrebirth).rarity(<constant:minecraft:item/rarity:epic>).build("soul_core");
<factory:item>.typed<Basic>().cloning(unstackable).tab(limitlessrebirth).rarity(<constant:minecraft:item/rarity:epic>).build("indsutry_core");
<factory:item>.typed<Basic>().cloning(unstackable).tab(limitlessrebirth).rarity(<constant:minecraft:item/rarity:epic>).build("blood_core");
<factory:item>.typed<Basic>().cloning(unstackable).tab(limitlessrebirth).rarity(<constant:minecraft:item/rarity:epic>).build("source_core");
<factory:item>.typed<Basic>().cloning(unstackable).tab(limitlessrebirth).rarity(<constant:minecraft:item/rarity:epic>).build("kinetic_core");
<factory:item>.typed<Basic>().cloning(unstackable).tab(limitlessrebirth).rarity(<constant:minecraft:item/rarity:epic>).build("ender_core");

<factory:item>.typed<Basic>().cloning(unstackable).tab(limitlessrebirth).rarity(<constant:minecraft:item/rarity:epic>).build("limitless_potential_core");

//casting molds
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("ingot_mold");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("nugget_mold");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("plate_mold");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("rod_mold");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("bar_mold");

//material dust
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("cloggrum_dust");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("froststeel_dust");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("nickel_dust");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("silver_dust");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("uranium_dust");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("forgotten_dust");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("netherite_dust");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("hellforged_dust");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("constantan_dust");

//Ore fragments
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("aluminum_fragment");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("cloggrum_fragment");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("froststeel_fragment");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("iridium_fragment");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("lead_fragment");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("nickel_fragment");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("silver_fragment");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("tin_fragment");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("uranium_fragment");

//Ore gravel
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("aluminum_gravel");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("cloggrum_gravel");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("froststeel_gravel");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("iridium_gravel");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("lead_gravel");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("nickel_gravel");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("silver_gravel");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("tin_gravel");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("uranium_gravel");

//Ore crushed
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("crushed_iridium");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("crushed_froststeel");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("crushed_cloggrum");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("crushed_hellforged");