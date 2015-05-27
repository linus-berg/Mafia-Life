#define ELPP_DEFAULT_LOG_FILE "MafiaLife\\Logs\\MafiaLife.log"

#include "ML_Functions.h"
#include <cstring>
#include <Poco\NumberParser.h>
#include <json\json.h>
#include <fstream>
#include <regex>
#include <easylogging++.h>

ELPP_INIT_EASYLOGGINGPP(
    new el::base::Storage(el::LogBuilderPtr(new el::base::DefaultLogBuilder()))
)

void ML::CallExtension(char *output, const int &output_size, 
                       const char *function) {
  /* Supplied string from Arma */
  const std::string params(function); 
  /* Function to call */
  int Fnc_ID; 
  /* Default return */
  std::string returnArma("0"); 

  if ( Poco::NumberParser::tryParse(params.substr(0, 1), Fnc_ID) ) {
    /* Split string at first found ':'. */
    const std::string::size_type found(params.find(":"));
    const std::string param(params.substr(found + 1)); 
    /* Initialize RegEx variable. */
    std::string RegEx; 

    /* If function is a RegEx Check (2 or 3). */
    if ( Fnc_ID == 2 || Fnc_ID == 3 ) {
      if ( Fnc_ID == 2 ) {
        /* E-Mail RegEx string. */
        RegEx = "^[_a-z0-9-]+(.[_a-z0-9-]+)*@[a-z0-9-]+(.[a-z0-9-]+)\
                 *(.[a-z]{2,4})$";
      } else {
        /* Password RegEx string. */
        RegEx = "(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{6,15})$";
      }
      /* Set it to the RegEx checker. */
      Fnc_ID = 2; 
    }

    switch (Fnc_ID) {
      /* Reads keybinds in JSON format from the Mafia Life config file. */
      case 1: {
        returnArma = ML::ReadValue(param);
        LOG(INFO) << param << ": " << returnArma;
        break;
      }

      /* 
        Returns true or false if 
        e-mail or password is valid according to the REGEX check.
      */
      case 2: {   
        if ( ML::RegEXCheck(param, RegEx) ) {
          returnArma = "1";
        } else {
          returnArma = "0";
        }
        break;
      }

      /*
        Logs Mafia Life variables and information to MafiaLife.log.
        (always returns 1)
      */
      case 0: {
        LOG(INFO) << param;
        returnArma = "1";
        break;
      }

      /* If no real function ID was given. */
      default: {
        returnArma = "ERROR: No function ID given.";
        break;
      }
    }
    strncpy_s(output, output_size, returnArma.c_str(), _TRUNCATE);
  }
  return;
}

/* Check if input matches RegEx string. */
bool ML::RegEXCheck(std::string input, std::string RegEx) {
  return std::regex_match(input, std::regex(RegEx));
}

/* Read value from Json file. */
std::string ML::ReadValue(std::string input) {
  Json::Value root;
  Json::Reader reader;
  std::ifstream ML_Config("ML_Config.json", std::ifstream::binary);

  /* TODO: Parse multiple files for other configs, currently not needed. */

  /* Return error */
  if ( !reader.parse(ML_Config, root, false) ) {
    return "Critical: Failed to parse JSON.\n" + 
            reader.getFormattedErrorMessages();
  }

  const Json::Value key = root[input];

  /* If the key is not null, we return it, else we return error. */
  if ( !key.isNull() ) {
    return key.asString();
  } else {
    return "Error: No key found.";
  }
}