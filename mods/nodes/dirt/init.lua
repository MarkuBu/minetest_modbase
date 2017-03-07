
minetest.register_node("dirt:dirt", {
	description = "Dirt",
	tiles = {"default_dirt.png"},
	groups = {crumbly = 3, soil = 1},
	--~ sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("dirt:dirt_with_grass", {
	description = "Dirt with Grass",
	tiles = {"default_grass.png", "default_dirt.png",
		{name = "default_dirt.png^default_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = 'dirt:dirt',
	--~ sounds = default.node_sound_dirt_defaults({
		--~ footstep = {name = "default_grass_footstep", gain = 0.25},
	--~ }),
})

--~ minetest.register_node("dirt:dirt_with_grass_footsteps", {
	--~ description = "Dirt with Grass and Footsteps",
	--~ tiles = {"default_grass.png^default_footprint.png", "default_dirt.png",
		--~ {name = "default_dirt.png^default_grass_side.png",
			--~ tileable_vertical = false}},
	--~ groups = {crumbly = 3, soil = 1, not_in_creative_inventory = 1},
	--~ drop = 'dirt:dirt',
	--~ sounds = default.node_sound_dirt_defaults({
		--~ footstep = {name = "default_grass_footstep", gain = 0.25},
	--~ }),
--~ })

--~ minetest.register_node("dirt:dirt_with_dry_grass", {
	--~ description = "Dirt with Dry Grass",
	--~ tiles = {"default_dry_grass.png",
		--~ "default_dirt.png",
		--~ {name = "default_dirt.png^default_dry_grass_side.png",
			--~ tileable_vertical = false}},
	--~ groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	--~ drop = 'dirt:dirt',
	--~ sounds = default.node_sound_dirt_defaults({
		--~ footstep = {name = "default_grass_footstep", gain = 0.4},
	--~ }),
--~ })

--~ minetest.register_node("dirt:dirt_with_snow", {
	--~ description = "Dirt with Snow",
	--~ tiles = {"default_snow.png", "default_dirt.png",
		--~ {name = "default_dirt.png^default_snow_side.png",
			--~ tileable_vertical = false}},
	--~ groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1, snowy = 1},
	--~ drop = 'dirt:dirt',
	--~ sounds = default.node_sound_dirt_defaults({
		--~ footstep = {name = "default_snow_footstep", gain = 0.15},
	--~ }),
--~ })

--~ minetest.register_node("dirt:dirt_with_rainforest_litter", {
	--~ description = "Dirt with Rainforest Litter",
	--~ tiles = {
		--~ "default_rainforest_litter.png",
		--~ "default_dirt.png",
		--~ {name = "default_dirt.png^default_rainforest_litter_side.png",
			--~ tileable_vertical = false}
	--~ },
	--~ groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	--~ drop = "dirt:dirt",
	--~ sounds = default.node_sound_dirt_defaults({
		--~ footstep = {name = "default_grass_footstep", gain = 0.4},
	--~ }),
--~ })


print("Dirt mod loaded")
