
minetest.register_node("sand:sand", {
	description = "Sand",
	tiles = {"default_sand.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1},
	--~ sounds = default.node_sound_sand_defaults(),
})

--~ minetest.register_node("sand:desert_sand", {
	--~ description = "Desert Sand",
	--~ tiles = {"default_desert_sand.png"},
	--~ groups = {crumbly = 3, falling_node = 1, sand = 1},
	--~ sounds = default.node_sound_sand_defaults(),
--~ })

--~ minetest.register_node("sand:silver_sand", {
	--~ description = "Silver Sand",
	--~ tiles = {"default_silver_sand.png"},
	--~ groups = {crumbly = 3, falling_node = 1, sand = 1},
	--~ sounds = default.node_sound_sand_defaults(),
--~ })

--~ minetest.register_node("sand:sandstone", {
	--~ description = "Sandstone",
	--~ tiles = {"default_sandstone.png"},
	--~ groups = {crumbly = 1, cracky = 3},
	--~ sounds = default.node_sound_stone_defaults(),
--~ })

--~ minetest.register_node("sand:sandstonebrick", {
	--~ description = "Sandstone Brick",
	--~ paramtype2 = "facedir",
	--~ place_param2 = 0,
	--~ tiles = {"default_sandstone_brick.png"},
	--~ is_ground_content = false,
	--~ groups = {cracky = 2},
	--~ sounds = default.node_sound_stone_defaults(),
--~ })

--~ minetest.register_node("sand:sandstone_block", {
	--~ description = "Sandstone Block",
	--~ tiles = {"default_sandstone_block.png"},
	--~ is_ground_content = false,
	--~ groups = {cracky = 2},
	--~ sounds = default.node_sound_stone_defaults(),
--~ })

--~ minetest.register_node("sand:desert_sandstone", {
	--~ description = "Desert Sandstone",
	--~ tiles = {"default_desert_sandstone.png"},
	--~ groups = {crumbly = 1, cracky = 3},
	--~ sounds = default.node_sound_stone_defaults(),
--~ })

--~ minetest.register_node("sand:desert_sandstone_brick", {
	--~ description = "Desert Sandstone Brick",
	--~ paramtype2 = "facedir",
	--~ place_param2 = 0,
	--~ tiles = {"default_desert_sandstone_brick.png"},
	--~ is_ground_content = false,
	--~ groups = {cracky = 2},
	--~ sounds = default.node_sound_stone_defaults(),
--~ })

--~ minetest.register_node("sand:desert_sandstone_block", {
	--~ description = "Desert Sandstone Block",
	--~ tiles = {"default_desert_sandstone_block.png"},
	--~ is_ground_content = false,
	--~ groups = {cracky = 2},
	--~ sounds = default.node_sound_stone_defaults(),
--~ })

--~ minetest.register_node("sand:silver_sandstone", {
	--~ description = "Silver Sandstone",
	--~ tiles = {"default_silver_sandstone.png"},
	--~ groups = {crumbly = 1, cracky = 3},
	--~ sounds = default.node_sound_stone_defaults(),
--~ })

--~ minetest.register_node("sand:silver_sandstone_brick", {
	--~ description = "Silver Sandstone Brick",
	--~ paramtype2 = "facedir",
	--~ place_param2 = 0,
	--~ tiles = {"default_silver_sandstone_brick.png"},
	--~ is_ground_content = false,
	--~ groups = {cracky = 2},
	--~ sounds = default.node_sound_stone_defaults(),
--~ })

--~ minetest.register_node("sand:silver_sandstone_block", {
	--~ description = "Silver Sandstone Block",
	--~ tiles = {"default_silver_sandstone_block.png"},
	--~ is_ground_content = false,
	--~ groups = {cracky = 2},
	--~ sounds = default.node_sound_stone_defaults(),
--~ })

--~ stairs.register_stair_and_slab(
	--~ "sandstone",
	--~ "sand:sandstone",
	--~ {crumbly = 1, cracky = 3},
	--~ {"default_sandstone.png"},
	--~ "Sandstone Stair",
	--~ "Sandstone Slab",
	--~ default.node_sound_stone_defaults()
--~ )

--~ stairs.register_stair_and_slab(
	--~ "sandstonebrick",
	--~ "sand:sandstonebrick",
	--~ {cracky = 2},
	--~ {"default_sandstone_brick.png"},
	--~ "Sandstone Brick Stair",
	--~ "Sandstone Brick Slab",
	--~ default.node_sound_stone_defaults()
--~ )

--~ stairs.register_stair_and_slab(
	--~ "sandstone_block",
	--~ "sand:sandstone_block",
	--~ {cracky = 2},
	--~ {"default_sandstone_block.png"},
	--~ "Sandstone Block Stair",
	--~ "Sandstone Block Slab",
	--~ default.node_sound_stone_defaults()
--~ )

--~ stairs.register_stair_and_slab(
	--~ "desert_sandstone",
	--~ "sand:desert_sandstone",
	--~ {crumbly = 1, cracky = 3},
	--~ {"default_desert_sandstone.png"},
	--~ "Desert Sandstone Stair",
	--~ "Desert Sandstone Slab",
	--~ default.node_sound_stone_defaults()
--~ )

--~ stairs.register_stair_and_slab(
	--~ "desert_sandstone_brick",
	--~ "sand:desert_sandstone_brick",
	--~ {cracky = 2},
	--~ {"default_desert_sandstone_brick.png"},
	--~ "Desert Sandstone Brick Stair",
	--~ "Desert Sandstone Brick Slab",
	--~ default.node_sound_stone_defaults()
--~ )

--~ stairs.register_stair_and_slab(
	--~ "desert_sandstone_block",
	--~ "sand:desert_sandstone_block",
	--~ {cracky = 2},
	--~ {"default_desert_sandstone_block.png"},
	--~ "Desert Sandstone Block Stair",
	--~ "Desert Sandstone Block Slab",
	--~ default.node_sound_stone_defaults()
--~ )

--~ stairs.register_stair_and_slab(
	--~ "silver_sandstone",
	--~ "sand:silver_sandstone",
	--~ {crumbly = 1, cracky = 3},
	--~ {"default_silver_sandstone.png"},
	--~ "Silver Sandstone Stair",
	--~ "Silver Sandstone Slab",
	--~ default.node_sound_stone_defaults()
--~ )

--~ stairs.register_stair_and_slab(
	--~ "silver_sandstone_brick",
	--~ "sand:silver_sandstone_brick",
	--~ {cracky = 2},
	--~ {"default_silver_sandstone_brick.png"},
	--~ "Silver Sandstone Brick Stair",
	--~ "Silver Sandstone Brick Slab",
	--~ default.node_sound_stone_defaults()
--~ )

--~ stairs.register_stair_and_slab(
	--~ "silver_sandstone_block",
	--~ "sand:silver_sandstone_block",
	--~ {cracky = 2},
	--~ {"default_silver_sandstone_block.png"},
	--~ "Silver Sandstone Block Stair",
	--~ "Silver Sandstone Block Slab",
	--~ default.node_sound_stone_defaults()
--~ )


--~ minetest.register_craft({
	--~ output = "sand:sandstone",
	--~ recipe = {
		--~ {"sand:sand", "sand:sand"},
		--~ {"sand:sand", "sand:sand"},
	--~ }
--~ })

--~ minetest.register_craft({
	--~ output = "sand:sand 4",
	--~ recipe = {
		--~ {"sand:sandstone"},
	--~ }
--~ })

--~ minetest.register_craft({
	--~ output = "sand:sandstonebrick 4",
	--~ recipe = {
		--~ {"sand:sandstone", "sand:sandstone"},
		--~ {"sand:sandstone", "sand:sandstone"},
	--~ }
--~ })

--~ minetest.register_craft({
	--~ output = "sand:sandstone_block 9",
	--~ recipe = {
		--~ {"sand:sandstone", "sand:sandstone", "sand:sandstone"},
		--~ {"sand:sandstone", "sand:sandstone", "sand:sandstone"},
		--~ {"sand:sandstone", "sand:sandstone", "sand:sandstone"},
	--~ }
--~ })

--~ minetest.register_craft({
	--~ output = "sand:desert_sandstone",
	--~ recipe = {
		--~ {"sand:desert_sand", "sand:desert_sand"},
		--~ {"sand:desert_sand", "sand:desert_sand"},
	--~ }
--~ })

--~ minetest.register_craft({
	--~ output = "sand:desert_sand 4",
	--~ recipe = {
		--~ {"sand:desert_sandstone"},
	--~ }
--~ })

--~ minetest.register_craft({
	--~ output = "sand:desert_sandstone_brick 4",
	--~ recipe = {
		--~ {"sand:desert_sandstone", "sand:desert_sandstone"},
		--~ {"sand:desert_sandstone", "sand:desert_sandstone"},
	--~ }
--~ })

--~ minetest.register_craft({
	--~ output = "sand:desert_sandstone_block 9",
	--~ recipe = {
		--~ {"sand:desert_sandstone", "sand:desert_sandstone", "sand:desert_sandstone"},
		--~ {"sand:desert_sandstone", "sand:desert_sandstone", "sand:desert_sandstone"},
		--~ {"sand:desert_sandstone", "sand:desert_sandstone", "sand:desert_sandstone"},
	--~ }
--~ })

--~ minetest.register_craft({
	--~ output = "sand:silver_sandstone",
	--~ recipe = {
		--~ {"sand:silver_sand", "sand:silver_sand"},
		--~ {"sand:silver_sand", "sand:silver_sand"},
	--~ }
--~ })

--~ minetest.register_craft({
	--~ output = "sand:silver_sand 4",
	--~ recipe = {
		--~ {"sand:silver_sandstone"},
	--~ }
--~ })

--~ minetest.register_craft({
	--~ output = "sand:silver_sandstone_brick 4",
	--~ recipe = {
		--~ {"sand:silver_sandstone", "sand:silver_sandstone"},
		--~ {"sand:silver_sandstone", "sand:silver_sandstone"},
	--~ }
--~ })

--~ minetest.register_craft({
	--~ output = "sand:silver_sandstone_block 9",
	--~ recipe = {
		--~ {"sand:silver_sandstone", "sand:silver_sandstone", "sand:silver_sandstone"},
		--~ {"sand:silver_sandstone", "sand:silver_sandstone", "sand:silver_sandstone"},
		--~ {"sand:silver_sandstone", "sand:silver_sandstone", "sand:silver_sandstone"},
	--~ }
--~ })

print("Sand mod loaded")
