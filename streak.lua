-- test
RegisterNetEvent('updateKillStreakUI')
AddEventHandler('updateKillStreakUI', function(data)
    SendNUIMessage({
        type = 'updateKillStreakUI',
        streak = data.streak
    })
end)

