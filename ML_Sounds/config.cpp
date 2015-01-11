class CfgPatches {
	class ML_Sounds {
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {};
	};
};

class CfgSounds {
	sounds[] = {};
	class Quest_Complete{
		sound[] = {"\ML_Sounds\Interface\Quest\iquestcomplete.ogg", 1, 1};
		titles[] = {};
	};
};