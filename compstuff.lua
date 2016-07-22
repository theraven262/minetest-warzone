--Computer panels and stuff

minetest.register_node("warzone:computer_panel", {
	description = "Computer Panel",
	tiles = {"warzone_computer_panel.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("warzone:computer_panel_half", {
	description = "Computer Panel",
	tiles = {   "warzone_computer_panel_quarter.png",
                "warzone_computer_panel_quarter.png",
                "warzone_computer_panel_half.png",
                "warzone_computer_panel_half.png",
                "warzone_computer_panel_half.png",
                "warzone_computer_panel_half.png",
    
    },
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("warzone:computer_panel_quarter", {
	description = "Computer Panel",
	tiles = {"warzone_computer_panel_quarter.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

stairsplus:register_all("warzone", "computer_panel_quarter" , "warzone:computer_panel_quarter", {
    description = "Computer Panel",
    tiles = {"warzone_computer_panel_quarter.png"},
    groups = {cracky = 3},
    sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("warzone:computer_panel_tech", {
	description = "Computer Panel With Some Electrical Instalations Inside",
	tiles = {"warzone_computer_panel_tech.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("warzone:computer_panel_vent", {
	description = "Computer Panel With Ventilation Aperture",
	tiles = {"warzone_computer_panel_vent.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("warzone:computer_circuits", {
	description = "Computer Circuits",
	tiles = {"warzone_computer_circuits.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

stairsplus:register_all("warzone", "computer_circuits" , "warzone:computer_circuits", {
    description = "Computer Circuits",
    tiles = {"warzone_computer_circuits.png"},
    groups = {cracky = 3},
    sounds = default.node_sound_stone_defaults(),
})
--Animated Computer Screen

minetest.register_node("warzone:computer_screen_animated", {
    description = "Animated Computer Screen",
    tiles = {
                
                "warzone_computer_panel.png",
                "warzone_computer_panel.png",
                "warzone_computer_panel.png",
                "warzone_computer_panel.png",
                "warzone_computer_panel_vent.png",
                {
                    name = "warzone_computer_screen_animated.png",
                    animation = {
                                    type = "vertical_frames",
                                    aspect_w = 16,
                                    aspect_h = 16,
                                    length = 1.5,
                                },
                },

            },
        paramtype2 = "facedir",
        light_source = 4,
   groups = {cracky = 3},
})

---Lamp

minetest.register_node("warzone:tech_lamp", {
	tiles = {
		"warzone_lamp_top.png",
		"warzone_lamp_bottom.png",
		"warzone_lamp_side_bottom.png",
		"warzone_lamp_side_bottom.png",
		"warzone_lamp_side_bottom.png",
		"warzone_lamp_side_bottom.png"
	},
    
	drawtype = "nodebox",
	paramtype = "light",
    groups = {cracky = 3},
    light_source =  8,
    description = "Tech Lamp",
    on_rotate = screwdriver.disallow,
    inventory_image = "warzone_tech_lamp.png",
    wield_image = "warzone_tech_lamp.png",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.3125, 0.25, -0.4375, 0.3125}, -- NodeBox1
			{-0.3125, -0.5, -0.25, 0.3125, -0.4375, 0.25}, -- NodeBox2
			{-0.1875, -0.5, -0.375, 0.1875, -0.4375, 0.375}, -- NodeBox3
			{-0.375, -0.5, -0.1875, 0.375, -0.4375, 0.1875}, -- NodeBox4
			{-0.3125, -0.4375, -0.1875, 0.3125, -0.375, 0.1875}, -- NodeBox5
			{-0.1875, -0.4375, -0.3125, 0.1875, -0.375, 0.3125}, -- NodeBox6
			{-0.25, -0.4375, -0.25, 0.25, -0.375, 0.25}, -- NodeBox7
			{-0.1875, -0.375, -0.1875, 0.1875, -0.25, 0.1875}, -- NodeBox8
			{-0.25, -0.375, -0.125, 0.25, -0.25, 0.125}, -- NodeBox9
			{-0.125, -0.375, -0.25, 0.125, -0.25, 0.25}, -- NodeBox10
			{-0.125, -0.25, -0.125, 0.125, 0.5, 0.125}, -- high_base
			{-0.0625, -0.25, -0.1875, 0.0625, 0.5, 0.1875}, -- sides1
			{-0.1875, -0.25, -0.0625, 0.1875, 0.5, 0.0625}, -- sides2
			{-0.1875, -0.1875, -0.1875, 0.1875, -0.125, 0.1875}, -- NodeBox14
			{-0.25, -0.1875, -0.125, 0.25, -0.125, 0.125}, -- NodeBox15
			{-0.125, -0.1875, -0.25, 0.125, -0.125, 0.25}, -- NodeBox16
			{-0.1875, -0.0625, -0.1875, 0.1875, 0, 0.1875}, -- NodeBox17
			{-0.25, -0.0625, -0.125, 0.25, 0, 0.125}, -- NodeBox18
			{-0.125, -0.0625, -0.25, 0.125, 0, 0.25}, -- NodeBox19
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625}, -- top_thingy
		}
	},
    
after_place_node = function(pos, placer, itemstack)
        local pos_up = {x = pos.x, y = pos.y+1, z = pos.z}
        local node_up = minetest.get_node(pos_up)
            if node_up and node_up.name == "air" then
                minetest.set_node(pos_up, {name="warzone:tech_lamp_top"})
            else 
                minetest.chat_send_player(placer:get_player_name(), "No room to place the lamp!")
                minetest.set_node(pos, {name="air"})
                return itemstack
            end
    end,
    
after_dig_node = function(pos)
    local pos_up = {x = pos.x, y = pos.y+1, z = pos.z}
    local node_up = minetest.get_node(pos_up)
        if node_up and node_up.name == "warzone:tech_lamp_top" then
            minetest.remove_node(pos_up)
        else
            minetest.chat_send_player(placer:get_player_name(), "It seems that your lamp was not complete...")
    end
    end
  })

--top


minetest.register_node("warzone:tech_lamp_top", {
	tiles = {
		"warzone_lamp_top.png",
		"warzone_lamp_bottom.png",
		"warzone_lamp_side_top.png",
		"warzone_lamp_side_top.png",
		"warzone_lamp_side_top.png",
		"warzone_lamp_side_top.png"
	},
	drawtype = "nodebox",
    groups = {cracky = 3, not_in_creative_inventory = 1},
    pointable = false,
    diggable = false,
    description = "Tech Lamp",
    light_source =  14,
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.125, -0.0625, 0.125}, -- NodeBox1
			{-0.0625, -0.5, -0.1875, 0.0625, -0.0625, 0.1875}, -- NodeBox2
			{-0.1875, -0.5, -0.0625, 0.1875, -0.0625, 0.0625}, -- NodeBox3
			{-0.0625, -0.5, -0.0625, 0.0625, 0, 0.0625}, -- NodeBox4
		}
	}
})




--[[
minetest.register_node("warzone:tech_lamp", {
	description = "Tech Lamp",
	tiles = {"warzone_tech_lamp.png"},
	groups = {cracky = 3},
    drawtype = "plantlike",
    paramtype = "light",
    light_source =  14,
    visual_scale = 1.25
})
]]--
--Display Glass Stuff

minetest.register_node("warzone:display_glass", {
	description = "Empty Display Glass",
    tiles = {"warzone_display_empty.png"},
    paramtype = "light",
    paramtype2 = "facedir",
    use_texture_alpha = true,
    drawtype = "nodebox",
    node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5},
		}
	},
  	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
})


--Transition panels
local materials = {
            {"default", "cobble", "Cobblestone"},
            {"default", "stone", "Stone"},
            {"default", "stone_brick", "Stone Brick"},
            {"default", "stone_block", "Stone Block"},
            {"default", "mossycobble", "Mossy Cobblestone"},
            
            {"default", "desert_stone", "Desert Stone"},
            {"default", "desert_cobble", "Desert Cobble"},
            {"default", "desert_stone_brick", "Desert Stone Brick"},
            {"default", "desert_stone_block", "Desert Stone Block"},
            
            {"default", "sandstone", "Sandstone"},
            {"default", "sandstone_brick", "Sandstone Brick"},
            {"default", "sandstone_block", "Snadstone Block"},
            
            {"default", "obsidian", "Obsidian"},
            {"default", "obsidian_brick", "Obsidian Brick"},
            {"default", "obsidian_block", "Obsidian Block"},
            
            {"default", "brick", "Brick"},
            
            {"warzone", "concrete", "Concrete"},
            {"warzone", "plastcrete", "Plastcrete"},
            {"warzone", "hardcrete", "Hardcrete"},
            
            {"warzone", "computer_circuits", "Computer Circuits"},
}

for _, rowc in ipairs(materials) do
        local modname = rowc[1]
        local nodename = rowc[2]
        local node_real_name = rowc[3]
minetest.register_node("warzone:computer_transition_" .. modname .. "_" .. nodename, {
	description = "Computer Panel Transition to " .. node_real_name,
	tiles = {   
                modname .. "_" .. nodename .. ".png^(warzone_computer_panel_transition.png^[transformR270)",
                modname .. "_" .. nodename .. ".png^(warzone_computer_panel_transition.png^[transformR90)",
                modname .. "_" .. nodename .. ".png^(warzone_computer_panel_transition.png^[transformFX)",
                modname .. "_" .. nodename .. ".png^warzone_computer_panel_transition.png",
                "warzone_computer_panel.png",
                modname .. "_" .. nodename .. ".png",
            },
	groups = {cracky = 3},
    paramtype2 = "facedir",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = "warzone:computer_transition_" .. modname .. "_" .. nodename .. " 2",
	recipe = {
		{"", "", ""},
		{"", modname .. ":" .. nodename, "warzone:computer_panel"},
		{"", "", ""}
	}
})

end



--Locked Computer Storage

local function get_locked_computer_storage_formspec(pos)
	local spos = pos.x .. "," .. pos.y .. "," .. pos.z
	local formspec =
		"size[8,9]" ..
		default.gui_bg ..
		default.gui_bg_img ..
		default.gui_slots ..
		"list[nodemeta:" .. spos .. ";main;0,0.3;8,4;]" ..
		"list[current_player;main;0,4.85;8,1;]" ..
		"list[current_player;main;0,6.08;8,3;8]" ..
		"listring[nodemeta:" .. spos .. ";main]" ..
		"listring[current_player;main]" ..
		default.get_hotbar_bg(0,4.85)
 return formspec
end

local function has_locked_storage_privilege(meta, player)
	local name = ""
	if player then
		if minetest.check_player_privs(player, "protection_bypass") then
			return true
		end
		name = player:get_player_name()
	end
	if name ~= meta:get_string("owner") then
		return false
	end
	return true
end


minetest.register_node("warzone:computer_storage", {
	description = "Locked Computer Storage",
	tiles = {"warzone_computer_panel.png", 
             "warzone_computer_panel.png", 
             "warzone_computer_panel.png",
             "warzone_computer_panel.png", 
             "warzone_computer_panel.png", 
             "warzone_computer_panel_warning_lock.png"},
	paramtype2 = "facedir",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),

	after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "Locked Computer Storage (owned by " ..
				meta:get_string("owner") .. ")")
	end,
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", "")
		local inv = meta:get_inventory()
		inv:set_size("main", 8 * 4)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main") and has_locked_storage_privilege(meta, player)
	end,
	allow_metadata_inventory_move = function(pos, from_list, from_index,
			to_list, to_index, count, player)
		local meta = minetest.get_meta(pos)
		if not has_locked_storage_privilege(meta, player) then
			return 0
		end
		return count
	end,
    allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		if not has_locked_storage_privilege(meta, player) then
			return 0
		end
		return stack:get_count()
	end,
    allow_metadata_inventory_take = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		if not has_locked_storage_privilege(meta, player) then
			return 0
		end
		return stack:get_count()
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" moves " .. stack:get_name() ..
			" to locked computer storage at " .. minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" takes " .. stack:get_name()  ..
			" from locked computer storage at " .. minetest.pos_to_string(pos))
	end,
	on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
		local meta = minetest.get_meta(pos)
		if has_locked_storage_privilege(meta, clicker) then
			minetest.show_formspec(
				clicker:get_player_name(),
				"warzone:computer_storage",
				get_locked_computer_storage_formspec(pos)
			)
		end
		return itemstack
	end,
	on_blast = function() end,
})
