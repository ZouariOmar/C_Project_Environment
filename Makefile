# 'make'        build executable file 'app'
# 'make clean'  removes all .o and executable files

# Define the C compiler to use
CC = gcc

# Define the source file
SRC_DIR = src/main.c

# Define the output directory
OUTPUT_DIR = bin/debug

# Define the release directory
RELEASE_DIR = bin/release

# Choose the name of the executable
APP_NAME = app

# Full path to the output executable
APP = $(OUTPUT_DIR)/$(APP_NAME)

# app > run
app:
	@$(CC) $(SRC_DIR) -o $(APP)
	@echo Executing 'app' build complete! & pause
	@echo . & echo . & echo .

# run cmd option ::: make run <APP_NAME=app_name>
run: app
	@./$(APP)
	@echo . & echo . & echo .
	@echo Executing 'run: app' complete! & pause

# move option ::: make move <APP_NAME=app_name>
move:
	mv $(APP).exe $(RELEASE_DIR)
	@echo Moving complete! & pause

# clean option ::: make clean <APP_NAME=app_name>
clean:
	@cd $(OUTPUT_DIR) & del "$(APP_NAME).exe"
	@echo Cleanup complete! & pause

# cleanAll option ::: make cleanAll <APP_NAME=app_name>
cleanAll:
	@cd $(OUTPUT_DIR) & dir
	@del "$(OUTPUT_DIR)\*"
	@echo Cleanup complete! & pause