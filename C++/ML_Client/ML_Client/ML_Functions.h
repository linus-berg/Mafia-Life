#include <Windows.h>
#include <cstring>
#include <Poco\NumberParser.h>
#include <json\json.h>
#include <fstream>
#include <regex>
#include <easylogging++.h>

class ML{
public:
  void CallExtension(char *output, const int &output_size, 
                     const char *function);
private:
  std::string ReadValue(std::string input);
  bool RegEXCheck(std::string input, std::string RegEx);
};