ESX = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

RegisterNetEvent('esx_Gang_Chains:louieRemoval')
AddEventHandler('esx_Gang_Chains:louieRemoval', function()
  local playerPed = GetPlayerPed(-1)

  TriggerEvent("esx_Gang_Chains:ShirtAnimation")
  Wait(1500)
  TriggerEvent("esx_Gang_Chains:CancelAnimation", source)
  SetPedComponentVariation(playerPed, 0, 0, 0, 0)
  SetPedComponentVariation(playerPed, 0, 0, 0, 0)
  SetPedComponentVariation(playerPed, 0, 0, 0, 0)
  SetPedComponentVariation(playerPed, 7, 5, 0, 0)
  SetPedComponentVariation(playerPed, 0, 0, 0, 0)
  SetPedComponentVariation(playerPed, 0, 0, 0, 0)
  SetPedComponentVariation(playerPed, 0, 0, 0, 0)
  Wait(500)
  TriggerEvent("esx_Gang_Chains:MaskAnimation")
  Wait(800)
  TriggerEvent("esx_Gang_Chains:CancelAnimation", source)
  SetPedComponentVariation(playerPed, 0, 0, 0, 0)
  print("^3======================================================================^3")
  print("^3Recreated by DevLouie")
  print("^3=====================================================================^3")
end)

RegisterNetEvent('esx_Gang_Chains:CancelAnimation')
AddEventHandler('esx_Gang_Chains:CancelAnimation', function()
local ped = GetPlayerPed(-1)
  ClearPedTasks(ped)
  FreezeEntityPosition(ped,false)
end)

RegisterNetEvent('esx_Gang_Chains:ShirtAnimation')
AddEventHandler('esx_Gang_Chains:ShirtAnimation', function()
local ped = GetPlayerPed(-1)
local x,y,z = table.unpack(GetEntityCoords(playerPed, true))
  if not IsEntityPlayingAnim(ped, "clothingtie", "try_tie_positive_a", 3) then
  FreezeEntityPosition(ped,true)
    RequestAnimDict("clothingtie")
      while not HasAnimDictLoaded("clothingtie") do
        Citizen.Wait(100)
      end
    TaskPlayAnim(ped, "clothingtie", "try_tie_positive_a", 8.0, -8, -1, 49, 5, 5, 5, 5)
  end
end)