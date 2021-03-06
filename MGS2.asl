state ("mgs2_sse")
{
	uint IGT: "mgs2_sse.exe", 0xD8AEF8;

	string10 ROOM: "mgs2_sse.exe", 0x601F34, 0x2C;
	byte2 SHOTS: "mgs2_sse.exe", 0x4D305C, 0x148;
	byte2 ALERTS: "mgs2_sse.exe", 0x3E315E, 0x75;
	byte2 CONTINUES: "mgs2_sse.exe", 0x3E315E, 0x65;
	byte2 RATIONS: "mgs2_sse.exe", 0x2E9A1E, 0x428;
	byte2 KILLS: "mgs2_sse.exe", 0x3E315E, 0x77;

	// 2 bytes need to be byte2, 4 can be int
	int OLGA_ST: "mgs2_sse.exe", 0xAD4F6C, 0x0, 0x1E0, 0x44, 0x1F8, 0x13C;

	byte2 FATM_HP: "mgs2_sse.exe", 0xB6DEC4, 0x24E;
	int FATM_ST: "mgs2_sse.exe", 0x664E78, 0x88;

	byte2 HARR_HP: "mgs2_sse.exe", 0x619BB0, 0x5C;

	byte2 VAMP_ST: "mgs2_sse.exe", 0x664EA0, 0x15A;
	byte2 VAMP_HP: "mgs2_sse.exe", 0x664EA0, 0x158;

	byte SOLI_HP: "mgs2_sse.exe", 0x664E7C, 0xB8;
	byte SOLI_ST: "mgs2_sse.exe", 0x664E78, 0xC8;

	byte2 VAMP2_HP: "mgs2_sse.exe", 0x61FBB8, 0x2AE;
	byte2 VAMP2_ST: "mgs2_sse.exe", 0x664E7C, 0x48;

	byte MANTA_HP: "mgs2_sse.exe", 0xAD4EA4, 0x54, 0x10, 0x10, 0x170, 0x7E0;
}

