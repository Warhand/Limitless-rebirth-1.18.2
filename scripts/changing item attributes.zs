import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.entity.attribute.AttributeOperation;
import crafttweaker.api.item.enchantment.Rarity;
import crafttweaker.api.item.property.Rarity;

//Terra blade fix
<item:botania:terra_sword>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "cb3f55d3-645c-4f38-a497-9c13a33db5cf", "Extra Power", 7, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:MAINHAND>]);
<item:botania:terra_sword>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_speed>, "fa233e1c-4180-4865-b01b-bcce9785aca3", "Extra speed", -2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:MAINHAND>]);


//Starcaller fix
<item:botania:star_sword>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "cb3f55d3-645c-4f38-a497-9c13a33db5cf", "Extra Power", 7.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:MAINHAND>]);
<item:botania:star_sword>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_speed>, "fa233e1c-4180-4865-b01b-bcce9785aca3", "Extra speed", -2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:MAINHAND>]);

//thundercaller fix
<item:botania:thunder_sword>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "cb3f55d3-645c-4f38-a497-9c13a33db5cf", "Extra Power", 7.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:MAINHAND>]);

