class Vendor_dialog {
  idd = IDD_Vendor;
  movingEnable = true;
  controlsBackground[] = {Vendor_background, Vendor_FilterBG};
  onLoad = "uiNamespace setVariable ['ML_Vendor_Dialog', (_this select 0)]";
  objects[] = {};

  class Vendor_background : IGUIBack {
    idc = IDC_Vendor_BACKGROUND;
    x = 0.29375 * safezoneW + safezoneX;
    y = 0.269 * safezoneH + safezoneY;
    w = 0.4125 * safezoneW;
    h = 0.462 * safezoneH;
    colorbackground[] = {0.243, 0.11, 0.071, 1};
  };
  class controls {
    class Vendor_buy_list : RscListbox {
      idc = IDC_Vendor_BUY_LIST;
      x = 0.304063 * safezoneW + safezoneX;
      y = 0.291 * safezoneH + safezoneY;
      w = 0.134062 * safezoneW;
      h = 0.242 * safezoneH;
      font = "SegoeUI";
      onLBSelChanged = "_this call ML_fnc_Vendor_Select;";
    };
    class Vendor_sell_list : RscListbox {
      idc = IDC_Vendor_SELL_LIST;
      x = 0.448438 * safezoneW + safezoneX;
      y = 0.291 * safezoneH + safezoneY;
      w = 0.134062 * safezoneW;
      h = 0.242 * safezoneH;
      font = "SegoeUI";
    };
    class Vendor_cart_list : RscListbox {
      idc = IDC_Vendor_CART_LIST;
      x = 0.304062 * safezoneW + safezoneX;
      y = 0.555 * safezoneH + safezoneY;
      w = 0.278437 * safezoneW;
      h = 0.121 * safezoneH;
      font = "SegoeUI";
    };
    class Vendor_info_list : RscListbox {
      idc = IDC_Vendor_INFO_LIST;
      x = 0.592812 * safezoneW + safezoneX;
      y = 0.423 * safezoneH + safezoneY;
      w = 0.103125 * safezoneW;
      h = 0.11 * safezoneH;
      font = "SegoeUI";
    };
    class Vendor_info_image : RscPicture {
      style = 0x30 + 0x800;
      idc = IDC_Vendor_INFO_IMAGE;
      text = "";
      x = 0.592812 * safezoneW + safezoneX;
      y = 0.291 * safezoneH + safezoneY;
      w = 0.103125 * safezoneW;
      h = 0.11 * safezoneH;
    };
    class Vendor_amount : RscEdit {
      idc = IDC_Vendor_CART_AMOUNT;
      text = "1";
      x = 0.603125 * safezoneW + safezoneX;
      y = 0.545 * safezoneH + safezoneY;
      w = 0.0721875 * safezoneW;
      h = 0.020 * safezoneH;
    };
    class Vendor_add_cart : ML_Button {
      idc = IDC_Vendor_ADD_CART;
      text = $STR_ML_Vendor_ADDTOCART;
      x = 0.603125 * safezoneW + safezoneX;
      y = 0.575 * safezoneH + safezoneY;
      w = 0.0825 * safezoneW;
      h = 0.022 * safezoneH;
    };
    class Vendor_cart_remove : ML_Button {
      idc = IDC_Vendor_CART_REMOVE;
      text = $STR_ML_Vendor_REMOVE;
      x = 0.603125 * safezoneW + safezoneX;
      y = 0.608 * safezoneH + safezoneY;
      w = 0.0825 * safezoneW;
      h = 0.022 * safezoneH;
    };
    class Vendor_buy_action : ML_Button {
      idc = IDC_Vendor_BUY_ACTION;
      text = $STR_ML_Vendor_PURCHASE;
      x = 0.603125 * safezoneW + safezoneX;
      y = 0.641 * safezoneH + safezoneY;
      w = 0.0825 * safezoneW;
      h = 0.022 * safezoneH;
    };
    class Vendor_sell_action : ML_Button {
      idc = IDC_Vendor_SELL_ACTION;
      text = $STR_ML_Vendor_SELL;
      x = 0.603125 * safezoneW + safezoneX;
      y = 0.674 * safezoneH + safezoneY;
      w = 0.0825 * safezoneW;
      h = 0.022 * safezoneH;
    };
    class Vendor_total_cost : RscText {
      idc = IDC_Vendor_TOTAL_COST;
      text = $STR_ML_Vendor_TOTAL;
      x = 0.304062 * safezoneW + safezoneX;
      y = 0.687 * safezoneH + safezoneY;
      w = 0.1515625 * safezoneW;
      h = 0.022 * safezoneH;
      font = "SegoeUI";
      sizeEx = (((((safezoneW / safezoneH)min 1.2) / 1.2) / 25) * 0.7);
    };
    class Vendor_money_inventory : RscPicture {
      idc = IDC_Vendor_COINS_INVENTORY;
      text = "\ML_Images\Icons\Inv_Coins_ca.paa";
      x = 0.448438 * safezoneW + safezoneX;
      y = 0.687 * safezoneH + safezoneY;
      w = 0.0103125 * safezoneW;
      h = 0.022 * safezoneH;
    };
    class Vendor_Money_text : RscText {
      idc = IDC_Vendor_COINS_TEXT;
      text = "Coins:";  //--- ToDo: Localize;
      x = 0.463906 * safezoneW + safezoneX;
      y = 0.687 * safezoneH + safezoneY;
      w = 0.1464063 * safezoneW;
      h = 0.022 * safezoneH;
      font = "SegoeUI";
      sizeEx = (((((safezoneW / safezoneH)min 1.2) / 1.2) / 25) * 0.7);
    };
    class Vendor_FilterBG : IGUIBack {
      idc = IDC_VENDOR_FILTERBG;
      x = 0.221562 * safezoneW + safezoneX;
      y = 0.434 * safezoneH + safezoneY;
      w = 0.0721875 * safezoneW;
      h = 0.143 * safezoneH;
      colorbackground[] = {0.243, 0.11, 0.071, 1};
    };
    class Vendor_Filter_Weapon : RscCheckbox {
      idc = IDC_VENDOR_FILTER_WEAPONS;
      x = 0.226719 * safezoneW + safezoneX;
      y = 0.445 * safezoneH + safezoneY;
      w = 0.0154688 * safezoneW;
      h = 0.022 * safezoneH;
      checked = 1;
      onCheckedChanged = "_this call ML_fnc_Vendor_Filter;";
    };
    class Vendor_Filter_WeaponText : RscText {
      idc = IDC_VENDOR_FILTER_WEAPONTEXT;
      text = "Weapons";  //--- ToDo: Localize;
      x = 0.242187 * safezoneW + safezoneX;
      y = 0.445 * safezoneH + safezoneY;
      w = 0.0515625 * safezoneW;
      h = 0.022 * safezoneH;
      font = "SegoeUI";
      SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.6)";
    };
    class Vendor_Filter_Magazine : Vendor_Filter_Weapon {
      idc = IDC_VENDOR_FILTER_MAGAZINES;
      x = 0.226719 * safezoneW + safezoneX;
      y = 0.478 * safezoneH + safezoneY;
      w = 0.0154688 * safezoneW;
      h = 0.022 * safezoneH;
    };
    class Vendor_Filter_MagazineText : Vendor_Filter_WeaponText {
      idc = IDC_VENDOR_FILTER_MAGAZINETEXT;
      text = "Magazines";  //--- ToDo: Localize;
      x = 0.242187 * safezoneW + safezoneX;
      y = 0.478 * safezoneH + safezoneY;
      w = 0.0515625 * safezoneW;
      h = 0.022 * safezoneH;
      font = "SegoeUI";
    };
    class Vendor_Filter_Vehicle : Vendor_Filter_Weapon {
      idc = IDC_VENDOR_FILTER_VEHICLES;
      x = 0.226719 * safezoneW + safezoneX;
      y = 0.511 * safezoneH + safezoneY;
      w = 0.0154688 * safezoneW;
      h = 0.022 * safezoneH;
    };
    class Vendor_Filter_VehicleText : Vendor_Filter_WeaponText {
      idc = IDC_VENDOR_FILTER_VEHICLETEXT;
      text = "Vehicles";  //--- ToDo: Localize;
      x = 0.242187 * safezoneW + safezoneX;
      y = 0.511 * safezoneH + safezoneY;
      w = 0.0515625 * safezoneW;
      h = 0.022 * safezoneH;
      font = "SegoeUI";
    };
    class Vendor_Filter_Item : Vendor_Filter_Weapon {
      idc = IDC_VENDOR_FILTER_ITEMS;
      x = 0.226719 * safezoneW + safezoneX;
      y = 0.544 * safezoneH + safezoneY;
      w = 0.0154688 * safezoneW;
      h = 0.022 * safezoneH;
    };
    class Vendor_Filter_ItemText : Vendor_Filter_WeaponText {
      idc = IDC_VENDOR_FILTER_ITEMTEXT;
      text = "Items";  //--- ToDo: Localize;
      x = 0.242187 * safezoneW + safezoneX;
      y = 0.544 * safezoneH + safezoneY;
      w = 0.0515625 * safezoneW;
      h = 0.022 * safezoneH;
      font = "SegoeUI";
    };
  };
};