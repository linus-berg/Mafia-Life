class cfgVehicles {
	class Pistol_Base_F;	// External class reference
	
	class Item_ML_Weapon_Revolver : Pistol_Base_F {
		scope = 2;
		scopeCurator = 2;
		displayName = "Police Revolver";
		author = "$STR_A3_Bohemia_Interactive";
		vehicleClass = "WeaponsHandguns";
		
		class TransportWeapons {
			class ML_Weapon_Revolver {
				weapon = "ML_Weapon_Revolver";
				count = 1;
			};
		};
	};
};
