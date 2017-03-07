--
-- Oak Tree
--

oaktree = {}

local path = minetest.get_modpath("oaktree") .."/schematics"
local treepath = minetest.get_modpath("tree") .."/schematics"



local function grow_new_oak_tree(pos)
	if not tree.can_grow(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(240, 600))
		return
	end

	minetest.place_schematic({x = pos.x - 2, y = pos.y - 1, z = pos.z - 2},
		oaktree.oak_tree_from_sapling, "0", nil, false)
end

--
-- Nodes
--


minetest.register_node("oaktree:trunk", {
	description = "Oak Tree",
	tiles = {"default_tree_top.png", "default_tree_top.png", "default_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, flammable = 2},
	--~ sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node,
})

minetest.register_node("oaktree:wood", {
	description = "Oaktree Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"default_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	--~ sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("oaktree:sapling", {
	description = "Oaktree Sapling",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"default_sapling.png"},
	inventory_image = "default_sapling.png",
	wield_image = "default_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_oak_tree,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	--~ sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(2,4))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = tree.sapling_on_place(itemstack, placer, pointed_thing,
			"oaktree:sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -2, y = 1, z = -2},
			{x = 2, y = 6, z = 2},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})

minetest.register_node("oaktree:leaves", {
	description = "Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_leaves.png"},
	special_tiles = {"default_leaves_simple.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'oaktree:sapling'},
				rarity = 20,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'oaktree:leaves'},
			}
		}
	},
	--~ sounds = default.node_sound_leaves_defaults(),
	after_place_node = tree.after_place_leaves,
})


minetest.override_item("oaktree:leaves", {
	drawtype = "mesh",
	tiles = {"nodeboxtrees_leaves.png"},
	wield_scale = {x = 0.5, y = 0.5, z = 0.5},
	mesh = "leaf.obj",
	paramtype = "light",
})


local newnode = utils.clone_node("oaktree:leaves")
newnode.tiles = {"nodeboxtrees_leaves.png^[colorize:#AA0000:30"}
minetest.register_node("oaktree:leaves2", newnode)
newnode.tiles = {"nodeboxtrees_leaves.png^[colorize:#AAAA00:30"}
minetest.register_node("oaktree:leaves3", newnode)
newnode.tiles = {"nodeboxtrees_leaves.png^[colorize:#00FFFF:20"}
minetest.register_node("oaktree:leaves4", newnode)
newnode.tiles = {"nodeboxtrees_leaves.png^[colorize:#00FF00:20"}
minetest.register_node("oaktree:leaves5", newnode)

dofile(path.."/oak_tree.lua")
dofile(path.."/oak_tree_from_sapling.lua")
dofile(path.."/oak_log.lua")


--~ minetest.register_node(":default:apple", {
	--~ description = "Apple",
	--~ drawtype = "plantlike",
	--~ visual_scale = 1.0,
	--~ tiles = {"default_apple.png"},
	--~ inventory_image = "default_apple.png",
	--~ paramtype = "light",
	--~ sunlight_propagates = true,
	--~ walkable = false,
	--~ is_ground_content = false,
	--~ selection_box = {
		--~ type = "fixed",
		--~ fixed = {-3 / 16, -7 / 16, -3 / 16, 3 / 16, 4 / 16, 3 / 16}
	--~ },
	--~ groups = {fleshy = 3, dig_immediate = 3, flammable = 2,
		--~ leafdecay = 3, leafdecay_drop = 1},
	--~ on_use = minetest.item_eat(2),
	--~ sounds = default.node_sound_leaves_defaults(),

	--~ after_place_node = function(pos, placer, itemstack)
		--~ if placer:is_player() then
			--~ minetest.set_node(pos, {name = "default:apple", param2 = 1})
		--~ end
	--~ end,
--~ })

--
-- Decoration
--

-- Trees in deciduous forest

