# -----------------------------------------------
#* @team:   NONE
#* @author: @ZouariOmar
#* @IDE:    @vsc
#* @update: mm/dd/yy
#? @file:   makefile
# -----------------------------------------------

#* Define the C compiler to use
CC = gcc

#* Specify any additional flags for the C compiler (for SDL1.2) :: add it to "line 31" and "line 39"
CFLAGS = -Wall -Wextra -std=c99 -lm -lSDL -lSDL_image -lSDL_gfx -lSDL_ttf -lSDL_mixer -g

#* Define the source files
SRC_DIR = src/main.c

#* Define the output directory
OUT_DIR = bin/debug

#* Define the objects directory
OBJ_DIR = bin/obj

#* Choose the name of the executable
NAME = app

#* Full path to the output executable
APP = $(OUT_DIR)/$(NAME)

#? 'make' build executable file 'app'
app: main.o
	@echo
	@$(CC) $(OBJ_DIR)/main.o -o $(APP)
	@./$(APP)
	@echo
	@echo --- Executing 'app: main.o' complete! ---
	@echo -n "Press Enter to continue..." && read -r x

#? main.o > app
main.o:
	@$(CC) -c $(SRC_DIR) -o $(OBJ_DIR)/main.o
	@echo --- Executing 'main.o' build complete! ---
	@echo -n "Press Enter to continue..." && read -r x

#? move option :: make move <NAME=app_name>
move:
	@echo --- Moving "$(NAME)" from ${OUT_DIR} to "bin/release" ---
	@cp $(APP) "bin/release"
	@echo --- Moving complete! ---
	@echo -n "Press Enter to continue..." && read -r x

#? clean option :: make clean <NAME=app_name> <OUT_DIR=path>
clean:
	@echo --- Deleting "$(NAME)" from "$(OUT_DIR)" ---
	@rm -f $(APP)
	@echo --- Cleanup complete! ---
	@echo -n "Press Enter to continue..." && read -r x

#? cleanDir option ::: make cleanDir <OUT_DIR=path>
cleanDir:
	@echo --- Deleting all files in "${OUT_DIR}" ---
	@rm -rf "$(OUT_DIR)"
	@echo --- All_Cleanup complete! ---
	@echo -n "Press Enter to continue..." && read -r x