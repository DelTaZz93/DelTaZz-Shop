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

---------- Blips ----------

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
