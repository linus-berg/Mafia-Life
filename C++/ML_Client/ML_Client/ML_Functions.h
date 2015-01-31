#include <iostream>
#include <vector>

class ML{
public:
	void CallExtension(char *output, const int &output_size, const char *function);
private:
	std::string ReadValue(std::string input);
	std::string ML_Error(int Error);
	bool RegEXCheck(std::string input, std::string RegEx);
};