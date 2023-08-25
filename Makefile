# Target
NAME = webserv

# Cmd & Options
CXX			= c++
# CXXFLAGS	= -fsanitize=address -Wall -Werror -Wextra -std=c++98 -g3 
CXXFLAGS	= -Wall -Werror -Wextra -std=c++98 -g3 
RM 			= rm
RMFLAGS		= -f
OUT_DIR		= objs
SRC_DIR		= srcs
FILE		= 	Client ClientManager \
				Server ServerManager \
				Config/ConfigParser Config/ConfigFunctions \
				Http/Handler/Handler Http/Handler/ErrorHandler Http/Handler/StaticHandler Http/Handler/DynamicHandler Http/Handler/DeleteHandler \
				Message/Message Message/Request \
				Event \
				Location \
				Http/Handler/HttpStatusCodes Http/HttpRequestManager \
				main
OBJECTS		= $(addprefix $(OUT_DIR)/, $(addsuffix .o, $(FILE)))

# Compile rules
$(OUT_DIR)/%.o : $(SRC_DIR)/%.cpp
	@mkdir -p $(dir $@)
	$(CXX) -c $(CXXFLAGS) -MJ $@.json $< -o $@

.PHONY	: all no clean fclean re

all		: $(NAME)

$(NAME)	: $(OBJECTS)
	$(CXX) $(CXXFLAGS) $(OBJECTS) -o $(NAME)
	@./test.sh

clean	:
	@$(RM) $(RMFLAGS) -r $(OUT_DIR)

fclean	: clean
	@$(RM) $(RMFLAGS) $(NAME)

re		:
	@make fclean
	@make all 
