--Walls First

minetest.register_craft({
	output = "warzone:concrete 9",
	recipe = {
		{"default:stone", "default:stone", "default:stone"},
		{"default:stone", "default:stone_block", "default:stone"},
		{"default:stone", "default:stone", "default:stone"}
	}
})

minetest.register_craft({
	output = "warzone:hardcrete 9",
	recipe = {
		{"default:stone_block", "default:stone", "default:stone_block"},
		{"default:stone", "default:stone_block", "default:stone"},
		{"default:stone_block", "default:stone", "default:stone_block"}
	}
})

minetest.register_craft({
	output = "warzone:plastcrete 9",
	recipe = {
		{"default:stone", "default:stone", "default:stone"},
		{"default:stone", "warzone:plastic", "default:stone"},
		{"default:stone", "default:stone", "default:stone"}
	}
})

--Concrete Holes

minetest.register_craft({
	output = "warzone:concrete_hole 4",
	recipe = {
		{"warzone:concrete", "", "warzone:concrete"},
		{"", "", ""},
		{"warzone:concrete", "", "warzone:concrete"}
	}
})

minetest.register_craft({
	output = "warzone:hardcrete_hole 4",
	recipe = {
		{"warzone:hardcrete", "", "warzone:hardcrete"},
		{"", "", ""},
		{"warzone:hardcrete", "", "warzone:hardcrete"}
	}
})

minetest.register_craft({
	output = "warzone:plastcrete_hole 4",
	recipe = {
		{"warzone:plastcrete", "", "warzone:plastcrete"},
		{"", "", ""},
		{"warzone:plastcrete", "", "warzone:plastcrete"}
	}
})

--Now The Platings

--In the Walls.lua 



--And now the Coputer stuff

minetest.register_craft({
	output = "warzone:computer_panel 9",
	recipe = {
		{"warzone:plastic", "warzone:plastic", "warzone:plastic"},
		{"warzone:plastcrete", "warzone:plastcrete", "warzone:plastcrete"},
		{"warzone:plastic", "", "warzone:plastic"}
	}
})


minetest.register_craft({
	output = "warzone:computer_panel_half 2",
	recipe = {
		{"", "", ""},
		{"", "", ""},
		{"warzone:computer_panel", "", "warzone:computer_panel"}
	}
})


minetest.register_craft({
	output = "warzone:computer_panel_quarter 2",
	recipe = {
		{"", "", ""},
		{"", "", ""},
		{"warzone:computer_panel_half", "", "warzone:computer_panel_half"}
	}
})

minetest.register_craft({
	output = "warzone:computer_panel_tech 4",
	recipe = {
		{"warzone:computer_panel", "warzone:computer_panel", "warzone:computer_panel"},
		{"warzone:computer_panel", "warzone:plastic", "warzone:computer_panel"},
		{"warzone:computer_panel", "warzone:computer_panel", "warzone:computer_panel"}
	}
})


minetest.register_craft({
	output = "warzone:computer_storage 2",
	recipe = {
		{"warzone:computer_panel", "warzone:computer_panel", "warzone:computer_panel"},
		{"warzone:computer_panel", "warzone:computer_panel", "default:steel_ingot"},
		{"warzone:computer_panel", "warzone:computer_panel", "warzone:computer_panel"}
	}
})

minetest.register_craft({
	output = "warzone:computer_panel_vent 7",
	recipe = {
		{"warzone:computer_panel", "warzone:computer_panel", "warzone:computer_panel"},
		{"", "warzone:computer_panel", ""},
		{"warzone:computer_panel", "warzone:computer_panel", "warzone:computer_panel"}
	}
})

minetest.register_craft({
	output = "warzone:computer_circuits 8",
	recipe = {
		{"warzone:computer_panel", "warzone:computer_panel", "warzone:computer_panel"},
		{"dye:blue", "warzone:plastic", "default:steel_ingot"},
		{"warzone:computer_panel", "warzone:computer_panel", "warzone:computer_panel"}
	}
})

minetest.register_craft({
	output = "warzone:computer_screen_animated 2",
	recipe = {
		{"warzone:computer_panel", "warzone:computer_panel_vent", "warzone:computer_panel"},
		{"warzone:computer_panel_vent", "default:glass", "warzone:computer_panel_vent"},
		{"warzone:computer_panel", "warzone:computer_panel_vent", "warzone:computer_panel"}
	}
})

minetest.register_craft({
	output = "warzone:tech_lamp 4",
	recipe = {
		{"", "default:glass", ""},
		{"", "warzone:plastic", ""},
		{"warzone:plastic", "warzone:plastic", "warzone:plastic"}
	}
})

--Jump Pads, Land Pads and Speed Pads (also known as "lag pads")

minetest.register_craft({
	output = "warzone:jumppad",
	recipe = {
		{"default:glass", "default:obsidian_glass", "default:glass"},
		{"moreblocks:glow_glass", "warzone:plastic", "moreblocks:glow_glass"},
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"}
	}
})

minetest.register_craft({
	output = "warzone:speedpad",
	recipe = {
		{"default:glass", "default:obsidian_glass", "default:glass"},
		{"moreblocks:super_glow_glass", "default:steel_ingot", "moreblocks:super_glow_glass"},
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"}
	}
})

minetest.register_craft({
	output = "warzone:landpad 4",
	recipe = {
		{"group:leaves", "warzone:concrete", "group:leaves"},
		{"group:leaves", "default:steel_ingot", "group:leaves"},
		{"default:cobble", "default:cobble", "default:cobble"}
	}
})
