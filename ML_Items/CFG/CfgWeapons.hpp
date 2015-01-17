#define VEST_SLOT      	701
#define UNIFORM_SLOT 	801
#define BACKPACK_SLOT  	901

class CfgWeapons
{
	class ItemCore;
	class ML_Item: ItemCore{
		model = "\A3\weapons_F\ammo\mag_univ.p3d";
		scope = 2;
		count = 1;
		class ItemInfo
		{
			scope = 0;
			type = 201;
			allowedSlots[] = {VEST_SLOT, BACKPACK_SLOT};
			mass = 1;
		}; 
	};
	class ML_BossHat: ML_Item{
		displayName = "Boss's Hat";
		picture = "\ML_Images\Items\Inventory\boss_hat.paa";
		descriptionShort = "This is the boss's hat, he probably wants this back!";
	};
};
