local ShopMenu = RageUI.CreateMenu("", "Magasin");

function RageUI.PoolMenus:Shop()
	ShopMenu:IsVisible(function(RageUI)

		RageUI:AddSeparator("↓ ~g~Nourriture~w~ ↓")

		for k, v in pairs(Config.Info.Nourriture) do
			RageUI:AddButton(v.Label, nil, { RightLabel = "~g~"..v.Price.."$" }, function(onSelected)
				if (onSelected) then
					TriggerServerEvent('deltazz-shop:buyItem', v.Label, v.Value, v.Price)
				end
			end)
		end

		RageUI:AddSeparator("↓ ~b~Boisson~w~ ↓")

		for k, v in pairs(Config.Info.Boisson) do
			RageUI:AddButton(v.Label, nil, { RightLabel = "~g~"..v.Price.."$" }, function(onSelected)
				if (onSelected) then
					TriggerServerEvent('deltazz-shop:buyItem', v.Label, v.Value, v.Price)
				end
			end)
		end
        
        RageUI:AddSeparator("↓ ~o~Objet~w~ ↓")
            
        for k, v in pairs(Config.Info.Objet) do
			RageUI:AddButton(v.Label, nil, { RightLabel = "~g~"..v.Price.."$" }, function(onSelected)
				if (onSelected) then
					TriggerServerEvent('deltazz-shop:buyItem', v.Label, v.Value, v.Price)
				end
			end)
		end

	end, function()
	end)
end

Citizen.CreateThread(function()
    while true do
        local interval = 1000
        for _,v in pairs(Config.Info.Pos) do
            local playerPos = GetEntityCoords(PlayerPedId())
            local dst = #(playerPos - v)
            if dst <= 5.0 then
                interval = 0
                if dst <= 2.0 then
					DrawMarker(22, v.x, v.y, v.z + 0.98, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 0.45, 0.45, 0.45, 0, 0, 0, 150, 55555, false, true, 2, false, false, false, false)
                    Visual.Subtitle("Appuyez sur ~b~[E]~s~ pour accéder au magasin")
                    if IsControlJustPressed(1, 51) then
                        RageUI.Visible(ShopMenu, not RageUI.Visible(ShopMenu))
                    end
                end
            end
        end
        Wait(interval)
    end
end)

---------- Ped et Blips ----------

DecorRegister("Yay", 4)
pedName = "MP_M_ShopKeep_01"
zone = vector3(24.16, -1347.29, 28.5)
Heading = 269.71
Ped = nil
HeadingSpawn = 269.71

Citizen.CreateThread(function()
    LoadModel(pedName)
    Ped = CreatePed(2, GetHashKey(pedName), zone, Heading, 0, 0)
    DecorSetInt(Ped, "Yay", 5431)
    FreezeEntityPosition(Ped, 1)
    SetEntityInvincible(Ped, true)
    SetBlockingOfNonTemporaryEvents(Ped, 1)

end)

zone2 = vector3(-47.06, -1758.89, 28.5)
Heading2 = 50.87

Citizen.CreateThread(function()
    LoadModel(pedName)
    Ped = CreatePed(2, GetHashKey(pedName), zone2, Heading2, 0, 0)
    DecorSetInt(Ped, "Yay", 5431)
    FreezeEntityPosition(Ped, 1)
    SetEntityInvincible(Ped, true)
    SetBlockingOfNonTemporaryEvents(Ped, 1)

end)

zone3 = vector3(1134.01, -983.11, 45.42)
Heading3 = 274.93

Citizen.CreateThread(function()
    LoadModel(pedName)
    Ped = CreatePed(2, GetHashKey(pedName), zone3, Heading3, 0, 0)
    DecorSetInt(Ped, "Yay", 5431)
    FreezeEntityPosition(Ped, 1)
    SetEntityInvincible(Ped, true)
    SetBlockingOfNonTemporaryEvents(Ped, 1)

end)

zone4 = vector3(1165.29, -323.55, 68.21)
Heading4 = 98.1

Citizen.CreateThread(function()
    LoadModel(pedName)
    Ped = CreatePed(2, GetHashKey(pedName), zone4, Heading4, 0, 0)
    DecorSetInt(Ped, "Yay", 5431)
    FreezeEntityPosition(Ped, 1)
    SetEntityInvincible(Ped, true)
    SetBlockingOfNonTemporaryEvents(Ped, 1)

end)

zone5 = vector3(372.44, 326.2, 102.57)
Heading5 = 255.97

Citizen.CreateThread(function()
    LoadModel(pedName)
    Ped = CreatePed(2, GetHashKey(pedName), zone5, Heading5, 0, 0)
    DecorSetInt(Ped, "Yay", 5431)
    FreezeEntityPosition(Ped, 1)
    SetEntityInvincible(Ped, true)
    SetBlockingOfNonTemporaryEvents(Ped, 1)

end)

zone6 = vector3(2557.37, 380.57, 107.62)
Heading6 = 357.04

Citizen.CreateThread(function()
    LoadModel(pedName)
    Ped = CreatePed(2, GetHashKey(pedName), zone6, Heading6, 0, 0)
    DecorSetInt(Ped, "Yay", 5431)
    FreezeEntityPosition(Ped, 1)
    SetEntityInvincible(Ped, true)
    SetBlockingOfNonTemporaryEvents(Ped, 1)

end)

zone7 = vector3(-1221.3, -908.2, 11.33)
Heading7 = 36.38

