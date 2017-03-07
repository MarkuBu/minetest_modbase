
-- Small tree 1

function tree.get_smalltree1(trunk, leaves)
	local _ = { name = "air", prob = 0 }
	local L = { name = leaves}
	local T = { name = trunk, force_place = true}

	local smalltree1 = {
		yslice_prob = {

		},
		size = {
			y = 4,
			x = 3,
			z = 3
		}
	,
		data = {
			_, _, _,
			_, _, _,
			_, L, _,
			_, _, _,

			_, T, _,
			_, T, _,
			L, L, L,
			_, L, _,

			_, _, _,
			_, _, _,
			_, L, _,
			_, _, _,

	}
	}
	return smalltree1
end
