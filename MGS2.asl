state ("mgs2_sse")
{
	uint IGT: "mgs2_sse.exe", 0xD8AEF8;
	string10 ROOM: "mgs2_sse.exe", 0x601F34, 0x2C;

	// 2 bytes need to be byte2, 4 can be int
	int OLGA_ST: "mgs2_sse.exe", 0xAD4F6C, 0x0, 0x1E0, 0x44, 0x1F8, 0x13C;
	byte2 FATM_HP: "mgs2_sse.exe", 0xB6DEC4, 0x24E;
	int FATM_ST: "mgs2_sse.exe", 0x664E78, 0x88;
	byte2 HARR_HP: "mgs2_sse.exe", 0x619BB0, 0x5C;
}

startup
{
	settings.Add ("tanker", true, "Tanker (only choose one of the below)");
	settings.Add ("tanker_split_boss", false, "Split on bosses", "tanker");
	settings.Add ("tanker_split_rooms", true, "Split on every room change", "tanker");
	settings.Add ("tanker_split_rooms_specific", true, "Split on specific room change", "tanker");

	settings.Add ("tanker_w00a", true, "Alt Deck", "tanker_split_rooms_specific");
	settings.Add ("tanker_w00b", true, "Navigational Deck (Olga Fight)", "tanker_split_rooms_specific");
	settings.Add ("tanker_w00c", true, "Navigational Deck (After Olga Fight)", "tanker_split_rooms_specific");
	settings.Add ("tanker_w01a", true, "Deck A, Crew's quarters", "tanker_split_rooms_specific");
	settings.Add ("tanker_w01b", true, "Deck A, crew's quarters,starboard", "tanker_split_rooms_specific");
	settings.Add ("tanker_w01c", true, "Deck C, crew's quarters", "tanker_split_rooms_specific");
	settings.Add ("tanker_w01d", true, "Deck D, crew's quarters", "tanker_split_rooms_specific");
	settings.Add ("tanker_w01e", true, "Deck E, the bridge", "tanker_split_rooms_specific");
	settings.Add ("tanker_w01f", true, "Deck A, crew's lounge", "tanker_split_rooms_specific");
	settings.Add ("tanker_w02a", true, "Engine Room", "tanker_split_rooms_specific");
	settings.Add ("tanker_w03a", true, "Deck-2, port", "tanker_split_rooms_specific");
	settings.Add ("tanker_w03b", true, "Deck-2, starboard", "tanker_split_rooms_specific");
	settings.Add ("tanker_w04a", true, "Hold N. 1", "tanker_split_rooms_specific");
	settings.Add ("tanker_w04b", true, "Hold N. 2", "tanker_split_rooms_specific");
	settings.Add ("tanker_w04c", true, "Hold N. 3", "tanker_split_rooms_specific");

	settings.Add ("plant", true, "Plant (only choose one of the below)");
	settings.Add ("plant_split_boss", false, "Split on bosses", "plant");
	settings.Add ("plant_split_rooms", true, "Split on every room change", "plant");
	settings.Add ("plant_split_rooms_specific", true, "Split on specific room change", "plant");

	settings.Add ("plant_museum", true, "Plant Beggining Message", "plant_split_rooms_specific");
	settings.Add ("plant_w11a", true, "Strut A Sea Dock", "plant_split_rooms_specific");
	settings.Add ("plant_w11b", true, "Strut A Sea Dock (Bomb disposal)", "plant_split_rooms_specific");
	settings.Add ("plant_w11c", true, "Strut A Sea Dock (Fortune Fight)", "plant_split_rooms_specific");
	settings.Add ("plant_w12a", true, "Strut A Roof", "plant_split_rooms_specific");
	settings.Add ("plant_w12c", true, "Strut A Roof (Last Bomb)", "plant_split_rooms_specific");
	settings.Add ("plant_W12b", true, "Strut A Pump room", "plant_split_rooms_specific");
	settings.Add ("plant_W13a", true, "AB Connecting bridge", "plant_split_rooms_specific");
	settings.Add ("plant_W13b", true, "AB Connecting bridge (With Sensor B)", "plant_split_rooms_specific");
	settings.Add ("plant_W14a", true, "Strut B Transformer Room", "plant_split_rooms_specific");
	settings.Add ("plant_w15a", true, "BC Connecting bridge", "plant_split_rooms_specific");
	settings.Add ("plant_w15b", true, "BC Connecting bridge (After Stillman cutscene)", "plant_split_rooms_specific");
	settings.Add ("plant_w16a", true, "Strut C Dining Hall", "plant_split_rooms_specific");
	settings.Add ("plant_w16b", true, "Strut C Dining Hall (after cutscene)", "plant_split_rooms_specific");
	settings.Add ("plant_w17a", true, "CD Connecting bridge", "plant_split_rooms_specific");
	settings.Add ("plant_w18a", true, "Strut D Sediment Pool", "plant_split_rooms_specific");
	settings.Add ("plant_w19a", true, "DE Connecting bridge", "plant_split_rooms_specific");
	settings.Add ("plant_w20a", true, "Strut E Parcel room, 1F", "plant_split_rooms_specific");
	settings.Add ("plant_w20b", true, "Strut E Heliport", "plant_split_rooms_specific");
	settings.Add ("plant_w20c", true, "Strut E Heliport (last bomb)", "plant_split_rooms_specific");
	settings.Add ("plant_w20d", true, "Strut E Heliport (After ninja cutscene)", "plant_split_rooms_specific");
	settings.Add ("plant_w21a", true, "EF Connecting bridge", "plant_split_rooms_specific");
	settings.Add ("plant_w22a", true, "Strut F Warehouse", "plant_split_rooms_specific");
	settings.Add ("plant_w23b", true, "FA Connecting bridge", "plant_split_rooms_specific");
	settings.Add ("plant_w24a", true, "Shell 1 Core", "plant_split_rooms_specific");
	settings.Add ("plant_w24b", true, "Shell 1 Core B1", "plant_split_rooms_specific");
	settings.Add ("plant_w24c", true, "Shell 1 Core B2,Computer's Room", "plant_split_rooms_specific");
	settings.Add ("plant_w25a", true, "Shell 1 B1 Hall,Hostages Room", "plant_split_rooms_specific");
	settings.Add ("plant_w25b", true, "Shell 1,2 Connecting Bridge", "plant_split_rooms_specific");
	settings.Add ("plant_w25b_2", true, "Shell 1,2 Connecting Bridge (Destroyed)", "plant_split_rooms_specific");
	settings.Add ("plant_w25c", true, "Strut L perimeter", "plant_split_rooms_specific");
	settings.Add ("plant_w25d", true, "KL Connecting Bridge ", "plant_split_rooms_specific");
	settings.Add ("plant_w28a", true, "Strut L Sewage Treatment Facility", "plant_split_rooms_specific");
	settings.Add ("plant_w31a", true, "Shell 2 Core,1F Air Purification Room", "plant_split_rooms_specific");
	settings.Add ("plant_webdemo", true, "Website Cutscene", "plant_split_rooms_specific");
	settings.Add ("plant_w31b", true, "Shell 2 Core,B1 Filtration Chamber NO1", "plant_split_rooms_specific");
	settings.Add ("plant_w31c", true, "Shell 2 Core,B1 Filtration Chamber NO2 (Vamp Fight)", "plant_split_rooms_specific");
	settings.Add ("plant_w31d", true, "Shell 2 Core,1F Air Purification Room (w/emma)", "plant_split_rooms_specific");
	settings.Add ("plant_w32a", true, "Strut L Oil Fence", "plant_split_rooms_specific");
	settings.Add ("plant_w32b", true, "Strut L Oil Fence (Vamp Fight)", "plant_split_rooms_specific");
	settings.Add ("plant_w41a", true, "Arsenal Gear-Stomach ", "plant_split_rooms_specific");
	settings.Add ("plant_w42a", true, "Arsenal Gear-Jujenum", "plant_split_rooms_specific");
	settings.Add ("plant_w43a", true, "Arsenal Gear-Ascending Colon", "plant_split_rooms_specific");
	settings.Add ("plant_w44a", true, "Arsenal Gear-Ileum", "plant_split_rooms_specific");
	settings.Add ("plant_w45a", true, "Arsenal Gear-Sigmoid Colon", "plant_split_rooms_specific");
	settings.Add ("plant_w46a", true, "Arsenal Gear-Rectum", "plant_split_rooms_specific");
	settings.Add ("plant_w51a", true, "Arsenal Gear (After Ray Battle)", "plant_split_rooms_specific");
	settings.Add ("plant_w61a", true, "Federal Hall", "plant_split_rooms_specific");
}

