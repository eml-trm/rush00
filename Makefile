# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bsautron <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/16 11:13:38 by bsautron          #+#    #+#              #
#    Updated: 2015/06/21 22:12:48 by bsautron         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = clang++
NAME = ft_retro
CFLAGS = -Wextra -Wall -Werror

SRC_MAIN = main.cpp

SRC_CLASS = Identity.class.cpp \
			AShip.class.cpp \
			Character.class.cpp \
			Enemy.class.cpp \
			AWeapon.class.cpp \
			LittleMissile.class.cpp \
			Missile.class.cpp \
			PetitWeapon.class.cpp \
			Game.class.cpp \
			PetitMechant.class.cpp \
			GrosMechant.class.cpp \
			GrosMissile.class.cpp \
			Boss.class.cpp \
			BossWeapon.class.cpp \
			BossMissile.class.cpp \
			GrosWeapon.class.cpp \
			MoyenMechant.class.cpp \
			MoyenMissile.class.cpp \
			MoyenWeapon.class.cpp





SRC = $(SRC_MAIN)
SRC += $(addprefix srcs/, $(SRC_CLASS))

HEADER = includes/ft_retro.hpp \
		 includes/Identity.class.hpp \
		 includes/AShip.class.hpp \
		 includes/Character.class.hpp \
		 includes/Enemy.class.hpp \
		 includes/Missile.class.hpp \
		 includes/LittleMissile.class.hpp \
		 includes/AWeapon.class.hpp \
		 includes/PetitWeapon.class.hpp \
		 includes/Boss.class.hpp \
		 includes/BossWeapon.class.hpp \
		 includes/BossMissile.class.hpp \
		 includes/Game.class.hpp \
		 includes/PetitMechant.class.hpp \
		 includes/GrosMechant.class.hpp \
		 includes/MoyenMechant.class.hpp \
		 includes/GrosMissile.class.hpp \
		 includes/MoyenMissile.class.hpp \
		 includes/GrosWeapon.class.hpp \
		 includes/MoyenWeapon.class.hpp

DIR_HEADERS = -I includes/

OBJ = $(SRC:%.cpp=.obj/%.o)

OBJ_DIR = .obj/ \
		  .obj/srcs/

.PHONY: all libs clean fclean re

all: dor $(NAME)

$(NAME): $(OBJ)
	@$(CC) -o $@ $^ -lncurses
	@echo "\033[32mReady!\033[0m"

dor:
	@mkdir $(OBJ_DIR) 2> /dev/null || env -i

.obj/%.o: %.cpp $(HEADER)
	@echo "\033[33m 	$<"
	@$(CC) $(CFLAGS) -o $@ $(DIR_HEADERS) -c $<

clean:
	@rm -f $(OBJ)
	@rmdir $(OBJ_DIR) 2> /dev/null || env -i

fclean: clean
	@rm -f $(NAME)

re: fclean all
