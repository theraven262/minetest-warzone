--hidden doors

minetest.register_node("warzone:concrete_hiddendoor", {
	description = "Concrete Hidden Door",
	tiles = {"warzone_concrete.png"},
    drawtype = "allfaces",
    inventory_image = minetest.inventorycube("warzone_concrete.png^warzone_frame.png"),
	groups = {cracky = 2},
    walkable = false,
    paramtype = "light",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("warzone:hardcrete_hiddendoor", {
	description = "Hardcrete Hidden Door",
	tiles = {"warzone_hardcrete.png"},
    drawtype = "allfaces",
    inventory_image = minetest.inventorycube("warzone_hardcrete.png^warzone_frame.png"),
	groups = {cracky = 1},
    walkable = false,
    paramtype = "light",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("warzone:plastcrete_hiddendoor", {
	description = "Plastcrete Hidden Door",
	tiles = {"warzone_plastcrete.png"},
    drawtype = "allfaces",
    inventory_image = minetest.inventorycube("warzone_plastcrete.png^warzone_frame.png"),
	groups = {cracky = 2},
    walkable = false,
    paramtype = "light",
	sounds = default.node_sound_stone_defaults(),
})

--Spikes

minetest.register_node("warzone:spikes", {
	description = "Spikes",
	drawtype = "plantlike",
	tiles = {"warzone_spikes.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {cracky=3, fall_damage_add_percent=100},
    damage_per_second = 4,
    visual_scale = 1.1,
    liquid_viscosity = 7,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
})

minetest.register_node("warzone:spikes_red", {
	description = "Heated Spikes",
	drawtype = "plantlike",
	tiles = {"warzone_spikes_red.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {cracky=3, fall_damage_add_percent=100},
    damage_per_second = 8,
    light_source = 8,
    visual_scale = 1.1,
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
})


--crafts
    
minetest.register_craft({
	output = "warzone:spikes 6",
	recipe = {
		{"", "", ""},
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
		{"default:dirt", "default:dirt", "default:dirt"}
	}
})
