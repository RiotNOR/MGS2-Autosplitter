state ("mgs2_sse")
{
	uint IGT: "mgs2_sse.exe", 0xD8AEF8;
	string10 ROOM: "mgs2_sse.exe", 0x601F34, 0x2C;

	// 2 bytes need to be byte2, 4 can be int
	int OLGA_ST: "mgs2_sse.exe", 0xAD4F6C, 0x0, 0x1E0, 0x44, 0x1F8, 0x13C;

	byte2 FATM_HP: "mgs2_sse.exe", 0xB6DEC4, 0x24E;
	int FATM_ST: "mgs2_sse.exe", 0x664E78, 0x88;

	byte2 HARR_HP: "mgs2_sse.exe", 0x619BB0, 0x5C;

	byte2 VAMP_ST: "mgs2_sse.exe", 0x664EA0, 0x15A;
	byte2 VAMP_HP: "mgs2_sse.exe", 0x664EA0, 0x158;

	byte SOLI_HP: "mgs2_sse.exe", 0x664E7C, 0xB8;
	byte SOLI_ST: "mgs2_sse.exe", 0x664E78, 0xC8;

	byte VAMP2_HP: "mgs2_sse.exe", 0xB6DECC, 0x23E;
	byte VAMP2_ST: "mgs2_sse.exe", 0xB75754, 0x344, 0x540, 0x7E0, 0x88, 0xCE;

	byte MANTA_HP: "mgs2_sse.exe", 0xAD4EA4, 0x54, 0x10, 0x10, 0x170, 0x7E0;
}

