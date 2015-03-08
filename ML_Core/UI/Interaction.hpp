class ML_Interaction_dialog{
  idd = IDD_INTERACTION;
  movingEnable = true;
  controlsBackground[] = {ML_Interaction_Human_BG};
  objects[] = { };
  //Interaction DIALOG
  controls[]=
  {
    ML_Interaction_Information,
    ML_Interaction_Action_Arrest,
    ML_Interaction_Action_Detain,
    ML_Interaction_Action_Ticket,
    ML_Interaction_Action_Inspect,
    ML_Interaction_Action_TicketAmount,
    ML_Interaction_Actions_Reason
  };

  ////////////////////////////////////////////////////////
  // GUI EDITOR OUTPUT START (by Linnet, v1.063, #Cizyzu)
  ////////////////////////////////////////////////////////

  class ML_Interaction_Information: ML_StructText
  {
    idc = IDC_INTERACTION_INFORMATION;
    x = 0.352119 * safezoneW + safezoneX;
    y = 0.33368 * safezoneH + safezoneY;
    w = 0.13125 * safezoneW;
    h = 0.321112 * safezoneH;
  };
  class ML_Interaction_Human_BG: RscPicture
  {
    idc = IDC_INTERACTION_HUMAN_BG;
    text = "\ML_Images\GUI\Notebook.paa";
    x = 0.340156 * safezoneW + safezoneX;
    y = 0.269 * safezoneH + safezoneY;
    w = 0.304219 * safezoneW;
    h = 0.484 * safezoneH;
  };
  class ML_Interaction_Action_Arrest: ML_InterAct_Button
  {
    idc = IDC_INTERACTION_ACTION_ARREST;
    text = "Arrest"; //--- ToDo: Localize;
    x = 0.504583 * safezoneW + safezoneX;
    y = 0.410037 * safezoneH + safezoneY;
    w = 0.0634375 * safezoneW;
    h = 0.0173703 * safezoneH;
    colorBackground[] = {0,0,0,0};
    colorActive[] = {0,0,0,0};
  };
  class ML_Interaction_Action_Detain: ML_InterAct_Button
  {
    idc = IDC_INTERACTION_ACTION_DETAIN;
    text = "Detain"; //--- ToDo: Localize;
    x = 0.504636 * safezoneW + safezoneX;
    y = 0.438889 * safezoneH + safezoneY;
    w = 0.0634375 * safezoneW;
    h = 0.0173703 * safezoneH;
    colorBackground[] = {0,0,0,0};
    colorActive[] = {0,0,0,0};
  };
  class ML_Interaction_Action_Ticket: ML_InterAct_Button
  {
    idc = IDC_INTERACTION_ACTION_TICKET;
    text = "Ticket"; //--- ToDo: Localize;
    x = 0.505156 * safezoneW + safezoneX;
    y = 0.5 * safezoneH + safezoneY;
    w = 0.0623959 * safezoneW;
    h = 0.0173703 * safezoneH;
    colorBackground[] = {0,0,0,0};
    colorActive[] = {0,0,0,0};
  };
  class ML_Interaction_Action_Inspect: ML_InterAct_Button
  {
    idc = IDC_INTERACTION_ACTION_INSPECT;
    text = "Inspect"; //--- ToDo: Localize;
    x = 0.505156 * safezoneW + safezoneX;
    y = 0.530926 * safezoneH + safezoneY;
    w = 0.061875 * safezoneW;
    h = 0.0173703 * safezoneH;
    colorBackground[] = {0,0,0,0};
    colorActive[] = {0,0,0,0};
  };
  class ML_Interaction_Action_TicketAmount: ML_RscEdit
  {
    idc = IDC_INTERACTION_ACTION_TICKETAMOUNT;
    text = "0"; //--- ToDo: Localize;
    x = 0.505156 * safezoneW + safezoneX;
    y = 0.467 * safezoneH + safezoneY;
    w = 0.0597916 * safezoneW;
    h = 0.0173704 * safezoneH;
  };
  class ML_Interaction_Actions_Reason: ML_RscEdit
  {
    idc = IDC_INTERACTION_ACTIONS_REASON;
    text = "Reason"; //--- ToDo: Localize;
    x = 0.505156 * safezoneW + safezoneX;
    y = 0.379 * safezoneH + safezoneY;
    w = 0.0928125 * safezoneW;
    h = 0.022 * safezoneH;
  };
  ////////////////////////////////////////////////////////
  // GUI EDITOR OUTPUT END
  ////////////////////////////////////////////////////////

};