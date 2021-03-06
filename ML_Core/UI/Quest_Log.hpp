class ML_Quest_Log_Dialog {
  idd = IDD_QUEST_LOG;
  movingEnable = true;
  controlsBackground[] = {ML_Quest_Log_List_BG, ML_Quest_Log_Text_BG};
  objects[] = {};
  onLoad = "uiNamespace setVariable ['ML_Quest_Log_Dialog', (_this select 0)]";

  class ML_Quest_Log_List_BG : RscPicture {
    idc = IDC_QUEST_LOG_LIST_BG;
    text = "\ML_Images\GUI\Quest.paa";
    moving = 1;
    x = 0.335 * safezoneW + safezoneX;
    y = 0.291 * safezoneH + safezoneY;
    w = 0.165 * safezoneW;
    h = 0.396 * safezoneH;
  };
  class ML_Quest_Log_Text_BG : RscPicture {
    idc = IDC_QUEST_LOG_TEXT_BG;
    text = "\ML_Images\GUI\Quest.paa";
    moving = 1;
    x = 0.505156 * safezoneW + safezoneX;
    y = 0.291 * safezoneH + safezoneY;
    w = 0.165 * safezoneW;
    h = 0.396 * safezoneH;
  };
  class controls {
    class ML_Quest_Log_Quest_List : RscListbox {
      idc = IDC_QUEST_LOG_QUEST_LIST;
      x = 0.340156 * safezoneW + safezoneX;
      y = 0.302 * safezoneH + safezoneY;
      w = 0.154687 * safezoneW;
      h = 0.352 * safezoneH;
      font = "Friz";
      sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.7)";
      onLBSelChanged = "(_this select 1) call ML_fnc_Quests_LogSelect;";
    };
    class ML_Quest_Log_Quest_TextContainer : ML_ControlsGroup {
      x = 0.510311 * safezoneW + safezoneX;
      y = 0.302 * safezoneH + safezoneY;
      w = 0.154687 * safezoneW;
      h = 0.374 * safezoneH;
      class controls {
        class ML_Quest_Log_Quest_Text : ML_StructText {
          idc = IDC_QUEST_LOG_QUEST_TEXT;
          x = 0;
          y = 0;
          w = 0.154687 * safezoneW;
          h = 0.374 * safezoneH;
        };
      };
    };
    class ML_Quest_Log_Abandon : ML_Button {
      idc = IDC_QUEST_LOG_ABANDON;
      text = "Abandon";  //--- ToDo: Localize;
      x = 0.340156 * safezoneW + safezoneX;
      y = 0.665 * safezoneH + safezoneY;
      w = 0.0485416 * safezoneW;
      h = 0.022 * safezoneH;
    };
    class ML_Quest_Log_Close : ML_Button {
      idc = IDC_QUEST_LOG_CLOSE;
      text = "Close";  //--- ToDo: Localize;
      x = 0.443281 * safezoneW + safezoneX;
      y = 0.665 * safezoneH + safezoneY;
      w = 0.0485416 * safezoneW;
      h = 0.022 * safezoneH;
      action = "closeDialog 0;";
    };
  };
};