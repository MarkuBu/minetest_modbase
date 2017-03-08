
local S = intllib.make_gettext_pair()

minetest.register_craftitem("coal:coal_lump", {
	description = S("Coal Lump"),
	inventory_image = "default_coal_lump.png",
	groups = {coal = 1, flammable = 1}
})

minetest.register_node("coal:stone_with_coal", {
	description = S("Coal Ore"),
	tiles = {"default_stone.png^default_mineral_coal.png"},
	groups = {cracky = 3},
	drop = 'coal:coal_lump',
	--~ sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("coal:coalblock", {
	description = S("Coal Block"),
	tiles = {"default_coal_block.png"},
	is_ground_content = false,
	groups = {cracky = 3},
	--~ sounds = default.node_sound_stone_defaults(),
})

-- Coal

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "coal:stone_with_coal",
	wherein        = "stone:stone",
	clust_scarcity = 8 * 8 * 8,
	clust_num_ores = 9,
	clust_size     = 3,
	y_min          = 1025,
	y_max          = 31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "coal:stone_with_coal",
	wherein        = "stone:stone",
	clust_scarcity = 8 * 8 * 8,
	clust_num_ores = 8,
	clust_size     = 3,
	y_min          = -31000,
	y_max          = 64,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "coal:stone_with_coal",
	wherein        = "stone:stone",
	clust_scarcity = 24 * 24 * 24,
	clust_num_ores = 27,
	clust_size     = 6,
	y_min          = -31000,
	y_max          = 0,
})


minetest.register_craft({
	output = 'coal:coalblock',
	recipe = {
		{'coal:coal_lump', 'coal:coal_lump', 'coal:coal_lump'},
		{'coal:coal_lump', 'coal:coal_lump', 'coal:coal_lump'},
		{'coal:coal_lump', 'coal:coal_lump', 'coal:coal_lump'},
	}
})

minetest.register_craft({
	output = 'coal:coal_lump 9',
	recipe = {
		{'coal:coalblock'},
	}
})


minetest.register_craft({
	type = "fuel",
	recipe = "coal:coal_lump",
	burntime = 40,
})

minetest.register_craft({
	type = "fuel",
	recipe = "coal:coalblock",
	burntime = 370,
})

print("Coal mod loaded")
