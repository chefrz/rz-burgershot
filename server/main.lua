local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('rz-burgershot:givetoyburgershot')
AddEventHandler('rz-burgershot:givetoyburgershot', function(key)
    local src = source
    local items = {"burgershot_toy1", "burgershot_toy2", "burgershot_toy3", "burgershot_toy4", "burgershot_toy5", "burgershot_toy6"}
    local xPlayer = QBCore.Functions.GetPlayer(src)
    local item = items[math.random(1, #items)]
    local amount = 1
    if xPlayer.Functions.AddItem(item, amount) then
        TriggerClientEvent("QBCore:Notify", src, Lang:t("notify.toy"), "primary")
    else
        TriggerClientEvent("QBCore:Notify", src, Lang:t("notify.heavy"), "error")
    end
end)

QBCore.Functions.CreateCallback('rz-burgershot:itemcheck', function(source, cb, item)
	local xPlayer = QBCore.Functions.GetPlayer(source)
    local itemcount = xPlayer.Functions.GetItemByName(item)
	if itemcount ~= nil then
		cb(true)
	else
        cb(false)
	end
end)

---------Burger Shot Job---------

RegisterNetEvent('rz-burgershot:server:bigcola', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.BigEmptyGlass, 1)
    Player.Functions.AddItem(Config.BigColaItem, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.BigColaItem], "add")
end)

RegisterNetEvent('rz-burgershot:server:smallcola', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.SmallEmptyGlass, 1)
    Player.Functions.AddItem(Config.SmallColaItem, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.SmallColaItem], "add")
end)

RegisterNetEvent('rz-burgershot:server:coffee', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.CoffeeEmptyGlass, 1)
    Player.Functions.AddItem(Config.CoffeeItem, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.CoffeeItem], "add")
end)

RegisterNetEvent('rz-burgershot:server:bigpotato', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.BigFrozenPotato, 1)
    Player.Functions.RemoveItem(Config.BigEmptyCardboard, 1)
    Player.Functions.AddItem(Config.BigPotato, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.BigPotato], "add")
end)

RegisterNetEvent('rz-burgershot:server:smallpotato', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.SmallFrozenPotato, 1)
    Player.Functions.RemoveItem(Config.SmallEmptyCardboard, 1)
    Player.Functions.AddItem(Config.SmallPotato, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.SmallPotato], "add")
end)

RegisterNetEvent('rz-burgershot:server:rings', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.FrozenRings, 1)
    Player.Functions.RemoveItem(Config.SmallEmptyCardboard, 1)
    Player.Functions.AddItem(Config.Rings, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.Rings], "add")
end)

RegisterNetEvent('rz-burgershot:server:nuggets', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.FrozenNuggets, 1)
    Player.Functions.RemoveItem(Config.BigEmptyCardboard, 1)
    Player.Functions.AddItem(Config.Nuggets, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.Nuggets], "add")
end)

RegisterNetEvent('rz-burgershot:server:meat', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.FrozenMeat, 1)
    Player.Functions.AddItem(Config.Meat, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.Meat], "add")
end)

RegisterNetEvent('rz-burgershot:server:bleederburger', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.Bread, 1)
    Player.Functions.RemoveItem(Config.Meat, 1)
    Player.Functions.RemoveItem(Config.Sauce, 1)
    Player.Functions.RemoveItem(Config.VegetableCurly, 1)
    Player.Functions.AddItem(Config.BleederBurger, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.BleederBurger], "add")
end)

RegisterNetEvent('rz-burgershot:server:bigkingburger', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.Bread, 1)
    Player.Functions.RemoveItem(Config.Meat, 1)
    Player.Functions.RemoveItem(Config.Sauce, 1)
    Player.Functions.RemoveItem(Config.VegetableCurly, 1)
    Player.Functions.RemoveItem(Config.Cheddar, 1)
    Player.Functions.RemoveItem(Config.Tomato, 1)
    Player.Functions.AddItem(Config.BigKingBurger, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.BigKingBurger], "add")
