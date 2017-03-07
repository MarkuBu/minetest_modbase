
minetest.register_tool(":tools:pick_steel", {
	description = "Steel Pickaxe",
	inventory_image = "default_tool_steelpick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.00, [2]=1.60, [3]=0.80}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	--~ sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool(":tools:shovel_steel", {
	description = "Steel Shovel",
	inventory_image = "default_tool_steelshovel.png",
	wield_image = "default_tool_steelshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.50, [2]=0.90, [3]=0.40}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},
	--~ sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool(":tools:axe_steel", {
	description = "Steel Axe",
	inventory_image = "default_tool_steelaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.50, [2]=1.40, [3]=1.00}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	--~ sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool(":tools:sword_steel", {
	description = "Steel Sword",
	inventory_image = "default_tool_steelsword.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	},
	--~ sound = {breaks = "default_tool_breaks"},
})

minetest.register_craft({
	output = 'tools:pick_steel',
	recipe = {
		{'iron:steel_ingot', 'iron:steel_ingot', 'iron:steel_ingot'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'tools:shovel_steel',
	recipe = {
		{'iron:steel_ingot'},
		{'group:stick'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'tools:axe_steel',
	recipe = {
		{'iron:steel_ingot', 'iron:steel_ingot'},
		{'iron:steel_ingot', 'group:stick'},
		{'', 'group:stick'},
	}
})

minetest.register_craft({
	output = 'tools:axe_steel',
	recipe = {
		{'iron:steel_ingot', 'iron:steel_ingot'},
		{'group:stick', 'iron:steel_ingot'},
		{'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'tools:sword_steel',
	recipe = {
		{'iron:steel_ingot'},
		{'iron:steel_ingot'},
		{'group:stick'},
	}
})
