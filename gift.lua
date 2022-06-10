RegisterNetEvent('consumables:client:openGiftbox', function()
    local playerPed = PlayerPedId()
    QBCore.Functions.Progressbar('gift_box', 'Opening Gift Box', 5000, false, true, { 
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'amb@world_human_clipboard@male@idle_a',
        anim = 'idle_c',
        flags = 49,
    }, {}, {}, function()
        TriggerServerEvent("QBCore:Server:RemoveItem", "gift", 1)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["gift"], "remove")
        TriggerServerEvent("QBCore:Server:AddItem", "lockpick", 5)
        TriggerServerEvent("QBCore:Server:AddItem", "sandwich", 5)
        TriggerServerEvent("QBCore:Server:AddItem", "water_bottle", 5)
        TriggerServerEvent("QBCore:Server:AddItem", "joint", 3)
        TriggerServerEvent("QBCore:Server:AddItem", "bandage", 10)
        TriggerServerEvent("QBCore:Server:AddItem", "oxy", 4)
        TriggerServerEvent("QBCore:Server:AddItem", "skateboard", 1)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["lockpick"], "add")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["bandage"], "add")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["oxy"], "add")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["joint"], "add")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["sandwich"], "add")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["water_bottle"], "add")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["skateboard"], "add")
    end, function()
        StopAnimTask(playerPed, "amb@world_human_clipboard@male@idle_a", "idle_c", 1.0)
        QBCore.Functions.Notify("Ok I Guess You Don't Want A Free Gift", "error")        
    end)
    
end)