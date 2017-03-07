function tree.get_bush3(trunk, leaves)
	local _ = { name = "air", prob = 0 }
	local L = { name = leaves, force_place = true}
	local T = { name = trunk, force_place = true}


	local schem = {
		yslice_prob = {
		},
		size = {
			y = 3,
			x = 5,
			z = 4
		},
		data = {
			_, _, _, _, _,
			_, _, _, _, L,
			_, _, _, _, _,

			_, _, _, _, _,
			L, _, L, L, _,
			_, _, _, _, _,

			_, _, _, _, _,
			_, L, T, L, L,
			_, _, L, L, _,

			_, _, _, _, _,
			_, _, L, _, L,
			_, _, _, _, _
		}
	}
	return schem
end
