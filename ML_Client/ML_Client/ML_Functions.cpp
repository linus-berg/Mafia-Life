#include "ML_Functions.h"
#include <string>
#include <iostream>
#include <Poco\NumberParser.h>
#include <json.h>
#include <fstream>
#include <regex>

void ML::CallExtension(char *output, const int &output_size, const char *function){
	const std::string params(function);
	int Fnc_ID;
	if (Poco::NumberParser::tryParse(params.substr(0, 1), Fnc_ID)){
		const std::string::size_type found = params.find(":");
		const std::string param = params.substr(found + 1);
		switch (Fnc_ID){
			case 1:{
				strncpy_s(output, output_size, ReadValue(param).c_str(), _TRUNCATE);
			}
			case 2:{
				std::string Valid;

				if (RegEXCheck(param, "\\^[a-zA-Z0-9][a-zA-Z0-9\\_.]+@[a-zA-Z0-9_]+.[a-zA-Z0-9_.]+\\$")){
					Valid = "1";
				}
				else{
					Valid = "0";
				}

				strncpy_s(output, output_size, Valid.c_str(), _TRUNCATE);
			}
			case 3:{
				std::string Valid;

				if (RegEXCheck(param, "(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{6,15})$")){
					Valid = "1";
				}
				else{
					Valid = "0";
				}

				strncpy_s(output, output_size, Valid.c_str(), _TRUNCATE);
			}
		}
	}
	return;
}

//Check if input matches RegEx string.
bool ML::RegEXCheck(std::string input, std::string RegEx){
	return (std::regex_match(input, std::regex(RegEx)));
}

//Read value from Json file.
std::string ML::ReadValue(std::string input){
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

//Recieve any thrown errors.
std::string ML::ML_Error(int Error){
	LPSTR messageBuffer = NULL;

	size_t size = FormatMessageA(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_IGNORE_INSERTS,
		NULL, Error, MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT), (LPSTR)&messageBuffer, 0, NULL);

	std::string message(messageBuffer, size);
	LocalFree(messageBuffer);

	return message;
}