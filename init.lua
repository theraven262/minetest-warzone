dofile(minetest.get_modpath("warzone").."/default_values.txt")

dofile(minetest.get_modpath("warzone").."/walls.lua")
dofile(minetest.get_modpath("warzone").."/functions.lua")
dofile(minetest.get_modpath("warzone").."/jumppad.lua")
dofile(minetest.get_modpath("warzone").."/speedpad.lua")

if warzone_building_version == 1 then
    
    dofile(minetest.get_modpath("warzone").."/corners.lua")
    dofile(minetest.get_modpath("warzone").."/compstuff.lua")
     dofile(minetest.get_modpath("warzone").."/crafting_building_version.lua")

else 
    dofile(minetest.get_modpath("warzone").."/crafts.lua")
    dofile(minetest.get_modpath("warzone").."/traps.lua")
end