Citizen.CreateThread(function()
    LoadModel(pedName)
    Ped = CreatePed(2, GetHashKey(pedName), zone7, Heading7, 0, 0)
    DecorSetInt(Ped, "Yay", 5431)
    FreezeEntityPosition(Ped, 1)
    SetEntityInvincible(Ped, true)
    SetBlockingOfNonTemporaryEvents(Ped, 1)

end)

zone8 = vector3(-705.72, -914.5, 18.22)
Heading8 = 87.77

Citizen.CreateThread(function()
    LoadModel(pedName)
    Ped = CreatePed(2, GetHashKey(pedName), zone8, Heading8, 0, 0)
    DecorSetInt(Ped, "Yay", 5431)
    FreezeEntityPosition(Ped, 1)
    SetEntityInvincible(Ped, true)
    SetBlockingOfNonTemporaryEvents(Ped, 1)

end)

zone9 = vector3(-2965.94, 391.42, 14.04)
Heading9 = 87.0

Citizen.CreateThread(function()
    LoadModel(pedName)
    Ped = CreatePed(2, GetHashKey(pedName), zone9, Heading9, 0, 0)
    DecorSetInt(Ped, "Yay", 5431)
    FreezeEntityPosition(Ped, 1)
    SetEntityInvincible(Ped, true)
    SetBlockingOfNonTemporaryEvents(Ped, 1)

end)

zone10 = vector3(-3038.93, 584.44, 6.91)
Heading10 = 12.74

Citizen.CreateThread(function()
    LoadModel(pedName)
    Ped = CreatePed(2, GetHashKey(pedName), zone10, Heading10, 0, 0)
    DecorSetInt(Ped, "Yay", 5431)
    FreezeEntityPosition(Ped, 1)
    SetEntityInvincible(Ped, true)
    SetBlockingOfNonTemporaryEvents(Ped, 1)

end)

zone11 = vector3(-1819.09, 793.66, 137.08)
Heading11 = 133.16

Citizen.CreateThread(function()
    LoadModel(pedName)
    Ped = CreatePed(2, GetHashKey(pedName), zone11, Heading11, 0, 0)
    DecorSetInt(Ped, "Yay", 5431)
    FreezeEntityPosition(Ped, 1)
    SetEntityInvincible(Ped, true)
    SetBlockingOfNonTemporaryEvents(Ped, 1)

end)


zone12 = vector3(-3242.18, 1000, 11.83)
Heading12 = 355.2

Citizen.CreateThread(function()
    LoadModel(pedName)
    Ped = CreatePed(2, GetHashKey(pedName), zone12, Heading12, 0, 0)
    DecorSetInt(Ped, "Yay", 5431)
    FreezeEntityPosition(Ped, 1)
    SetEntityInvincible(Ped, true)
    SetBlockingOfNonTemporaryEvents(Ped, 1)

end)

zone13 = vector3(549.226, 2671.45, 41.16)
Heading13 = 98.89

Citizen.CreateThread(function()
    LoadModel(pedName)
    Ped = CreatePed(2, GetHashKey(pedName), zone13, Heading13, 0, 0)
    DecorSetInt(Ped, "Yay", 5431)
    FreezeEntityPosition(Ped, 1)
    SetEntityInvincible(Ped, true)
    SetBlockingOfNonTemporaryEvents(Ped, 1)

end)

zone14 = vector3(1165.45, 2711.06, 37.16)
Heading14 = 188.99

Citizen.CreateThread(function()
    LoadModel(pedName)
    Ped = CreatePed(2, GetHashKey(pedName), zone14, Heading14, 0, 0)
    DecorSetInt(Ped, "Yay", 5431)
    FreezeEntityPosition(Ped, 1)
    SetEntityInvincible(Ped, true)
    SetBlockingOfNonTemporaryEvents(Ped, 1)

end)

-- zone14 = vector3()
-- Heading14 = 184

-- Citizen.CreateThread(function()
--     LoadModel(pedName)
--     Ped = CreatePed(2, GetHashKey(pedName), zone14, Heading14, 0, 0)
--     DecorSetInt(Ped, "Yay", 5431)
--     FreezeEntityPosition(Ped, 1)
--     SetEntityInvincible(Ped, true)
--     SetBlockingOfNonTemporaryEvents(Ped, 1)

-- end)


function LoadModel(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Wait(1)
    end
end

local blips = {
   {title="Supérette", colour=25, id=52, x = 26.07, y = -1347.6},
   {title="Supérette", colour=25, id=52, x = -48.74, y = -1757.71},
   {title="Supérette", colour=25, id=52, x = 1136.05, y = -982.79},
   {title="Supérette", colour=25, id=52, x = 1163.27, y = -323.97},
   {title="Supérette", colour=25, id=52, x = 374.16, y = 325.76},
   {title="Supérette", colour=25, id=52, x = 2557.65, y = 382.37},
   {title="Supérette", colour=25, id=52, x = -1222.51, y = -906.36},
   {title="Supérette", colour=25, id=52, x = -707.71, y = -914.73},
   {title="Supérette", colour=25, id=52, x = -2965.98, y = 391.42},
   {title="Supérette", colour=25, id=52, x = -3038.93, y = 584.44},
   {title="Supérette", colour=25, id=52, x = -3241.96, y = 1001.3},
   {title="Supérette", colour=25, id=52, x = -1820.63, y = 792.94},
   {title="Supérette", colour=25, id=52, x = 549.226, y = 2671.45},
   {title="Supérette", colour=25, id=52, x = 1165.45, y = 2711.06}
}

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.9)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)