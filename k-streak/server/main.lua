local killStreak = {}

RegisterNetEvent('esx:onPlayerDeath')
AddEventHandler('esx:onPlayerDeath', function(data)
    local xPlayer = ESX.GetPlayerFromId(source)

    if killStreak[xPlayer.source] then 
        killStreak[xPlayer.source] = nil 
        TriggerClientEvent('updateKillStreakUI', xPlayer.source, { type = 'updateKillStreakUI', streak = 0 })
    end

    if data.killedByPlayer then
        local xTarget = ESX.GetPlayerFromId(data.killerServerId)

        if not killStreak[xTarget.source] then 
            killStreak[xTarget.source] = 1 
        else 
            killStreak[xTarget.source] = killStreak[xTarget.source] + 1 
        end

        if killStreak[xTarget.source] >= 3 then
            TriggerClientEvent('updateKillStreakUI', xTarget.source, { type = 'updateKillStreakUI', streak = killStreak[xTarget.source] })
        end
    end
end)

