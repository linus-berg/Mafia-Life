// ML_JsonParser.cpp : Defines the exported functions for the DLL application.
//

#include "stdafx.h"
#include <json.h>
#include <fstream>

std::string ReadValue(std::string input);

extern "C"{
	__declspec (dllexport) void __stdcall RVExtension(char *output, int outputSize, const char *function);
}

void __stdcall RVExtension(char *output, int outputSize, const char *function){
	std::string return_value;
	return_value = ReadValue(function);
	strncpy_s(output, outputSize, return_value.c_str(), _TRUNCATE);
}

std::string ReadValue(std::string input){
	Json::Value root;
	Json::Reader reader;
	std::ifstream ML_Config("ML_Config.json", std::ifstream::binary);
	
	//TODO: Parse multiple files for other configs, currently not needed.

	//Return error
	if (!(reader.parse(ML_Config, root, false))){
		return "Critical: Failed to parse JSON.\n" + reader.getFormattedErrorMessages();
	}

	const Json::Value key = root[input];

	//If the key is not null, we return it, else we return error.
	if (!(key.isNull())){
		return key.asString();
	}
	else{
		return "Error: No key found.";
	}
}