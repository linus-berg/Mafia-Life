class ML_User_Register {
  idd = IDD_USER_REGISTER;
  movingEnable = true;
  controlsBackground[] = {ML_User_Register_BG};
  onLoad = "uiNamespace setVariable ['ML_User_Register_Dialog', (_this select 0)]";
  onUnload = "['ERROR_NO_REGISTER: 0x2001'] call BIS_fnc_error; if ((_this select 1) == 2)exitWith{endMission 'END1';};";
  objects[] = {};

  class ML_User_Register_BG : RscPicture {
    idc = IDC_USER_REGISTER_BG;
    text = "\ML_Images\GUI\Account_ca.paa";
    x = 0.365938 * safezoneW + safezoneX;
    y = 0.368 * safezoneH + safezoneY;
    w = 0.28875 * safezoneW;
    h = 0.33 * safezoneH;
  };
  class controls {
    class ML_User_Register_Email : RscEdit {
      idc = IDC_USER_REGISTER_EMAIL;
      text = "Email";  //--- ToDo: Localize;
      x = 0.37625 * safezoneW + safezoneX;
      y = 0.522 * safezoneH + safezoneY;
      w = 0.113437 * safezoneW;
      h = 0.022 * safezoneH;
      font = "Friz";
    };
    class ML_User_Register_Password : ML_User_Register_Email {
      idc = IDC_USER_REGISTER_PASSWORD;
      text = "Password";  //--- ToDo: Localize;
      x = 0.37625 * safezoneW + safezoneX;
      y = 0.566 * safezoneH + safezoneY;
      w = 0.113437 * safezoneW;
      h = 0.022 * safezoneH;
      onSetFocus = "if(ctrlText (_this select 0) == 'Password')then{(_this select 0) ctrlSetText ''};";
    };
    class ML_User_Register_Password_C : ML_User_Register_Email {
      idc = IDC_USER_REGISTER_PASSWORD_C;
      text = "Confirm Password";  //--- ToDo: Localize;
      x = 0.37625 * safezoneW + safezoneX;
      y = 0.599 * safezoneH + safezoneY;
      w = 0.113437 * safezoneW;
      h = 0.022 * safezoneH;
      onSetFocus = "if(ctrlText (_this select 0) == 'Confirm Password')then{(_this select 0) ctrlSetText ''};";
    };
    class ML_User_Register_Logo : RscPicture {
      idc = IDC_USER_REGISTER_LOGO;
      text = "\ML_Images\Logo\logo_ca.paa";
      x = 0.37625 * safezoneW + safezoneX;
      y = 0.379 * safezoneH + safezoneY;
      w = 0.113437 * safezoneW;
      h = 0.066 * safezoneH;
    };
    class ML_User_Register_Account : ML_Button {
      idc = IDC_USER_REGISTER_ACCOUNT;
      text = "Create Account";  //--- ToDo: Localize;
      x = 0.386563 * safezoneW + safezoneX;
      y = 0.654 * safezoneH + safezoneY;
      w = 0.0928125 * safezoneW;
      h = 0.022 * safezoneH;
    };
    class ML_User_Register_Exit : ML_Button {
      idc = IDC_USER_REGISTER_EXIT;
      text = "Exit";  //--- ToDo: Localize;
      x = 0.597969 * safezoneW + safezoneX;
      y = 0.654 * safezoneH + safezoneY;
      w = 0.0360937 * safezoneW;
      h = 0.022 * safezoneH;
      action = "closeDialog 2;";
    };
    class ML_User_Register_TextContainer : ML_ControlsGroup {
      x = 0.510311 * safezoneW + safezoneX;
      y = 0.379 * safezoneH + safezoneY;
      w = 0.134062 * safezoneW;
      h = 0.264 * safezoneH;
      class controls {
        class ML_User_Register_Text : ML_StructText {
          idc = IDC_USER_REGISTER_TEXT;
          x = 0;
          y = 0;
          w = 0.132151 * safezoneW;
          h = 0.264 * safezoneH;
        };
      };
    };
  };
};