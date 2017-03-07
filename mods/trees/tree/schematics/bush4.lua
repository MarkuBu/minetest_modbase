function tree.get_bush4(trunk, leaves)
	local _ = { name = "air", prob = 0 }
	local L = { name = leaves, force_place = true}
	local T = { name = trunk, force_place = true}


	local schem = {
		yslice_prob = {
		},
		size = {
			y = 3,
			x = 5,
			z = 6
		},
		data = {
			_, _, _, _, _,
			_, _, L, _, _,
			_, _, _, _, _,

			_, _, _, _, _,
			_, L, L, L, _,
			_, _, L, _, _,

			_, _, _, _, _,
			L, L, T, L, _,
			_, L, L, _, _,

			_, _, _, _, _,
			L, L, L, _, L,
			_, _, _, _, _,

			_, _, _, _, _,
			_, _, L, _, _,
			_, _, _, _, _,

			_, _, _, _, _,
			_, L, _, _, _,
			_, _, _, _, _
		}
	}
	return schem
end
