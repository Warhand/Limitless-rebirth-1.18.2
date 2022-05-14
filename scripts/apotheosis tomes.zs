import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

//adding all helmets to helmet tag
val helmets as IItemStack[] = [
	<item:minecraft:turtle_helmet>,
	<item:minecraft:leather_helmet>,
	<item:minecraft:chainmail_helmet>,
	<item:minecraft:iron_helmet>,
	<item:minecraft:diamond_helmet>,
	<item:minecraft:golden_helmet>,
	<item:minecraft:netherite_helmet>,
	<item:minecraft:shulker_shell>,
	<item:alexsmobs:froststalker_helmet>,
	<item:alexsmobs:fedora>,
	<item:blue_skies:diopside_helmet>,
	<item:blue_skies:charoite_helmet>,
	<item:blue_skies:horizonite_helmet>,
	<item:alexsmobs:moose_headgear>,
	<item:alexsmobs:frontier_cap>,
	<item:alexsmobs:sombrero>,
	<item:alexsmobs:spiked_turtle_shell>,
	<item:blue_skies:aquite_helmet>,
	<item:botania:manaweave_helmet>,
	<item:botania:terrasteel_helmet>,
	<item:botania:elementium_helmet>,
	<item:botania:manasteel_helmet>,
	<item:upgradednetherite:corrupt_upgraded_netherite_helmet>,
	<item:upgradednetherite:feather_upgraded_netherite_helmet>,
	<item:upgradednetherite:ender_upgraded_netherite_helmet>,
	<item:upgradednetherite:water_upgraded_netherite_helmet>,
	<item:create:diving_helmet>,
	<item:blue_skies:pyrope_helmet>,
	<item:upgradednetherite:phantom_upgraded_netherite_helmet>,
	<item:upgradednetherite:poison_upgraded_netherite_helmet>,
	<item:upgradednetherite:wither_upgraded_netherite_helmet>,
	<item:upgradednetherite:fire_upgraded_netherite_helmet>,
	<item:upgradednetherite:gold_upgraded_netherite_helmet>,
	<item:beyond_earth:oxygen_mask>,
	<item:beyond_earth:netherite_oxygen_mask>,
	<item:ars_nouveau:novice_hood>,
	<item:ars_nouveau:apprentice_hood>,
	<item:ars_nouveau:archmage_hood>,
	<item:undergarden:cloggrum_helmet>,
	<item:undergarden:froststeel_helmet>,
	<item:undergarden:utherium_helmet>,
	<item:cyclic:crystal_helmet>,
	<item:malum:soul_hunter_cloak>,
	<item:malum:soul_stained_steel_helmet>,
	<item:quark:forgotten_hat>,
	<item:aquaculture:neptunium_helmet>,
	<item:immersiveengineering:armor_faraday_head>,
	<item:immersiveengineering:armor_steel_head>,
	<item:cyclic:emerald_helmet>,
	<item:upgradednetherite_ultimate:ultimate_upgraded_netherite_helmet>,
	<item:upgradednetherite_creative:creative_upgraded_netherite_helmet>
];
<tag:items:rosie:helmet>.add(helmets);

//adding all bows to bow tag
val bows as IItemStack[] = [
	<item:minecraft:bow>,
	<item:minecraft:crossbow>
];
<tag:items:rosie:bow>.add(bows);

//adding all chestplates to chestplate tag
val chestplates as IItemStack[] = [
	<item:upgradednetherite_ultimate:ultimate_upgraded_netherite_chestplate>,
	<item:undergarden:utherium_chestplate>,
	<item:cyclic:crystal_chestplate>,
	<item:cyclic:emerald_chestplate>,
	<item:immersiveengineering:armor_steel_chest>,
	<item:immersiveengineering:armor_faraday_chest>,
	<item:aquaculture:neptunium_chestplate>,
	<item:malum:soul_stained_steel_chestplate>,
	<item:upgradednetherite_creative:creative_upgraded_netherite_chestplate>,
	<item:upgradednetherite:fire_upgraded_netherite_chestplate>,
	<item:upgradednetherite:gold_upgraded_netherite_chestplate>,
	<item:minecraft:chainmail_chestplate>,
	<item:minecraft:iron_chestplate>,
	<item:minecraft:diamond_chestplate>,
	<item:minecraft:golden_chestplate>,
	<item:minecraft:netherite_chestplate>,
	<item:botania:elementium_chestplate>,
	<item:botania:manasteel_chestplate>,
	<item:upgradednetherite:corrupt_upgraded_netherite_chestplate>,
	<item:upgradednetherite:feather_upgraded_netherite_chestplate>,
	<item:upgradednetherite:phantom_upgraded_netherite_chestplate>,
	<item:upgradednetherite:poison_upgraded_netherite_chestplate>,
	<item:upgradednetherite:wither_upgraded_netherite_chestplate>,
	<item:upgradednetherite:water_upgraded_netherite_chestplate>,
	<item:upgradednetherite:ender_upgraded_netherite_chestplate>,
	<item:botania:terrasteel_chestplate>,
	<item:blue_skies:pyrope_chestplate>,
	<item:blue_skies:aquite_chestplate>,
	<item:blue_skies:diopside_chestplate>,
	<item:blue_skies:charoite_chestplate>,
	<item:blue_skies:horizonite_chestplate>,
	<item:alexsmobs:crocodile_chestplate>,
	<item:undergarden:cloggrum_chestplate>,
	<item:alexsmobs:rocky_chestplate>,
	<item:undergarden:froststeel_chestplate>
];
<tag:items:rosie:chestplate>.add(chestplates);

