#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"
disableSerialization;
params[
  ['_uid', '', ['']],
  ['_subject', '', ['']],
  ['_content', '', ['']],
  ['_coins', 0, [0]]
];
if (_uid == "") exitWith {
  systemChat "No recipients given";
};
if (_uid == (getPlayerUID player)) exitWith {
  systemChat "You can not send mail to yourself";
};
if (_subject == "") then {
  _subject = "No subject";
};
//If UID does not exist in DB then abort bla bla.
/*_uidCheck = '';
["ML_Network_Server_Client_Exists", _uid] call ML_fnc_Network_ClientToServer;
waitUntil {
  _uidCheck != ''
};*/
private["_ui", "_cod", "_sender", "_inv_coins", "_items"];
_ui = (uiNamespace getVariable ["ML_Mail_Dialog", nil]);
_list = _ui displayCtrl IDC_MAILBOX_ITEMLIST;
_cod = cbChecked(_ui displayCtrl IDC_MAILBOX_COD);
_sender = format["%1:%2", name player, getPlayerUID player];
_inv_coins = [player] call ML_fnc_Client_GetCoins;
_items = [];
if (_inv_coins < _coins+30) exitWith {
  systemChat format["Not enough coins to send: %1 (including postage fee of 30 coins).", strM(_coins)];
};
[player, -(_coins+30)] call ML_fnc_Client_SetCoins;
if (_cod) then {
  _cod = "Y";
} else {
  _cod = "N";
};
{
  _items pushBack (_list lbData _x);
  [player, (_list lbData _x), 1] call ML_fnc_Inventory_RemoveItem;
} forEach ML_Mail_ItemsToSend;
ML_Mail_ItemsToSend = [];
call ML_fnc_Mail_LoadItems;
["ML_Network_Server_Data_SendMail", [[_UID], _sender, _subject, _content, _items, _coins, _cod]] call ML_fnc_Network_ClientToServer;