startup
{

	settings.Add("aslvarviewer", false, "Integrate room names and values with ASLVarViewer");

	settings.Add ("tanker", true, "Tanker (only choose one of the below)");
	settings.Add ("tanker_split_boss", false, "Split on bosses", "tanker");
	// settings.Add ("tanker_split_rooms", true, "Split on every room change", "tanker");
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
	// settings.Add ("plant_split_rooms", true, "Split on every room change", "plant");
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

	vars.currentBoss = "";
	
	vars.currentRoomValue = "";
	vars.currentRoomName = "";

	vars.menus = new string[]
	{
		"select",
		"n_title",
		"mselect",
		"tales"
	};

	vars.tankerBosses = new string[]
	{
		"w00b" // Olga
	};

	vars.tankerRooms = new string[]
	{
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
		"w04c",
		"ending",
		"museum"
	};

	// For integration with ASLVarViewer
	vars.tankerRoomNames = new string[]
	{
		"Alt Deck",
		"Navigational Deck",
		"Navigational Deck",
		"Deck A, crew's quarters",
		"Deck A, crew's quarters,starboard",
		"Deck C, crew's quarters",
		"Deck D, crew's quarters",
		"Deck E, the bridge",
		"Deck A, crew's lounge",
		"Engine room",
		"Deck-2, port",
		"Deck-2, starboard",
		"Hold N. 1",
		"Hold N. 2",
		"Hold N. 3",
		"Ending",
		"Museum",
	};

	vars.tankerCutscenes = new string[]
	{
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

	vars.plantBosses = new string[]
	{
		"w20c", // Fatman
		"w25a", // Harrier
		"w31c", // Vamp
		"w32b", // Vamp 2
		"w46a", // Mantas
		"w61a" // Snake
	};

	vars.plantRooms = new string[]
	{
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

	vars.plantRoomNames = new string[]
	{
		"Strut A Sea Dock",
		"Strut A Sea Dock (Bomb disposal)",
		"Strut A Sea Dock (Fortune Fight)",
		"Strut A Roof",
		"Strut A Roof (Last Bomb)",
		"Strut A Pump room",
		"AB Connecting bridge",
		"AB Connecting bridge (With Sensor B)",
		"Strut B Transformer Room",
		"BC Connecting bridge",
		"BC Connecting bridge (After Stillman cutscene)",
		"Strut C Dining Hall",
		"Strut C Dining Hall (after 'd014p01')",
		"CD Connecting bridge",
		"Strut D Sediment Pool",
		"DE Connecting bridge",
		"Strut E Parcel room, 1F",
		"Strut E Heliport",
		"Strut E Heliport (last bomb)",
		"Strut E Heliport (After ninja cutscene)",
		"EF Connecting bridge",
		"Strut F Warehouse",
		"FA Connecting bridge",
		"Shell 1 Core",
		"Shell 1 Core B1",
		"Shell 1 Core B2,Computer's Room",
		"Shell 1 B1 Hall,Hostages Room",
		"Shell 1,2 Connecting Bridge",
		"Shell 1,2 Connecting Bridge (Destroyed)",
		"Strut L perimeter",
		"KL Connecting Bridge ",
		"Strut L Sewage Treatment Facility",
		"Shell 2 Core,1F Air Purification Room",
		"Website Cutscene",
		"Shell 2 Core,B1 Filtration Chamber NO1",
		"Shell 2 Core,B1 Filtration Chamber NO2 (Vamp Fight)",
		"Shell 2 Core,1F Air Purification Room (w/emma)",
		"Strut L Oil Fence",
		"Strut L Oil Fence (Vamp Fight)",
		"Arsenal Gear-Stomach ",
		"Arsenal Gear-Jujenum",
		"Arsenal Gear-Ascending Colon",
		"Arsenal Gear-Ileum",
		"Arsenal Gear-Sigmoid Colon",
		"Arsenal Gear-Rectum",
		"Arsenal Gear (After Ray Battle)",
		"Federal Hall"
	};

	vars.plantCutscenes = new string[]
	{
		"museum",
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

update 
{
	if (current.ROOM == "n_title")
	{
		return false;
	}
}

split
{
	// Need to remove some redundant vars later.
	bool enableTanker = settings["tanker"];
	bool enableTankerSplitBoss = settings["tanker_split_boss"];
	// bool enableTankerSplitRooms = settings["tanker_split_rooms"];
	bool enableTankerSplitSpecific = settings["tanker_split_rooms_specific"];

	bool enablePlant = settings["plant"];
	bool enablePlantSplitBoss = settings["plant_split_boss"];
	// bool enablePlantSplitRooms = settings["plant_split_rooms"];
	bool enablePlantSplitSpecific = settings["plant_split_rooms_specific"];

	string room = current.ROOM;
	string oldRoom = old.ROOM;

	string tempBoss = vars.currentBoss;

	// Needed for linq
	string[] menu = vars.menus;
	string[] tanker = vars.tankerRooms;
	string[] tankerBosses = vars.tankerBosses;
	string[] tankerCutscenes = vars.tankerCutscenes;

	string[] plant = vars.plantRooms;
	string[] plantBosses = vars.plantBosses;
	string[] plantCutscenes = vars.plantCutscenes;

	if (settings["aslvarviewer"])
	{
		if (Array.IndexOf(tanker, current.ROOM) != -1) 
		{
			vars.currentRoomName = vars.tankerRoomNames[Array.IndexOf(tanker, current.ROOM)];
		}
		else if (Array.IndexOf(plant, current.ROOM) != -1)
		{
			vars.currentRoomName = vars.plantRoomNames[Array.IndexOf(plant, current.ROOM)];
		}

		vars.currentRoomValue = current.ROOM;
	}

	if (enableTanker)
	{
		
		if (enableTankerSplitBoss && tankerBosses.Any (room.Contains))
		{
			if (current.OLGA_ST > 1)
			{
				vars.isBoss = true;
			}

			if (vars.isBoss && current.OLGA_ST == 0)
			{
				vars.isBoss = false;
				vars.isSplitting = true;
			}
		}

		if (enableTankerSplitSpecific)
		{
			if (room != oldRoom && !tankerCutscenes.Any (oldRoom.Contains))
			{
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

				// Split exceptions for cutscenes
				switch (room) {
					case "d04t": // Cutscene in room before Olga
						vars.isRoom = true;
						break;

					case "d10t": // Cutscene in room before reaching the tanker holds
						vars.isRoom = true;
						break;

					case "d11t": // Cutscene when reaching the last room of the holds
						vars.isRoom = true;
						break;

					case "d12t": // Cutscene after taking pictures.
						vars.isRoom = true;
						break;

					case "ending": // Tanker end
						vars.isRoom = true;
						break;			
				}
			}

			if (room != oldRoom && vars.isRoom)
			{
				vars.isRoom = false;
				vars.isSplitting = true;
			}
		}
	}

	if (enablePlant)
	{
		if (enablePlantSplitBoss && plantBosses.Any (room.Contains))
		{
			switch (room)
			{
				case "w20c":
					if (BitConverter.ToInt16(current.FATM_HP, 0) > 1) vars.isBoss = true;
					if (vars.isBoss && (BitConverter.ToInt16(current.FATM_HP, 0) == 0 || current.FATM_ST == 0))
					{
						vars.isBoss = false;
						vars.isSplitting = true;
					}

					break;
				case "w25a":
					if (current.HARR_HP > 1) vars.isBoss = true;
					if (vars.isBoss && (current.HARR_HP == 0)) 
					{
						vars.isBoss = false;
						vars.isSplitting = true;
					}

					break;
				case "w31c":
					if (BitConverter.ToInt16(current.VAMP_HP, 0) > 1) vars.isBoss = true;
					if (vars.isBoss && (BitConverter.ToInt16(current.VAMP_HP, 0) == 0 || BitConverter.ToInt16(current.VAMP_ST, 0) == 0))
					{
						vars.isBoss = false;
						vars.isSplitting = true;
					}

					break;
				case "w32b":
					if (current.VAMP2_HP > 1) vars.isBoss = true;
					if (vars.isBoss && (current.VAMP2_HP == 0 || current.VAMP2_ST == 0))
					{
						vars.isBoss = false;
						vars.isSplitting = true;
					}

					break;
				case "w46a":
					if (current.MANTAS_HP > 1) vars.isBoss = true;
					if (vars.isBoss && (current.MANTAS_HP == 0))
					{
						vars.isBoss = false;
						vars.isSplitting = true;
					}
					break;
				case "w61a":
					if (current.SOLI_HP > 1) vars.isBoss = true;
					if (vars.isBoss && (current.SOLI_HP == 0 || current.SOLI_ST == 0))
					{
						vars.isBoss = false;
						vars.isSplitting = true;
					}
					break;
			}
		}
		
		if (enablePlantSplitSpecific)
		{
			if (room != oldRoom && !plantCutscenes.Any (oldRoom.Contains))
			{
				if(settings["plant_w11a"] && room == "w11a") vars.isRoom = true;
				if(settings["plant_w11b"] && room == "w11b") vars.isRoom = true;
				if(settings["plant_w11c"] && room == "w11c") vars.isRoom = true;
				if(settings["plant_w12a"] && room == "w12a") vars.isRoom = true;
				if(settings["plant_w12c"] && room == "w12c") vars.isRoom = true;
				if(settings["plant_W12b"] && room == "w12b") vars.isRoom = true;
				if(settings["plant_W13a"] && room == "w13a") vars.isRoom = true;
				if(settings["plant_W13b"] && room == "w13b") vars.isRoom = true;
				if(settings["plant_W14a"] && room == "w14a") vars.isRoom = true;
				if(settings["plant_w15a"] && room == "w15a") vars.isRoom = true;
				if(settings["plant_w15b"] && room == "w15b") vars.isRoom = true;
				if(settings["plant_w16a"] && room == "w16b") vars.isRoom = true;
				if(settings["plant_w16b"] && room == "w16b") vars.isRoom = true;
				if(settings["plant_w17a"] && room == "w17a") vars.isRoom = true;
				if(settings["plant_w18a"] && room == "w18a") vars.isRoom = true;
				if(settings["plant_w19a"] && room == "w19a") vars.isRoom = true;
				if(settings["plant_w20a"] && room == "w20a") vars.isRoom = true;
				if(settings["plant_w20b"] && room == "w20b") vars.isRoom = true;
				if(settings["plant_w20c"] && room == "w20c") vars.isRoom = true;
				if(settings["plant_w20d"] && room == "w20d") vars.isRoom = true;
				if(settings["plant_w21a"] && room == "w21a") vars.isRoom = true;
				if(settings["plant_w22a"] && room == "w22a") vars.isRoom = true;
				if(settings["plant_w23b"] && room == "w23a") vars.isRoom = true;
				if(settings["plant_w24a"] && room == "w24a") vars.isRoom = true;
				if(settings["plant_w24b"] && room == "w24b") vars.isRoom = true;
				if(settings["plant_w24c"] && room == "w24c") vars.isRoom = true;
				if(settings["plant_w25a"] && room == "w25a") vars.isRoom = true;
				if(settings["plant_w25b"] && room == "w25b") vars.isRoom = true;
				if(settings["plant_w25b_2"] && room == "w25b") vars.isRoom = true;
				if(settings["plant_w25c"] && room == "w25c") vars.isRoom = true;
				if(settings["plant_w25d"] && room == "w25d") vars.isRoom = true;
				if(settings["plant_w28a"] && room == "w28a") vars.isRoom = true;
				if(settings["plant_w31a"] && room == "w31a") vars.isRoom = true;
				if(settings["plant_webdemo"] && room == "webdemo") vars.isRoom = true;
				if(settings["plant_w31b"] && room == "w31b") vars.isRoom = true;
				if(settings["plant_w31c"] && room == "w31c") vars.isRoom = true;
				if(settings["plant_w31d"] && room == "w31d") vars.isRoom = true;
				if(settings["plant_w32a"] && room == "w32a") vars.isRoom = true;
				if(settings["plant_w32b"] && room == "w32b") vars.isRoom = true;
				if(settings["plant_w41a"] && room == "w41a") vars.isRoom = true;
				if(settings["plant_w42a"] && room == "w42a") vars.isRoom = true;
				if(settings["plant_w43a"] && room == "w43a") vars.isRoom = true;
				if(settings["plant_w44a"] && room == "w44a") vars.isRoom = true;
				if(settings["plant_w45a"] && room == "w45a") vars.isRoom = true;
				if(settings["plant_w46a"] && room == "w46a") vars.isRoom = true;
				if(settings["plant_w51a"] && room == "w51a") vars.isRoom = true;
				if(settings["plant_w61a"] && room == "w61a") vars.isRoom = true;

				// Split exceptions for cutscenes
				switch (room) {
					case "d005p01": // Elevator scene
						vars.isRoom = true;
						break;
				}
			}

			if (room != oldRoom && vars.isRoom)
			{
				vars.isRoom = false;
				vars.isSplitting = true;
			}
		}
	}

	if (vars.isSplitting)
	{
		print ("Split on: " + current.ROOM + " -- Previous room: " + old.ROOM);
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