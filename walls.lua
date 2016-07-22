minetest.register_node("warzone:concrete", {
	description = "Concrete",
	tiles = {"warzone_concrete.png"},
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("warzone:hardcrete", {
	description = "Hardcrete",
	tiles = {"warzone_hardcrete.png"},
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("warzone:plastcrete", {
	description = "Plastcrete",
	tiles = {"warzone_plastcrete.png"},
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
})

stairsplus:register_all("warzone", "concrete" , "warzone:concrete", {
    description = "Concrete",
    tiles = {"warzone_concrete.png"},
    groups = {cracky = 2},
    sounds = default.node_sound_stone_defaults(),
})

stairsplus:register_all("warzone", "hardcrete" , "warzone:hardcrete", {
    description = "Hardcrete",
    tiles = {"warzone_hardcrete.png"},
    groups = {cracky = 1},
    sounds = default.node_sound_stone_defaults(),
})

stairsplus:register_all("warzone", "plastcrete" , "warzone:plastcrete", {
    description = "Plastcrete",
    tiles = {"warzone_plastcrete.png"},
    groups = {cracky = 2},
    sounds = default.node_sound_stone_defaults(),
})

--Lamps (if building mod is enabled)

if warzone_building_version == 1 then

   minetest.register_node("warzone:concrete_lamp", {
	description = "Concrete Lamp",
	tiles = {"warzone_concrete.png", 
             "warzone_concrete.png", 
             "warzone_concrete_light.png", 
             "warzone_concrete_light.png", 
             "warzone_concrete_light.png", 
             "warzone_concrete_light.png", 
    },
	groups = {cracky = 2},
    light_source = 12,
	sounds = default.node_sound_stone_defaults(),
}) 

   minetest.register_node("warzone:hardcrete_lamp", {
	description = "Hardcrete Lamp",
	tiles = {"warzone_hardcrete.png", 
             "warzone_hardcrete.png", 
             "warzone_hardcrete_light.png", 
             "warzone_hardcrete_light.png", 
             "warzone_hardcrete_light.png", 
             "warzone_hardcrete_light.png", 
    },
	groups = {cracky = 2},
    light_source = 12,
	sounds = default.node_sound_stone_defaults(),
}) 

   minetest.register_node("warzone:plastcrete_lamp", {
	description = "Plastcrete Lamp",
	tiles = {"warzone_plastcrete.png", 
             "warzone_plastcrete.png", 
             "warzone_plastcrete_light.png", 
             "warzone_plastcrete_light.png", 
             "warzone_plastcrete_light.png", 
             "warzone_plastcrete_light.png", 
    },
	groups = {cracky = 2},
    light_source = 12,
	sounds = default.node_sound_stone_defaults(),
}) 
 
else 
end

--Plating
local colours = {
    {"red", "Red", "FF0000"},
    {"orange", "Orange", "FF8000"},
    {"yellow", "Yellow", "FFFF00"},
    {"green", "Green", "00FF00"},
    {"darkgreen", "Dark Green", "008000"},
    {"blue", "Blue", "0000FF"},
    {"violet", "Violet", "8000FF"},
    {"pink", "Pink", "FF00FF"},
    {"magenta", "Magenta", "FF0080"},
    {"brown", "Brown", "400C00"},
    {"white", "White", "FFFFFF"},
    {"grey", "Grey", "808080"},
    {"darkgrey", "Dark Grey", "404040"},
    {"black", "Black", "000000"},
}

for _, rowc in ipairs(colours) do
        local coding_name = rowc[1]
        local real_name = rowc[2]
	local hex_color = rowc[3]
if hex_color == "808080" then 
    minetest.register_node("warzone:plating_grey", {
	description = "Grey Plating",
	tiles = {"warzone_plating.png"},
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
})
stairsplus:register_all("warzone","grey" , "warzone_plating_grey", {
    description = "Grey Plating",
    tiles = {"warzone_plating.png"},
    groups = {cracky = 1},
    sounds = default.node_sound_stone_defaults(),
})
else
minetest.register_node("warzone:plating_" .. coding_name, {
	description = real_name .. " Plating",
	tiles = {"warzone_plating.png^[colorize:#" .. hex_color .. "80"},
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
})
stairsplus:register_all("warzone", coding_name , "warzone:plating_" .. coding_name, {
    description = real_name .. " Plating",
    tiles = {"warzone_plating.png^[colorize:#" .. hex_color .. "80"},
    groups = {cracky = 1},
    sounds = default.node_sound_stone_defaults(),
})
end

--Crafts
if warzone_building_version == 1 then
    
    minetest.register_craft({
	output = "warzone:plating_" .. coding_name ..  " 10",
	recipe = {
		{"default:stone_block", "dye:" .. coding_name, "default:stone_block"},
		{"dye:" .. coding_name, "default:steel_block", "dye:" .. coding_name},
		{"default:stone_block", "dye:" .. coding_name, "default:stone_block"}
	}
})
else
    
minetest.register_craft({
	output = "warzone:plating_" .. coding_name ..  " 8",
	recipe = {
		{"dye:" .. coding_name, "dye:" .. coding_name, "dye:" .. coding_name},
		{"dye:" .. coding_name, "default:steel_ingot", "dye:" .. coding_name},
		{"dye:" .. coding_name, "dye:" .. coding_name, "dye:" .. coding_name}
	}
})
end

end

--craftitems

minetest.register_craftitem("warzone:plastic", {
    description = "Plastic",
    inventory_image = "warzone_plastic.png"
})

--crafts

minetest.register_craft({
	output = "warzone:plastic 9",
	recipe = {
		{"group:leaves", "group:leaves", "group:leaves"},
		{"group:leaves", "group:leaves", "group:leaves"},
		{"", "", ""}
	}
})
 --holes

minetest.register_node("warzone:hole_concrete", {
	tiles = {"warzone_concrete.png"},
	drawtype = "nodebox",
        description = "Concrete Hole / Window",
	paramtype = "light",
        paramtype2 = "facedir",
        groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.25, -0.25, 0.5, 0.5, 0.25},
			{-0.5, -0.5, -0.25, 0.5, -0.25, 0.25},
			{0.25, -0.5, -0.25, 0.5, 0.5, 0.25},
			{-0.5, -0.5, -0.25, -0.25, 0.5, 0.25},
			{0.0625, -0.5, -0.0625, 0.5, -0.0625, 0.125},
			{-0.5, -0.5, -0.125, -0.0625, -0.0625, 0.125},
			{-0.5, 0.0625, -0.125, -0.0625, 0.5, 0.125},
			{0.0625, 0.0625, -0.0625, 0.5, 0.5, 0.125},
		}
	}
})

minetest.register_node("warzone:hole_hardcrete", {
	tiles = {"warzone_hardcrete.png"},
	drawtype = "nodebox",
        description = "Hardcrete Hole / Window",
	paramtype = "light",
        paramtype2 = "facedir",
        groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.25, -0.25, 0.5, 0.5, 0.25},
			{-0.5, -0.5, -0.25, 0.5, -0.25, 0.25},
			{0.25, -0.5, -0.25, 0.5, 0.5, 0.25},
			{-0.5, -0.5, -0.25, -0.25, 0.5, 0.25},
			{0.0625, -0.5, -0.0625, 0.5, -0.0625, 0.125},
			{-0.5, -0.5, -0.125, -0.0625, -0.0625, 0.125},
			{-0.5, 0.0625, -0.125, -0.0625, 0.5, 0.125},
			{0.0625, 0.0625, -0.0625, 0.5, 0.5, 0.125},
		}
	}
})

minetest.register_node("warzone:hole_plastcrete", {
	tiles = {"warzone_plastcrete.png"},
	drawtype = "nodebox",
        description = "Plastcrete Hole / Window",
	paramtype = "light",
        paramtype2 = "facedir",
        groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.25, -0.25, 0.5, 0.5, 0.25},
			{-0.5, -0.5, -0.25, 0.5, -0.25, 0.25},
			{0.25, -0.5, -0.25, 0.5, 0.5, 0.25},
			{-0.5, -0.5, -0.25, -0.25, 0.5, 0.25},
			{0.0625, -0.5, -0.0625, 0.5, -0.0625, 0.125},
			{-0.5, -0.5, -0.125, -0.0625, -0.0625, 0.125},
			{-0.5, 0.0625, -0.125, -0.0625, 0.5, 0.125},
			{0.0625, 0.0625, -0.0625, 0.5, 0.5, 0.125},
		}
	}
})
