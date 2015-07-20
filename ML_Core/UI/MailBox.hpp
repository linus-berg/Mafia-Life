class ML_Mail_Dialog {
  idd = IDD_MAILBOX;
  movingEnable = true;
  controlsBackground[] = {MailBox_background};
  objects[] = {};
  onLoad = "uiNamespace setVariable ['ML_Mail_Dialog', (_this select 0)];";
  onUnload = "_this call ML_fnc_Mail_Sync;";
  class MailBox_background : IGUIBack {
    idc = IDC_MAILBOX_BACKGROUND;
    x = 0.298906 * safezoneW + safezoneX;
    y = 0.269 * safezoneH + safezoneY;
    w = 0.195937 * safezoneW;
    h = 0.462 * safezoneH;
    colorbackground[] = {0.243, 0.11, 0.071, 1};
  };
  class controls {
    class SendMail : RscButton {
      idc = IDC_MAILBOX_SENDMAIL;
      text = "Send Mail";  //--- ToDo: Localize;
      x = 0.349437 * safezoneW + safezoneX;
      y = 0.731 * safezoneH + safezoneY;
      w = 0.0433125 * safezoneW;
      h = 0.033 * safezoneH;
    };
    class InboxTabBtn : RscButton {
      idc = IDC_MAILBOX_INBOXTAB;
      text = "Inbox";  //--- ToDo: Localize;
      x = 0.298895 * safezoneW + safezoneX;
      y = 0.731 * safezoneH + safezoneY;
      w = 0.0433125 * safezoneW;
      h = 0.033 * safezoneH;
    };
    class SendMailTab : ML_ControlsGroup {
      idc = 2000;
      x = 0.29375 * safezoneW + safezoneX;
      y = 0.225 * safezoneH + safezoneY;
      w = 0.4125 * safezoneW;
      h = 0.495 * safezoneH;
      class controls {
        class Subject : RscEdit {
          idc = IDC_MAILBOX_SUBJECT;
          x = 0.345312 * safezoneW + safezoneX;
          y = 0.313 * safezoneH + safezoneY;
          w = 0.144375 * safezoneW;
          h = 0.022 * safezoneH;
          sizeEx = (((((safezoneW / safezoneH)min 1.2) / 1.2) / 25) * 0.7);
        };
        class SubjectTxt : RscText {
          idc = IDC_MAILBOX_SUBJECTTXT;
          text = "Subject:";  //--- ToDo: Localize;
          x = 0.304062 * safezoneW + safezoneX;
          y = 0.313 * safezoneH + safezoneY;
          w = 0.0360937 * safezoneW;
          h = 0.022 * safezoneH;
          sizeEx = (((((safezoneW / safezoneH)min 1.2) / 1.2) / 25) * 0.7);
        };
        class UIDTxt : RscText {
          idc = IDC_MAILBOX_UIDTXT;
          text = "UID:";  //--- ToDo: Localize;
          x = 0.319531 * safezoneW + safezoneX;
          y = 0.28 * safezoneH + safezoneY;
          w = 0.020625 * safezoneW;
          h = 0.022 * safezoneH;
          sizeEx = (((((safezoneW / safezoneH)min 1.2) / 1.2) / 25) * 0.7);
        };
        class UID : RscEdit {
          idc = IDC_MAILBOX_UID;
          x = 0.345312 * safezoneW + safezoneX;
          y = 0.28 * safezoneH + safezoneY;
          w = 0.144375 * safezoneW;
          h = 0.022 * safezoneH;
          sizeEx = (((((safezoneW / safezoneH)min 1.2) / 1.2) / 25) * 0.7);
        };
        class ItemList : RscListbox {
          idc = IDC_MAILBOX_ITEMLIST;
          x = 0.5 * safezoneW + safezoneX;
          y = 0.489 * safezoneH + safezoneY;
          w = 0.113437 * safezoneW;
          h = 0.242 * safezoneH;
          onLBDblClick = "_this call ML_fnc_Mail_Item;";
        };
        class Content : RscEdit {
          style = 16;
          idc = IDC_MAILBOX_CONTENT;
          x = 0.304062 * safezoneW + safezoneX;
          y = 0.346 * safezoneH + safezoneY;
          w = 0.185625 * safezoneW;
          h = 0.275 * safezoneH;
        };
        class Send : ML_Button {
          idc = IDC_MAILBOX_SEND;
          text = "Send";  //--- ToDo: Localize;
          x = 0.427812 * safezoneW + safezoneX;
          y = 0.698 * safezoneH + safezoneY;
          w = 0.061875 * safezoneW;
          h = 0.022 * safezoneH;
        };
        class Coins : RscEdit {
          idc = IDC_MAILBOX_COINS;
          text = "Coins";  //--- ToDo: Localize;
          x = 0.306125 * safezoneW + safezoneX;
          y = 0.665 * safezoneH + safezoneY;
          w = 0.105187 * safezoneW;
          h = 0.022 * safezoneH;
        };
        class CoinsIMG : RscPicture {
          idc = IDC_MAILBOX_COINSIMG;
          text = "\ML_Images\Icons\Inv_Coins_ca.paa";
          x = 0.306125 * safezoneW + safezoneX;
          y = 0.698 * safezoneH + safezoneY;
          w = 0.012375 * safezoneW;
          h = 0.022 * safezoneH;
        };
        class CoinsTxt : RscText {
          idc = IDC_MAILBOX_COINSTXT;
          text = "Amount to send:";  //--- ToDo: Localize;
          x = 0.306125 * safezoneW + safezoneX;
          y = 0.632 * safezoneH + safezoneY;
          w = 0.105187 * safezoneW;
          h = 0.022 * safezoneH;
          sizeEx = (((((safezoneW / safezoneH)min 1.2) / 1.2) / 25) * 0.7);
        };
        class InventoryCoinsTxt : RscText {
          idc = IDC_MAILBOX_ICOINSTXT;
          text = "Amount 100101011";  //--- ToDo: Localize;
          x = 0.324687 * safezoneW + safezoneX;
          y = 0.698 * safezoneH + safezoneY;
          w = 0.099 * safezoneW;
          h = 0.022 * safezoneH;
          sizeEx = (((((safezoneW / safezoneH)min 1.2) / 1.2) / 25) * 0.7);
        };
        class COD : RscCheckbox {
          idc = IDC_MAILBOX_COD;
          text = "COD";  //--- ToDo: Localize;
          x = 0.4175 * safezoneW + safezoneX;
          y = 0.665 * safezoneH + safezoneY;
          w = 0.012375 * safezoneW;
          h = 0.022 * safezoneH;
          onCheckedChanged = "if ((_this select 1) == 1) then {ctrlSetText [1911, 'C.O.D Amount:'];} else {ctrlSetText [1911, 'Amount to send:'];};";
        };
        class CODTxt : RscText {
          idc = IDC_MAILBOX_CODTXT;
          text = "C.O.D";  //--- ToDo: Localize;
          x = 0.436062 * safezoneW + safezoneX;
          y = 0.665 * safezoneH + safezoneY;
          w = 0.02475 * safezoneW;
          h = 0.022 * safezoneH;
        };
        class Postage : RscText {
          idc = IDC_MAILBOX_POSTAGE;
          text = "Postage: 30";  //--- ToDo: Localize;
          x = 0.4175 * safezoneW + safezoneX;
          y = 0.632 * safezoneH + safezoneY;
          w = 0.0680625 * safezoneW;
          h = 0.022 * safezoneH;
        };
      };
    };
    class InboxTab : ML_ControlsGroup {
      idc = 2001;
      x = 0.29375 * safezoneW + safezoneX;
      y = 0.225 * safezoneH + safezoneY;
      w = 0.4125 * safezoneW;
      h = 0.495 * safezoneH;
      class controls {
        class MailBackground : IGUIBack {
          idc = IDC_MAILBOX_BACKGROUND;
          x = 0.504125 * safezoneW + safezoneX;
          y = 0.269 * safezoneH + safezoneY;
          w = 0.198 * safezoneW;
          h = 0.462 * safezoneH;
          colorbackground[] = {0.243, 0.11, 0.071, 1};
        };
        class MailItems : RscListbox {
          idc = IDC_MAILBOX_MAILITEMS;
          x = 0.510312 * safezoneW + safezoneX;
          y = 0.599 * safezoneH + safezoneY;
          w = 0.185625 * safezoneW;
          h = 0.11 * safezoneH;
          onLBDblClick = "_this call ML_fnc_Mail_TakeItem;";
        };
        class MailContent : RscStructuredText {
          idc = IDC_MAILBOX_MAILCONTENT;
          x = 0.510312 * safezoneW + safezoneX;
          y = 0.335 * safezoneH + safezoneY;
          w = 0.185625 * safezoneW;
          h = 0.253 * safezoneH;
        };
        class From : RscText {
          idc = IDC_MAILBOX_FROM;
          text = "From:";  //--- ToDo: Localize;
          x = 0.510312 * safezoneW + safezoneX;
          y = 0.28 * safezoneH + safezoneY;
          w = 0.185625 * safezoneW;
          h = 0.022 * safezoneH;
        };
        class MailSubject : RscText {
          idc = IDC_MAILBOX_MAILSUBJECT;
          text = "Subject:";  //--- ToDo: Localize;
          x = 0.510312 * safezoneW + safezoneX;
          y = 0.302 * safezoneH + safezoneY;
          w = 0.185625 * safezoneW;
          h = 0.022 * safezoneH;
        };
        class Reply : RscButton {
          idc = IDC_MAILBOX_REPLY;
          text = "Reply";  //--- ToDo: Localize;
          x = 0.658812 * safezoneW + safezoneX;
          y = 0.731 * safezoneH + safezoneY;
          w = 0.0433125 * safezoneW;
          h = 0.033 * safezoneH;
        };
        class InboxList : RscListbox {
          idc = IDC_MAILBOX_INBOXLIST;
          x = 0.306125 * safezoneW + safezoneX;
          y = 0.28 * safezoneH + safezoneY;
          w = 0.182041 * safezoneW;
          h = 0.44 * safezoneH;
          onLBSelChanged = "_this call ML_fnc_Mail_Select;"
        };
      };
    };
  };
};