import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.entity.attribute.AttributeOperation;
import crafttweaker.api.item.enchantment.Rarity;
import crafttweaker.api.item.property.Rarity;

//manasteel sword fix
<item:botania:manasteel_sword>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "cb3f55d3-645c-4f38-a497-9c13a33db5cf", "Extra Power", 5.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:MAINHAND>]);

//elementium sword fix
<item:botania:elementium_sword>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "cb3f55d3-645c-4f38-a497-9c13a33db5cf", "Extra Power", 6, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:MAINHAND>]);

//Terra blade fix
<item:botania:terra_sword>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "cb3f55d3-645c-4f38-a497-9c13a33db5cf", "Extra Power", 7, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:MAINHAND>]);
<item:botania:terra_sword>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_speed>, "fa233e1c-4180-4865-b01b-bcce9785aca3", "Extra speed", -2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:MAINHAND>]);


//Starcaller fix
<item:botania:star_sword>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "cb3f55d3-645c-4f38-a497-9c13a33db5cf", "Extra Power", 7.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:MAINHAND>]);
<item:botania:star_sword>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_speed>, "fa233e1c-4180-4865-b01b-bcce9785aca3", "Extra speed", -2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:MAINHAND>]);

//thundercaller fix
<item:botania:thunder_sword>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "cb3f55d3-645c-4f38-a497-9c13a33db5cf", "Extra Power", 7.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:MAINHAND>]);

//elementium armor fix
<item:botania:elementium_boots>.addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "845db27c-c624-495f-8c9f-6020a9a58b6b", "Extra armor", 3, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:botania:elementium_leggings>.addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "d8499b04-0e66-4726-ab29-64469d734e0d", "Extra armor", 6, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:botania:elementium_chestplate>.addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "9f3d476d-c118-4544-8365-64846904b48e", "Extra armor", 8, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:botania:elementium_helmet>.addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "2ad3f246-fee1-4e67-b886-69fd380bb150", "Extra armor", 3, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);

<item:botania:elementium_boots>.addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "845db27c-c624-495f-8c9f-6020a9a58b6b", "Extra tough", 2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:botania:elementium_leggings>.addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "d8499b04-0e66-4726-ab29-64469d734e0d", "Extra tough", 2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:botania:elementium_chestplate>.addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "9f3d476d-c118-4544-8365-64846904b48e", "Extra tough", 2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:botania:elementium_helmet>.addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "2ad3f246-fee1-4e67-b886-69fd380bb150", "Extra tough", 2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);

//terrasteel armor fix
<item:botania:terrasteel_boots>.addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "845db27c-c624-495f-8c9f-6020a9a58b6b", "Extra armor", 4, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:botania:terrasteel_leggings>.addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "d8499b04-0e66-4726-ab29-64469d734e0d", "Extra armor", 7, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:botania:terrasteel_chestplate>.addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "9f3d476d-c118-4544-8365-64846904b48e", "Extra armor", 9, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:botania:terrasteel_helmet>.addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "2ad3f246-fee1-4e67-b886-69fd380bb150", "Extra armor", 4, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);

<item:botania:terrasteel_boots>.addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "845db27c-c624-495f-8c9f-6020a9a58b6b", "Extra tough", 3.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:botania:terrasteel_leggings>.addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "d8499b04-0e66-4726-ab29-64469d734e0d", "Extra tough", 3.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:botania:terrasteel_chestplate>.addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "9f3d476d-c118-4544-8365-64846904b48e", "Extra tough", 3.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:botania:terrasteel_helmet>.addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "2ad3f246-fee1-4e67-b886-69fd380bb150", "Extra tough", 3.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);

//manasteel armor fix
<item:botania:manasteel_helmet>.addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "845db27c-c624-495f-8c9f-6020a9a58b6b", "Extra armor", 3, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:botania:manasteel_leggings>.addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "d8499b04-0e66-4726-ab29-64469d734e0d", "Extra armor", 7, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:botania:manasteel_chestplate>.addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "9f3d476d-c118-4544-8365-64846904b48e", "Extra armor", 7.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:botania:manasteel_helmet>.addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "2ad3f246-fee1-4e67-b886-69fd380bb150", "Extra armor", 3, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);

<item:botania:manasteel_helmet>.addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "845db27c-c624-495f-8c9f-6020a9a58b6b", "Extra tough", 1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:botania:terrasteel_leggings>.addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "d8499b04-0e66-4726-ab29-64469d734e0d", "Extra tough", 1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:botania:manasteel_chestplate>.addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "9f3d476d-c118-4544-8365-64846904b48e", "Extra tough", 1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:botania:manasteel_helmet>.addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "2ad3f246-fee1-4e67-b886-69fd380bb150", "Extra tough", 1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);

//aquaculture neptune sword and axe fix
<item:aquaculture:neptunium_sword>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "cb3f55d3-645c-4f38-a497-9c13a33db5cf", "extra power", 7, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);
<item:aquaculture:neptunium_axe>.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "cb3f55d3-645c-4f38-a497-9c13a33db5cf", "extra power", 11, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:mainhand>]);