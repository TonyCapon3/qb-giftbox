--ADD IN CLIENT SIDE IF USING AS SNIPPET

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
        TriggerServerEvent('consumables:server:giftFinished')
    end, function()
        ClearPedTasks(playerPed)
        QBCore.Functions.Notify("Ok I Guess You Don't Want A Free Gift", "error")        
    end)
    
end)
