#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"

private ["_email", "_password", "_password_c", "_passed"];

_email = [_this, 0, "", [""]] call BIS_fnc_param;
_password = [_this, 1, "", [""]] call BIS_fnc_param;
_password_c = [_this, 2, "", [""]] call BIS_fnc_param;
_passed = 0;

_passed = parseNumber("ML_Client" callExtension format['2:%1', _email]);
if(_passed == 0)exitWith{systemChat "Your input is not a valid email address."; false};

if(_password != _password_c)exitWith{systemChat "Your passwords do not match"; false};

_passed = parseNumber("ML_Client" callExtension format['3:%1', _password]);
if(_passed == 0)exitWith{systemChat "Invalid password, it needs to contain six to fifteen characters, and one number."; false};

["ML_Network_Server_Data_Register", [_email, _password]] call ML_fnc_Network_ClientToServer;

true
