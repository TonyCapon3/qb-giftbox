QBCore.Functions.CreateUseableItem("gift",function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("consumables:client:openGiftbox", source, item.name)
end)