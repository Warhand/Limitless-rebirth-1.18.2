import crafttweaker.api.item.IItemStack;
import mods.jei.JEI;

//removes tool part recipes from the part builder and casting table, along with recipes to melt them back into resources (will help tidy up the melting tab of JEI)
<recipetype:tconstruct:part_builder>.removeByRegex("tconstruct:tools.*");
<recipetype:tconstruct:casting_table>.removeByRegex("tconstruct:tools.*");
<recipetype:tconstruct:melting>.removeByRegex("tconstruct:tools.*");

//removes all armor crafting recipes from the crafting table and tool casting
craftingTable.removeByRegex("tconstruct:armor.*");
<recipetype:tconstruct:casting_table>.removeByRegex("tconstruct:armor.*");

//removes all recipes for modifiers and upgrades, only necessary if tinkers tools can be obtained in another way, but you wish to prevent them from being modified or upgraded. Also removes the JEI category
<recipetype:tconstruct:tinker_station>.removeAll();

//removes all severing recipes, as no tools can have severing anymore. Also removes the JEI category
<recipetype:tconstruct:severing>.removeAll();

//removing wrench head crafting
<recipetype:tconstruct:part_builder>.remove(<item:materialis:wrench_head>);


//an array for all recipe names used to mold sand tool casts in the casting table
var sand_casts = [
		"tconstruct:smeltery/casts/sand_casts/broad_axe_head",
		"tconstruct:smeltery/casts/sand_casts/broad_blade",
		"tconstruct:smeltery/casts/sand_casts/hammer_head",
		"tconstruct:smeltery/casts/sand_casts/large_plate",
		"tconstruct:smeltery/casts/sand_casts/pick_head",
		"tconstruct:smeltery/casts/sand_casts/repair_kit",
		"tconstruct:smeltery/casts/sand_casts/small_axe_head",
		"tconstruct:smeltery/casts/sand_casts/small_blade",
		"tconstruct:smeltery/casts/sand_casts/tool_binding",
		"tconstruct:smeltery/casts/sand_casts/tool_handle",
		"tconstruct:smeltery/casts/sand_casts/tough_handle",

		"tconstruct:smeltery/casts/red_sand_casts/broad_axe_head",
		"tconstruct:smeltery/casts/red_sand_casts/broad_blade",
		"tconstruct:smeltery/casts/red_sand_casts/hammer_head",
		"tconstruct:smeltery/casts/red_sand_casts/large_plate",
		"tconstruct:smeltery/casts/red_sand_casts/pick_head",
		"tconstruct:smeltery/casts/red_sand_casts/repair_kit",
		"tconstruct:smeltery/casts/red_sand_casts/small_axe_head",
		"tconstruct:smeltery/casts/red_sand_casts/small_blade",
		"tconstruct:smeltery/casts/red_sand_casts/tool_binding",
		"tconstruct:smeltery/casts/red_sand_casts/tool_handle",
		"tconstruct:smeltery/casts/red_sand_casts/tough_handle"] as string[];

//removes all recipes in the above array
for item in sand_casts {
	<recipetype:tconstruct:molding_table>.removeByName(item);
}


//an array for all recipe names used to cast gold tool casts in the casting table
var gold_casts = [
		"tconstruct:smeltery/casts/gold_casts/broad_axe_head",
		"tconstruct:smeltery/casts/gold_casts/broad_blade",
		"tconstruct:smeltery/casts/gold_casts/hammer_head",
		"tconstruct:smeltery/casts/gold_casts/large_plate",
		"tconstruct:smeltery/casts/gold_casts/pick_head",
		"tconstruct:smeltery/casts/gold_casts/repair_kit",
		"tconstruct:smeltery/casts/gold_casts/small_axe_head",
		"tconstruct:smeltery/casts/gold_casts/small_blade",
		"tconstruct:smeltery/casts/gold_casts/tool_binding",
		"tconstruct:smeltery/casts/gold_casts/tool_handle",
		"tconstruct:smeltery/casts/gold_casts/tough_handle"] as string[];

