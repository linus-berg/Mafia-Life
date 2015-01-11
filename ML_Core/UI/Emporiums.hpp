class Emporium_dialog{
	idd = IDD_EMPORIUM;
	movingEnable = true;
	controlsBackground[] = {Emporium_background};
	objects[] = { };
	//EMPORIUM DIALOG
	controls[]=
	{
		Emporium_buy_list,
		Emporium_sell_list,
		Emporium_cart_list,
		Emporium_info_list,
		Emporium_info_image,
		Emporium_amount,
		Emporium_add_cart,
		Emporium_cart_remove,
		Emporium_buy_action,
		Emporium_sell_action,
		Emporium_total_cost,
		Emporium_money_inventory,
		Emporium_money_text
	};
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT START (by Linnet, v1.063, #Hedebe)
	////////////////////////////////////////////////////////
	class Emporium_background: RscPicture
	{
		idc = IDC_EMPORIUM_BACKGROUND;
		text = "\ML_Images\GUI\Account_ca.paa";
		x = 0.29375 * safezoneW + safezoneX;
		y = 0.269 * safezoneH + safezoneY;
		w = 0.4125 * safezoneW;
		h = 0.462 * safezoneH;
	};
	class Emporium_buy_list: RscListbox
	{
		idc = IDC_EMPORIUM_BUY_LIST;
		x = 0.304063 * safezoneW + safezoneX;
		y = 0.291 * safezoneH + safezoneY;
		w = 0.134062 * safezoneW;
		h = 0.242 * safezoneH;
		onLBSelChanged = "_this call ML_fnc_Emporium_Select;";
	};
	class Emporium_sell_list: RscListbox
	{
		idc = IDC_EMPORIUM_SELL_LIST;
		x = 0.448438 * safezoneW + safezoneX;
		y = 0.291 * safezoneH + safezoneY;
		w = 0.134062 * safezoneW;
		h = 0.242 * safezoneH;
	};
	class Emporium_cart_list: RscListbox
	{
		idc = IDC_EMPORIUM_CART_LIST;
		x = 0.304062 * safezoneW + safezoneX;
		y = 0.555 * safezoneH + safezoneY;
		w = 0.278437 * safezoneW;
		h = 0.121 * safezoneH;
	};
	class Emporium_info_list: RscListbox
	{
		idc = IDC_EMPORIUM_INFO_LIST;
		x = 0.592812 * safezoneW + safezoneX;
		y = 0.423 * safezoneH + safezoneY;
		w = 0.103125 * safezoneW;
		h = 0.11 * safezoneH;
	};
	class Emporium_info_image: RscPicture
	{
		style = 0x30+0x800;
		idc = IDC_EMPORIUM_INFO_IMAGE;
		text = "";
		x = 0.592812 * safezoneW + safezoneX;
		y = 0.291 * safezoneH + safezoneY;
		w = 0.103125 * safezoneW;
		h = 0.11 * safezoneH;
	};
	class Emporium_amount: RscEdit
	{
		idc = IDC_EMPORIUM_CART_AMOUNT;
		text = "1"; //--- ToDo: Localize;
		x = 0.603125 * safezoneW + safezoneX;
		y = 0.535 * safezoneH + safezoneY;
		w = 0.0721875 * safezoneW;
		h = 0.020 * safezoneH;
	};
	class Emporium_add_cart: ML_Button
	{
		idc = IDC_EMPORIUM_ADD_CART;
		text = $STR_ML_EMPORIUM_ADDTOCART; //--- ToDo: Localize;
		x = 0.603125 * safezoneW + safezoneX;
		y = 0.555 * safezoneH + safezoneY;
		w = 0.0825 * safezoneW;
		h = 0.022 * safezoneH;
	};
	class Emporium_cart_remove: ML_Button
	{
		idc = IDC_EMPORIUM_CART_REMOVE;
		text = $STR_ML_EMPORIUM_REMOVE; //--- ToDo: Localize;
		x = 0.603125 * safezoneW + safezoneX;
		y = 0.588 * safezoneH + safezoneY;
		w = 0.0825 * safezoneW;
		h = 0.022 * safezoneH;
	};
	class Emporium_buy_action: ML_Button
	{
		idc = IDC_EMPORIUM_BUY_ACTION;
		text = $STR_ML_EMPORIUM_PURCHASE; //--- ToDo: Localize;
		x = 0.603125 * safezoneW + safezoneX;
		y = 0.621 * safezoneH + safezoneY;
		w = 0.0825 * safezoneW;
		h = 0.022 * safezoneH;
	};
	class Emporium_sell_action: ML_Button
	{
		idc = IDC_EMPORIUM_SELL_ACTION;
		text = $STR_ML_EMPORIUM_SELL; //--- ToDo: Localize;
		x = 0.603125 * safezoneW + safezoneX;
		y = 0.654 * safezoneH + safezoneY;
		w = 0.0825 * safezoneW;
		h = 0.022 * safezoneH;
	};

	class Emporium_total_cost: RscText
	{
		idc = IDC_EMPORIUM_TOTAL_COST;
		text = $STR_ML_EMPORIUM_TOTAL; //--- ToDo: Localize;
		x = 0.304062 * safezoneW + safezoneX;
		y = 0.687 * safezoneH + safezoneY;
		w = 0.1515625 * safezoneW;
		h = 0.022 * safezoneH;
		sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.7);
	};
	class Emporium_money_inventory: RscPicture
	{
		idc = IDC_EMPORIUM_COINS_INVENTORY;
		text = "\ML_Images\Icons\Inv_Coins_ca.paa";
		x = 0.448438 * safezoneW + safezoneX;
		y = 0.687 * safezoneH + safezoneY;
		w = 0.0103125 * safezoneW;
		h = 0.022 * safezoneH;
	};
	class Emporium_Money_text: RscText
	{
		idc = IDC_EMPORIUM_COINS_TEXT;
		text = "Coins:"; //--- ToDo: Localize;
		x = 0.463906 * safezoneW + safezoneX;
		y = 0.687 * safezoneH + safezoneY;
		w = 0.1464063 * safezoneW;
		h = 0.022 * safezoneH;
		sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.7);
	};
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT END
	////////////////////////////////////////////////////////
};