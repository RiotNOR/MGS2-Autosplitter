state("mgs2_sse")
{
	uint IGT: "mgs2_sse.exe", 0xD8AEF8;
	string10 ROOM: "mgs2_sse.exe", 0x601F34, 0x2C;

	// 2 bytes need to be byte2, 4 can be int
	int OLGA_ST: "mgs2_sse.exe", 0xAD4F6C, 0x0, 0x1E0, 0x44, 0x1F8, 0x13C;
	byte2 FATM_HP: "mgs2_sse.exe", 0xB6DEC4, 0x24E;
	int FATM_ST: "mgs2_sse.exe", 0x664E78, 0x88;
	byte2 HARR_HP: "mgs2_sse.exe", 0x619BB0, 0x5C;
}

init
{
	vars.room_olga	= "w00b";
	vars.room_fatm = "w20c";
	vars.room_harr = "w25a";

	vars.boss = false;

	// Tanker rooms...
	vars.alt_deck = "w00a";
	vars.nav_deck_before_olga = "w00b";
	vars.nav_deck_after_olga = "w00c";
	vars.deck_a_crews_quarters = "w01a";
	vars.deck_a_crews_quarters_starboard = "w01b";
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
	if (current.IGT != 0) {
		return true;
	}
}

exit
{
	timer.IsGameTimePaused = true;
}
 

split
{
	if (current.ROOM != old.ROOM) {
		if (current.ROOM != vars.scn_1) return true;
		if (current.ROOM != vars.scn_2) return true;
		if (current.ROOM != vars.scn_3) return true;
		if (current.ROOM != vars.scn_4) return true;
		if (current.ROOM != vars.scn_5) return true;
		if (current.ROOM != vars.scn_6) return true;
		if (current.ROOM != vars.scn_7) return true;
		if (current.ROOM != vars.scn_8) return true;
		if (current.ROOM != vars.scn_9) return true;
		if (current.ROOM != vars.scn_10) return true;
		if (current.ROOM != vars.scn_11) return true;
	}

	// Room checks
	if (current.ROOM == vars.room_olga && current.OLGA_ST > 1) 
	{
		print("Olga boss");
		vars.boss = true;
	} 
	
	if (current.ROOM == vars.room_fatm && (BitConverter.ToInt16(current.FATM_HP, 0) > 1 && current.FATM_ST > 1)) 
	{
		print("Fatm boss");
		vars.boss = true;
	}

	if (current.ROOM == vars.room_harr && (BitConverter.ToInt16(current.HARR_HP, 0) > 1)) 
	{
		print("Harr boss");
		vars.boss = true;
	} 

	// Boss checks
	if (vars.boss == true && current.ROOM == vars.room_olga && current.OLGA_ST == 0) 
	{
		print("Olga dead");
		vars.boss = false;
		return true;
	} 
	
	if (vars.boss == true && current.ROOM == vars.room_fatm && (BitConverter.ToInt16(current.FATM_HP, 0) == 0 || current.FATM_ST == 0)) 
	{
		print("Fatm dead");
		vars.boss = false;
		return true;
	}

	if (vars.boss == true && current.ROOM == vars.room_harr && (BitConverter.ToInt16(current.HARR_HP, 0) == 0))
	{
		print("Harr dead");
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
	return TimeSpan.FromMilliseconds((current.IGT)*1000/60);
} 