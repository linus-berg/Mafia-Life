#include "\ML_Core\UI\GUI.h"
private["_emporium", "_emporiumDialog"];

_emporiumDialog = findDisplay IDD_EMPORIUM;
if (isNull _emporiumDialog) exitWith {objNull};

_emporium = player getVariable "ML_CurrentEmporium";
if (isNull _emporium) exitWith {objNull};

_emporium