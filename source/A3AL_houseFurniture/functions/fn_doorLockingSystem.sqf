#include "./macros.hpp"
/*
	Project : Arma 3 Ambient Life
	Addon : House Furniture
	File : fn_doorLockingSysteme.sqf
	Author : Clément 'Hyronos' Soler
*/

_house = _this select 0;

private _numberofdoors = getNumber(configFile >> "CfgVehicles" >> (typeOf _house) >> "numberOfDoors");
if(_numberofdoors == -1 || _numberofdoors == 0) exitWith {}; //No entry (Not a compatible building)
_unlockedDoors = getArray(missionConfigFile >> (typeOf _house) >> "doorLockingSystem" >> "alwaysUnlockedDoors");

for "_i" from 1 to _numberOfDoors do {
	_curDoor = format ["door_%1", _i];
	if (!(_curDoor in _unlockedDoors)) {
    	_house animate[format["door_%1_rot",_i],0];
    	_house setVariable[format["bis_disabled_Door_%1",_i],1,true];
    };
};
