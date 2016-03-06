/*
  Author: Karel Moricky

  Description:
  Shake mission notification.
  When one is already shown, queue the new request and display it afterwards.
  Uses templates defined in CfgNotifications.

  Parameter(s):
  _this select 0 (Optional): STRING - template from CfgNotifications
  _this select 1 (Optional): ARRAY - arguments passed to the template

  Returns:
  BOOL
*/

if (time < 1) exitwith {};

params[
  ["_text", "", [""]],
  ["_args", [], [[]]]
];
private["_colour", "_size", "_type", "_image"];
_colour = _args select 0;
_size = _args select 1;
_type = _args select 2;
_image = "\A3\ui_f\data\map\markers\military\warning_ca.paa";
_text = format["<img image='%3' height='15'/> <t color='#%1' size=%4>%2</t>", _colour, _text, _image, _size];
_text parseText(_text);
switch (_type) do {
  case 1: {
    hintSilent _text;
  };
  case 2: {
    systemChat _text;
  };
};

[player, "Notification", _text] call BIS_fnc_createLogRecord;
true