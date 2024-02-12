Config = {}

Config.Job = 'police'
Config.ProgressbarTime = 5000
Config.Dirt = 10
Config.MoneyType = "cash"
Config.PackageSellPrice = 5000
Config.DeliveryWait = 5000
Config.CarSpawnCoord = vector4(-1164.57, -891.6, 14.1, 121.93)
Config.Van = "nspeedo"
Config.Bike = "foodbike"
Config.PackageItem = "burgershotbag"

Config.ItemList = { --Please write packable items here
    "burgershot_bleeder", 
    "burgershot_colas", 
    "burgershot_patatos", 
    "burgershot_bigking", 
    "burgershot_colab", 
    "burgershot_patatob", 
    "burgershot_goatwrap", 
    "burgershot_shotnuggets", 
    "burgershot_shotrings", 
    "burgershot_coffee",
    "burgershot_macaroon"
}

---------Burger Shot Job Coords---------

Config.Duty = vector3(-1194.72, -900.11, 14.50)
Config.Tray =  vector3(-1193.90, -894.37, 14.0) 
Config.Tray2 =  vector3(-1195.26, -892.42, 14.0)
Config.Storge = vector3(-1197.58, -893.87, 14.0) 
Config.Fridge = vector3(-1203.42, -895.9, 14.0)
Config.BurgerStation = vector3(-1200.56, -900.9, 14.0)
Config.Fries = vector3(-1201.52, -899.06, 14.0)
Config.Drink =  vector3(-1199.57, -895.55, 14.0)
Config.Garage = vector3(-1165.66, -887.96, 14.13) 
Config.MeatStation = vector3(-1202.69, -897.46, 14.0)
Config.PackageStation = vector3(-1196.64, -895.82, 14.0)
Config.Clean = vector3(-1197.02, -902.17, 14.0)
Config.SellItem = vector3(-1178.17, -891.55, 13.50)
Config.Finish = vector3(-1164.57, -891.6, 14.1)

---------Burger Shot Job Package Sell Cord---------

Config.Locations = { 
    ["coords"] = {
        [1] = vector3(224.15, 513.55, 140.92),
        [2] = vector3(43.02, 468.85, 148.1),
        [3] = vector3(119.33, 564.1, 183.96),
        [4] = vector3(-60.82, 360.56, 113.06),
        [5] = vector3(-622.87, 488.81, 108.88),
        [6] = vector3(-1040.67, 508.11, 84.38),
        [7] = vector3(-1308.13, 448.9, 100.97),
        [8] = vector3(-1733.21, 378.99, 89.73),
        [9] = vector3(-2009.15, 367.42, 94.81),
        [10] = vector3(-1996.29, 591.25, 118.1),      
        [11] = vector3(1061.04, -378.61, 68.24),
        [12] = vector3(1029.42, -408.96, 65.95),
        [13] = vector3(1011.27, -422.89, 64.96),
        [14] = vector3(988.2, -433.74, 63.9),
        [15] = vector3(967.9, -452.62, 62.41),
        [16] = vector3(943.26, -463.9, 61.4),
        [17] = vector3(922.18, -478.69, 61.09),
        [18] = vector3(906.58, -489.69, 59.44),
        [19] = vector3(878.99, -498.51, 57.88),
        [20] = vector3(862.28, -509.58, 57.33),      
    },
}

---------Burger Shot Job Create Item List---------

