state("mgs2_sse")
{
	uint IGT: "mgs2_sse.exe", 0xD8AEF8;
	string10 ROOM: "mgs2_sse.exe", 0x601F34, 0x2C;

	// 2 bytes need to be byte2, 4 can be int
	int OLGA_ST: "mgs2_sse.exe", 0xAD4F6C, 0x0, 0x1E0, 0x44, 0x1F8, 0x13C;
	byte2 FATM_HP: "mgs2_sse.exe", 0xB6DEC4, 0x24E;
	int FATM_ST: "mgs2_sse.exe", 0x664E78, 0x88;
}

init
{
	vars.room_olga	= "w00b";
	vars.room_fatm = "w20c";
	
	vars.boss = false;
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

	// Room check
	if (current.ROOM == vars.room_olga && current.OLGA_ST == 128) 
	{
		vars.boss = true;
	} 
	
	// 2bytes need to be converted.
	if (current.ROOM == vars.room_fatm && (BitConverter.ToInt16(current.FATM_HP, 0) == 256 && current.FATM_ST == 256)) 
	{
		vars.boss = true;
	}

	// Boss check
	if (vars.boss == true && current.OLGA_ST == 0) 
	{
		vars.boss = false;
		return true;
	} 
	
	if (vars.boss == true && (BitConverter.ToInt16(current.FATM_HP, 0) == 0 || current.FATM_ST == 0)) 
	{
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