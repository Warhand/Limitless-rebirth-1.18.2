import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;
import crafttweaker.api.ingredient.transform.type.TransformReuse;
import crafttweaker.api.entity.EntityIngredient;
import crafttweaker.api.entity.EntityType;
import crafttweaker.api.block.BlockIngredient;
import crafttweaker.api.block.Block;
import crafttweaker.api.entity.Entity;

//mob summon recipes - nether

var blaze = new SummonMob();
blaze.name = "blaze";
blaze.summon = "minecraft:blaze";
blaze.sacrifice = "minecraft:magma_cube";
blaze.input1 = <item:minecraft:magma_block>;
blaze.input2 = <item:minecraft:blaze_rod>;
blaze.input3 = <item:minecraft:fire_charge>;
blaze.build();

var piglinzombie = new SummonMob();
piglinzombie.name = "piglinzombie";
piglinzombie.summon = "minecraft:zombified_piglin";
piglinzombie.summonData = "{HandItems:[{id:\"minecraft:golden_sword\",Count:1b}]}";
piglinzombie.sacrifice = "minecraft:pig";
piglinzombie.input1 = <item:minecraft:rotten_flesh>;
piglinzombie.input2 = <item:minecraft:golden_sword>;
piglinzombie.input3 = <item:minecraft:nether_wart>;
piglinzombie.build();

var hoglin = new SummonMob();
hoglin.name = "hoglin";
hoglin.summon = "minecraft:hoglin";
hoglin.sacrifice = "minecraft:pig";
hoglin.input1 = <tag:items:lr:nether_fungus>;
hoglin.input2 = <item:minecraft:leather>;
hoglin.input3 = <item:nethersdelight:hoglin_loin>;
hoglin.build();

var piglin = new SummonMob();
piglin.name = "piglin";
piglin.summon = "minecraft:piglin";
piglin.summonData = "{HandItems:[{id:\"minecraft:crossbow\",Count:1b}]}";
piglin.sacrifice = "minecraft:zombified_piglin";
piglin.input1 = <item:minecraft:crossbow>;
piglin.input2 = <item:minecraft:potion>.withTag({Potion: "minecraft:weakness" as string}) | <item:minecraft:potion>.withTag({Potion: "minecraft:long_weakness" as string}) | <item:minecraft:splash_potion>.withTag({Potion: "minecraft:weakness" as string}) | <item:minecraft:splash_potion>.withTag({Potion: "minecraft:long_weakness" as string}) | <item:minecraft:lingering_potion>.withTag({Potion: "minecraft:weakness" as string}) | <item:minecraft:lingering_potion>.withTag({Potion: "minecraft:long_weakness" as string});
piglin.input3 = <item:minecraft:golden_apple> | <item:minecraft:enchanted_golden_apple>;
piglin.build();

var piglinbrute = new SummonMob();
piglinbrute.name = "piglinbrute";
piglinbrute.summon = "minecraft:piglin_brute";
piglinbrute.summonData = "{HandItems:[{id:\"minecraft:golden_axe\",Count:1b}]}";
piglinbrute.sacrifice = "minecraft:piglin";
piglinbrute.input1 = <item:minecraft:golden_axe>;
piglinbrute.input2 = <item:minecraft:netherite_scrap>;
piglinbrute.input3 = <item:minecraft:gilded_blackstone>;
piglinbrute.build();

var magmacube = new SummonMob();
piglin.name = "magmacube";
piglin.summon = "minecraft:magma_cube";
piglin.sacrifice = "minecraft:slime";
piglin.input1 = <item:minecraft:magma_block>;
piglin.input2 = <item:minecraft:magma_cream>;
piglin.input3 = <tag:items:forge:basalt>;
piglin.build();

var ghast = new SummonMob();
ghast.name = "ghast";
ghast.summon = "minecraft:ghast";
ghast.sacrifice = "minecraft:cat";
ghast.input1 = <item:minecraft:gunpowder>;
ghast.input2 = <item:minecraft:fire_charge>;
ghast.input3 = <item:minecraft:feather>;
ghast.build();

var witherskeleton = new SummonMob();
witherskeleton.name = "witherskeleton";
witherskeleton.summon = "minecraft:wither_skeleton";
witherskeleton.summonData = "{HandItems:[{id:\"minecraft:stone_sword\",Count:1b}]}";
witherskeleton.sacrifice = "minecraft:skeleton";
witherskeleton.input1 = <item:minecraft:wither_rose>;
witherskeleton.input2 = <item:minecraft:stone_sword>;
witherskeleton.input3 = <item:minecraft:nether_brick>;
witherskeleton.build();

var boneserpent = new SummonMob();
boneserpent.name = "boneserpent";
boneserpent.summon = "alexsmobs:bone_serpent";
boneserpent.sacrifice = "alexsmobs:rattlesnake";
boneserpent.input1 = <item:alexsmobs:gazelle_horn> | <item:alexsmobs:froststalker_horn> | <item:ars_nouveau:wilden_horn> | <item:earthmobsmod:horn>;
boneserpent.input2 = <item:minecraft:bone_block>;
boneserpent.input3 = <item:minecraft:lava_bucket>;
boneserpent.build();

