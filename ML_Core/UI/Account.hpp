class Account{
    idd = ACCOUNT_01;
    movingEnable = true;
    controlsBackground[] = {BG};
    objects[] = { };
    controls[]=
    {
        players,
        amount,
        withdraw,
        deposit,
        inventory_money,
        Account_money,
        Account_COINS_pic,
        Inventory_money_pic
    };
    ////////////////////////////////////////////////////////
    // GUI EDITOR OUTPUT START (by Linnet, v1.063, #Xogiqu)
    ////////////////////////////////////////////////////////
    class BG: RscPicture
    {
        idc = 1409;
        text = "\ML_Images\GUI\Account_ca.paa";
        x = 0.407187 * safezoneW + safezoneX;
        y = 0.423 * safezoneH + safezoneY;
        w = 0.175313 * safezoneW;
        h = 0.154 * safezoneH;
        shadow = 1;
    };
    class players: RscCombo
    {
        idc = IDC_ACCOUNT_PLAYERS;
        x = 0.5 * safezoneW + safezoneX;
        y = 0.445 * safezoneH + safezoneY;
        w = 0.0721875 * safezoneW;
        h = 0.022 * safezoneH;
    };
    class amount: RscEdit
    {
        idc = IDC_ACCOUNT_AMOUNT;
        text = "0"; //--- ToDo: Localize;
        x = 0.4175 * safezoneW + safezoneX;
        y = 0.445 * safezoneH + safezoneY;
        w = 0.0721875 * safezoneW;
        h = 0.022 * safezoneH;
    };
    class withdraw: ML_Button
    {
        idc = IDC_ACCOUNT_WITHDRAW;
        text = $STR_ML_ACCOUNT_WITHDRAW; //--- ToDo: Localize;
        x = 0.5 * safezoneW + safezoneX;
        y = 0.533 * safezoneH + safezoneY;
        w = 0.0721875 * safezoneW;
        h = 0.022 * safezoneH;
    };
    class deposit: ML_Button
    {
        idc = IDC_ACCOUNT_DEPOSIT;
        text = $STR_ML_ACCOUNT_DEPOSIT; //--- ToDo: Localize;
        x = 0.4175 * safezoneW + safezoneX;
        y = 0.533 * safezoneH + safezoneY;
        w = 0.0721875 * safezoneW;
        h = 0.022 * safezoneH;
    };
    class inventory_money: RscText
    {
        idc = IDC_ACCOUNT_INVENTORY;
        text = ""; //--- ToDo: Localize;
        x = 0.427812 * safezoneW + safezoneX;
        y = 0.489 * safezoneH + safezoneY;
        w = 0.0670312 * safezoneW;
        h = 0.022 * safezoneH;
        sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.7);
    };
    class Account_money: RscText
    {
        idc = IDC_ACCOUNT_COINS;
        text = ""; //--- ToDo: Localize;
        x = 0.510312 * safezoneW + safezoneX;
        y = 0.489 * safezoneH + safezoneY;
        w = 0.061875 * safezoneW;
        h = 0.022 * safezoneH;
        sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.7);
    };
    class Account_Coins_pic: RscPicture
    {
        idc = IDC_ACCOUNT_ACCOUNT_COINS;
        text = "\ML_Images\Icons\Account_Coins_ca.paa";
        x = 0.5 * safezoneW + safezoneX;
        y = 0.489 * safezoneH + safezoneY;
        w = 0.0103125 * safezoneW;
        h = 0.022 * safezoneH;
    };
    class Inventory_money_pic: RscPicture
    {
        idc = IDC_ACCOUNT_INVENTORY_COINS;
        text = "\ML_Images\Icons\Inv_Coins_ca.paa";
        x = 0.4175 * safezoneW + safezoneX;
        y = 0.489 * safezoneH + safezoneY;
        w = 0.0103125 * safezoneW;
        h = 0.022 * safezoneH;
    };
    ////////////////////////////////////////////////////////
    // GUI EDITOR OUTPUT END
    ////////////////////////////////////////////////////////
};