end)

RegisterNetEvent('rz-burgershot:server:wrap', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.Lavash, 1)
    Player.Functions.RemoveItem(Config.Meat, 1)
    Player.Functions.RemoveItem(Config.Sauce, 1)
    Player.Functions.RemoveItem(Config.VegetableCurly, 1)
    Player.Functions.RemoveItem(Config.Cheddar, 1)
    Player.Functions.RemoveItem(Config.Tomato, 1)
    Player.Functions.AddItem(Config.Wrap, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.Wrap], "add")
end)
---
RegisterNetEvent('rz-burgershot:server:chocolateicecream', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.Cone, 1)
    Player.Functions.AddItem(Config.ChocolateIceCream, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.ChocolateIceCream], "add")
end)

RegisterNetEvent('rz-burgershot:server:vanillaicecream', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.Cone, 1)
    Player.Functions.AddItem(Config.VanillaIceCream, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.VanillaIceCream], "add")
end)

RegisterNetEvent('rz-burgershot:server:thesmurfsicecream', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.Cone, 1)
    Player.Functions.AddItem(Config.ThesmurfsIceCream, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.ThesmurfsIceCream], "add")
end)

RegisterNetEvent('rz-burgershot:server:strawberryicecream', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.Cone, 1)
    Player.Functions.AddItem(Config.StrawberryIceCream, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.StrawberryIceCream], "add")
end)

RegisterNetEvent('rz-burgershot:server:matchaicecream', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.Cone, 1)
    Player.Functions.AddItem(Config.MatchaIceCream, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.MatchaIceCream], "add")
end)

RegisterNetEvent('rz-burgershot:server:ubeicecream', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.Cone, 1)
    Player.Functions.AddItem(Config.UbeIceCream, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.UbeIceCream], "add")
end)

RegisterNetEvent('rz-burgershot:server:smurfetteicecream', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.Cone, 1)
    Player.Functions.AddItem(Config.SmurfetteIceCream, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.SmurfetteIceCream], "add")
end)

RegisterNetEvent('rz-burgershot:server:unicornicecream', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.Cone, 1)
    Player.Functions.AddItem(Config.UnicornIceCream, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.UnicornIceCream], "add")
end)

RegisterNetEvent('rz-burgershot:server:macaroon', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(Config.Macaroon, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.Macaroon], "add")
end)