startup
{
	string currentWorkingDir = System.IO.Path.GetDirectoryName (Application.ExecutablePath);
	string fileName = "noSplit.txt";
	string fullPath = currentWorkingDir + "\\" + fileName;

	settings.Add ("debug", false, "== DEBUG ==");
	settings.Add ("debug_file", false, "Write success/fail splits to: ", "debug");
	settings.Add ("debug_path", false, fullPath, "debug_file");

	settings.Add ("resets", true, "Reset the run upon going to menu");
	settings.Add ("aslvarviewer", false, "Integrate room names and values with ASLVarViewer");

	settings.Add ("tanker", true, "Tanker");
	settings.Add ("tanker_split_boss", true, "Split on bosses", "tanker");
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
	settings.Add ("tanker_ending", false, "Tanker ending (Choose one or the other)", "tanker_split_rooms_specific");
	settings.Add ("tanker_plant_ending", true, "Tanker-Plant transition (Choose one or the other)", "tanker_split_rooms_specific");

	settings.Add ("plant", true, "Plant");
	settings.Add ("plant_split_boss", true, "Split on bosses", "plant");
	settings.Add ("plant_split_rooms_specific", true, "Split on specific room change", "plant");

	settings.Add ("plant_w11a", true, "Strut A Sea Dock", "plant_split_rooms_specific");
	settings.Add ("plant_w11b", true, "Strut A Sea Dock (Bomb disposal)", "plant_split_rooms_specific");
	settings.Add ("plant_w11c", true, "Strut A Sea Dock (Fortune Fight)", "plant_split_rooms_specific");
	settings.Add ("plant_w12a", true, "Strut A Roof", "plant_split_rooms_specific");
	settings.Add ("plant_w12c", true, "Strut A Roof (Last Bomb)", "plant_split_rooms_specific");
	settings.Add ("plant_w12b", true, "Strut A Pump room", "plant_split_rooms_specific");
	settings.Add ("plant_w13a", true, "AB Connecting bridge", "plant_split_rooms_specific");
	settings.Add ("plant_w13b", true, "AB Connecting bridge (With Sensor B)", "plant_split_rooms_specific");
	settings.Add ("plant_w14a", true, "Strut B Transformer Room", "plant_split_rooms_specific");
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
	settings.Add ("plant_w23a", true, "FA Connecting bridge", "plant_split_rooms_specific");
	settings.Add ("plant_w23b", true, "FA Connecting bridge", "plant_split_rooms_specific");
	settings.Add ("plant_w24a", true, "Shell 1 Core", "plant_split_rooms_specific");
	settings.Add ("plant_w24b", true, "Shell 1 Core B1", "plant_split_rooms_specific");
	settings.Add ("plant_w24d", true, "Shell 1 Core B2,Computer's Room", "plant_split_rooms_specific");
	settings.Add ("plant_w24c", true, "Shell 1 B1 Hall,Hostages Room", "plant_split_rooms_specific");
	settings.Add ("plant_w25a", true, "Shell 1,2 Connecting Bridge", "plant_split_rooms_specific");
	settings.Add ("plant_w25b", true, "Shell 1,2 Connecting Bridge (Destroyed)", "plant_split_rooms_specific");
	settings.Add ("plant_w25c", true, "Strut L perimeter", "plant_split_rooms_specific");
	settings.Add ("plant_w25d", true, "KL Connecting Bridge ", "plant_split_rooms_specific");
	settings.Add ("plant_w28a", true, "Strut L Sewage Treatment Facility", "plant_split_rooms_specific");
	settings.Add ("plant_w31a", true, "Shell 2 Core,1F Air Purification Room", "plant_split_rooms_specific");
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
	vars.runNum = 0;
	if (settings["debug_path"])
	{
		string currentWorkingDir = System.IO.Path.GetDirectoryName (Application.ExecutablePath);
		string fileName = "noSplit.txt";
		vars.fullPath = currentWorkingDir + "\\" + fileName;
		vars.checkFormatLine = true;

		if (!System.IO.File.Exists (vars.fullPath))
		{
			System.IO.File.Create (vars.fullPath);
		}
	}

	vars.ASLVar_currentRoomValue = "";
	vars.ASLVar_currentRoomName = "";
	vars.ASLVar_shotsFired = 0;
	vars.ASLVar_alarmsTriggered = 0;
	vars.ASLVar_continues = 0;
	vars.ASLVar_rations = 0;
	vars.ASLVar_kills = 0;

	vars.isSplitting = false;
	vars.isBoss = false;
	vars.isRoom = false;

	vars.currentBoss = "";

	vars.iHateTheRayFightLetsNotSplitOnThisAgain = false;
	vars.amesIsABitch = false;

	vars.isBossSplit = false;

	vars.menus = new string[]
	{
		"init",
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
		"Aft deck",
		"Navigational Deck (Olga fight)",
		"Navigational Deck (After Olga fight)",
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
		"d12t", // Start of tanker ending
		"d12t3",
		"d12t4",
		"d13t", // Save screen
		"d14t"
	};

	vars.plantBosses = new string[]
	{
		"w20c", // Fatman
		"w25a", // Harrier
		"w31c", // Vamp
		"w32b", // Vamp 2
		"w46a", // Mantas
		"d080p01", // Manta temp fix
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
		"w23a",
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
		"FA Connecting bridge",
		"Shell 1 Core",
		"Shell 1 Core B1",
		"Shell 1 Core B2,Computer's Room",
		"Shell 1 B1 Hall,Hostages Room",
		"Shell 1,2 Connecting Bridge",
		"Shell 1,2 Connecting Bridge (Destroyed)",
		"Strut L perimeter",
		"KL Connecting Bridge",
		"Strut L Sewage Treatment Facility",
		"Shell 2 Core,1F Air Purification Room",
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
		"d005p01", // Up the elevator to w12a
		"d005p03",
		"d010p01",
		"d012p01",
		"d014p01",
		"d021p01",
		"d11t",
		"d036p03",
		"d036p05",
		"d045p01",
		"d046p01",
		"d053p01",
		"d055p01",
		"d063p01",
		"webdemo",
		"wmovie",
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

	vars.testRoom = current.ROOM;
}

start
{
	string room = current.ROOM;
	string[] menu = vars.menus;

	if (room != "" && !menu.Any (room.Contains))
	{
		if (settings["debug_path"])
		{
			int lastLine = 0;

			using (var sr = new System.IO.StreamReader(vars.fullPath))
			{
				string readStr = "";
				int readNum = 0;

				while (!sr.EndOfStream)
				{
					readStr = sr.ReadLine();
				}

				if (Int32.TryParse(readStr.Split(',')[0], out readNum))
				{
					lastLine = readNum;
				}

				sr.Close();
			}

			lastLine++;
			
			vars.runNum = lastLine;
		}

		return true;
	}
	else
	{
		return false;
	}
}

exit
{
	timer.IsGameTimePaused = true;
}

reset
{
	
	string room = current.ROOM;
	string[] menu = vars.menus;

	if (settings["resets"] && menu.Any (room.Contains))
	{
		return true;
	}
}

update
{
	if (current.IGT != 0)
	{
		return true;
	}
}

split
{
	vars.testRoom = current.ROOM;
	
	// Need to remove some redundant vars later.
	bool enableTanker = settings["tanker"];
	bool enableTankerSplitBoss = settings["tanker_split_boss"];
	bool enableTankerSplitSpecific = settings["tanker_split_rooms_specific"];

	bool enablePlant = settings["plant"];
	bool enablePlantSplitBoss = settings["plant_split_boss"];
	bool enablePlantSplitSpecific = settings["plant_split_rooms_specific"];

	string room = current.ROOM;
	string oldRoom = old.ROOM;

	string tempBoss = "";

	// Needed for linq
	string[] menu = vars.menus;
	string[] tanker = vars.tankerRooms;
	string[] tankerBosses = vars.tankerBosses;
	string[] tankerCutscenes = vars.tankerCutscenes;

	string[] plant = vars.plantRooms;
	string[] plantBosses = vars.plantBosses;
	string[] plantCutscenes = vars.plantCutscenes;

	if (settings["aslvarviewer"] && !menu.Any (room.Contains))
	{
		if (Array.IndexOf (tanker, room) != -1)
		{
			vars.ASLVar_currentRoomName = vars.tankerRoomNames[Array.IndexOf (tanker, room)];
		}
		else if (Array.IndexOf (plant, room) != -1)
		{
			vars.ASLVar_currentRoomName = vars.plantRoomNames[Array.IndexOf (plant, room)];
		}

		vars.ASLVar_currentRoomValue = room;
		vars.ASLVar_shotsFired = BitConverter.ToInt16 (current.SHOTS, 0);
		vars.ASLVar_alarmsTriggered = BitConverter.ToInt16 (current.ALERTS, 0);
		vars.ASLVar_continues = BitConverter.ToInt16 (current.CONTINUES, 0);
		vars.ASLVar_rations = BitConverter.ToInt16 (current.RATIONS, 0);
		vars.ASLVar_kills = BitConverter.ToInt16 (current.KILLS, 0);
	}

	if (enableTanker)
	{

		if (enableTankerSplitBoss && tankerBosses.Any (room.Contains))
		{
			if (current.OLGA_ST > 1)
			{
				vars.isBoss = true;				
			}

			if (vars.isBoss && current.OLGA_ST == 0 && current.OLGA_ST != old.OLGA_ST)
			{
				vars.isBoss = false;
				vars.isSplitting = true;
				vars.isBossSplit = true;
				tempBoss = "Olga";
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
				switch (room)
				{
					case "d04t": // Cutscene in room before Olga
						vars.isRoom = settings["tanker_w01e"];
						break;

					case "d05t": // Cutscene of Olga, before fight
						if (oldRoom == "w01e")
						{
							vars.isRoom = settings["tanker_w00b"];
						}
						break;

					case "d10t": // Cutscene in room before reaching the tanker holds
						vars.isRoom = settings["tanker_w04a"];
						break;

					case "d11t": // Cutscene when reaching the last room of the holds
						vars.isRoom = settings["tanker_w04c"];
						break;

					case "d12t": // Cutscene after taking pictures.
						vars.isRoom = settings["tanker_w04a"];
						break;

					case "ending": // Tanker end
						vars.isRoom = settings["tanker_ending"];
						break;

					case "museum":
						vars.isRoom = settings["tanker_plant_ending"];
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
					if (BitConverter.ToInt16 (current.FATM_HP, 0) > 1 && current.FATM_ST > 1)
					{
						vars.isBoss = true;
					}
					if (vars.isBoss && (BitConverter.ToInt16 (current.FATM_HP, 0) == 0 || current.FATM_ST == 0))
					{
						vars.isBoss = false;
						vars.isSplitting = true;
						vars.isBossSplit = true;
						tempBoss = "Fatman";
					}

					break;
				case "w25a":
					if (BitConverter.ToInt16 (current.HARR_HP, 0) > 1)
					{
						vars.isBoss = true;
					}
					if (vars.isBoss && (BitConverter.ToInt16 (current.HARR_HP, 0) == 0))
					{
						vars.isBoss = false;
						vars.isSplitting = true;
						vars.isBossSplit = true;
						tempBoss = "Harrier";
					}

					break;
				case "w31c":
					if (BitConverter.ToInt16 (current.VAMP_HP, 0) > 1 && BitConverter.ToInt16 (current.VAMP_ST, 0) > 1)
					{
						vars.isBoss = true;
					}
					if (vars.isBoss && (BitConverter.ToInt16 (current.VAMP_HP, 0) == 0 || BitConverter.ToInt16 (current.VAMP_ST, 0) == 0))
					{
						vars.isBoss = false;
						vars.isSplitting = true;
						vars.isBossSplit = true;
						tempBoss = "Vamp";
					}

					break;
				case "w32b":
					if (BitConverter.ToInt16 (current.VAMP2_HP, 0) > 1 && BitConverter.ToInt16 (current.VAMP2_ST, 0) > 1)
					{
						vars.isBoss = true;
					}
					if (vars.isBoss && (BitConverter.ToInt16 (current.VAMP2_HP, 0) == 0 || BitConverter.ToInt16 (current.VAMP2_ST, 0) == 0))
					{
						vars.isBoss = false;
						vars.isSplitting = true;
						vars.isBossSplit = true;
						tempBoss = "Vamp2";
					}

					break;
				case "w46a":
					//Removed in favor of cutscene exception
					// if (current.MANTA_HP > 1) 
					// {
					// 	vars.isBoss = true;
					// }

					// if (vars.isBoss && current.MANTA_HP == 0)
					// {
					// 	vars.isBoss = false;
					// 	vars.isSplitting = true;
					// }

					break;
				case "d080p01":
					if (!vars.iHateTheRayFightLetsNotSplitOnThisAgain)
					{
						vars.iHateTheRayFightLetsNotSplitOnThisAgain = true;
						vars.isRoom = true;
						vars.isBossSplit = true;
						tempBoss = "Rays";
					}

					break;
				case "w61a":
					if (current.SOLI_HP > 1 && current.SOLI_ST > 1)
					{
						vars.isBoss = true;
					}
					if (vars.isBoss && (current.SOLI_HP == 0 || current.SOLI_ST == 0))
					{
						vars.isBoss = false;
						vars.isSplitting = true;
						vars.isBossSplit = true;
						tempBoss = "Solidus";
					}
					break;
			}
		}

		if (enablePlantSplitSpecific)
		{
			if (room != oldRoom && !plantCutscenes.Any (oldRoom.Contains))
			{
				if (settings["plant_w11a"] && room == "w11a") vars.isRoom = true;
				if (settings["plant_w11b"] && room == "w11b") vars.isRoom = true;
				if (settings["plant_w11c"] && room == "w11c") vars.isRoom = true;
				if (settings["plant_w12a"] && room == "w12a") vars.isRoom = true;
				if (settings["plant_w12c"] && room == "w12c") vars.isRoom = true;
				if (settings["plant_w12b"] && room == "w12b") vars.isRoom = true;
				if (settings["plant_w13a"] && room == "w13a") vars.isRoom = true;
				if (settings["plant_w13b"] && room == "w13b") vars.isRoom = true;
				if (settings["plant_w14a"] && room == "w14a") vars.isRoom = true;
				if (settings["plant_w15a"] && room == "w15a") vars.isRoom = true;
				if (settings["plant_w15b"] && room == "w15b") vars.isRoom = true;
				if (settings["plant_w16a"] && room == "w16a") vars.isRoom = true;
				if (settings["plant_w16b"] && room == "w16b") vars.isRoom = true;
				if (settings["plant_w17a"] && room == "w17a") vars.isRoom = true;
				if (settings["plant_w18a"] && room == "w18a") vars.isRoom = true;
				if (settings["plant_w19a"] && room == "w19a") vars.isRoom = true;
				if (settings["plant_w20a"] && room == "w20a") vars.isRoom = true;
				if (settings["plant_w20b"] && room == "w20b") vars.isRoom = true;
				if (settings["plant_w20c"] && room == "w20c") vars.isRoom = true;
				if (settings["plant_w20d"] && room == "w20d") vars.isRoom = true;
				if (settings["plant_w21a"] && room == "w21a") vars.isRoom = true;
				if (settings["plant_w22a"] && room == "w22a") vars.isRoom = true;
				if (settings["plant_w23a"] && room == "w23a") vars.isRoom = true;
				if (settings["plant_w23b"] && room == "w23b") vars.isRoom = true;
				if (settings["plant_w24a"] && room == "w24a") vars.isRoom = true;
				if (settings["plant_w24b"] && room == "w24b") vars.isRoom = true;
				if (settings["plant_w24d"] && room == "w24d") vars.isRoom = true;
				if (settings["plant_w24c"] && room == "w24c") vars.isRoom = true;
				if (settings["plant_w25a"] && room == "w25a") vars.isRoom = true;
				if (settings["plant_w25b"] && room == "w25b") vars.isRoom = true;
				if (settings["plant_w25c"] && room == "w25c") vars.isRoom = true;
				if (settings["plant_w25d"] && room == "w25d") vars.isRoom = true;
				if (settings["plant_w28a"] && room == "w28a") vars.isRoom = true;
				if (settings["plant_w31a"] && room == "w31a") vars.isRoom = true;
				if (settings["plant_w31b"] && room == "w31b") vars.isRoom = true;
				if (settings["plant_w31c"] && room == "w31c") vars.isRoom = true;
				if (settings["plant_w31d"] && room == "w31d") vars.isRoom = true;
				if (settings["plant_w32a"] && room == "w32a") vars.isRoom = true;
				if (settings["plant_w32b"] && room == "w32b") vars.isRoom = true;
				if (settings["plant_w41a"] && room == "w41a") vars.isRoom = true;
				if (settings["plant_w42a"] && room == "w42a") vars.isRoom = true;
				if (settings["plant_w43a"] && room == "w43a") vars.isRoom = true;
				if (settings["plant_w44a"] && room == "w44a") vars.isRoom = true;
				if (settings["plant_w45a"] && room == "w45a") vars.isRoom = true;
				if (settings["plant_w46a"] && room == "w46a") vars.isRoom = true;
				if (settings["plant_w51a"] && room == "w51a") vars.isRoom = true;
				if (settings["plant_w61a"] && room == "w61a") vars.isRoom = true;

				// Split exceptions for cutscenes
				switch (room)
				{
					case "d005p01": // Elevator scene
						vars.isRoom = settings["plant_w12a"];
						break;

					case "d010p01": // Meeting pliskin - Doublesplits wtf meng
						// vars.isRoom = settings["plant_w14a"];
						break;

					case "d012p01": // Meeting Fortune
						vars.isRoom = settings["plant_w15a"];
						break;

						// Temp fix for manta rays.
						// case "d080p01":
						// 	if (!vars.iHateTheRayFightLetsNotSplitOnThisAgain)
						// 	{
						// 		vars.iHateTheRayFightLetsNotSplitOnThisAgain = true;
						// 		vars.isRoom = true;
						// 	}

						// 	break;
					case "d036p03":
						if (!vars.amesIsABitch && settings["plant_w25c"])
						{
							vars.amesIsABitch = true;
							vars.isRoom = true;
						}

						break;

					case "d055p01":
						if (settings["plant_w31b"])
						{
							vars.isRoom = true;
						}

						break;
				}
			}
			else
			{
				switch (oldRoom)
				{
					case "d014p01": // After stillman cutscene is finished
						if (settings["plant_w16b"] && room == "w16b")
						{
							vars.isRoom = true;
						}

						break;

					case "d036p03":
						if (settings["plant_w24b"] && room == "w24b")
						{
							vars.isRoom = true;
						}

						break;
					case "d078p01":
						if (settings["plant_w46a"] && room == "w46a")
						{
							vars.isRoom = true;
						}

						break;

					case "d053p01": // Emma leaving vamproom
						if (settings["plant_w31b"] && room == "w31b")
						{
							vars.isRoom = true;
						}

						break;

					case "d063p01": // Lvl5 card from Emma
						if (settings["plant_w28a"] && room == "w28a")
						{
							vars.isRoom = true;
						}

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

	// if (settings["debug_path"] && room != oldRoom || settings["debug_path"] && tempBoss != "")
	if (settings["debug_path"] && room != oldRoom || settings["debug_path"] && vars.isBossSplit)
	{
		string logFormat = "RUN,SPLIT,AREA,TYPE,ENABLED,REASON,MAP_FROM,MAP_FROM_NAME,MAP_TO,MAP_TO_NAME";
		string firstLine = "";

		bool needsFirstLine = false;

		if (vars.checkFormatLine)
		{
			using(StreamReader reader = new StreamReader(vars.fullPath))
			{
				firstLine = reader.ReadLine();
				reader.Close();
			}

			if (firstLine != logFormat)
			{
				needsFirstLine = true;
			}
		}

		string logLine = "";
		bool logSplit = false;
		string logArea = "";
		string logType = "room";
		bool logEnabled = false;
		string logReason = "";
		string logFrom = "missing";
		string logFromName = "";
		string logTo = "missing";
		string logToName = "";

		if (vars.isSplitting)
		{
			// SPLIT
			logSplit = true;

			if (tanker.Any(room.Contains))
			{
				logArea = "tanker";

				if (vars.isBossSplit)
				{
					logType = "boss";
					logEnabled = settings["tanker_split_boss"];
					logReason = tempBoss;
				} 
				else
				{
					logEnabled = settings["tanker_" + room];
				}
			} 
			else if (tankerCutscenes.Any(room.Contains))
			{
				logArea = "tanker";
				logType = "cutscene";
			}
			else if (plant.Any(room.Contains))
			{
				logArea = "plant";

				if (vars.isBossSplit)
				{
					logType = "boss";
					logEnabled = settings["plant_split_boss"];
					logReason = tempBoss;
				}
				else
				{
					logEnabled = settings["plant_" + room];
				}
			}
			else if (plantCutscenes.Any(room.Contains))
			{
				logArea = "plant";
				logType = "cutscene";
			}

			if (tankerCutscenes.Any(oldRoom.Contains) || plantCutscenes.Any(oldRoom.Contains))
			{
				logReason = "room was cutscene";
			}
		}
		else if (!vars.isSplitting)
		{
			// SPLIT
			logSplit = false;

			if (tanker.Any(room.Contains))
			{
				logArea = "tanker";

				if (vars.isBossSplit)
				{
					logType = "boss";
					logEnabled = settings["tanker_split_boss"];
					logReason = tempBoss;
				} 
				else
				{
					logEnabled = settings["tanker_" + room];
				}
			} 
			else if (tankerCutscenes.Any(room.Contains))
			{
				logArea = "tanker";
				logType = "cutscene";
			}
			else if (plant.Any(room.Contains))
			{
				logArea = "plant";

				if (vars.isBossSplit)
				{
					logType = "boss";
					logEnabled = settings["plant_split_boss"];
					logReason = tempBoss;
				}
				else
				{
					logEnabled = settings["plant_" + room];
				}
			}
			else if (plantCutscenes.Any(room.Contains))
			{
				logArea = "plant";
				logType = "cutscene";
			}

			if (room == oldRoom)
			{
				logReason = "room was oldRoom";
			}
			else if (tankerCutscenes.Any(oldRoom.Contains) || plantCutscenes.Any(oldRoom.Contains))
			{
				logReason = "oldRoom was cutscene";
			}
		}

		logFrom = oldRoom;
		logTo = room;

		if (Array.IndexOf (tanker, oldRoom) != -1) 	logFromName = vars.tankerRoomNames[Array.IndexOf (tanker, oldRoom)];
		if (Array.IndexOf (tanker, room) != -1) 	logToName = vars.tankerRoomNames[Array.IndexOf (tanker, room)];
		if (Array.IndexOf (plant, oldRoom) != -1) 	logFromName = vars.plantRoomNames[Array.IndexOf (plant, oldRoom)];
		if (Array.IndexOf (plant, room) != -1) 		logToName = vars.plantRoomNames[Array.IndexOf (plant, room)];

		if (needsFirstLine) {
			System.IO.File.WriteAllText(vars.fullPath, string.Empty);
		}

		using(var sw = new System.IO.StreamWriter(vars.fullPath, true))
		{
			if (needsFirstLine) 
			{
				sw.WriteLine(logFormat);
				vars.checkFormatLine = false;
			}
			
			logLine = vars.runNum + "," + logSplit + "," + logArea + "," + logType + "," + logEnabled + "," + logReason + "," + logFrom + ",\"" + logFromName + "\"," + logTo + ",\"" + logToName + "\"";
			
			sw.WriteLine(logLine);
			sw.Close();
		}
	}
	// END DEBUG

	if (vars.isSplitting && !menu.Any (oldRoom.Contains))
	{
		vars.isSplitting = false;
		if (vars.isBossSplit) vars.isBossSplit = false;
		return true;
	}
}

isLoading
{
	return true;
}

gameTime
{
	return TimeSpan.FromMilliseconds ((current.IGT) * 1000 / 60);
}