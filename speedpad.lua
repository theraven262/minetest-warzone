minetest.register_node("warzone:speedpad", {
    	description = "Speed Pad",
	tiles = {
			{
			name = "warzone_speedpad_top.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.5,
			},
},
			"warzone_speedpad_bottom.png",
			"warzone_speedpad_side.png",
			"warzone_speedpad_side.png",
			"warzone_speedpad_side.png",
            "warzone_speedpad_side.png",

	},
	drawtype = "nodebox",
	paramtype = "light",
    light_source = 7,
        groups = {cracky = 3},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
		}
	}
})

--crafts

