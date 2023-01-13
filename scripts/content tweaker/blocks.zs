#loader contenttweaker

import contenttweaker.builder.vanilla.block.Basic;
import contenttweaker.object.vanilla.property.StandardBlockProperties;

val rawOreProperties = <block:minecraft:raw_iron_block>.findProperties<StandardBlockProperties>();

<factory:block>.typed<Basic>().cloning(rawOreProperties).build("raw_tin_block");
<factory:block>.typed<Basic>().cloning(rawOreProperties).build("raw_iridium_block");