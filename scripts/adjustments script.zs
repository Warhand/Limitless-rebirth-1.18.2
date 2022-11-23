import crafttweaker.api.block.BlockState;
import crafttweaker.api.event.block.BlockNeighborNotifyEvent;
import crafttweaker.api.events.CTEventManager;

//Allow deepslate to be instamined
<blockstate:minecraft:deepslate>.setDestroySpeed(1.7f);

//Allowing glowcoke to be used in blast furnace recipes
<recipetype:immersiveengineering:blast_furnace_fuel>.addJsonRecipe("glowcoke_as_coke", {
"input":{"item":"infernalexp:glowcoal"},"time":1200
});