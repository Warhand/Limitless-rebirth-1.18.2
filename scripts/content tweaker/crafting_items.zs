#loader contenttweaker

import contenttweaker.builder.vanilla.item.Basic;
import contenttweaker.object.vanilla.property.StandardItemProperties;

//creative tab for custom crafting items
<factory:creative_tab>.create("limitlessrebirth", <item:contenttweaker:limitless_potential_core>);
val limitlessrebirth = <tab:limitlessrebirth>;

//unstackable item property
val unstackable = <item:minecraft:cake>.findProperties<StandardItemProperties>();

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
