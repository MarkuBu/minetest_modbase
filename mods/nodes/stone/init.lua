
minetest.register_node("stone:stone", {
	description = "Stone",
	tiles = {"default_stone.png"},
	groups = {cracky = 3, stone = 1},
	drop = 'stone:cobble',
	legacy_mineral = true,
	--~ sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("stone:cobble", {
	description = "Cobblestone",
	tiles = {"default_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	--~ sounds = default.node_sound_stone_defaults(),
})

--~ minetest.register_node("stone:stonebrick", {
	--~ description = "Stone Brick",
	--~ paramtype2 = "facedir",
	--~ place_param2 = 0,
	--~ tiles = {"default_stone_brick.png"},
	--~ is_ground_content = false,
	--~ groups = {cracky = 2, stone = 1},
	--~ sounds = default.node_sound_stone_defaults(),
--~ })

--~ minetest.register_node("stone:stone_block", {
	--~ description = "Stone Block",
	--~ tiles = {"default_stone_block.png"},
	--~ is_ground_content = false,
	--~ groups = {cracky = 2, stone = 1},
	--~ sounds = default.node_sound_stone_defaults(),
--~ })

minetest.register_node("stone:mossycobble", {
	description = "Mossy Cobblestone",
	tiles = {"default_mossycobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	--~ sounds = default.node_sound_stone_defaults(),
})


--~ minetest.register_node("stone:desert_stone", {
	--~ description = "Desert Stone",
	--~ tiles = {"default_desert_stone.png"},
	--~ groups = {cracky = 3, stone = 1},
	--~ drop = 'stone:desert_cobble',
	--~ legacy_mineral = true,
	--~ sounds = default.node_sound_stone_defaults(),
--~ })

--~ minetest.register_node("stone:desert_cobble", {
	--~ description = "Desert Cobblestone",
	--~ tiles = {"default_desert_cobble.png"},
	--~ is_ground_content = false,
	--~ groups = {cracky = 3, stone = 2},
	--~ sounds = default.node_sound_stone_defaults(),
--~ })

--~ minetest.register_node("stone:desert_stonebrick", {
	--~ description = "Desert Stone Brick",
	--~ paramtype2 = "facedir",
	--~ place_param2 = 0,
	--~ tiles = {"default_desert_stone_brick.png"},
	--~ is_ground_content = false,
	--~ groups = {cracky = 2, stone = 1},
	--~ sounds = default.node_sound_stone_defaults(),
--~ })

--~ minetest.register_node("stone:desert_stone_block", {
	--~ description = "Desert Stone Block",
	--~ tiles = {"default_desert_stone_block.png"},
	--~ is_ground_content = false,
	--~ groups = {cracky = 2, stone = 1},
	--~ sounds = default.node_sound_stone_defaults(),
--~ })


stairs.register_stair_and_slab(
	"stone",
	"stone:stone",
	{cracky = 3},
	{"default_stone.png"},
	"Stone Stair",
	"Stone Slab",
	nil
)

stairs.register_stair_and_slab(
	"cobble",
	"stone:cobble",
	{cracky = 3},
	{"default_cobble.png"},
	"Cobblestone Stair",
	"Cobblestone Slab",
	nil
)

stairs.register_stair_and_slab(
	"mossycobble",
	"stone:mossycobble",
	{cracky = 3},
	{"default_mossycobble.png"},
	"Mossy Cobblestone Stair",
	"Mossy Cobblestone Slab",
	nil
)

--~ stairs.register_stair_and_slab(
	--~ "stonebrick",
	--~ "stone:stonebrick",
	--~ {cracky = 2},
	--~ {"default_stone_brick.png"},
	--~ "Stone Brick Stair",
	--~ "Stone Brick Slab",
	--~ default.node_sound_stone_defaults()
--~ )

--~ stairs.register_stair_and_slab(
	--~ "stone_block",
	--~ "stone:stone_block",
	--~ {cracky = 2},
	--~ {"default_stone_block.png"},
	--~ "Stone Block Stair",
	--~ "Stone Block Slab",
	--~ default.node_sound_stone_defaults()
--~ )

--~ stairs.register_stair_and_slab(
	--~ "desert_stone",
	--~ "stone:desert_stone",
	--~ {cracky = 3},
	--~ {"default_desert_stone.png"},
	--~ "Desert Stone Stair",
	--~ "Desert Stone Slab",
	--~ default.node_sound_stone_defaults()
--~ )

--~ stairs.register_stair_and_slab(
	--~ "desert_cobble",
	--~ "stone:desert_cobble",
	--~ {cracky = 3},
	--~ {"default_desert_cobble.png"},
	--~ "Desert Cobblestone Stair",
	--~ "Desert Cobblestone Slab",
	--~ default.node_sound_stone_defaults()
--~ )

--~ stairs.register_stair_and_slab(
	--~ "desert_stonebrick",
	--~ "stone:desert_stonebrick",
	--~ {cracky = 2},
	--~ {"default_desert_stone_brick.png"},
	--~ "Desert Stone Brick Stair",
	--~ "Desert Stone Brick Slab",
	--~ default.node_sound_stone_defaults()
--~ )

--~ stairs.register_stair_and_slab(
	--~ "desert_stone_block",
	--~ "stone:desert_stone_block",
	--~ {cracky = 2},
	--~ {"default_desert_stone_block.png"},
	--~ "Desert Stone Block Stair",
	--~ "Desert Stone Block Slab",
	--~ default.node_sound_stone_defaults()
--~ )


--~ minetest.register_craft({
	--~ output = 'stone:stonebrick 4',
	--~ recipe = {
		--~ {'stone:stone', 'stone:stone'},
		--~ {'stone:stone', 'stone:stone'},
	--~ }
--~ })

--~ minetest.register_craft({
	--~ output = 'stone:stone_block 9',
	--~ recipe = {
		--~ {'stone:stone', 'stone:stone', 'stone:stone'},
		--~ {'stone:stone', 'stone:stone', 'stone:stone'},
		--~ {'stone:stone', 'stone:stone', 'stone:stone'},
	--~ }
--~ })

--~ minetest.register_craft({
	--~ output = 'stone:desert_stonebrick 4',
	--~ recipe = {
		--~ {'stone:desert_stone', 'stone:desert_stone'},
		--~ {'stone:desert_stone', 'stone:desert_stone'},
	--~ }
--~ })

--~ minetest.register_craft({
	--~ output = 'stone:desert_stone_block 9',
	--~ recipe = {
		--~ {'stone:desert_stone', 'stone:desert_stone', 'stone:desert_stone'},
		--~ {'stone:desert_stone', 'stone:desert_stone', 'stone:desert_stone'},
		--~ {'stone:desert_stone', 'stone:desert_stone', 'stone:desert_stone'},
	--~ }
--~ })

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
