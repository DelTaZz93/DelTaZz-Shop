ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('deltazz-shop:buyItem')
AddEventHandler('deltazz-shop:buyItem', function(Label, Value, Price)
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getMoney() >= Price then
        if xPlayer.getInventoryItem(Value, 1).count then
            xPlayer.removeMoney(Price)
            xPlayer.addInventoryItem(Value, 1)
            TriggerClientEvent('esx:showAdvancedNotification', _src, 'Supérette', '~o~2~r~4~g~7', "Vous venez d'acheter ~b~1 "..Label.."~s~ pour ~r~"..Price.."$ ~s~!", 'CHAR_ACTING_UP', 1)
        else
            TriggerClientEvent('esx:showAdvancedNotification', _src, 'Supérette', '~o~2~r~4~g~7', "Vous n'avez pas assez d'argent pour acheter sa", 'CHAR_ACTING_UP', 1)
        end
    end
end)