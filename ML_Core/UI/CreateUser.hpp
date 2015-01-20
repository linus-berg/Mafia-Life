class ML_User_Create{
	idd = IDD_USER_CREATE;
	movingEnable = true;
	controlsBackground[] = {ML_User_Create_BG};
	onLoad = "uiNamespace setVariable ['ML_User_Create_Dialog', (_this select 0)]";
	onDestroy = "SystemChat format ['%1', _this];";
	objects[] = { };
	controls[]=
	{
		ML_User_Create_Email,
		ML_User_Create_Password,
		ML_User_Create_Password_C,
		ML_User_Create_Logo,
		ML_User_Create_Account,
		ML_User_Create_Exit,
		ML_User_Create_TextContainer
	};
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT START (by Linnet, v1.063, #Hedebe)
	////////////////////////////////////////////////////////
	
	class ML_User_Create_BG: RscPicture
	{
		idc = IDC_USER_CREATE_BG;
		text = "\ML_Images\GUI\Account_ca.paa";
		x = 0.365938 * safezoneW + safezoneX;
		y = 0.368 * safezoneH + safezoneY;
		w = 0.28875 * safezoneW;
		h = 0.33 * safezoneH;
	};
	class ML_User_Create_Email: RscEdit
	{
		idc = IDC_USER_CREATE_EMAIL;
		text = "Email"; //--- ToDo: Localize;
		x = 0.37625 * safezoneW + safezoneX;
		y = 0.522 * safezoneH + safezoneY;
		w = 0.113437 * safezoneW;
		h = 0.022 * safezoneH;
		font = "Friz";
		onChar = "SystemChat format ['%1', _this];";
		onKeyDown = "SystemChat format ['%1', _this];";
	};
	class ML_User_Create_Password: ML_User_Create_Email
	{
		idc = IDC_USER_CREATE_PASSWORD;
		text = "Password"; //--- ToDo: Localize;
		x = 0.37625 * safezoneW + safezoneX;
		y = 0.566 * safezoneH + safezoneY;
		w = 0.113437 * safezoneW;
		h = 0.022 * safezoneH;
	};
	class ML_User_Create_Password_C: ML_User_Create_Email
	{
		idc = IDC_USER_CREATE_PASSWORD_C;
		text = "Confirm Password"; //--- ToDo: Localize;
		x = 0.37625 * safezoneW + safezoneX;
		y = 0.599 * safezoneH + safezoneY;
		w = 0.113437 * safezoneW;
		h = 0.022 * safezoneH;
	};
	class ML_User_Create_Logo: RscPicture
	{
		idc = IDC_USER_CREATE_LOGO;
		text = "#(argb,8,8,3)color(1,1,1,1)";
		x = 0.37625 * safezoneW + safezoneX;
		y = 0.379 * safezoneH + safezoneY;
		w = 0.113437 * safezoneW;
		h = 0.066 * safezoneH;
	};
	class ML_User_Create_Account: ML_Quest_Button
	{
		idc = IDC_USER_CREATE_ACCOUNT;
		text = "Create Account"; //--- ToDo: Localize;
		x = 0.386563 * safezoneW + safezoneX;
		y = 0.654 * safezoneH + safezoneY;
		w = 0.0928125 * safezoneW;
		h = 0.022 * safezoneH;
	};
	class ML_User_Create_Exit: ML_Quest_Button
	{
		idc = IDC_USER_CREATE_EXIT;
		text = "Exit"; //--- ToDo: Localize;
		x = 0.597969 * safezoneW + safezoneX;
		y = 0.654 * safezoneH + safezoneY;
		w = 0.0360937 * safezoneW;
		h = 0.022 * safezoneH;
	};
	class ML_User_Create_TextContainer: ML_ControlsGroup {
			x = 0.510311 * safezoneW + safezoneX;
			y = 0.379 * safezoneH + safezoneY;
			w = 0.134062 * safezoneW;
			h = 0.264 * safezoneH;
			class ScrollBar
			{
				width = 0; // Unknown?
				height = 0; // Unknown?
				scrollSpeed = 0.03; // Unknown?
				color[] = {1,1,1,1}; // Scrollbar color
			};
			class controls 
			{
				class ML_User_Create_Text: ML_StructText_Two
				{
					idc = IDC_USER_CREATE_TEXT;
					x = 0;
					y = 0;
					w = 0.134062 * safezoneW;
					h = 0.264 * safezoneH;
				};
			};
	};
};