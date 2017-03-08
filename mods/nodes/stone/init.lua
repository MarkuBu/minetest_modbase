
local S = intllib.make_gettext_pair()

minetest.register_node("stone:stone", {
	description = S("Stone"),
	tiles = {"default_stone.png"},
	groups = {cracky = 3, stone = 1},
	drop = 'stone:cobble',
	legacy_mineral = true,
	--~ sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("stone:cobble", {
	description = S("Cobblestone"),
	tiles = {"default_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	--~ sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("stone:stonebrick", {
	description = S("Stone Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"default_stone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	--~ sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("stone:stone_block", {
	description = S("Stone Block"),
	tiles = {"default_stone_block.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	--~ sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("stone:mossycobble", {
	description = S("Mossy Cobblestone"),
	tiles = {"default_mossycobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	--~ sounds = default.node_sound_stone_defaults(),
})


minetest.register_node("stone:desert_stone", {
	description = S("Desert Stone"),
	tiles = {"default_desert_stone.png"},
	groups = {cracky = 3, stone = 1},
	drop = 'stone:desert_cobble',
	legacy_mineral = true,
	--~ sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("stone:desert_cobble", {
	description = S("Desert Cobblestone"),
	tiles = {"default_desert_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	--~ sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("stone:desert_stonebrick", {
	description = S("Desert Stone Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"default_desert_stone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	--~ sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("stone:desert_stone_block", {
	description = S("Desert Stone Block"),
	tiles = {"default_desert_stone_block.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	--~ sounds = default.node_sound_stone_defaults(),
})


stairs.register_stair_and_slab(
	"stone",
	"stone:stone",
	{cracky = 3},
	{"default_stone.png"},
	S("Stone Stair"),
	S("Stone Slab"),
	nil
)

stairs.register_stair_and_slab(
	"cobble",
	"stone:cobble",
	{cracky = 3},
	{"default_cobble.png"},
	S("Cobblestone Stair"),
	S("Cobblestone Slab"),
	nil
)

stairs.register_stair_and_slab(
	"mossycobble",
	"stone:mossycobble",
	{cracky = 3},
	{"default_mossycobble.png"},
	S("Mossy Cobblestone Stair"),
	S("Mossy Cobblestone Slab"),
	nil
)

stairs.register_stair_and_slab(
	"stonebrick",
	"stone:stonebrick",
	{cracky = 2},
	{"default_stone_brick.png"},
	S("Stone Brick Stair"),
	S("Stone Brick Slab"),
	nil
)

stairs.register_stair_and_slab(
	"stone_block",
	"stone:stone_block",
	{cracky = 2},
	{"default_stone_block.png"},
	S("Stone Block Stair"),
	S("Stone Block Slab"),
	nil
)

stairs.register_stair_and_slab(
	"desert_stone",
	"stone:desert_stone",
	{cracky = 3},
	{"default_desert_stone.png"},
	S("Desert Stone Stair"),
	S("Desert Stone Slab"),
	nil
)

stairs.register_stair_and_slab(
	"desert_cobble",
	"stone:desert_cobble",
	{cracky = 3},
	{"default_desert_cobble.png"},
	S("Desert Cobblestone Stair"),
	S("Desert Cobblestone Slab"),
	nil
)

stairs.register_stair_and_slab(
	"desert_stonebrick",
	"stone:desert_stonebrick",
	{cracky = 2},
	{"default_desert_stone_brick.png"},
	S("Desert Stone Brick Stair"),
	S("Desert Stone Brick Slab"),
	nil
)

stairs.register_stair_and_slab(
	"desert_stone_block",
	"stone:desert_stone_block",
	{cracky = 2},
	{"default_desert_stone_block.png"},
	S("Desert Stone Block Stair"),
	S("Desert Stone Block Slab"),
	nil
)


minetest.register_craft({
	output = 'stone:stonebrick 4',
	recipe = {
		{'stone:stone', 'stone:stone'},
		{'stone:stone', 'stone:stone'},
	}
})

minetest.register_craft({
	output = 'stone:stone_block 9',
	recipe = {
		{'stone:stone', 'stone:stone', 'stone:stone'},
		{'stone:stone', 'stone:stone', 'stone:stone'},
		{'stone:stone', 'stone:stone', 'stone:stone'},
	}
})

minetest.register_craft({
	output = 'stone:desert_stonebrick 4',
	recipe = {
		{'stone:desert_stone', 'stone:desert_stone'},
		{'stone:desert_stone', 'stone:desert_stone'},
	}
})

minetest.register_craft({
	output = 'stone:desert_stone_block 9',
	recipe = {
		{'stone:desert_stone', 'stone:desert_stone', 'stone:desert_stone'},
		{'stone:desert_stone', 'stone:desert_stone', 'stone:desert_stone'},
		{'stone:desert_stone', 'stone:desert_stone', 'stone:desert_stone'},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "stone:stone",
	recipe = "stone:cobble",
})

minetest.register_craft({
	type = "cooking",
	output = "stone:stone",
	recipe = "stone:mossycobble",
})

minetest.register_craft({
	type = "cooking",
	output = "stone:desert_stone",
	recipe = "stone:desert_cobble",
})

print("Stone mod loaded")
