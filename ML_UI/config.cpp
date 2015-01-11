// config.bin - 15:15:31 07/24/14, generated in 0.01 seconds
// Generated by unRap v1.06 by Kegetys
// Separate rootclasses: Disabled, Automatic comments: Enabled

class CfgPatches {
	class ML_ui_f {
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_UI_F","A3_UI_F_Bootcamp"};
	};
};

class RscChatListDefault {
	colorBackground[] = {0, 0, 0, 0.3};
	colorGlobalChannel[] = {1,0.502,0,1};
	colorGlobalChannelPlayerBackground[] = {1,0.502,0,1};
	colorGlobalChannelPlayerText[] = {0, 0, 0, 1};
	colorSideChannel[] = {0.196*1.4, 0.592*1.4, 0.706*1.4, 1};
	colorSideChannelPlayerBackground[] = {0.196*1.4, 0.592*1.4, 0.706*1.4, 0.5};
	colorSideChannelPlayerText[] = {0, 0, 0, 1};
	colorCommandChannel[] = {0.8275*1.4, 0.8196*1.4, 0.1961*1.4, 1};
	colorCommandChannelPlayerBackground[] = {0.8275*1.4, 0.8196*1.4, 0.1961*1.4, 0.5};
	colorCommandChannelPlayerText[] = {0, 0, 0, 1};
	colorGroupChannel[] = {0.709, 0.972, 0.384, 1};
	colorGroupChannelPlayerBackground[] = {0.709, 0.972, 0.384, 0.5};
	colorGroupChannelPlayerText[] = {0, 0, 0, 1};
	colorVehicleChannel[] = {0.863*1.4, 0.584*1.4, 0.0*1.4, 1};
	colorVehicleChannelPlayerBackground[] = {0.863*1.4, 0.584*1.4, 0.0*1.4, 0.5};
	colorVehicleChannelPlayerText[] = {0, 0, 0, 1};
	colorDirectChannel[] = {1, 1, 1, 1};
	colorDirectChannelPlayerBackground[] = {1, 1, 1, 0.5};
	colorDirectChannelPlayerText[] = {0, 0, 0, 1};
	colorPlayerChannel[] = {0.8, 0.7, 1, 1};
	colorPlayerChannelPlayerBackground[] = {0.8, 0.7, 1, 0.5};
	colorPlayerChannelPlayerText[] = {0, 0, 0, 1};
	colorSystemChannel[] = {1,0.502,0,1};
	colorSystemChannelPlayerBackground[] = {1,0.502,0,1};
	colorSystemChannelPlayerText[] = {0, 0, 0, 1};
	colorMessage[] = {1,0.502,0,1};
	colorMessageProtocol[] = {0.65, 0.65, 0.65, 1};
};

class RscText {};

class RscTitle : RscText {};

class RscStandardDisplay {};

class RscShortcutButton {};

class RscButtonMenu : RscShortcutButton {};

class RscPicture {};

class RscControlsGroup {};

class RscPictureKeepAspect : RscPicture {};

class RscDisplayMain : RscStandardDisplay {
	class controls {
		class Title : RscTitle {
			colorBackground[] = {1,0.502,0,1};
			text = "Mafia Life (ALPHA)";
		};
		class GameLogo : RscPicture {
			text = "\ML_Images\Logo\Mafia_Logo_ca.paa";
		};
		class ButtonPlay : RscButtonMenu {
			text = $STR_ML_GUI_PLAY;
			tooltip = "Play Mafia Life right now!";
		};
	};
};

class RscDisplayStart : RscStandardDisplay {
	class controlsBackground {
		class Noise : RscPicture {
			text = "\A3\Ui_f\data\GUI\Cfg\LoadingScreens\LoadingNoise_ca.paa";
			colorText[] = {1, 1, 1, 1};
			x = "safezoneX";
			y = "safezoneY";
			w = "safezoneW";
			h = "safezoneH";
		};
	};
	
	class controls {
		class LoadingStart : RscControlsGroup {
			class controls {
				class Noise : RscPicture {
					text = "\ML_Images\Backgrounds\mafia_bg_ca.paa";
				};
				
				class Logo : RscPictureKeepAspect {
					text = "\ML_Images\Logo\ML_Splash_Ca.paa";
				};
			};
		};
	};
};

class RscDisplayNotFreeze : RscStandardDisplay {
	class controlsBackground {
		class Noise : RscPicture {
			text = "\A3\Ui_f\data\GUI\Cfg\LoadingScreens\LoadingNoise_ca.paa";
			colorText[] = {1, 1, 1, 1};
		};
	};
	
	class controls {		
		class LoadingStart : RscControlsGroup {			
			class controls {
				class Noise : RscPicture {
					text = "\ML_Images\Backgrounds\mafia_bg_ca.paa";
				};
				
				class Logo : RscPictureKeepAspect {
					text = "\ML_Images\Logo\ML_Splash_Ca.paa";
				};
			};
		};
	};
};

class RscDisplayLoadMission : RscStandardDisplay {
	class controlsBackground {
		class Noise : RscPicture {
			text = "\A3\Ui_f\data\GUI\Cfg\LoadingScreens\LoadingNoise_ca.paa";
			colorText[] = {1, 1, 1, 1};
		};
	};
	
	class controls {		
		class LoadingStart : RscControlsGroup {			
			class controls {
				class Noise : RscPicture {
					text = "\ML_Images\Backgrounds\mafia_bg_ca.paa";
				};
				class Logo : RscPictureKeepAspect {
					text = "\ML_Images\Logo\ML_Splash_Ca.paa";
				};
			};
		};
	};
};