if minetest.registered_biomes["grassland"] then
	local oaktree1 = oaktree.get_oaktree("oaktree:trunk", "oaktree:leaves")

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"dirt:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.01,
			scale = 0.022,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"grassland"},
		y_min = 1,
		y_max = 31000,
		height = 8,
		schematic = oaktree1,
		flags = "place_center_x, place_center_z",
	})

	local oaktree2 = oaktree.get_oaktree("oaktree:trunk", "oaktree:leaves2")

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"dirt:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.01,
			scale = 0.022,
			spread = {x = 250, y = 250, z = 250},
			seed = 53645,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"grassland"},
		y_min = 1,
		y_max = 31000,
		schematic = oaktree2,
		flags = "place_center_x, place_center_z",
	})

	local oaktree3 = oaktree.get_oaktree("oaktree:trunk", "oaktree:leaves3")

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"dirt:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.01,
			scale = 0.022,
			spread = {x = 250, y = 250, z = 250},
			seed = 723456,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"grassland"},
		y_min = 1,
		y_max = 31000,
		schematic = oaktree3,
		flags = "place_center_x, place_center_z",
	})

	--
	-- Tiny tree
	--

	dofile(treepath.."/tiny_tree.lua")

	local tinytree = tree.get_tiny_tree("oaktree:trunk", "oaktree:leaves")

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"dirt:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.0005,
			scale = 0.005,
			spread = {x = 250, y = 250, z = 250},
			seed = 345634,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"grassland"},
		y_min = 1,
		y_max = 31000,
		schematic = tinytree,
		flags = "place_center_x, place_center_z",
	})

	--
	-- Small tree 1
	--

	dofile(treepath.."/small_tree1.lua")

	local smalltree1 = tree.get_smalltree1("oaktree:trunk", "oaktree:leaves")

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"dirt:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.0005,
			scale = 0.005,
			spread = {x = 250, y = 250, z = 250},
			seed = 236756,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"grassland"},
		y_min = 1,
		y_max = 31000,
		schematic = smalltree1,
		flags = "place_center_x, place_center_z",
	})


	--
	-- Small tree 2
	--

	dofile(treepath.."/small_tree2.lua")

	local smalltree2 = tree.get_smalltree2("oaktree:trunk", "oaktree:leaves")

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"dirt:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.0003,
			scale = 0.001,
			spread = {x = 250, y = 250, z = 250},
			seed = 45673,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"grassland"},
		y_min = 1,
		y_max = 31000,
		schematic = smalltree2,
		flags = "place_center_x, place_center_z",
	})


	--~ minetest.register_decoration({
		--~ deco_type = "schematic",
		--~ place_on = {"dirt:dirt_with_grass"},
		--~ sidelen = 16,
		--~ noise_params = {
			--~ offset = 0.0018,
			--~ scale = 0.0011,
			--~ spread = {x = 250, y = 250, z = 250},
			--~ seed = 2,
			--~ octaves = 3,
			--~ persist = 0.66
		--~ },
		--~ biomes = {"grassland"},
		--~ y_min = 1,
		--~ y_max = 31000,
		--~ schematic = oaktree.oak_log,
		--~ flags = "place_center_x",
		--~ rotation = "random",
	--~ })

end


--~ minetest.register_decoration({
	--~ deco_type = "schematic",
	--~ place_on = {"default:dirt_with_grass"},
	--~ sidelen = 16,
	--~ fill_ratio = 0.05,
	--~ biomes = {"grassland"},
	--~ y_min = 1,
	--~ y_max = 31000,
	--~ schematic = minetest.get_modpath("appletree") .. "/schematics/apple_tree.mts",
	--~ flags = "place_center_x, place_center_z",
	--~ spawn_by = "default:river_water_source",
	--~ num_spawn_by = 1,
--~ })

--
-- Recipes
--

minetest.register_craft({
	output = 'oaktree:wood 4',
	recipe = {
		{'oaktree:trunk'},
	}
})

minetest.register_craft({
	type = "fuel",
	recipe = "oaktree:trunk",
	burntime = 30,
})

minetest.register_craft({
	type = "fuel",
	recipe = "oaktree:wood",
	burntime = 7,
})

minetest.register_craft({
	type = "fuel",
	recipe = "oaktree:sapling",
	burntime = 10,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:apple",
	burntime = 3,
})

minetest.register_lbm({
	name = ":default:convert_oaktree_saplings_to_node_timer",
	nodenames = {"oaktree:sapling"},
	action = function(pos)
		minetest.get_node_timer(pos):start(math.random(1200, 2400))
	end
})

tree.register_leafdecay({
	trunks = {"oaktree:trunk"},
	leaves = {
			"oaktree:leaves",
			"oaktree:leaves2",
			"oaktree:leaves3",
			"oaktree:leaves4",
			"oaktree:leaves5"
	},
	radius = 2,
})

print("Oaktree mod loaded")