init
{
	vars.isSplitting = false;

	vars.isBoss = false;
	vars.isRoom = false;

	vars.menus = new string[] {
		"select",
		"n_title",
		"mselect",
		"tales"
	};

	vars.tankerBosses = new string[] {
		"w00b"
	};

	vars.tankerRooms = new string[] {
		"w00a",
		"w00b",
		"w00c",
		"w01a",
		"w01b",
		"w01c",
		"w01d",
		"w01e",
		"w01f",
		"w02a",
		"w03a",
		"w03b",
		"w04a",
		"w04b",
		"w04c"
	};

	vars.tankerCutscenes = new string[] {
		"d00t",
		"d01t",
		"d04t",
		"d05t",
		"d10t",
		"d11t",
		"d12t",
		"d12t3",
		"d12t4",
		"d13t",
		"d14t"
	};

	vars.plantBosses = new string[] {
		// Insert plant boss rooms here please
	};

	vars.plantRooms = new string[] {
		"museum",
		"w11a",
		"w11b",
		"w11c",
		"w12a",
		"w12c",
		"w12b",
		"w13a",
		"w13b",
		"w14a",
		"w15a",
		"w15b",
		"w16a",
		"w16b",
		"w17a",
		"w18a",
		"w19a",
		"w20a",
		"w20b",
		"w20c",
		"w20d",
		"w21a",
		"w22a",
		"w23b",
		"w24a",
		"w24b",
		"w24d",
		"w24c",
		"w25a",
		"w25b",
		"w25c",
		"w25d",
		"w28a",
		"w31a",
		"webdemo",
		"w31b",
		"w31c",
		"w31d",
		"w32a",
		"w32b",
		"w41a",
		"w42a",
		"w43a",
		"w44a",
		"w45a",
		"w46a",
		"w51a",
		"w61a"
	};

	vars.plantCutscenes = new string[] {
		"d001p01",
		"d001p02",
		"d005p01",
		"d005p03",
		"d010p01",
		"d012p01",
		"d014p01",
		"d021p01",
		"d036p03",
		"d036p05",
		"d045p01",
		"d046p01",
		"d053p01",
		"d055p01",
		"d063p01",
		"d065p02",
		"d070p01",
		"d070p09",
		"d070px9",
		"d078p01",
		"d080p01",
		"d080p06",
		"d080p07",
		"d080p08",
		"d082p01"
	};
}