//adding all leggings to legging tag
val leggings as IItemStack[] = [
	<item:upgradednetherite:gold_upgraded_netherite_leggings>,
	<item:botania:manaweave_leggings>,
	<item:minecraft:netherite_leggings>,
	<item:minecraft:golden_leggings>,
	<item:minecraft:diamond_leggings>,
	<item:minecraft:iron_leggings>,
	<item:minecraft:chainmail_leggings>,
	<item:upgradednetherite:fire_upgraded_netherite_leggings>,
	<item:upgradednetherite:ender_upgraded_netherite_leggings>,
	<item:upgradednetherite:water_upgraded_netherite_leggings>,
	<item:botania:elementium_leggings>,
	<item:botania:terrasteel_leggings>,
	<item:blue_skies:pyrope_leggings>,
	<item:blue_skies:aquite_leggings>,
	<item:blue_skies:diopside_leggings>,
	<item:blue_skies:charoite_leggings>,
	<item:blue_skies:horizonite_leggings>,
	<item:alexsmobs:centipede_leggings>,
	<item:alexsmobs:emu_leggings>,
	<item:beyond_earth:space_pants>,
	<item:beyond_earth:netherite_space_pants>,
	<item:ars_nouveau:novice_leggings>,
	<item:ars_nouveau:apprentice_leggings>,
	<item:ars_nouveau:archmage_leggings>,
	<item:undergarden:cloggrum_leggings>,
	<item:undergarden:froststeel_leggings>,
	<item:undergarden:utherium_leggings>,
	<item:cyclic:crystal_leggings>,
	<item:cyclic:emerald_leggings>,
	<item:immersiveengineering:armor_steel_legs>,
	<item:immersiveengineering:armor_faraday_legs>,
	<item:aquaculture:neptunium_leggings>,
	<item:malum:soul_stained_steel_leggings>,
	<item:malum:soul_hunter_leggings>,
	<item:upgradednetherite:wither_upgraded_netherite_leggings>,
	<item:upgradednetherite:poison_upgraded_netherite_leggings>,
	<item:upgradednetherite:phantom_upgraded_netherite_leggings>,
	<item:upgradednetherite:feather_upgraded_netherite_leggings>,
	<item:upgradednetherite:corrupt_upgraded_netherite_leggings>,
	<item:botania:manasteel_leggings>,
	<item:upgradednetherite_ultimate:ultimate_upgraded_netherite_leggings>,
	<item:upgradednetherite_creative:creative_upgraded_netherite_leggings>
];
<tag:items:rosie:legging>.add(leggings);