//removes all recipes in the above array
for item in gold_casts {
	<recipetype:tconstruct:casting_table>.removeByName(item);
}


//an array of all items to hide from JEI.
var hideJEI = [
	<item:tconstruct:pick_head_cast>,
	<item:tconstruct:small_axe_head_cast>,
	<item:tconstruct:small_blade_cast>,
	<item:tconstruct:hammer_head_cast>,
	<item:tconstruct:broad_blade_cast>,
	<item:tconstruct:broad_axe_head_cast>,
	<item:tconstruct:tool_binding_cast>,
	<item:tconstruct:large_plate_cast>,
	<item:tconstruct:tool_handle_cast>,
	<item:tconstruct:tough_handle_cast>,

	<item:tconstruct:pick_head_sand_cast>,
	<item:tconstruct:small_axe_head_sand_cast>,
	<item:tconstruct:small_blade_sand_cast>,
	<item:tconstruct:hammer_head_sand_cast>,
	<item:tconstruct:broad_blade_sand_cast>,
	<item:tconstruct:broad_axe_head_sand_cast>,
	<item:tconstruct:tool_binding_sand_cast>,
	<item:tconstruct:large_plate_sand_cast>,
	<item:tconstruct:tool_handle_sand_cast>,
	<item:tconstruct:tough_handle_sand_cast>,

	<item:tconstruct:pick_head_red_sand_cast>,
	<item:tconstruct:small_axe_head_red_sand_cast>,
	<item:tconstruct:small_blade_red_sand_cast>,
	<item:tconstruct:hammer_head_red_sand_cast>,
	<item:tconstruct:broad_blade_red_sand_cast>,
	<item:tconstruct:broad_axe_head_red_sand_cast>,
	<item:tconstruct:tool_binding_red_sand_cast>,
	<item:tconstruct:large_plate_red_sand_cast>,
	<item:tconstruct:tool_handle_red_sand_cast>,
	<item:tconstruct:tough_handle_red_sand_cast>,
	
	<item:tconstruct:pickaxe>,
    <item:tconstruct:sledge_hammer>,
    <item:tconstruct:vein_hammer>,
    <item:tconstruct:mattock>,
    <item:tconstruct:pickadze>,
    <item:tconstruct:excavator>,
    <item:tconstruct:hand_axe>,
    <item:tconstruct:broad_axe>,
    <item:tconstruct:kama>,
    <item:tconstruct:scythe>,
    <item:tconstruct:dagger>,
    <item:tconstruct:sword>,
    <item:tconstruct:cleaver>,
	<item:materialis:wrench>,
	
	<item:tconstruct:repair_kit>,
	<item:tconstruct:pick_head>,
	<item:tconstruct:hammer_head>,
	<item:tconstruct:small_axe_head>,
	<item:tconstruct:broad_axe_head>,
	<item:tconstruct:small_blade>,
	<item:tconstruct:broad_blade>,
	<item:tconstruct:round_plate>,
	<item:tconstruct:tool_binding>,
	<item:tconstruct:tool_handle>,
	<item:tconstruct:tough_handle>,
	<item:materialis:wrench_head>,
	<item:tconstruct:large_plate>,
	
	<item:tconstruct:plate_boots>,
	<item:tconstruct:plate_leggings>,
	<item:tconstruct:plate_chestplate>,
	<item:tconstruct:plate_helmet>,
	
	<item:tconstruct:travelers_boots>,
	<item:tconstruct:travelers_leggings>,
	<item:tconstruct:travelers_chestplate>,
	<item:tconstruct:travelers_helmet>,
	
	<item:tconstruct:iron_reinforcement>,
	<item:tconstruct:slimesteel_reinforcement>,
	<item:tconstruct:seared_reinforcement>,
	<item:tconstruct:gold_reinforcement>,
	<item:tconstruct:emerald_reinforcement>,
	<item:tconstruct:bronze_reinforcement>,
	<item:tconstruct:cobalt_reinforcement>
	] as IItemStack[];

//hides items in the above array
for item in hideJEI {
	mods.jei.JEI.hideIngredient(item);
	}