start
{
	if (current.IGT != 0)
	{
		return true;
	}
}

exit
{
	timer.IsGameTimePaused = true;
}

split
{
	bool enableTanker = settings["tanker"];
	bool enableTankerSplitBoss = settings["tanker_split_boss"];
	bool enableTankerSplitRooms = settings["tanker_split_rooms"];
	bool enableTankerSplitSpecific = settings["tanker_split_rooms_specific"];

	bool enablePlant = settings["plant"];
	bool enablePlantSplitBoss = settings["plant_split_boss"];
	bool enablePlantSplitRooms = settings["plant_split_rooms"];

	string room = current.ROOM;
	string oldRoom = old.ROOM;

	// Needed for linq
	string[] menu = vars.menus;
	string[] tanker = vars.tankerRooms;
	string[] tankerBosses = vars.tankerBosses;
	string[] tankerCutscenes = vars.tankerCutscenes;

	string[] plant = vars.plantRooms;
	string[] plantBosses = vars.plantBosses;

	// print(settings["tanker_split_rooms_alt_deck"].ToString());

	if (enableTanker)
	{
		if (enableTankerSplitBoss && tankerBosses.Any(room.Contains))
		{
			if (current.OLGA_ST > 1) 
			{
				print("OLGA IS HEALTHY");
				vars.isBoss = true;
			}

			if (vars.isBoss && current.OLGA_ST == 0)
			{
				print("OLGA IS DEAD");
				vars.isBoss = false;
				vars.isSplitting = true;
			}
		}
		
		if (enableTankerSplitRooms && tanker.Any(room.Contains))
		{
			if (room != oldRoom && !tankerCutscenes.Any(oldRoom.Contains)) {
				vars.isSplitting = true;
			}
		} 
		else if (enableTankerSplitSpecific) 
		{
			if (room != oldRoom && !tankerCutscenes.Any(oldRoom.Contains)) {
				if (settings["tanker_w00a"] && room == "w00a") vars.isRoom = true;
				if (settings["tanker_w00b"] && room == "w00b") vars.isRoom = true;
				if (settings["tanker_w00c"] && room == "w00c") vars.isRoom = true;
				if (settings["tanker_w01a"] && room == "w01a") vars.isRoom = true;
				if (settings["tanker_w01b"] && room == "w01b") vars.isRoom = true;
				if (settings["tanker_w01c"] && room == "w01c") vars.isRoom = true;
				if (settings["tanker_w01d"] && room == "w01d") vars.isRoom = true;
				if (settings["tanker_w01e"] && room == "w01e") vars.isRoom = true;
				if (settings["tanker_w01f"] && room == "w01f") vars.isRoom = true;
				if (settings["tanker_w02a"] && room == "w02a") vars.isRoom = true;
				if (settings["tanker_w03a"] && room == "w03a") vars.isRoom = true;
				if (settings["tanker_w03b"] && room == "w03b") vars.isRoom = true;
				if (settings["tanker_w04a"] && room == "w04a") vars.isRoom = true;
				if (settings["tanker_w04b"] && room == "w04b") vars.isRoom = true;
				if (settings["tanker_w04c"] && room == "w04c") vars.isRoom = true;
			}

			if (room != old.ROOM && vars.isRoom) {
				vars.isRoom = false;
				vars.isSplitting = true;
			}
		}
	}

	if (enablePlant)
	{
		if (enablePlantSplitBoss && plant.Any(room.Contains)) 
		{
			// Could need a safety check for room
			if (current.FATM_HP > 1) 
			{
				vars.isBoss = true;
			} 
			else if (current.HARR_HP > 1)
			{
				vars.isBoss = true;
			}

			if (vars.isBoss && current.FATM_HP == 0)
			{
				vars.isBoss = false;
				vars.isSplitting = true;
			}
			else if (vars.isBoss && current.FATM_ST == 0)
			{
				vars.isBoss = false;
				vars.isSplitting = true;
			}
			else if (vars.isBoss && current.HARR_HP == 0)
			{
				vars.isBoss = false;
				vars.isSplitting = true;
			}
		}
		else if (enablePlantSplitRooms && plant.Any(room.Contains))
		{
			if (room != old.ROOM) {
				if (settings["tanker_split_w00a"] && room == "w00a") vars.isSplitting = true;
			}
		}
	}

	if (vars.isSplitting) 
	{
		print("Split on: " + current.ROOM);
		vars.isSplitting = false;
		return true;
	}
}

isLoading
{
	return false;
}

gameTime
{
	return TimeSpan.FromMilliseconds ((current.IGT) * 1000 / 60);
}