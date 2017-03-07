-- Bush

local treepath = minetest.get_modpath("tree") .."/schematics"

--
-- Nodes
--

minetest.register_node("bush:stem", {
	description = "Bush Stem",
	drawtype = "plantlike",
	visual_scale = 1.18,
	tiles = {"default_bush_stem.png"},
	inventory_image = "default_bush_stem.png",
	wield_image = "default_bush_stem.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	--~ sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.54, 7 / 16},
	},
})

minetest.register_node("bush:leaves", {
	description = "Bush Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"nodeboxtrees_leaves_simple.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1},
	--~ sounds = default.node_sound_leaves_defaults(),
})


minetest.override_item("bush:leaves", {
	drawtype = "mesh",
	tiles = {"nodeboxtrees_leaves.png"},
	wield_scale = {x = 0.5, y = 0.5, z = 0.5},
	mesh = "leaf.obj",
	paramtype = "light",
})

--
-- Decoration
--

dofile(treepath.."/bush.lua")

local bush = tree.get_bush("bush:stem", "bush:leaves")

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"dirt:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.004,
		scale = 0.01,
		spread = {x = 100, y = 100, z = 100},
		seed = 137,
		octaves = 3,
		persist = 0.7,
	},
	biomes = {"grassland"},
	y_min = 1,
	y_max = 31000,
	schematic = bush,
	flags = "place_center_x, place_center_z",
})


dofile(treepath.."/bush1.lua")

local bush1 = tree.get_bush1("bush:stem", "bush:leaves")

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"dirt:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.0005,
		scale = 0.005,
		spread = {x = 250, y = 250, z = 250},
		seed = 13456345,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"grassland"},
	y_min = 1,
	y_max = 31000,
	schematic = bush1,
	flags = "place_center_x, place_center_z",
})

dofile(treepath.."/bush2.lua")

local bush2 = tree.get_bush2("bush:stem", "bush:leaves")

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"dirt:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.0005,
		scale = 0.005,
		spread = {x = 250, y = 250, z = 250},
		seed = 745625,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"grassland"},
	y_min = 1,
	y_max = 31000,
	schematic = bush2,
	flags = "place_center_x, place_center_z",
})

dofile(treepath.."/bush3.lua")

local bush3 = tree.get_bush3("bush:stem", "bush:leaves")

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"dirt:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.0005,
		scale = 0.005,
		spread = {x = 250, y = 250, z = 250},
		seed = 7452456,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"grassland"},
	y_min = 1,
	y_max = 31000,
	schematic = bush3,
	flags = "place_center_x, place_center_z",
})

dofile(treepath.."/bush4.lua")

local bush4 = tree.get_bush4("bush:stem", "bush:leaves")

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"dirt:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.0005,
		scale = 0.005,
		spread = {x = 250, y = 250, z = 250},
		seed = 234577,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"grassland"},
	y_min = 1,
	y_max = 31000,
	schematic = bush4,
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"dirt:dirt_with_grass"},
	sidelen = 16,
	fill_ratio = 0.2,
	biomes = {"grassland"},
	y_min = 0,
	y_max = 31000,
	schematic = bush,
	flags = "place_center_x, place_center_z",
	spawn_by = "liquids:water_source",
	num_spawn_by = 1,
})

--
-- Recipes
--

--~ minetest.register_craft({
	--~ output = 'oaktree:wood',
	--~ recipe = {
		--~ {'bush:stem'},
	--~ }
--~ })

minetest.register_craft({
	type = "fuel",
	recipe = "bush:stem",
	burntime = 7,
})


tree.register_leafdecay({
	trunks = {"bush:stem"},
	leaves = {
			"bush:leaves",
	},
	radius = 2,
})

print("Bush mod loaded")
