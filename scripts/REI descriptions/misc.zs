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

//jade description

description(<item:sullysmod:jade_ore>, "Jade is an extremely rare mineral, you've only ever heard of it being found in jungles.");
description(<item:sullysmod:deepslate_jade_ore>, "Jade is an extremely rare mineral, you've only ever heard of it being found in jungles.");

//channeling stone
description(<item:advanced_xp:channeling_stone>, "This arcane stone can be used to turn empty bottles into bottles of enchanting!");

//mote of limitless rebirth
<item:contenttweaker:limitless_potential_core>.addTooltip("This tiny spark thrums with an energy that seems nearly inexhaustible, it sounds almost... familiar.");

//amber
description(<item:darkerdepths:amber>, "Amber is a substance produced by petrified trees, which are typically found deep underground in very dry areas.");

//molten gold item
description(<item:infernalexp:molten_gold_cluster>, "Molten gold clusters are the byproducts of the digestive system of a particular infernal creature after it consumes gold items.");

//pipez item descriptions

description(<item:pipez:item_pipe>, "A basic and server friendly item pipe. It can be set to extract mode using any wrench, and by default it will evenly distribute items between the connected inventories at the same rate as a hopper, but this behavior can be expanded with pipe upgrades.");
description(<item:pipez:fluid_pipe>, "A basic and server friendly fluid pipe. It can be set to extract mode using any wrench, and by default it will evenly distribute fluid between the connected inventories at a rate of half a bucket per second, but this behavior can be expanded with pipe upgrades.");
description(<item:pipez:energy_pipe>, "The energy pipe to be used for Thermal Expansion machines. Energy dynamos that are pointed into the pipe will automatically put energy into its system, but you need to set the pipe to extract mode using any wrench if you want to take full advantage of the pipes capabilities. The default rate of energy extraction is 128/FE per tick and it will evenly distribute this among all connected machines and capacitors, but this behavior can be expanded with pipe upgrades.");
description(<item:pipez:universal_pipe>, "A basic and server friendly pipe that can carry energy, fluids, and items! It mimics the behaviors of all its component pipes, just combined.");

description(<item:pipez:basic_upgrade>, "The first level of pipe upgrade, doubles the extraction rate and introduces the ability to toggle the pipe on/off via redstone.");
description(<item:pipez:improved_upgrade>, "The second level of pipe upgrade, doubles the extraction rate from the basic upgrade and introduces the ability to fine-tune the distribution.");
description(<item:pipez:advanced_upgrade>, "The third level of pipe upgrade, doubles the extraction rate from the improved upgrade and introduces the ability to filter what items/fluids are extracted. You can also use the Filter Destination Tool to customize what inventories/tanks the specified items/fluids will travel to.");
description(<item:pipez:ultimate_upgrade>, "The fourth and final level of pipe upgrade, doubles the extraction rate from the advanced upgrade, although it does not introduce any additional functionality.");