local stone_kiln_entity = table.deepcopy(data.raw["furnace"]["stone-furnace"])

local stone_kiln_entity_name = "stone-kiln"

-- update with custom information
stone_kiln_entity.name = stone_kiln_entity_name
stone_kiln_entity.minable = {
    mining_time = 0.2,
    result = stone_kiln_entity_name
}
stone_kiln_entity.fast_replaceable_group = nil
stone_kiln_entity.next_upgrade = nil
stone_kiln_entity.energy_source = {
    type = "void",
    emissions_per_minute = 2
}

local stone_kiln_item = table.deepcopy(data.raw["item"]["stone-furnace"])
stone_kiln_item.name = stone_kiln_entity_name
stone_kiln_item.place_result = stone_kiln_entity_name

local stone_kiln_entity_recipe = table.deepcopy(data.raw["recipe"]["stone-furnace"])
stone_kiln_entity_recipe.enabled = true
stone_kiln_entity_recipe.name = stone_kiln_entity_name
stone_kiln_entity_recipe.result = stone_kiln_entity_name

data:extend { stone_kiln_entity, stone_kiln_item, stone_kiln_entity_recipe }
