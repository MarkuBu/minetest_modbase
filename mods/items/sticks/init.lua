
minetest.register_craftitem("sticks:stick", {
	description = "Stick",
	inventory_image = "default_stick.png",
	groups = {stick = 1, flammable = 2},
})

minetest.register_craft({
	type = "fuel",
	recipe = "sticks:stick",
	burntime = 1,
})


minetest.register_craft({
	output = 'sticks:stick 4',
	recipe = {
		{'group:wood'},
	}
})
