function tree.get_bush(trunk, leaves)
	local _ = { name = "air", prob = 0 }
	local L = { name = leaves, force_place = true}
	local M = { name = leaves, prob = 126, force_place = true}
	local N = { name = leaves, prob = 190}
	local T = { name = trunk, force_place = true}


	local schem = {
			yslice_prob = {
			},
			size = {
				y = 3,
				x = 3,
				z = 3
			},
			data = {
				_, _, _,
				N, L, N,
				M, N, M,

				_, _, _,
				L, T, L,
				N, L, N,

				_, _, _,
				N, L, N,
				M, N, M
			}
		}
	return schem
end
