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

	// Plant rooms...

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