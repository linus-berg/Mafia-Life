class cfgFunctions {
  version = 3.0;
  createShortcuts = 1;
  class HSim {
    class GUI {
      class GUInewsfeed {
        file = "\ML_Functions\Functions\GUI\Arma3\guiNewsfeed.sqf";
      };
    };
  };
  class Mafia_Life {
    tag = ML;
    /*---Initialization---*/
    class Initialization {
      file = "ML_Functions\Functions\Initialization";
      class Initialization {
      };
    };
    //---
    //---Animation---//
    class Animation {
      file = "ML_Functions\Functions\Animation";
      class Animation_Handle {};
    };
    //---
    //---Notifications---//
    class Notifications {
      file = "ML_Functions\Functions\Notifications";
      class showNotification {};
      class notify {};
    };
    //---

    //---Network---//
    class Network {
      file = "ML_Functions\Functions\Network";
      class Network_AddEvent {};
      class Network_ClientSetup {};
      class Network_Handle {};
      class Network_ClientToServer {};
    };
    //---

    //---Data---//
    class Data {
      file = "ML_Functions\Functions\Data";
      class Data_Load {};
      class Data_Setup {};
      class Data_Register {};
      class Data_SetGear {};
      class Data_Sync {};
    };
    //---

    //---Respawn---//
    class Respawn {
      file = "ML_Functions\Functions\Respawn";
      class Respawn_Killed {};
      class Respawn_Spawn {};
    };
    //---

    //---Mail---//
    class Mail {
      file = "ML_Functions\Functions\Mail";
      class Mail_Send {};
      class Mail_Dialog {};
      class Mail_Item {};
      class Mail_LoadItems {};
      class Mail_Inbox {};
      class Mail_Select {};
      class Mail_SetText {};
      class Mail_GetAll {};
      class Mail_SendMail {};
      class Mail_TakeItem {};
      class Mail_UpdateCurrent {};
      class Mail_Sync {};
    };
    //---

    //---Account---//
    class Account {
      file = "ML_Functions\Functions\Account";
      class Account_CheckMin {};
      class Account_Deposit {};
      class Account_DepositOther {};
      class Account_DepositSelf {};
      class Account_Get {};
      class Account_Set {};
      class Account_Transact {};
      class Account_Withdraw {};
    };
    //---

    //---Coins---//
    class Coins {
      file = "ML_Functions\Functions\Coins";
      class Client_GetCoins {};
      class Client_SetCoins {};
    };
    //---

    //---Family---//
    class Family {
      file = "ML_Functions\Functions\Family";
      class Family_GetInfo {};
      class Family_GetPlayerFamily {};
      class Family_InFamily {};
      class Family_Join {};
      class Family_UI {};
      class Family_Select {};
    };
    //---

    //---Sound---//
    class Sound {
      file = "ML_Functions\Functions\Sound";
      class Sound_Randomize {};
    };
    //---

    //---Interaction---//
    class Interaction {
      file = "ML_Functions\Functions\Interaction";
    };
    class Interaction_Teller {
      file = "ML_Functions\Functions\Interaction\Teller";
      class Teller {};
      class Teller_Menu {};
    };
    class Interaction_Vendor {
      file = "ML_Functions\Functions\Interaction\Vendor";
      class Vendor {};
    };
    class Interaction_Client {
      file = "ML_Functions\Functions\Interaction\Client";
      class Interaction_Client {};
      class Interaction_ClientMenu {};
    };
    //---

    //---Inventory---//
    class Inventory {
      file = "ML_Functions\Functions\Inventory";
      class Inventory_RemoveItem {};
      class Inventory_HasItem {};
      class Inventory_Return {};
      class Inventory_ClearClient {};
    };
    //---
    //---Item---//
    class Item {
      file = "ML_Functions\Functions\Item";
      class Item_Handle {};
    };
    class Item_Functions {
      file = "ML_Functions\Functions\Item\Functions";
      class Item_TyreIron {};
      class Item_Bandages {};
    };
    //---

    //---Vendors---//
    class Vendors {
      file = "ML_Functions\Functions\Vendors";
      class Vendor_Setup {};
      class Vendor_SetupSell {};
      class Vendor_Select {};
      class Vendor_AddToCart {};
      class Vendor_SetCurrent {};
      class Vendor_GetCurrent {};
      class Vendor_Purchase {};
      class Vendor_ReturnConfig {};
      class Vendor_Remove {};
      class Vendor_Sell {};
      class Vendor_GetItemInfo {};
      class Vendor_GetSpawns {};
      class Vendor_SetupBuy {};
      class Vendor_Filter {};
      class Vendor_ClearCart {};
      class Vendor_SetCart {};
      class Vendor_GetCart {};
    };
    //---

    //---Merchandise---//
    class Merchandise {
      file = "ML_Functions\Functions\Merchandise";
      class Merchandise_GetCfg {};
      class Merchandise_GetName {};
      class Merchandise_GetPicture {};
      class Merchandise_GetPermitID {};
    };
    //---

    //---Variables---//
    class Variables {
      file = "ML_Functions\Functions\Variables";
      class Variable_Init {};
      class Variable_Get {};
      class Variable_Set {};
    };

    //---Permits---//
    class Permits {
      file = "ML_Functions\Functions\Permits";
      class Permit_ClientAdd {};
      class Permit_Get {};
    };
    //---

    //---Array---//
    class Array {
      file = "ML_Functions\Functions\Array";
      class Array_ElementCount {};
    };
    //---

    //---Client---//
    class Client {
      file = "ML_Functions\Functions\Client";
      class Client_Setup {};
      class stats_human_side {};
    };
    class Client_Audits {
      file = "ML_Functions\Functions\Client\Audits";
      class Client_Exists {};
      class Client_Human {};
      class Client_Side {};
      class Client_SideAI {};
      class Client_SideCiv {};
      class Client_SideHuman {};
      class Client_SidePolice {};
      class Client_SideIns {};
      class Client_SideID {};
      class Client_IsArmed {};
      class Client_IsDefenceless {};
    };
    class Client_Permits {
      file = "ML_Functions\Functions\Client\Permits";
      class Client_HasPermit {};
    };
    class Client_Actions {
      file = "ML_Functions\Functions\Client\Actions";
      class Client_Kneecap {};
      class Client_Steal {};
      class Client_Arrest {};
    };
    //---

    //---Quests---//
    class Quest_Functions {
      file = "ML_Functions\Functions\Quests";
      class Quests_Add {};
      class Quests_AddAction {};
      class Quests_Setup {};
      class Quests_Dialog {};
      class Quests_HandIn {};
      class Quests_Rewards {};
      class Quests_CheckComplete {};
      class Quests_LogFill {};
      class Quests_LogSelect {};
      class Quests_FormatText {};
    };
    //---

    //---GUI---//
    class GUI_Functions {
      file = "ML_Functions\Functions\GUI\Functions";
      class GUI_ClientList {};
      class GUI_ClientListComplete {};
    };
    //---

    //---Keyboard---//
    class Keyboard_Functions {
      file = "ML_Functions\Functions\Keyboard";
      class Keyboard_SetupKeys {};
      class Keyboard_Setup {};
      class Keyboard_Interaction {};
      class Keyboard_QuestLog {};
      class Keyboard_Handle {};
    };
    //---

    //---ASCII---//
    class Ascii {
      file = "ML_Functions\Functions\Ascii";
      class ToASCII {};
      class ToInt {};
    };
    //---

    //---Formatting---//
    class Formatting {
      file = "ML_Functions\Functions\Formatting";
      class Int_ToString {};
      class String_ToInt {};
    };
    //---

    class Misc {
      file = "ML_Functions\Functions\Misc";
      class Misc_CheckTimer {};
      class Misc_Debug {};
    };
  };
};