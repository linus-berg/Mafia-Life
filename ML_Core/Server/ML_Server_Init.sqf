#define ExecSQF(FILE) [] call compile preprocessFileLineNumbers FILE
#define ExecSQFwait(FILE) private["_handler"]; _handler = [] spawn (compile (preprocessFileLineNumbers FILE)); waitUntil{scriptDone _handler};

