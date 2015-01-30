#define ELPP_DEFAULT_LOG_FILE "MafiaLife\\Logs\\MafiaLife.log"

#include "ML_Functions.h"
#include <string>
#include <iostream>
#include <Poco\NumberParser.h>
#include <json\json.h>
#include <fstream>
#include <regex>
#include <easylogging++.h>

ELPP_INIT_EASYLOGGINGPP(new el::base::Storage(el::LogBuilderPtr(new el::base::DefaultLogBuilder())))

void ML::CallExtension(char *output, const int &output_size, const char *function){
	const std::string params(function);
	int Fnc_ID;
	if (Poco::NumberParser::tryParse(params.substr(0, 1), Fnc_ID)){
		const std::string::size_type found(params.find(":"));
		const std::string param(params.substr(found + 1));
		std::string returnArma("0");
		switch (Fnc_ID){
			case 1:{ //Json - Read value
				returnArma = ML::ReadValue(param);
				LOG(INFO) << param << ": " << returnArma;
				break;
			}
			case 2:{ //Email - Validate
				if (ML::RegEXCheck(param, "\^[_a-z0-9-]+(.[_a-z0-9-]+)*@[a-z0-9-]+(.[a-z0-9-]+)*(.[a-z]{2,4})\$")){
					returnArma = "1";
				}else{
					returnArma = "0";
				}
				break;
			}
			case 3:{ //Password - Validate
				if (ML::RegEXCheck(param, "(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{6,15})$")){
					returnArma = "1";
				}else{
					returnArma = "0";
				}
				break;
			}
			case 4:{ //Password - Validate
				LOG(INFO) << param;
				returnArma = "1";
				break;
			}
			default:{
				returnArma = "ERROR: No function ID given.";
				break;
			}
		}
		strncpy_s(output, output_size, returnArma.c_str(), _TRUNCATE);
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