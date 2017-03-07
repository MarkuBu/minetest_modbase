--
-- Aliases for map generator outputs
--

minetest.register_alias("mapgen_stone", "stone:stone")
minetest.register_alias("mapgen_dirt", "dirt:dirt")
minetest.register_alias("mapgen_dirt_with_grass", "dirt:dirt_with_grass")
minetest.register_alias("mapgen_sand", "sand:sand")
minetest.register_alias("mapgen_water_source", "liquids:water_source")
minetest.register_alias("mapgen_river_water_source", "liquids:river_water_source")
minetest.register_alias("mapgen_lava_source", "liquids:lava_source")
minetest.register_alias("mapgen_gravel", "default:gravel")
minetest.register_alias("mapgen_desert_stone", "stone:desert_stone")
minetest.register_alias("mapgen_desert_sand", "sand:desert_sand")
minetest.register_alias("mapgen_dirt_with_snow", "default:dirt_with_snow")
minetest.register_alias("mapgen_snowblock", "default:snowblock")
minetest.register_alias("mapgen_snow", "default:snow")
minetest.register_alias("mapgen_ice", "default:ice")
minetest.register_alias("mapgen_sandstone", "sand:sandstone")

-- Flora

minetest.register_alias("mapgen_tree", "default:tree")
minetest.register_alias("mapgen_leaves", "default:leaves")
minetest.register_alias("mapgen_apple", "default:apple")
minetest.register_alias("mapgen_jungletree", "default:jungletree")
minetest.register_alias("mapgen_jungleleaves", "default:jungleleaves")
minetest.register_alias("mapgen_junglegrass", "default:junglegrass")
minetest.register_alias("mapgen_pine_tree", "default:pine_tree")
minetest.register_alias("mapgen_pine_needles", "default:pine_needles")

-- Dungeons

minetest.register_alias("mapgen_cobble", "stone:cobble")
minetest.register_alias("mapgen_stair_cobble", "stairs:stair_cobble")
minetest.register_alias("mapgen_mossycobble", "stone:mossycobble")
minetest.register_alias("mapgen_stair_desert_stone", "stairs:stair_desert_stone")
minetest.register_alias("mapgen_sandstonebrick", "stone:sandstonebrick")
minetest.register_alias("mapgen_stair_sandstonebrick", "stairs:stair_sandstonebrick")

biomes = {}


local path = minetest.get_modpath("biomes")

minetest.clear_registered_decorations()
minetest.clear_registered_biomes()


local file = io.open(path .. "/biomes.csv", "r")
for line in file:lines() do
	local attribs = line:split(",", true)
	local name, stone, fill, top, dust, sea, river, riverbed, ymin, ymax, heat, humidity = unpack(attribs)

	if #name > 0 and name:sub(1,1) ~= "#" then
		-- Register biome
		local biome = {name=name}

		if stone and #stone > 0 then
			biome.node_stone = stone
		end

		if fill and #fill > 0 then
			fill = fill:split("%s", false, 1, true)
			biome.node_filler = fill[1]
			biome.depth_filler = tonumber(fill[2] or 1)
		end

		if top and #top > 0 then
			top = top:split("%s", false, 1, true)
			biome.node_top = top[1]
			biome.depth_top = tonumber(top[2] or 1)
		end

		if dust and #dust > 0 then
			biome.node_dust = dust
		end

		if sea and #sea > 0 then
			sea = sea:split("%s", false, 1, true)
			biome.node_water_top = sea[1]
			biome.depth_water_top = tonumber(sea[2] or 1)
		end

		if river and #river > 0 then
			biome.node_river_water = river
		end

		if riverbed and #riverbed > 0 then
			riverbed = riverbed:split("%s", false, 1, true)
			biome.node_riverbed = riverbed[1]
			biome.depth_riverbed = tonumber(riverbed[2] or 1)
		end

		biome.y_min = tonumber(ymin) or -31000
		biome.y_max = tonumber(ymax) or 31000
		biome.heat_point = tonumber(heat) or 50
		biome.humidity_point = tonumber(humidity) or 50

		local id = minetest.register_biome(biome)

		print("Biome \"" .. name .. "\" registered with ID=" .. id .. ", temperature " .. biome.heat_point .. ", humidity " .. biome.humidity_point .. ".")
	end
end

file:close()
