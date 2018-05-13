-- This information tells other players more about the mod
name = "ZWC Group TEST"
description = "Our group in DST!"
author = "zerowolfcode"
version = "3"

-- This is the URL name of the mod's thread on the forum; the part after the ? and before the first & in the url
forumthread = "/files/file/950-extended-sample-character/"


-- This lets other players know if your mod is out of date, update it to match the current version in the game
api_version = 10

-- Compatible with Don't Starve Together
dst_compatible = true

-- Not compatible with Don't Starve
dont_starve_compatible = false
reign_of_giants_compatible = false

-- Character mods need this set to true
all_clients_require_mod = true 

icon_atlas = "modicon.xml"
icon = "modicon.tex"

-- The mod's tags displayed on the server list
server_filter_tags = {
"character",
}

local OPT = {
				{description = "Yes", data = true},
				{description = "No", data = false},
			}

configuration_options = 
{
	{
		name = "STATS";
		label = "Stats";
		options =	{
						{description = "150", data = 150},
						{description = "300", data = 300},
					},
		default = 300,
	},
	{
		name = "ALEX",
		label = "Alex",
		hover = "Have Alex available",
		options = OPT,
		default = true,
	},
	{
		name = "AUSTIN",
		label = "Austin",
		hover = "Have Austin available",
		options = OPT,
		default = true,
	},
	{
		name = "KAYLEE",
		label = "Kaylee",
		hover = "Have Kaylee available",
		options = OPT,
		default = true,
	},
	{
		name = "GRACIE",
		label = "Gracie",
		hover = "Have Gracie available",
		options = OPT,
		default = true,
	},
	{
		name = "MATT",
		label = "Matthew",
		hover = "Have Matthew available",
		options = OPT,
		default = true,
	},
}