var crimsonmosquito = new SummonMob();
crimsonmosquito.name = "crimsonmosquito";
crimsonmosquito.summon = "alexsmobs:crimson_mosquito";
crimsonmosquito.sacrifice = "minecraft:bee";
crimsonmosquito.input1 = <item:minecraft:crimson_fungus>;
crimsonmosquito.input2 = <item:tconstruct:blood_slime_ball>;
crimsonmosquito.input3 = <item:minecraft:weeping_vines>;
crimsonmosquito.build();

var cindershell = new SummonMob();
cindershell.name = "cindershell";
cindershell.summon = "cnb:cindershell";
cindershell.sacrifice = "minecraft:turtle";
cindershell.input1 = <item:minecraft:crimson_fungus>;
cindershell.input2 = <item:minecraft:netherrack>;
cindershell.input3 = <item:minecraft:magma_block>;
cindershell.build();

var laviathan = new SummonMob();
laviathan.name = "laviathan";
laviathan.summon = "alexsmobs:laviathan";
laviathan.sacrifice = "cnb:cindershell";
laviathan.input1 = <item:cnb:cindershell_shell_shard>;
laviathan.input2 = <item:minecraft:lava_bucket>;
laviathan.input3 = <tag:items:forge:blackstone>;
laviathan.build();

var voline = new SummonMob();
voline.name = "voline";
voline.summon = "infernalexp:voline";
voline.sacrifice = "minecraft:magma_cube";
voline.input1 = <tag:items:forge:netherrack>;
voline.input2 = <item:minecraft:furnace> | <item:quark:blackstone_furnace> | <item:quark:deepslate_furnace>;
voline.input3 = <item:infernalexp:molten_gold_cluster>;
voline.build();

var dropbear = new SummonMob();
dropbear.name = "dropbear";
dropbear.summon = "alexsmobs:dropbear";
dropbear.sacrifice = "alexsmobs:grizzly_bear";
dropbear.input1 = <item:minecraft:crimson_nylium> | <item:minecraft:warped_nylium> | <item:infernalexp:crimson_nylium_path> | <item:infernalexp:warped_nylium_path> | <item:byg:wailing_nylium> | <item:byg:sythian_nylium> | <item:byg:embur_nylium>;
dropbear.input2 = <item:minecraft:warped_fungus>;
dropbear.input3 = <item:minecraft:nether_wart>;
dropbear.build();

var soulvulture = new SummonMob();
soulvulture.name = "soulvulture";
soulvulture.summon = "alexsmobs:soul_vulture";
soulvulture.sacrifice = "alexsmobs:crow";
soulvulture.input1 = <tag:items:minecraft:soul_fire_base_blocks>;
soulvulture.input2 = <tag:items:minecraft:piglin_repellents>;
soulvulture.input3 = <tag:items:forge:bones>;
soulvulture.build();

var embody = new SummonMob();
embody.name = "embody";
embody.summon = "infernalexp:embody";
embody.sacrifice = "minecraft:zombie";
embody.input1 = <tag:items:minecraft:soul_fire_base_blocks>;
embody.input2 = <tag:items:minecraft:piglin_repellents>;
embody.input3 = <item:minecraft:quartz>;
embody.build();

var warpedbeetle = new SummonMob();
warpedbeetle.name = "warpedbeetle";
warpedbeetle.summon = "infernalexp:warpbeetle";
warpedbeetle.sacrifice = "minecraft:silverfish";
warpedbeetle.input1 = <item:minecraft:spider_eye>;
warpedbeetle.input2 = <item:minecraft:warped_fungus> | <item:minecraft:twisting_vines> | <item:minecraft:warped_roots>;
warpedbeetle.input3 = <tag:items:minecraft:warped_stems>;
warpedbeetle.build();

var basaltgiant = new SummonMob();
basaltgiant.name = "basaltgiant";
basaltgiant.summon = "infernalexp:basalt_giant";
basaltgiant.sacrifice = "minecraft:enderman";
basaltgiant.input1 = <tag:items:forge:basalt>;
basaltgiant.input2 = <item:minecraft:magma_block>;
basaltgiant.input3 = <item:minecraft:iron_ingot>;
basaltgiant.build();

var straddler = new SummonMob();
straddler.name = "straddler";
straddler.summon = "alexsmobs:straddler";
straddler.sacrifice = "quark:frog";
straddler.input1 = <tag:items:forge:basalt>;
straddler.input2 = <item:minecraft:scute> | <item:alexsmobs:crocodile_scute> | <item:alexsmobs:spiked_scute>;
straddler.input3 = <item:alexsmobs:lava_bottle>;
straddler.build();