//adding all boots to boots tag
val feet as IItemStack[] = [
	<item:minecraft:leather_boots>,
	<item:minecraft:chainmail_boots>,
	<item:minecraft:iron_boots>,
	<item:minecraft:diamond_boots>,
	<item:minecraft:golden_boots>,
	<item:minecraft:netherite_boots>,
	<item:ars_nouveau:novice_boots>,
	<item:ars_nouveau:apprentice_boots>,
	<item:ars_nouveau:archmage_boots>,
	<item:blue_skies:pyrope_boots>,
	<item:blue_skies:diopside_boots>,
	<item:blue_skies:charoite_boots>,
	<item:blue_skies:horizonite_boots>,
	<item:create:diving_boots>,
	<item:cyclic:crystal_boots>,
	<item:cyclic:emerald_boots>,
	<item:immersiveengineering:armor_steel_feet>,
	<item:immersiveengineering:armor_faraday_feet>,
	<item:botania:manasteel_boots>,
	<item:botania:elementium_boots>,
	<item:botania:terrasteel_boots>,
	<item:botania:manaweave_boots>,
	<item:malum:soul_stained_steel_boots>,
	<item:malum:soul_hunter_boots>,
	<item:beyond_earth:space_boots>,
	<item:beyond_earth:netherite_space_boots>,
	<item:undergarden:cloggrum_boots>,
	<item:undergarden:froststeel_boots>,
	<item:undergarden:utherium_boots>,
	<item:aquaculture:neptunium_boots>,
	<item:alexsmobs:roadrunner_boots>,
	<item:upgradednetherite:ender_upgraded_netherite_boots>,
	<item:upgradednetherite:fire_upgraded_netherite_boots>,
	<item:upgradednetherite:wither_upgraded_netherite_boots>,
	<item:upgradednetherite:poison_upgraded_netherite_boots>,
	<item:upgradednetherite:phantom_upgraded_netherite_boots>,
	<item:upgradednetherite:corrupt_upgraded_netherite_boots>,
	<item:upgradednetherite:gold_upgraded_netherite_boots>,
	<item:upgradednetherite:water_upgraded_netherite_boots>,
	<item:upgradednetherite_creative:creative_upgraded_netherite_boots>,
	<item:upgradednetherite:feather_upgraded_netherite_boots>,
	<item:upgradednetherite_ultimate:ultimate_upgraded_netherite_boots>
];
<tag:items:rosie:boot>.add(feet);


//apotheosis other tome
craftingTable.remove(<item:apotheosis:other_tome>);
craftingTable.addShaped("apotheosis_tome_other", <item:apotheosis:other_tome>, [[IIngredientEmpty.getInstance(), <item:quark:blaze_lantern>, IIngredientEmpty.getInstance()], [<item:quark:blaze_lantern>, <item:minecraft:book>, <item:quark:blaze_lantern>], [IIngredientEmpty.getInstance(), <item:quark:blaze_lantern>, IIngredientEmpty.getInstance()]]);

//apotheosis tome helmet
	craftingTable.remove(<item:apotheosis:helmet_tome>);
	craftingTable.addShapeless("helmet_tome", <item:apotheosis:helmet_tome>, [<item:apotheosis:other_tome>, <tag:items:rosie:helmet>]);
	
//apotheosis tome chestplate
	craftingTable.remove(<item:apotheosis:chestplate_tome>);
	craftingTable.addShapeless("chestplate_tome", <item:apotheosis:chestplate_tome>, [<item:apotheosis:other_tome>, <tag:items:rosie:chestplate>]);
	
//apotheosis tome leggings
	craftingTable.remove(<item:apotheosis:leggings_tome>);
	craftingTable.addShapeless("leggings_tome", <item:apotheosis:leggings_tome>, [<item:apotheosis:other_tome>, <tag:items:rosie:legging>]);
	
//apotheosis tome boots
	craftingTable.remove(<item:apotheosis:boots_tome>);
	craftingTable.addShapeless("boots_tome", <item:apotheosis:boots_tome>, [<item:apotheosis:other_tome>, <tag:items:rosie:boot>]);
	
//apotheosis tome pickaxe
	craftingTable.remove(<item:apotheosis:pickaxe_tome>);
	craftingTable.addShapeless("pickaxe_tome", <item:apotheosis:pickaxe_tome>, [<item:apotheosis:other_tome>, <tag:items:forge:tools/pickaxes>]);
	
//apotheosis tome weapons
	craftingTable.remove(<item:apotheosis:weapon_tome>);
	craftingTable.addShapeless("weapon_tome", <item:apotheosis:weapon_tome>, [<item:apotheosis:other_tome>, <tag:items:forge:tools/swords>]);
	
//apotheosis tome fishing
	craftingTable.remove(<item:apotheosis:fishing_tome>);
	craftingTable.addShapeless("fishing_tome", <item:apotheosis:fishing_tome>, [<item:apotheosis:other_tome>, <tag:items:forge:fishing_rods>]);
	
//apotheosis tome bow
	craftingTable.remove(<item:apotheosis:bow_tome>);
	craftingTable.addShapeless("bow_tome", <item:apotheosis:bow_tome>, [<item:apotheosis:other_tome>, <tag:items:rosie:bow>]);
	
//apotheosis tome scrap
	craftingTable.remove(<item:apotheosis:scrap_tome>);
	craftingTable.addShapeless("scrap_tome", <item:apotheosis:scrap_tome>, [<item:apotheosis:other_tome>, <item:minecraft:netherite_scrap>]);