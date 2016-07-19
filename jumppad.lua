minetest.register_node("warzone:jumppad", {
    	description = "Jump Pad",
	tiles = {
			{
			name = "warzone_jumppad_top.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1.0,
			},
},
			"warzone_jumppad_bottom.png",
			"warzone_jumppad_side.png",
			"warzone_jumppad_side.png",
			"warzone_jumppad_side.png",
            "warzone_jumppad_side.png",

	},
	drawtype = "nodebox",
	paramtype = "light",
    light_source = 6,
        groups = {cracky = 3},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
		}
	}
})

minetest.register_node("warzone:insane_jumppad", {
    description = "Strong Jump Pad",
	tiles = {
			{
			name = "warzone_jumppad_orange_top.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.5,
			},
},
			"warzone_jumppad_bottom.png",
			"warzone_jumppad_orange_side.png",
			"warzone_jumppad_orange_side.png",
			"warzone_jumppad_orange_side.png",
            "warzone_jumppad_orange_side.png",

	},
    drop = "warzone:jumppad",
	drawtype = "nodebox",
	paramtype = "light",
    light_source = 8,
        groups = {cracky = 3},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
		}
	}
})

minetest.register_node("warzone:landpad", {
	description = "Landing Pad - Removes Falling Damage",
	tiles = {"warzone_landpad.png",
                 "warzone_landpad.png",
                 "warzone_landpad_side.png",
                 "warzone_landpad_side.png",
                 "warzone_landpad_side.png",
                 "warzone_landpad_side.png",
},
        groups = {cracky = 3, fall_damage_add_percent = -100},
	sounds = default.node_sound_stone_defaults(),
        drawtype = "nodebox",
        paramtype = "light",
        node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox1
		}
	}
})

--crafting

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
