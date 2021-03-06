class Family_List_dialog {
  idd = IDD_FAMILY_LIST;
  movingEnable = true;
  controlsBackground[] = {ML_Family_BG};
  onLoad = "uiNamespace setVariable ['ML_Family_List', (_this select 0)]";
  objects[] = {};

  class ML_Family_BG : RscPicture {
    idc = IDC_ML_FAMILY_BG;
    x = 0.29375 * safezoneW + safezoneX;
    y = 0.247 * safezoneH + safezoneY;
    w = 0.4125 * safezoneW;
    h = 0.495 * safezoneH;
    text = "\ML_Images\GUI\Account_ca.paa";
  };
  class controls {
    class ML_Family_ListL : RscListbox {
      idc = IDC_ML_FAMILY_LISTL;
      x = 0.304063 * safezoneW + safezoneX;
      y = 0.258 * safezoneH + safezoneY;
      w = 0.175313 * safezoneW;
      h = 0.473 * safezoneH;
      onLBSelChanged = "(_this select 1) call ML_fnc_Family_Select;";
    };
    class ML_Family_List_TextContainer : ML_ControlsGroup {
      x = 0.5 * safezoneW + safezoneX;
      y = 0.258 * safezoneH + safezoneY;
      w = 0.195937 * safezoneW;
      h = 0.407 * safezoneH;
      class controls {
        class ML_Family_ListInfo : ML_StructText {
          idc = IDC_ML_FAMILY_LISTINFO;
          x = 0;
          y = 0;
          w = 0.195937 * safezoneW;
          h = 0.407 * safezoneH;
        };
      };
    };
    class ML_Family_ListJoin : ML_Button {
      idc = IDC_ML_FAMILY_LISTJOIN;
      text = "Join Family";  //--- ToDo: Localize;
      x = 0.613437 * safezoneW + safezoneX;
      y = 0.676 * safezoneH + safezoneY;
      w = 0.0721875 * safezoneW;
      h = 0.022 * safezoneH;
    };
    class ML_Family_ListStart : ML_Button {
      idc = IDC_ML_FAMILY_LISTCLOSE;
      text = "Close";  //--- ToDo: Localize;
      x = 0.613437 * safezoneW + safezoneX;
      y = 0.709 * safezoneH + safezoneY;
      w = 0.0721875 * safezoneW;
      h = 0.022 * safezoneH;
      action = "closeDialog 0;";
    };
  };
};