-- Tiny tree

function tree.get_tiny_tree(trunk, leaves)
	local T = { name = trunk, force_place = true}
	local L = { name = leaves}

	local tiny_tree = {
		yslice_prob = {

		},
		size = {
			y = 3,
			x = 1,
			z = 1
		},
		data = {
			T, T, L,
		}
	}
	return tiny_tree
end
