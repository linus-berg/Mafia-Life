class ML_Quest_Dialog{
	idd = IDD_QUEST;
	movingEnable = true;
	controlsBackground[] = {ML_Quest_Background};
	objects[] = { };
	onLoad = "uiNamespace setVariable ['ML_Quest_Dialog', (_this select 0)]";
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT START (by Linnet, v1.063, #Dogaxu)
	////////////////////////////////////////////////////////

	class ML_Quest_Background: RscPicture
	{
		idc = IDC_QUEST_BACKGROUND;
		text = "\ML_Images\GUI\Quest.paa";
		moving = 1;
		x = 0.407187 * safezoneW + safezoneX;
		y = 0.302 * safezoneH + safezoneY;
		w = 0.175313 * safezoneW;
		h = 0.385 * safezoneH;
	};
	class controls 
	{
		class ML_Quest_Accept: ML_Quest_Button
		{
			idc = IDC_QUEST_ACCEPT;
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.654 * safezoneH + safezoneY;
			w = 0.0567187 * safezoneW;
			h = 0.022 * safezoneH;
			text = "Accept";
			default = 0;
		};
		class ML_Quest_Decline: ML_Quest_Button
		{
			idc = IDC_QUEST_DECLINE;
			x = 0.515469 * safezoneW + safezoneX;
			y = 0.654 * safezoneH + safezoneY;
			w = 0.0567187 * safezoneW;
			h = 0.022 * safezoneH;
			text = "Decline";
			action = "closeDialog 0;";
			default = 0;
		};
		class ML_Quest_TextContainer: RscControlsGroup {
			x = 0.412344 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.33 * safezoneH;
			class ScrollBar
			{
				width = 0; // Unknown?
				height = 0; // Unknown?
				scrollSpeed = 0.03; // Unknown?
				color[] = {1,1,1,1}; // Scrollbar color
			};
			class controls 
			{
				class ML_Quest_Text: ML_StructText_Two
				{
					idc = IDC_QUEST_TEXT;
					x = 0;
					y = 0;
					w = 0.1629 * safezoneW; //165 originally!
					h = 0.33 * safezoneH;
				};
			};
		};
	};
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT END
	////////////////////////////////////////////////////////

};