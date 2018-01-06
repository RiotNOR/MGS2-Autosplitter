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
	settings.Add ("tanker", true, "Tanker");
	settings.Add ("tanker_split_boss", true, "Split on bosses", "tanker");
	settings.Add ("tanker_split_rooms", true, "Split on every room change", "tanker");
	settings.Add ("tanker_split_rooms_exceptions", true, "Do not split on cutscenes", "tanker");

	settings.Add ("plant", true, "Plant");
	settings.Add ("plant_split_boss", true, "Split on bosses", "plant");
	settings.Add ("plant_split_rooms", true, "Split on every room change", "plant");
	settings.Add ("plant_split_rooms_exceptions", true, "Do not split on cutscenes", "plant");
}

init
{
	vars.room_olga = "w00b";
	vars.room_fatm = "w20c";
	vars.room_harr = "w25a";

	vars.roomNum = 0;
	vars.boss = false;
	vars.olgaDead = false;

	// Tanker rooms...
	vars.alt_deck = "w00a";
	vars.nav_deck_before_olga = "w00b";
	vars.nav_deck_after_olga = "w00c";
	vars.deck_b_crews_quarters = "w01a";
	vars.deck_b_crews_quarters_starboard = "w01b";
	vars.deck_c = "w01c";
	vars.deck_d = "w01d";
	vars.deck_e = "w01e";
	vars.deck_a_crews_lounge = "w01f";
	vars.engine_room = "w02a";
	vars.deck_2_port = "w03a";
	vars.deck_2_starboard = "w03b";
	vars.hold_1 = "w04a";
	vars.hold_2 = "w04b";
	vars.hold_3 = "w04c";
	vars.end = "museum";

	// Tanker exceptions...
	vars.scn_1 = "d00t";
	vars.scn_2 = "d01t";
	vars.scn_3 = "d04t";
	vars.scn_4 = "d05t";
	vars.scn_5 = "d10t";
	vars.scn_6 = "d11t";
	vars.scn_7 = "d12t";
	vars.scn_8 = "d12t3";
	vars.scn_9 = "d12t4";
	vars.scn_10 = "d13t";
	vars.scn_11 = "d14t";
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
	var cur_segname = timer.CurrentSplit.Name;
	if (current.ROOM != old.ROOM)
	{
		if (current.ROOM == vars.deck_b_crews_quarters_starboard && vars.roomNum == 0)
		{
			vars.roomNum += 1;
			return true;
		}

		if (current.ROOM == vars.deck_c && vars.roomNum == 1)
		{
			vars.roomNum += 1;
			return true;
		}

		if (current.ROOM == vars.deck_d && vars.roomNum == 2)
		{
			vars.roomNum += 1;
			return true;
		}

		if (current.ROOM == vars.deck_e && vars.roomNum == 3)
		{
			vars.roomNum += 1;
			return true;
		}

		if (current.ROOM == vars.deck_e && vars.roomNum == 4 && vars.olgaDead == true)
		{
			vars.roomNum += 1;
			return true;
		}

		if (current.ROOM == vars.deck_d && vars.roomNum == 5)
		{
			vars.roomNum += 1;
			return true;
		}

		if (current.ROOM == vars.deck_c && vars.roomNum == 6)
		{
			vars.roomNum += 1;
			return true;
		}

		if (current.ROOM == vars.deck_b_crews_quarters_starboard && vars.roomNum == 7)
		{
			vars.roomNum += 1;
			return true;
		}

		if (current.ROOM == vars.deck_a_crews_lounge && vars.roomNum == 8)
		{
			vars.roomNum += 1;
			return true;
		}

		if (current.ROOM == vars.engine_room && vars.roomNum == 9)
		{
			vars.roomNum += 1;
			return true;
		}

		if (current.ROOM == vars.deck_2_port && vars.roomNum == 10)
		{
			vars.roomNum += 1;
			return true;
		}

		if (current.ROOM == vars.deck_2_starboard && vars.roomNum == 11)
		{
			vars.roomNum += 1;
			return true;
		}

		if (current.ROOM == vars.scn_5 && vars.roomNum == 12)
		{
			vars.roomNum += 1;
			return true;
		}

		if (current.ROOM == vars.hold_2 && vars.roomNum == 13)
		{
			vars.roomNum += 1;
			return true;
		}

		if (current.ROOM == vars.hold_3 && vars.roomNum == 14)
		{
			vars.roomNum += 1;
			return true;
		}

		if (current.ROOM == vars.end && vars.roomNum == 15)
		{
			vars.roomNum += 1;
			return true;
		}
	}

	// Room checks
	if (current.ROOM == vars.room_olga && current.OLGA_ST > 1)
	{
		print ("Olga boss");
		vars.boss = true;
	}
	else if (current.ROOM == vars.room_fatm && (BitConverter.ToInt16 (current.FATM_HP, 0) > 1 && current.FATM_ST > 1))
	{
		print ("Fatm boss");
		vars.boss = true;
	}
	else if (current.ROOM == vars.room_harr && (BitConverter.ToInt16 (current.HARR_HP, 0) > 1))
	{
		print ("Harr boss");
		vars.boss = true;
	}

	// Boss checks
	if (vars.boss == true && current.ROOM == vars.room_olga && current.OLGA_ST == 0)
	{
		print ("Olga dead");
		vars.olgaDead = true;
		vars.boss = false;
		return true;
	}
	else if (vars.boss == true && current.ROOM == vars.room_fatm && (BitConverter.ToInt16 (current.FATM_HP, 0) == 0 || current.FATM_ST == 0))
	{
		print ("Fatm dead");
		vars.boss = false;
		return true;
	}
	else if (vars.boss == true && current.ROOM == vars.room_harr && (BitConverter.ToInt16 (current.HARR_HP, 0) == 0))
	{
		print ("Harr dead");
		vars.boss = false;
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