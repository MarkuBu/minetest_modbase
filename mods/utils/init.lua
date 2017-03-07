

utils = {}
--
-- Checks if specified volume intersects a protected volume
--

function utils.intersects_protection(minp, maxp, player_name, interval)
	-- 'interval' is the largest allowed interval for the 3D lattice of checks

	-- Compute the optimal float step 'd' for each axis so that all corners and
	-- borders are checked. 'd' will be smaller or equal to 'interval'.
	-- Subtracting 1e-4 ensures that the max co-ordinate will be reached by the
	-- for loop (which might otherwise not be the case due to rounding errors).
	local d = {}
	for _, c in pairs({"x", "y", "z"}) do
		if maxp[c] > minp[c] then
			d[c] = (maxp[c] - minp[c]) / math.ceil((maxp[c] - minp[c]) / interval) - 1e-4
		elseif maxp[c] == minp[c] then
			d[c] = 1 -- Any value larger than 0 to avoid division by zero
		else -- maxp[c] < minp[c], print error and treat as protection intersected
			minetest.log("error", "maxp < minp in 'utils.intersects_protection()'")
			return true
		end
	end

	for zf = minp.z, maxp.z, d.z do
		local z = math.floor(zf + 0.5)
		for yf = minp.y, maxp.y, d.y do
			local y = math.floor(yf + 0.5)
			for xf = minp.x, maxp.x, d.x do
				local x = math.floor(xf + 0.5)
				if minetest.is_protected({x = x, y = y, z = z}, player_name) then
					return true
				end
			end
		end
	end

	return false
end

function utils.clone_node(name)
	local node = table.copy(minetest.registered_nodes[name])
	return node
end

print("Utils mod loaded")
