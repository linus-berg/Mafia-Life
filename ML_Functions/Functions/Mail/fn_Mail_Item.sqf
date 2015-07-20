#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"
disableSerialization;
params[
  ["_ctrl", controlNull, [controlNull]],
  ["_index", 0, [0]]
];

if (_index in ML_Mail_ItemsToSend) exitWith {
  ML_Mail_ItemsToSend = ML_Mail_ItemsToSend - [_index];
  _ctrl lbSetColor [_index, [1, 1, 1, 1]];
  return true
};

if ((count ML_Mail_ItemsToSend) >= 4) exitWith {
  systemChat "You can only send 4 items";
  return false
};

ML_Mail_ItemsToSend pushBack _index;
_ctrl lbSetTooltip [_index, "Double click to remove item."];
_ctrl lbSetColor [_index, [0.204, 0.824, 0, 1]];

return true