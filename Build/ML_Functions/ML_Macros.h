#define ML_LOG(MESSAGE) [__FILE__, __LINE__, ('LinLib Log: ' + MESSAGE)] call ML_fnc_Log;

//---Vendor Functions---
#define ML_STOCK(x) (x getVariable ["ML_Vendor_Items", []])
#define ML_VENDORLIST (ML_Server getVariable ["ML_Vendor_List", []])
#define ML_QUESTLIST (ML_Server getVariable ["ML_Quest_Npc_List", []])
#define ML_SIDE(x) (x getVariable ["ML_Vendor_Side", []])
#define ML_VENDOR(x) (format["ML_Vendor_%1", x])
//---

//---Encryption---
#define SHA256(INPUT) INPUT call ML_fnc_Sha256
//---

//---Keys---
#define KEY(INPUT) parseNumber("ML_Client" callExtension format['1:%1', INPUT])
//---


//---TLR---
#define ExecSQF(FILE) [] call compile preprocessFileLineNumbers FILE
#define ExecSQFwait(FILE) private["_handler"]; _handler = [] spawn (compile (preprocessFileLineNumbers FILE)); waitUntil{scriptDone _handler};
#define strM(x) ([x, ","] call ML_fnc_Int_ToString)
#define strN(x) ([x, ""] call ML_fnc_Int_ToString)
//---