QBCore.Functions.CreateCallback('rz:eat:server:get:bigpotato', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local item1 = Ply.Functions.GetItemByName(Config.BigFrozenPotato)
    local item2 = Ply.Functions.GetItemByName(Config.BigEmptyCardboard)
    if item1 ~= nil and item2 ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('rz:eat:server:get:smallpotato', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local item1 = Ply.Functions.GetItemByName(Config.SmallFrozenPotato)
    local item2 = Ply.Functions.GetItemByName(Config.SmallEmptyCardboard)
    if item1 ~= nil and item2 ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('rz:eat:server:get:rings', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local item1 = Ply.Functions.GetItemByName(Config.FrozenRings)
    local item2 = Ply.Functions.GetItemByName(Config.SmallEmptyCardboard)
    if item1 ~= nil and item2 ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('rz:eat:server:get:nuggets', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local item1 = Ply.Functions.GetItemByName(Config.FrozenNuggets)
    local item2 = Ply.Functions.GetItemByName(Config.BigEmptyCardboard)
    if item1 ~= nil and item2 ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('rz:eat:server:get:bleederburger', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local item1 = Ply.Functions.GetItemByName(Config.Bread)
    local item2 = Ply.Functions.GetItemByName(Config.Meat)
    local item3 = Ply.Functions.GetItemByName(Config.Sauce)
    local item4 = Ply.Functions.GetItemByName(Config.VegetableCurly)
    if item1 ~= nil and item2 ~= nil and item3 ~= nil and item4 ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('rz:eat:server:get:bigkingburger', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local item1 = Ply.Functions.GetItemByName(Config.Bread)
    local item2 = Ply.Functions.GetItemByName(Config.Meat)
    local item3 = Ply.Functions.GetItemByName(Config.Sauce)
    local item4 = Ply.Functions.GetItemByName(Config.Cheddar)
    local item5 = Ply.Functions.GetItemByName(Config.Tomato)
    local item6 = Ply.Functions.GetItemByName(Config.VegetableCurly)
    if item1 ~= nil and item2 ~= nil and item3 ~= nil and item4 ~= nil and item5 ~= nil and item6 ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('rz:eat:server:get:wrap', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local item1 = Ply.Functions.GetItemByName(Config.Lavash)
    local item2 = Ply.Functions.GetItemByName(Config.Meat)
    local item3 = Ply.Functions.GetItemByName(Config.Sauce)
    local item4 = Ply.Functions.GetItemByName(Config.Cheddar)
    local item5 = Ply.Functions.GetItemByName(Config.Tomato)
    local item6 = Ply.Functions.GetItemByName(Config.VegetableCurly)
    if item1 ~= nil and item2 ~= nil and item3 ~= nil and item4 ~= nil and item5 ~= nil and item6 ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

RegisterNetEvent('rz-burgershot:server:sell-box', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local payment = Config.PackageSellPrice
    local bigbag = Player.Functions.GetItemByName(Config.PackageItem)

    if bigbag ~= nil then
        Player.Functions.RemoveItem(Config.PackageItem, 1)
        Player.Functions.AddMoney(Config.MoneyType, payment)
        TriggerClientEvent('QBCore:Notify', source, Lang:t("notify.deliverynotify") ..payment, "primary", 5000)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.PackageItem], "remove", 1)
    end
end)

RegisterServerEvent('rz-burgershot:server:package')
AddEventHandler('rz-burgershot:server:package', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local info = {
        type = "menu",
        items = {}
    }
    local totalWeight = 0
    for i=1, 5 do
        local slotItem = Player.Functions.GetItemBySlot(i)
        if slotItem then
            local trueItem = false
            for i=1, #Config.ItemList do
                if slotItem.name == Config.ItemList[i] then
                    trueItem = true
                end
            end
            if not trueItem then
                TriggerClientEvent("QBCore:Notify", src, slotItem.label.. Lang:t("notify.not_package"), "error")
                return
            end
            table.insert(info.items, {
                amount = slotItem.amount,
                label = slotItem.label,
                info = slotItem.info,
                name = slotItem.name
            })
        end
    end

    for i=1, 5 do
        local slotItem = Player.Functions.GetItemBySlot(i)
        if slotItem then
            Player.Functions.RemoveItem(slotItem.name, slotItem.amount, slotItem.slot)
        end
    end

    local packet = Config.PackageItem
    if job == Config.Job then
        packet = Config.PackageItem
    end
    Player.Functions.AddItem(packet, 1, nil, info)
    TriggerClientEvent("QBCore:Notify", src, Lang:t("notify.createpacket"), "success")
end)

QBCore.Functions.CreateUseableItem(Config.PackageItem, function(source, item)
    openPacket(source, item)
end)

function openPacket(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local itemData = Player.Functions.GetItemBySlot(item.slot)
    for itemName, itemData in pairs(itemData.info.items) do
        TriggerEvent('rz-burgershot:givetoyburgershot')
        Player.Functions.AddItem(itemData.name, itemData.amount, nil, itemData.info)
    end
    Player.Functions.RemoveItem(item.name, 1, item.slot)
    TriggerClientEvent("QBCore:Notify", src, Lang:t("notify.success"), "success")
end

Citizen.CreateThread(function()
    local resourceName = "^2 rz-burgershot Started ("..GetCurrentResourceName()..")"
    print("\n^1----------------------------------------------------------------------------------^7")
    print(resourceName)
    print("^1----------------------------------------------------------------------------------^7")
end)

