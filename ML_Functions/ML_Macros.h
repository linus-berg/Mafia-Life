#define ML_LOG(MESSAGE) [__FILE__, __LINE__, ('LinLib Log: ' + MESSAGE)] call ML_fnc_Log;

//---Emporium Functions---
#define ML_STOCK(x) (x getVariable ["ML_Emporium_Items", []])
#define ML_BOXSPAWN(x) objectFromNetId(x getVariable ["ML_Emporium_Box", ""])
#define ML_VEHICLESPAWN(x) objectFromNetId(x getVariable ["ML_Emporium_Vehicle", ""])
#define ML_EMPORIUMLIST (ML_Server getVariable ["ML_Emporium_List", []])
#define ML_QUESTLIST (ML_Server getVariable ["ML_Quest_Npc_List", []])
#define ML_SIDE(x) (x getVariable ["ML_Emporium_Side", []])
//---

//---Encryption---
#define SHA256(INPUT) INPUT call ML_fnc_Sha256
//---

//---Keys---
#define KEY(INPUT) parseNumber("ML_JsonParser" callExtension INPUT)
//---


//---TLR---
#define ExecSQF(FILE) [] call compile preprocessFileLineNumbers FILE
#define ExecSQFwait(FILE) private["_handler"]; _handler = [] spawn (compile (preprocessFileLineNumbers FILE)); waitUntil{scriptDone _handler};
#define strM(x) ([x, ","] call ML_fnc_Int_ToString)
#define strN(x) ([x, ""] call ML_fnc_Int_ToString)
//---