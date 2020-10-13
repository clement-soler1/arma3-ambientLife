#include "./macros.hpp"
/*
	Project : Arma 3 Ambient Life
	Addon : House Furniture
	File : fn_loadFurniture.sqf
	Author : Clément 'Hyronos' Soler
*/

_house = _this select 0;
_config = _this select 1;

_furnitures = getArray(_config >> "furnitures");
_probability = getNumber(_config >> "probability");

//CHeck for the probability

_pbTry = floor random 100;

if (_pbTry > _probability) exitWith {[_house]spawn A3AL_hf_fnc_chooseFurnitureConfig;};

//set up some var on the house
_house setVariable["A3AL_lockedHouse",false,true];
_house setVariable["A3AL_furnitures",[],true];
_house setVariable["A3AL_furnitureType",getText(_config >> "type"),true];



if (A3AL_advancedFurnitures) then {
	_furnitures append (getArray(_config >> "advancedFurnitures"));
};


//generating the furnitures
{

	//_correctedPosition = (getPosASL _house) vectorAdd (_x select 1);
	_distanceFromHouseCenter = [0,0] distance2D (_x select 1);
	_directionFromHouseCenter = _house getDir (_x select 1);
	_posAGL = _house getRelPos[_distanceFromHouseCenter,_directionFromHouseCenter];
	_correctedPosition = AGLToASL _posAGL;

	_furniture = createSimpleObject[(_x select 0),_correctedPosition];
	_furniture setDir((getDir _house) + (_x select 2));
	[_furniture,(_x select 1) select 2,getPos _furniture,"ROADWAY"]spawn BIS_fnc_setHeight;

	_tabFurniture = _house getVariable ["A3AL_furnitures",[]];
	_tabFurniture append _furniture;
	_house setVariable["A3AL_furnitures",_tabFurniture,true];

} forEach _furnitures;

[_house]spawn A3AL_hf_fnc_doorLockingSystem;
