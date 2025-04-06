local modpath = minetest.get_modpath(minetest.get_current_modname())

core.register_biome({
    name = "large_debug_decoration_biome:debug_large_decoration",
    node_top = "default:stone",
    -- some arbitrary value
    heat_point = 20,
    humidity_point = 20,
})

core.register_decoration({
    name = "large_debug_decoration_biome:tall_spire",
    deco_type = "schematic",
    place_on = { "default:stone" },
    place_offset_y = 1,
    noise_params = {
		offset = 0.5,
		scale = 0.4,
        spread = {x = 50, y = 50, z = 50},
		seed = 21,
		octaves = 2,
		persist = 0.11,
	},
    biomes = { "large_debug_decoration_biome:debug_large_decoration" },
    y_min = -31000,
    y_max = 31000,
    schematic = modpath .. "/tall_spire.mts"
})