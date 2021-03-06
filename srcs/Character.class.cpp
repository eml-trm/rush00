/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   Character.cpp                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: etermeau <etermeau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/06/20 14:32:27 by etermeau          #+#    #+#             */
/*   Updated: 2015/06/21 20:58:35 by bsautron         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "Character.class.hpp"
#include "AShip.class.hpp"
#include "PetitWeapon.class.hpp"

/*-------------------- Constructors ---------------------*/
Character::Character( int X, int Y ) : AShip("Player", X, Y, 1, 1, "^") {

	AWeapon			*petit = new PetitWeapon(X, Y);

	this->_weapon = petit;
	//std::cout << "Your Character Type: " << this->_type << "in position " << this->_X << "/" << this->_Y << " was created !" << std::endl;
	return;
}

/*-------------------- Destructors ---------------------*/
Character::~Character( void ) {

	//std::cout << "Your Character was destroyed !" << std::endl;
	return ;
}

