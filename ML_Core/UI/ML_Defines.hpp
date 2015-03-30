class ML_InterAct_Button : RscButton {
  colorText[] = {0.282, 0.282, 0.282, 1};
  colorDisabled[] = {0, 0, 0, 0.25};
  colorBackground[] = {0, 0, 0, 0};
  colorBackgroundDisabled[] = {0, 0, 0, 0};
  colorBackgroundActive[] = {0, 0, 0, 0};
  colorFocused[] = {0, 0, 0, 0};
  colorShadow[] = {0, 0, 0, 0};
  colorBorder[] = {0, 0, 0, 0};
  style = 2 + 0x00;
  shadow = 0;
  font = "SegoePrint";
  sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
};

class ML_RscEdit : RscEdit {
  colorBackground[] = {0, 0, 0, 1};
  colorText[] = {0.282, 0.282, 0.282, 1};
  shadow = 0;
  style = "0x00";
  font = "SegoePrint";
};

class ML_StructText : RscStructuredText {
  class Attributes {
    font = "Friz";
    align = "left";
    shadow = 0;
  };
  lineSpacing = 0.5;
  shadow = 0;
  size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
};

class ML_ControlsGroup : RscControlsGroup {
  class VScrollbar {
    arrowEmpty = "\ML_Images\GUI\Scroll_Arrow.paa";
    arrowFull = "\ML_Images\GUI\Scroll_ArrowActive.paa";
    border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
    thumb = "\ML_Images\GUI\thumb_ca.paa";
  };
  class HScrollbar {
    arrowEmpty = "\ML_Images\GUI\Scroll_Arrow.paa";
    arrowFull = "\ML_Images\GUI\Scroll_ArrowActive.paa";
    border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
    thumb = "\ML_Images\GUI\thumb_ca.paa";
  };
  class ScrollBar {
    width = 0;
    height = 0;
    scrollSpeed = 0.03;
    arrowEmpty = "\ML_Images\GUI\arrow.paa";
    arrowFull = "\ML_Images\GUI\arrow_active.paa";
    border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
    thumb = "\ML_Images\GUI\thumb_ca.paa";
    color[] = {1, 1, 1, 1};
  };
};

class ML_Button : RscButtonMenu {
  style = "0x02";
  class TextPos {
    left = 0;
    top = 0;
    right = 0;
    bottom = 0;
  };
  class Attributes {
    font = "SegoeUI";
    color = "#E5E5E5";
    align = "center";
    shadow = "false";
  };
  period = 1.2;
  periodFocus = 1.2;
  periodOver = 1.2;
  colorBackground[] = {0.729, 0.259, 0, 1};
  colorBackgroundFocused[] = {1, 0.353, 0, 1};
  colorBackground2[] = {0.75, 0.75, 0.75, 1};
  color[] = {1, 1, 1, 1};
  colorFocused[] = {0, 0, 0, 1};
  color2[] = {0, 0, 0, 1};
  colorText[] = {1, 1, 1, 1};
  colorDisabled[] = {1, 1, 1, 0.25};
  tooltipColorText[] = {1, 1, 1, 1};
  tooltipColorBox[] = {1, 1, 1, 1};
  tooltipColorShade[] = {0, 0, 0, 0.65};
};