Config.BleederBurger = "burgershot_bleeder"
Config.BigKingBurger = "burgershot_bigking"
Config.Wrap = "burgershot_goatwrap"
Config.Macaroon = "burgershot_macaroon"
Config.Tomato = 'burgershot_tomato' 
Config.Cheddar = 'burgershot_cheddar'
Config.VegetableCurly = 'burgershot_curly'
Config.Sauce = 'burgershot_sauce' 
Config.Bread = 'burgershot_bread' 
Config.Lavash = 'burgershot_lavash' 
Config.SmallColaItem = 'burgershot_colas' 
Config.BigColaItem = 'burgershot_colab' 
Config.CoffeeItem = 'burgershot_coffee'
Config.BigEmptyCardboard = 'burgershot_bigcardboard' 
Config.SmallEmptyCardboard = 'burgershot_smallcardboard' 
Config.SmallEmptyGlass = 'burgershot_smallemptyglass' 
Config.BigEmptyGlass = 'burgershot_bigemptyglass' 
Config.CoffeeEmptyGlass = 'burgershot_coffeeemptyglass' 
Config.FrozenMeat = 'burgershot_frozenmeat' 
Config.FrozenRings = 'burgershot_frozenrings' 
Config.FrozenNuggets = 'burgershot_frozennuggets' 
Config.SmallFrozenPotato = 'burgershot_smallfrozenpotato' 
Config.BigFrozenPotato = 'burgershot_bigfrozenpotato'
Config.Meat = 'burgershot_meat' 
Config.Rings = 'burgershot_shotrings' 
Config.Nuggets = 'burgershot_shotnuggets' 
Config.SmallPotato = 'burgershot_patatos' 
Config.BigPotato = 'burgershot_patatob' 
Config.Cone = "burgershot_icecreamcone"
Config.ChocolateIceCream = "burgershot_chocolateicecream"
Config.VanillaIceCream = "burgershot_vanillaicecream"
Config.ThesmurfsIceCream = "burgershot_thesmurfsicecream"
Config.StrawberryIceCream = "burgershot_strawberryicecream"
Config.MatchaIceCream = "burgershot_matchaicecream"
Config.UbeIceCream = "burgershot_ubeicecream"
Config.SmurfetteIceCream = "burgershot_smurfetteicecream"
Config.UnicornIceCream = "burgershot_unicornicecream"

---------Burger Shot Job Shop---------

Config.Shop = {
    label = "Burger Shot",
    slots = 20,
    items = {
        {
            name = "burgershot_tomato",
            amount = 10,
            type = "item",
            price = 200,
            slot = 1,
        },
        {
            name = "burgershot_cheddar",
            amount = 10,
            type = "item",
            price = 200,
            slot = 2,
        },
        {
            name = "burgershot_curly",
            amount = 10,
            type = "item",
            price = 200,
            slot = 3,
        },
        {
            name = "burgershot_sauce",
            amount = 10,
            type = "item",
            price = 200,
            slot = 4,
        },
        {
            name = "burgershot_bread",
            amount = 10,
            type = "item",
            price = 200,
            slot = 5,
        },
        {
            name = "burgershot_lavash",
            amount = 10,
            type = "item",
            price = 200,
            slot = 6,
        },
        {
            name = "burgershot_bigcardboard",
            amount = 10,
            type = "item",
            price = 200,
            slot = 7,
        },
        {
            name = "burgershot_smallcardboard",
            amount = 10,
            type = "item",
            price = 200,
            slot = 8,
        },
        {
            name = "burgershot_bigemptyglass",
            amount = 10,
            type = "item",
            price = 200,
            slot = 9,
        },
        {
            name = "burgershot_smallemptyglass",
            amount = 10,
            type = "item",
            price = 200,
            slot = 10,
        },
        {
            name = "burgershot_coffeeemptyglass",
            amount = 10,
            type = "item",
            price = 200,
            slot = 11,
        },
        {
            name = "burgershot_frozenmeat",
            amount = 10,
            type = "item",
            price = 200,
            slot = 12,
        },
        {
            name = "burgershot_frozenrings",
            amount = 10,
            type = "item",
            price = 200,
            slot = 13,
        },
        {
            name = "burgershot_frozennuggets",
            amount = 10,
            type = "item",
            price = 200,
            slot = 14,
        },
        {
            name = "burgershot_smallfrozenpotato",
            amount = 10,
            type = "item",
            price = 200,
            slot = 15,
        },
        {
            name = "burgershot_bigfrozenpotato",
            amount = 10,
            type = "item",
            price = 200,
            slot = 16,
        },
        {
            name = "burgershot_icecreamcone",
            amount = 10,
            type = "item",
            price = 200,
            slot = 17,
        },
    }
}
