warzone = {}
warzone.heat_spikes = function(pos, node)
	if node.name == "warzone:spikes" then
		minetest.set_node(pos, {name = "warzone:spikes_red"})
	end
    end

minetest.register_abm({
	nodenames = {"warzone:spikes"},
	neighbors = {"default:lava_source", "default:lava_flowing"},
	interval = 1,
	chance = 1,
	catch_up = false,
	action = function(...)
		warzone.heat_spikes(...)
	end,
})

warzone.heat_jumppad = function(pos, node)
	if node.name == "warzone:jumppad" then
		minetest.set_node(pos, {name = "warzone:insane_jumppad"})
	end
    end

  minetest.register_abm({
	nodenames = {"warzone:jumppad"},
	neighbors = {"default:lava_source", "default:lava_flowing"},
	interval = 1,
	chance = 1,
	catch_up = false,
	action = function(...)
		warzone.heat_jumppad(...)
	end,
})  
    
local function doCheck(name)
   for _,player in pairs(minetest.get_connected_players()) do
   local name = player:get_player_name()
   local pos = player:getpos()
   if minetest.get_node(pos).name == "warzone:spikes" then
       player:set_physics_override({
			speed = 0.3
		})
   elseif minetest.get_node(pos).name == "warzone:spikes_red" then
       player:set_physics_override({
			speed = 0.1
		})
    elseif minetest.get_node(pos).name == "warzone:speedpad" then
       player:set_physics_override({
			speed = 15
		})
   elseif minetest.get_node(pos).name == "warzone:jumppad" then
       player:set_physics_override({
			jump = 3
		})
    elseif minetest.get_node(pos).name == "warzone:insane_jumppad" then
       player:set_physics_override({
			jump = 5
		})
   else
                     player:set_physics_override({
                        speed = 1,
                        jump = 1
		})  
   end

end
end

minetest.register_globalstep(function(dtime)
doCheck()
end)
    
