local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem('burgershot_bagsmall', function(source) 
	TriggerClientEvent('rz-burgershot:CraftSmallBagItem', source) 
    TriggerClientEvent('QBCore:Notify', source, Lang:t("notify.success"), "primary", 1500)
end) 

RegisterNetEvent('rz-burgershot:SmallBagItem', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    for k, v in pairs (Config.SmallBag) do
        Player.Functions.AddItem(v, 1)
    end  
    Player.Functions.RemoveItem(Config.SmallBagItem , 1)  
end)

QBCore.Functions.CreateUseableItem('burgershot_bagbig', function(source) 
	TriggerClientEvent('rz-burgershot:CraftBigBagItem', source) 
    TriggerClientEvent('QBCore:Notify', source, Lang:t("notify.success"), "primary", 1500)
end)

RegisterNetEvent('rz-burgershot:BigBagItem', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    for k, v in pairs (Config.BigBag) do
        Player.Functions.AddItem(v, 1)
    end 
    Player.Functions.RemoveItem(Config.BigBagItem , 1)
    
end)

QBCore.Functions.CreateUseableItem('burgershot_baggoat', function(source) 
	TriggerClientEvent('rz-burgershot:CraftGoatMenuItem', source) 
    TriggerClientEvent('QBCore:Notify', source, Lang:t("notify.success"), "primary", 1500)
end)

RegisterNetEvent('rz-burgershot:GoatMenuItem', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    for k, v in pairs (Config.GoatBag) do
        Player.Functions.AddItem(v, 1)
    end 
    Player.Functions.RemoveItem(Config.GoatBagItem, 1)
    
end)

QBCore.Functions.CreateUseableItem('burgershot_bagcoffe', function(source) 
	TriggerClientEvent('rz-burgershot:CraftCoffeeMenuItem', source) 
    TriggerClientEvent('QBCore:Notify', source, Lang:t("notify.success"), "primary", 1500)
end)

RegisterNetEvent('rz-burgershot:CoffeeMenuItem', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    for k, v in pairs (Config.CoffeeBag) do
        Player.Functions.AddItem(v, 1)
    end 
    Player.Functions.RemoveItem(Config.CoffeeBagItem, 1)
    
end)

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

QBCore.Functions.CreateCallback('rz:eat:server:get:smallpacket', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    for k, v in pairs (Config.SmallBag) do
        local burger = Ply.Functions.GetItemByName(v)
        if burger ~= nil then
            cb(true)
        else
            cb(false)
        end
    end
end)

RegisterNetEvent('rz-burgershot:add:smallpacket', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    for k, v in pairs (Config.SmallBag) do
        Player.Functions.RemoveItem(v)
    end
    Player.Functions.AddItem(Config.SmallBagItem, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.SmallBagItem], "add")
end)

QBCore.Functions.CreateCallback('rz:eat:server:get:bigpacket', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    for k, v in pairs (Config.BigBag) do
        local burger = Ply.Functions.GetItemByName(v)
        if burger ~= nil then
            cb(true)
        else
            cb(false)
        end
    end
end)

RegisterNetEvent('rz-burgershot:add:bigpacket', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    for k, v in pairs (Config.BigBag) do
        Player.Functions.RemoveItem(v)
    end
    Player.Functions.AddItem(Config.BigBagItem, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.BigBagItem], "add")
end)

QBCore.Functions.CreateCallback('rz:eat:server:get:goatpacket', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    for k, v in pairs (Config.GoatBag) do
        local burger = Ply.Functions.GetItemByName(v)
        if burger ~= nil then
            cb(true)
        else
            cb(false)
        end
    end
end)

RegisterNetEvent('rz-burgershot:add:goatpacket', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    for k, v in pairs (Config.GoatBag) do
        Player.Functions.RemoveItem(v)
    end
    Player.Functions.AddItem(Config.GoatBagItem, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.GoatBagItem], "add")
end)

QBCore.Functions.CreateCallback('rz:eat:server:get:coffeepacket', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    for k, v in pairs (Config.CoffeeBag) do
        local coffee = Ply.Functions.GetItemByName(v)
        if coffee ~= nil then
            cb(true)
        else
            cb(false)
        end
    end
end)

RegisterNetEvent('rz-burgershot:add:coffeepacket', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    for k, v in pairs (Config.CoffeeBag) do
        Player.Functions.RemoveItem(v)
    end
    Player.Functions.AddItem(Config.CoffeeBagItem, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.CoffeeBagItem], "add")
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

RegisterServerEvent('rz-burgershot:server:smallpacketsell')
AddEventHandler('rz-burgershot:server:smallpacketsell', function()
    local xPlayer = QBCore.Functions.GetPlayer(source)

    local smallbag = xPlayer.Functions.GetItemByName(Config.SmallBagItem)

    if smallbag ~= nil then
        xPlayer.Functions.RemoveItem(Config.SmallBagItem, 1)
        xPlayer.Functions.AddMoney('cash', Config.SmallBagSellPrice)
		TriggerClientEvent('QBCore:Notify', source, Lang:t("notify.deliverynotify") ..Config.SmallBagSellPrice, "primary", 5000)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.SmallBagItem], "remove", 1)
	end
end)

RegisterServerEvent('rz-burgershot:server:bigpacketsell')
AddEventHandler('rz-burgershot:server:bigpacketsell', function()
    local xPlayer = QBCore.Functions.GetPlayer(source)

    local bigbag = xPlayer.Functions.GetItemByName(Config.BigBagItem)

    if bigbag ~= nil then
        xPlayer.Functions.RemoveItem(Config.BigBagItem, 1)
        xPlayer.Functions.AddMoney('cash', Config.BigBagSellPrice)
		TriggerClientEvent('QBCore:Notify', source, Lang:t("notify.deliverynotify") ..Config.BigBagSellPrice, "primary", 5000)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.BigBagItem], "remove", 1)
	end
end)

RegisterNetEvent('rz-burgershot:server:macaroon', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(Config.Macaroon, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.Macaroon], "add")
end)

Citizen.CreateThread(function()
    local resourceName = "^2 rz-burgershot Started ("..GetCurrentResourceName()..")"
    print("\n^1----------------------------------------------------------------------------------^7")
    print(resourceName)
    print("^1----------------------------------------------------------------------------------^7")
end)