#loader contenttweaker

import contenttweaker.builder.vanilla.block.Basic;
import contenttweaker.object.vanilla.property.StandardBlockProperties;

val rawOreProperties = <block:minecraft:raw_iron_block>.findProperties<StandardBlockProperties>();

<factory:block>.typed<Basic>().cloning(rawOreProperties).dropsFrom(<resource:contenttweaker:blocks/raw_iridium_block>).build("raw_iridium_block");
<factory:block>.typed<Basic>().cloning(rawOreProperties).dropsFrom(<resource:contenttweaker:blocks/raw_aluminum_block>).build("raw_aluminum_block");
<factory:block>.typed<Basic>().cloning(rawOreProperties).dropsFrom(<resource:contenttweaker:blocks/raw_uranium_block>).build("raw_uranium_block");

<factory:block>.typed<Basic>().cloning(rawOreProperties).sound(<soundtype:minecraft:deepslate>).dropsFrom(<resource:contenttweaker:blocks/metal_slag_block>).build("metal_slag_block");