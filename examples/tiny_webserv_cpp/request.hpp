#pragma once

# include <vector>
# include <map>

struct Request
{
	bool								is_static;
	std::map<std::string, std::string>	headers;
	// Method								_method;
	std::string							method;
	std::string							file_name;
	off_t								file_size;
	std::string							cgi_args;
	unsigned int						major_version;
	unsigned int						minor_version;
};