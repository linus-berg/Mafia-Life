class CfgRespawnInventory
{	
	class Police_Marshall
	{
		Side = "Police";
		displayName = "Police Officer"; // Name visible in the menu
		icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa"; // Icon displayed next to the name

		// Loadout definition, uses same entries as CfgVehicles classes
		weapons[] = {
			"ML_Weapon_Revolver",
			"Binocular"
		};
		magazines[] = {
			"6Rnd_45ACP_Cylinder",
			"6Rnd_45ACP_Cylinder",
			"6Rnd_45ACP_Cylinder",
			"6Rnd_45ACP_Cylinder",
			"6Rnd_45ACP_Cylinder",
			"6Rnd_45ACP_Cylinder"
		};
		items[] = {
			"FirstAidKit"
		};
		linkedItems[] = {
			"V_TacVest_blk_POLICE",
			"H_Beret_blk_POLICE",
			"ItemMap",
			"ItemCompass",
			"ItemWatch",
			"ItemRadio"
		};
		uniformClass = "U_Marshal";
	};
};