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
    minetest.register_node("warzone:concrete_corner_grey", {
	description = "Concrete with Grey Coloured Corner",
	tiles = {"warzone_concrete.png^warzone_corner_top_shadow.png^warzone_corner_top.png",
                 "warzone_concrete.png^warzone_corner_bottom_shadow.png^(warzone_corner_bottom.png^[transformR270)",
                 "warzone_concrete.png",
                 "warzone_concrete.png^warzone_corner_side_flipx_shadow.png^(warzone_corner_side.png^[transformFX)",
                 "warzone_concrete.png",
                 "warzone_concrete.png^warzone_corner_side_shadow.png^warzone_corner_side.png"                
                },
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
    paramtype2 = "facedir",
})

minetest.register_craft({
	output = "warzone:concrete_corner_grey",
	recipe = {
		{"", "dye:grey", ""},
		{"", "warzone:concrete", "dye:grey"},
		{"", "", ""}
	}
})


else
minetest.register_node("warzone:concrete_corner_" .. coding_name, {
	description = "Concrete with " .. real_name .. " Coloured Corner",
	tiles = {"warzone_concrete.png^warzone_corner_top_shadow.png^(warzone_corner_top.png^[colorize:#" .. hex_color .. "80)",
                 "warzone_concrete.png^warzone_corner_bottom_shadow.png^((warzone_corner_bottom.png^[colorize:#" .. hex_color .. "80)^[transformR270)",
                 "warzone_concrete.png",
                 "warzone_concrete.png^warzone_corner_side_flipx_shadow.png^(warzone_corner_side_flipx.png^[colorize:#" .. hex_color .. "80)",
                 "warzone_concrete.png",
                 "warzone_concrete.png^warzone_corner_side_shadow.png^(warzone_corner_side.png^[colorize:#" .. hex_color .. "80)"                
                },
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
    paramtype2 = "facedir",
})

minetest.register_craft({
	output = "warzone:concrete_corner" .. coding_name,
	recipe = {
		{"", "dye:" .. coding_name, ""},
		{"", "warzone:concrete", "dye:" .. coding_name},
		{"", "", ""}
	}
})

end
end

   
