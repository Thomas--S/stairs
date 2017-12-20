stairs = {}

stairs.register_stair_and_slab = function(subname, recipeitem, groups, images, desc_stair, desc_slab, sounds)
	local description = desc_stair:gsub(" Stair", "")
	minetest.register_alias("moreblocks:stair_" .. subname, "stairs:stair_" .. subname)
	minetest.register_alias("moreblocks:slab_"  .. subname, "stairs:slab_"  .. subname)
	stairsplus:register_all("moreblocks", subname, recipeitem, {
		groups = groups,
		tiles = images,
		description = description,
		sounds = sounds
	})
end
