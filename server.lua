ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
ESX.RegisterUsableItem('gangchain', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('esx_Gang_Chains:louieRemoval', source)
    xPlayer.removeInventoryItem("gangchain", 1)
  end)
  