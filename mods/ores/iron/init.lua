
local S = intllib.make_gettext_pair()

minetest.register_node("iron:stone_with_iron", {
	description = S("Iron Ore"),
	tiles = {"default_stone.png^default_mineral_iron.png"},
	groups = {cracky = 2},
	drop = 'iron:iron_lump',
	--~ sounds = default.node_sound_stone_defaults(),
})


minetest.register_craftitem("iron:steel_ingot", {
	description = S("Steel Ingot"),
	inventory_image = "default_steel_ingot.png",
})


minetest.register_node("iron:steelblock", {
	description = S("Steel Block"),
	tiles = {"default_steel_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	--~ sounds = default.node_sound_metal_defaults(),
})


minetest.register_craftitem("iron:iron_lump", {
	description = S("Iron Lump"),
	inventory_image = "default_iron_lump.png",
})


minetest.register_craft({
	type = "cooking",
	output = "iron:steel_ingot",
	recipe = "iron:iron_lump",
})

-- Iron

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "iron:stone_with_iron",
	wherein        = "stone:stone",
	clust_scarcity = 9 * 9 * 9,
	clust_num_ores = 12,
	clust_size     = 3,
	y_min          = 1025,
	y_max          = 31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "iron:stone_with_iron",
	wherein        = "stone:stone",
	clust_scarcity = 7 * 7 * 7,
	clust_num_ores = 5,
	clust_size     = 3,
	y_min          = -31000,
	y_max          = 0,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "iron:stone_with_iron",
	wherein        = "stone:stone",
	clust_scarcity = 24 * 24 * 24,
	clust_num_ores = 27,
	clust_size     = 6,
	y_min          = -31000,
	y_max          = -64,
})


minetest.register_craft({
	output = 'iron:steelblock',
	recipe = {
		{'iron:steel_ingot', 'iron:steel_ingot', 'iron:steel_ingot'},
		{'iron:steel_ingot', 'iron:steel_ingot', 'iron:steel_ingot'},
		{'iron:steel_ingot', 'iron:steel_ingot', 'iron:steel_ingot'},
	}
})

minetest.register_craft({
	output = 'iron:steel_ingot 9',
	recipe = {
		{'iron:steelblock'},
	}
})


stairs.register_stair_and_slab(
	"steelblock",
	"iron:steelblock",
	{cracky = 1, level = 2},
	{"default_steel_block.png"},
	"Steel Block Stair",
	"Steel Block Slab",
	nil
)
