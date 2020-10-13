#include "./macros.hpp"
/*
	Project : Arma 3 Ambient Life
	Addon : House Furniture
	File : fn_chooseFurnitureConfig.sqf
	Author : Clément 'Hyronos' Soler
*/

_house = _this select 0;

_cnameHouse = typeOf _house;

_configs = "_x in ['doorLockingSystem']" configClasses (missionConfigFile >> _cnameHouse);

_configSelected = (missionConfigFile >> "A3AL_houseConfig" >> _cnameHouse >> (selectRandom _configs));

[_house,_configSelected]call A3AL_hf_fnc_loadFurniture;