
class house_classname {
	//needed for scripts purpose
	class doorLockingSystem {
		alwaysUnlockedDoors[] = {};
	}

	class config_1 {
		type = "civ"; //civ,med,mil,ind            More choice to come
		probability = 100; //between 1 to 100 : probability of usage if selected randomly by the program
		furnitures[] = {
			//_classname,_pos,_dir,interactable
			{'furniture_1',{0,0,0},0,false},
			{'furniture_2',{0,0,0},0,false},
			{'furniture_1',{0,0,0},0,false},
			{'furniture_4',{0,0,0},0,false},
			{'furniture_5',{0,0,0},0,false}
		}
		//loaded only in advanced detailed config
		advancedFurnitures[] = {
			//_classname,_pos,_dir,interactable
			{'furniture_1',{0,0,0},0,false},
			{'furniture_2',{0,0,0},0,false},
			{'furniture_1',{0,0,0},0,false},
			{'furniture_4',{0,0,0},0,false},
			{'furniture_5',{0,0,0},0,false}
		}
	}
}