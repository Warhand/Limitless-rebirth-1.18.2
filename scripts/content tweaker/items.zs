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
<factory:item>.typed<Basic>().cloning(unstackable).tab(limitlessrebirth).rarity(<constant:minecraft:item/rarity:epic>).build("limitless_potential_core");

//casting molds
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("ingot_mold");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("nugget_mold");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("plate_mold");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("rod_mold");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("wire_mold");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("gear_mold");

//material dust
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("cloggrum_dust");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("froststeel_dust");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("forgotten_dust");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("hellforged_dust");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("zinc_dust");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("neptunium_dust");

//material blend
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("pendorite_blend");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("elementium_blend");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("terrasteel_blend");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("manasteel_blend");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("gaia_spirit_blend");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("netherite_blend");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("hallowed_gold_blend");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("soulstained_steel_blend");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("brass_blend");

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
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("zinc_fragment");

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
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("zinc_gravel");

//Ore crushed
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("crushed_iridium");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("crushed_froststeel");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("crushed_cloggrum");
<factory:item>.typed<Basic>().stacksTo(64).tab(limitlessrebirth).build("crushed_hellforged");