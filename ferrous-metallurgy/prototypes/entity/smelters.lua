local stone_kiln_entity = table.deepcopy(data.raw["furnace"]["stone-furnace"])


local stone_kiln_entity_name = "stone-kiln"
-- local stone_kiln_icon_path = "__neelays-ferrous-metallurgy__/ignore/stone-charcoal-kiln.png"

-- update with custom information
stone_kiln_entity.name = stone_kiln_entity_name
stone_kiln_entity.minable = {
    mining_time = 0.2,
    result = stone_kiln_entity_name
}
stone_kiln_entity.fast_replaceable_group = nil
stone_kiln_entity.next_upgrade = nil
stone_kiln_entity.energy_usage = "555.5556kW"
stone_kiln_entity.energy_source.fuel_category = "wood"
stone_kiln_entity.crafting_categories = { "kiln" }

-- stone_kiln_entity.icon = stone_kiln_icon_path

local stone_kiln_item = table.deepcopy(data.raw["item"]["stone-furnace"])
stone_kiln_item.name = stone_kiln_entity_name
stone_kiln_item.place_result = stone_kiln_entity_name
-- stone_kiln_item.icon = stone_kiln_icon_path

local stone_kiln_entity_recipe = table.deepcopy(data.raw["recipe"]["stone-furnace"])
stone_kiln_entity_recipe.enabled = true
stone_kiln_entity_recipe.name = stone_kiln_entity_name
stone_kiln_entity_recipe.result = stone_kiln_entity_name


local charcoal_item = {
    type = "item",
    name = "charcoal",
    icon = "__neelays-ferrous-metallurgy__/ignore/charcoal.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
        { size = 64, filename = "__neelays-ferrous-metallurgy__/ignore/charcoal.png",   scale = 0.25, mipmap_count = 4 },
        { size = 64, filename = "__neelays-ferrous-metallurgy__/ignore/charcoal-2.png", scale = 0.25, mipmap_count = 4 },
        { size = 64, filename = "__neelays-ferrous-metallurgy__/ignore/charcoal-3.png", scale = 0.25, mipmap_count = 4 },
        { size = 64, filename = "__neelays-ferrous-metallurgy__/ignore/charcoal-4.png", scale = 0.25, mipmap_count = 4 }
    },
    subgroup = "raw-resource",
    order = "b[charcoal]",
    stack_size = 50
}

local charcoal_recipe = {
    type = "recipe",
    name = "charcoal",
    category = "kiln",
    energy_required = 3,
    ingredients = { { "wood", 5 } },
    result = "charcoal"
}

data:extend(
    {
        stone_kiln_entity,
        stone_kiln_item,
        stone_kiln_entity_recipe,
        charcoal_item,
        charcoal_recipe,
        {
            type = "fuel-category",
            name = "wood"
        },
        {
            type = "recipe-category",
            name = "kiln"
        }
    }
)
