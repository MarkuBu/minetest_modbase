
-- Small tree 2

function tree.get_smalltree2(trunk, leaves)
	local _ = { name = "air", prob = 0}
	local L = { name = leaves}
	local T = { name = trunk, force_place = true}

	local smalltree2 = {
		yslice_prob = {

		},
		size = {
			y = 5,
			x = 3,
			z = 3
		},
		data = {
			_, _, _,
			_, _, _,
			L, L, L,
			_, L, _,
			_, _, _,

			_, T, _,
			_, T, _,
			L, T, L,
			L, L, L,
			_, L, _,

			_, _, _,
			_, _, _,
			L, L, L,
			_, L, _,
			_, _, _,

	}
	}
	return smalltree2
end
