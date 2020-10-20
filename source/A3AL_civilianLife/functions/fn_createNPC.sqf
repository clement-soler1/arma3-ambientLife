#include "./macros.hpp"
/*
	Project : Arma 3 Ambient Life
	Addon : Civilian Life
	File : fn_createNPC.sqf
	Author : Clément 'Hyronos' Soler
*/

_house = _this select 0;
_type = _this select 1;

_groupNPC = A3AL_NPC_MAIN_GROUP;
if (_type isEqualTo "civ") then { _groupNPC = A3AL_NPC_MAIN_GROUP;};

_npc = "C_man_1" createUnit [[0,0,0], _groupNPC];

_house setVariable["A3AL_cl_npc",_npc,true];
_house setVariable["A3AL_ownerName",(name _npc),true];
_npc setPos (getPos _house);

_npc setVariable["A3AL_aliveNPC",true,true];
[_npc]spawn A3AL_cl_setupEVH;




//_outfit = setUnitLoadout