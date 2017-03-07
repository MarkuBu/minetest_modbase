-- Oak tree from sapling
local _ = {name = "air", prob = 0}

local L = {name = "oaktree:leaves", prob = 191}
local N = {name = "oaktree:leaves", prob = 223}
local M = {name = "oaktree:leaves", prob = 255}
local F = {name = "default:apple", prob = 63}
local T = {name = "oaktree:trunk", prob = 255}
local Y = {name = "oaktree:trunk", prob = 255, force_place = true}
local U = {name = "oaktree:trunk", prob = 191}

oaktree.oak_tree_from_sapling = {
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
		N, U, F, U, N,
		N, M, M, M, N,
		N, M, M, M, N,
		_, N, N, N, _,

		_, _, T, _, _,
		_, _, Y, _, _,
		_, _, T, _, _,
		_, _, T, _, _,
		N, F, M, F, N,
		N, M, M, M, N,
		N, M, M, M, N,
		_, N, M, N, _,

		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		N, U, F, U, N,
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
