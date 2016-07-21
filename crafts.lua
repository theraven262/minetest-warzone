--Pads

--Jump pad
minetest.register_craft({
	output = "warzone:jumppad",
	recipe = {
		{"group:leaves", "group:leaves", "group:leaves"},
		{"group:leaves", "default:steel_ingot", "group:leaves"},
		{"group:leaves", "group:leaves", "group:leaves"}
	}
})


minetest.register_craft({
	output = "warzone:landpad 10",
	recipe = {
		{"", "", ""},
		{"group:leaves", "", "group:leaves"},
		{"group:leaves", "group:leaves", "group:leaves"}
	}
})

--Speed pad

minetest.register_craft({
	output = "warzone:speedpad",
	recipe = {
		{"group:leaves", "group:leaves", "group:leaves"},
		{"group:leaves", "default:coal", "group:leaves"},
		{"group:leaves", "group:leaves", "group:leaves"}
	}
})

--Hidden doors

minetest.register_craft({
	output = "warzone:concrete_hiddendoor 8",
	recipe = {
		{"warzone:concrete", "warzone:concrete", "warzone:concrete"},
		{"warzone:concrete", "", "warzone:concrete"},
		{"warzone:concrete", "warzone:concrete", "warzone:concrete"}
	}
})

minetest.register_craft({
	output = "warzone:hardcrete_hiddendoor 8",
	recipe = {
		{"warzone:hardcrete", "warzone:hardcrete", "warzone:hardcrete"},
		{"warzone:hardcrete", "", "warzone:hardcrete"},
		{"warzone:hardcrete", "warzone:hardcrete", "warzone:hardcrete"}
	}
})

minetest.register_craft({
	output = "warzone:plastcrete_hiddendoor 8",
	recipe = {
		{"warzone:plastcrete", "warzone:plastcrete", "warzone:plastcrete"},
		{"warzone:plastcrete", "", "warzone:plastcrete"},
		{"warzone:plastcrete", "warzone:plastcrete", "warzone:plastcrete"}
	}
})

--Spikes

minetest.register_craft({
	output = "warzone:spikes 6",
	recipe = {
		{"", "", ""},
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
		{"default:dirt", "default:dirt", "default:dirt"}
	}
})

--Concrete/walls

minetest.register_craft({
	output = "warzone:concrete 12",
	recipe = {
		{"default:cobble", "default:cobble", "default:cobble"},
		{"default:cobble", "default:stone", "default:cobble"},
		{"", "", ""}
	}
})

minetest.register_craft({
	output = "warzone:hardcrete 8",
	recipe = {
		{"default:cobble", "default:cobble", "default:cobble"},
		{"default_cobble", "default:stone", "default:cobble"},
		{"default:obsidian", "default:obsidian", "default:obsidian"}
	}
})

minetest.register_craft({
	output = "warzone:plastcrete 16",
	recipe = {
		{"default:cobble", "default:cobble", "default:cobble"},
		{"default:cobble", "default:stone", "default_cobble"},
		{"warzone:plastic", "warzone:plastic", "warzone:plastic"}
	}
})

--Windows

minetest.register_craft({
	output = "warzone:hole_concrete 6",
	recipe = {
		{"warzone:concrete", "", "warzone:concrete"},
		{"", "default:glass", ""},
		{"warzone:concrete", "", "warzone:concrete"}
	}
})

minetest.register_craft({
	output = "warzone:hole_hardcrete 6",
	recipe = {
		{"warzone:hardcrete", "", "warzone:hardcrete"},
		{"", "default:glass", ""},
		{"warzone:hardcrete", "", "warzone:hardcrete"}
	}
})

minetest.register_craft({
	output = "warzone:hole_plastcrete 6",
	recipe = {
		{"warzone:plastcrete", "", "warzone:plastcrete"},
		{"", "default:glass", ""},
		{"warzone:plastcrete", "", "warzone:plastcrete"}
	}
})