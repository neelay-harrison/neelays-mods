local stone_kiln_entity = table.deepcopy(data.raw["furnace"]["stone-furnace"])
local bloomery_entity = table.deepcopy(data.raw["furnace"]["stone-furnace"])


local stone_kiln_entity_name = "stone-kiln"
local bloomery_entity_name = "bloomery"


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
stone_kiln_entity.type = "assembling-machine"

-- bloomery entity
bloomery_entity.name = bloomery_entity_name
bloomery_entity.minable = {
    mining_time = 0.2,
    result = bloomery_entity_name
}
bloomery_entity.fast_replaceable_group = nil
bloomery_entity.next_upgrade = nil
bloomery_entity.energy_usage = "2.5MW"
bloomery_entity.energy_source.fuel_category = "charcoal"
bloomery_entity.crafting_categories = { "bloomery" }
bloomery_entity.type = "assembling-machine"
bloomery_entity.icon = "__neelays-ferrous-metallurgy__/graphics/icons/bloomery.png"
bloomery_entity.animation = {
    filename = "__neelays-ferrous-metallurgy__/graphics/entity/bloomery.png",
    width = 64,
    height = 64,
    frame_count = 1,
}
bloomery_entity.working_visualisations = nil
bloomery_entity.fast_replaceable_group = nil
bloomery_entity.next_upgrade = nil
bloomery_entity.water_reflection = nil

-- stone_kiln_entity.icon = stone_kiln_icon_path

local stone_kiln_item = table.deepcopy(data.raw["item"]["stone-furnace"])
stone_kiln_item.name = stone_kiln_entity_name
stone_kiln_item.place_result = stone_kiln_entity_name
-- stone_kiln_item.icon = stone_kiln_icon_path

-- bloomery item
local bloomery_item = table.deepcopy(data.raw["item"]["stone-furnace"])
bloomery_item.name = bloomery_entity_name
bloomery_item.place_result = bloomery_entity_name
bloomery_item.icon = "__neelays-ferrous-metallurgy__/graphics/icons/bloomery.png"

-- stone kiln recipe
local stone_kiln_entity_recipe = table.deepcopy(data.raw["recipe"]["stone-furnace"])
stone_kiln_entity_recipe.enabled = true
stone_kiln_entity_recipe.name = stone_kiln_entity_name
stone_kiln_entity_recipe.result = stone_kiln_entity_name

-- bloomery recipe
local bloomery_entity_recipe = table.deepcopy(data.raw["recipe"]["stone-furnace"])
bloomery_entity_recipe.enabled = true
bloomery_entity_recipe.name = bloomery_entity_name
bloomery_entity_recipe.result = bloomery_entity_name


local charcoal_item = {
    type          = "item",
    name          = "charcoal",
    icon          = "__neelays-ferrous-metallurgy__/ignore/charcoal.png",
    icon_size     = 64,
    icon_mipmaps  = 4,
    pictures      =
    {
        { size = 64, filename = "__neelays-ferrous-metallurgy__/ignore/charcoal.png",   scale = 0.25, mipmap_count = 4 },
        { size = 64, filename = "__neelays-ferrous-metallurgy__/ignore/charcoal-2.png", scale = 0.25, mipmap_count = 4 },
        { size = 64, filename = "__neelays-ferrous-metallurgy__/ignore/charcoal-3.png", scale = 0.25, mipmap_count = 4 },
        { size = 64, filename = "__neelays-ferrous-metallurgy__/ignore/charcoal-4.png", scale = 0.25, mipmap_count = 4 }
    },
    fuel_category = "charcoal",
    fuel_value    = "5MJ",
    subgroup      = "raw-resource",
    order         = "b[charcoal]",
    stack_size    = 50
}

local charcoal_recipe = {
    type = "recipe",
    name = "charcoal",
    category = "kiln",
    energy_required = 3,
    ingredients = { { "wood", 5 } },
    result = "charcoal"
}

local iron_roasted_ore = {
    type = "item",
    name = "iron-roasted-ore",
    icon = "__neelays-ferrous-metallurgy__/graphics/icons/iron-roasted-ore.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
        {
            size = 64,
            filename = "__neelays-ferrous-metallurgy__/graphics/icons/iron-roasted-ore.png",
            scale = 0.25,
            mipmap_count = 4
        },
    },
    subgroup = "raw-resource",
    order = "e[iron-roasted-ore]",
    stack_size = 50
}

local iron_roasted_ore_recipe = {
    type = "recipe",
    name = "iron-roasted-ore",
    category = "kiln",
    energy_required = 1,
    ingredients = { { "iron-ore", 1 } },
    result = "iron-roasted-ore"
}

local iron_bloom = {
    type = "item",
    name = "iron-bloom",
    icon = "__neelays-ferrous-metallurgy__/graphics/icons/iron-bloom-temp.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
        {
            size = 64,
            filename = "__neelays-ferrous-metallurgy__/graphics/icons/iron-bloom-temp.png",
            scale = 0.25,
            mipmap_count = 4
        },
    },
    subgroup = "raw-resource",
    order = "e[iron-bloom]",
    stack_size = 50
}

local iron_bloom_recipe = {
    type = "recipe",
    name = "iron-bloom",
    category = "bloomery",
    energy_required = 6,
    ingredients = { { "iron-roasted-ore", 3 } },
    result = "iron-bloom"
}


data:extend(
    {
        stone_kiln_entity,
        stone_kiln_item,
        stone_kiln_entity_recipe,
        charcoal_item,
        charcoal_recipe,
        iron_roasted_ore,
        iron_roasted_ore_recipe,
        bloomery_entity,
        bloomery_item,
        bloomery_entity_recipe,
        iron_bloom,
        iron_bloom_recipe,
        {
            type = "fuel-category",
            name = "wood"
        },
        {
            type = "fuel-category",
            name = "charcoal"
        },
        {
            type = "recipe-category",
            name = "kiln"
        },
        {
            type = "recipe-category",
            name = "bloomery"
        }
    }
)
