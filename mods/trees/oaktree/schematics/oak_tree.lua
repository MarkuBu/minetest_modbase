-- Mapgen Oak tree

function oaktree.get_oaktree(trunk, leaves)
	local _ = {name = "air", prob = 0}

	local L = {name = leaves, prob = 191}
	local N = {name = leaves, prob = 223}
	local M = {name = leaves, prob = 255}
	local Y = {name = trunk, prob = 255, force_place = true}
	local I = {name = trunk, prob = 191, force_place = true}

	local oak_tree = {
		size = {x = 5, y = 8, z = 5},
		data = {
			_, _, _, _, _,
			_, _, _, _, _,
			_, _, _, _, _,
			_, _, _, _, _,
			L, N, N, N, L,
			L, N, N, N, L,
			L, N, N, N, L,
			_, _, _, _, _,

			_, _, _, _, _,
			_, _, _, _, _,
			_, _, _, _, _,
			_, _, _, _, _,
			N, I, N, I, N,
			N, M, M, M, N,
			N, M, M, M, N,
			_, N, N, N, _,

			_, _, Y, _, _,
			_, _, Y, _, _,
			_, _, Y, _, _,
			_, _, Y, _, _,
			N, N, M, N, N,
			N, M, M, M, N,
			N, M, M, M, N,
			_, N, M, N, _,

			_, _, _, _, _,
			_, _, _, _, _,
			_, _, _, _, _,
			_, _, _, _, _,
			N, I, N, I, N,
			N, M, M, M, N,
			N, M, M, M, N,
			_, N, N, N, _,

			_, _, _, _, _,
			_, _, _, _, _,
			_, _, _, _, _,
			_, _, _, _, _,
			L, N, N, N, L,
			L, N, N, N, L,
			L, N, N, N, L,
			_, _, _, _, _,
		},
		yslice_prob = {
			{ypos = 2, prob = 127},
			{ypos = 6, prob = 127},
		},
	}
	return oak_tree
end
