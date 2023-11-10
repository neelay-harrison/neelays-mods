-- loops through all trees
for t, _ in pairs(data.raw["tree"]) do
    -- distinguish between live and dead trees
    if data.raw["tree"][t].minable.count == 4 then
        data.raw["tree"][t].minable.count = 80
    else
        data.raw["tree"][t].minable.count = 40
    end
end

-- increase stack size to handle picking up all this wood
data.raw.item["wood"].stack_size = 200
data.raw.item["wood"].fuel_value = "1MJ"
data.raw.item["wood"].fuel_category = "wood"
