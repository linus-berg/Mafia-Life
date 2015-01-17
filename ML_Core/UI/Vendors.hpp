class Vendor_dialog{
	idd = IDD_Vendor;
	movingEnable = true;
	controlsBackground[] = {Vendor_background};
	objects[] = { };
	//Vendor DIALOG
	controls[]=
	{
		Vendor_buy_list,
		Vendor_sell_list,
		Vendor_cart_list,
		Vendor_info_list,
		Vendor_info_image,
		Vendor_amount,
		Vendor_add_cart,
		Vendor_cart_remove,
		Vendor_buy_action,
		Vendor_sell_action,
		Vendor_total_cost,
		Vendor_money_inventory,
		Vendor_money_text
	};
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT START (by Linnet, v1.063, #Hedebe)
	////////////////////////////////////////////////////////
	class Vendor_background: RscPicture
	{
		idc = IDC_Vendor_BACKGROUND;
		text = "\ML_Images\GUI\Account_ca.paa";
		x = 0.29375 * safezoneW + safezoneX;
		y = 0.269 * safezoneH + safezoneY;
		w = 0.4125 * safezoneW;
		h = 0.462 * safezoneH;
	};
	class Vendor_buy_list: RscListbox
	{
		idc = IDC_Vendor_BUY_LIST;
		x = 0.304063 * safezoneW + safezoneX;
		y = 0.291 * safezoneH + safezoneY;
		w = 0.134062 * safezoneW;
		h = 0.242 * safezoneH;
		onLBSelChanged = "_this call ML_fnc_Vendor_Select;";
	};
	class Vendor_sell_list: RscListbox
	{
		idc = IDC_Vendor_SELL_LIST;
		x = 0.448438 * safezoneW + safezoneX;
		y = 0.291 * safezoneH + safezoneY;
		w = 0.134062 * safezoneW;
		h = 0.242 * safezoneH;
	};
	class Vendor_cart_list: RscListbox
	{
		idc = IDC_Vendor_CART_LIST;
		x = 0.304062 * safezoneW + safezoneX;
		y = 0.555 * safezoneH + safezoneY;
		w = 0.278437 * safezoneW;
		h = 0.121 * safezoneH;
	};
	class Vendor_info_list: RscListbox
	{
		idc = IDC_Vendor_INFO_LIST;
		x = 0.592812 * safezoneW + safezoneX;
		y = 0.423 * safezoneH + safezoneY;
		w = 0.103125 * safezoneW;
		h = 0.11 * safezoneH;
	};
	class Vendor_info_image: RscPicture
	{
		style = 0x30+0x800;
		idc = IDC_Vendor_INFO_IMAGE;
		text = "";
		x = 0.592812 * safezoneW + safezoneX;
		y = 0.291 * safezoneH + safezoneY;
		w = 0.103125 * safezoneW;
		h = 0.11 * safezoneH;
	};
	class Vendor_amount: RscEdit
	{
		idc = IDC_Vendor_CART_AMOUNT;
		text = "1"; //--- ToDo: Localize;
		x = 0.603125 * safezoneW + safezoneX;
		y = 0.535 * safezoneH + safezoneY;
		w = 0.0721875 * safezoneW;
		h = 0.020 * safezoneH;
	};
	class Vendor_add_cart: ML_Button
	{
		idc = IDC_Vendor_ADD_CART;
		text = $STR_ML_Vendor_ADDTOCART; //--- ToDo: Localize;
		x = 0.603125 * safezoneW + safezoneX;
		y = 0.555 * safezoneH + safezoneY;
		w = 0.0825 * safezoneW;
		h = 0.022 * safezoneH;
	};
	class Vendor_cart_remove: ML_Button
	{
		idc = IDC_Vendor_CART_REMOVE;
		text = $STR_ML_Vendor_REMOVE; //--- ToDo: Localize;
		x = 0.603125 * safezoneW + safezoneX;
		y = 0.588 * safezoneH + safezoneY;
		w = 0.0825 * safezoneW;
		h = 0.022 * safezoneH;
	};
	class Vendor_buy_action: ML_Button
	{
		idc = IDC_Vendor_BUY_ACTION;
		text = $STR_ML_Vendor_PURCHASE; //--- ToDo: Localize;
		x = 0.603125 * safezoneW + safezoneX;
		y = 0.621 * safezoneH + safezoneY;
		w = 0.0825 * safezoneW;
		h = 0.022 * safezoneH;
	};
	class Vendor_sell_action: ML_Button
	{
		idc = IDC_Vendor_SELL_ACTION;
		text = $STR_ML_Vendor_SELL; //--- ToDo: Localize;
		x = 0.603125 * safezoneW + safezoneX;
		y = 0.654 * safezoneH + safezoneY;
		w = 0.0825 * safezoneW;
		h = 0.022 * safezoneH;
	};

	class Vendor_total_cost: RscText
	{
		idc = IDC_Vendor_TOTAL_COST;
		text = $STR_ML_Vendor_TOTAL; //--- ToDo: Localize;
		x = 0.304062 * safezoneW + safezoneX;
		y = 0.687 * safezoneH + safezoneY;
		w = 0.1515625 * safezoneW;
		h = 0.022 * safezoneH;
		sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.7);
	};
	class Vendor_money_inventory: RscPicture
	{
		idc = IDC_Vendor_COINS_INVENTORY;
		text = "\ML_Images\Icons\Inv_Coins_ca.paa";
		x = 0.448438 * safezoneW + safezoneX;
		y = 0.687 * safezoneH + safezoneY;
		w = 0.0103125 * safezoneW;
		h = 0.022 * safezoneH;
	};
	class Vendor_Money_text: RscText
	{
		idc = IDC_Vendor_COINS_TEXT;
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