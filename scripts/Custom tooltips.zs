import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;
import crafttweaker.api.ingredient.transform.type.TransformReuse;
import crafttweaker.api.ingredient.IIngredient;
import mods.jei.component.JeiIngredient;
import mods.jei.JEI;

//Defining a custom function to add descriptions more easily (Thanks to Kazu for this!)
function description(m as JeiIngredient, s as string) as void {
    JEI.addDescription(m, [s]);    
}

//Adding description for the rose quartz
description(<item:biomesoplenty:rose_quartz_shard>, "Found in large patches in the nether.");

//Conch of conjuring
<item:savage_and_ravage:conch_of_conjuring>.addTooltip("Allows the player to summon a fang attack, similar to an Evoker.");

//Cleaver of beheading
<item:savage_and_ravage:cleaver_of_beheading>.addTooltip("Gives a chance to drop a head when killing another player.");

//mask of dishonesty
<item:savage_and_ravage:mask_of_dishonesty>.addTooltip("Makes the user invisible while sneaking.");

//Witch hat
<item:biomemakeover:witch_hat>.addTooltip("Witches will no longer be hostile towards the wearer, and will even trade with them.");

//enchanted totem
<item:biomemakeover:enchanted_totem>.addTooltip("A Totem of undying that gives a lot of beneficial effects on use, and heals a lot more health. These are extremely rare, its said only one is hidden in each pillager mansion...");

//adjudicator tapestry
<item:biomemakeover:adjudicator_tapestry>.addTooltip("An extremely rare tapestry, its said to be hidden somewhere in the pillager mansion...");

//Soul heart
<item:alexsmobs:soul_heart>.addTooltip("Drops from Soul vultures that have properly gorged themselves on the health of other mobs.");

//channeling stone
<item:advanced_xp:channeling_stone>.addTooltip("Right click this block with an empty bottle, and it will use your experience to create a bottle of enchanting.");

//mote of limitless rebirth
<item:contenttweaker:limitless_potential_core>.addTooltip("This tiny spark thrums with an energy that seems nearly inexhaustible, it sounds almost... familiar.");