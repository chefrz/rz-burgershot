local Translations = {
    label = {
        ["big"] = "Vous créez un Menu XL...",
        ["small"] = "Vous créez un Menu Classique.",
        ["goat"] = "Vous créez un Menu Wrap Chèvre.",
        ["coffee"] = "Vous créez un menu café.",
        ["duty"] = "Service",
        ["tray"] = "Plateau",
        ["storge"] = "Stockage",
        ----
        ["bigcola"] = "Vous faites un Soda XL",
        ["smallcola"] = "Vous faites un Soda classique",
        ["coffee2"] = "Vous faites un Café",
        ["bigpotato"] = "Vous faites des frites XL",
        ["smallpotato"] = "Vous faites des frites classique",
        ["rings"] = "Vous faites des Onion Rings",
        ["nuggets"] = "Vous faites des Nuggets",
        ["meat"] = "Vous cuisinez de la viande",
        ["bleederburger"] = "Vous faites un Bleeder Burger",
        ["bigkingburger"] = "Vous faites un BigKing Burger",
        ["wrap"] = "Vous faites un Wrap",
        ["macaroon"] = "Vous sortez des macarons du réfrigérateur",
        ["clean"] = "Vous vous lavez les mains",
        ["Fridge"] = "Réfrigérateur",
        ["Fries"] = "Fritures",
        ["Drink"] = "Boissons",
        ["Meat"] = "Viandes",
        ["BurgerStation"] = "Préparation Burger",
        ["PackageStation"] = "Préparation Menu",
        ["MacaroonStation"] = "Préparation Macaron",
        ["IceCreamStation"] = "Préparation Glace",
        ["SellItem"] = "Station de vente",
        ["Clean"] = "Lavez-vous les mains",
        -----
        ["chocolateicecream"] = "Vous faites de la glace au chocolat",
        ["vanillaicecream"] = "Vous faites de la glace à la vanille",
        ["thesmurfsicecream"] = "Vous préparez la glace des Schtroumpfs",
        ["strawberryicecream"] = "Vous préparez de la glace à la fraise",
        ["matchaicecream"] = "Vous préparez de la glace au matcha",
        ["ubeicecream"] = "Vous faites de la glace Ube",
        ["smurfetteicecream"] = "Vous faites de la glace aux Schtroumpfettes",
        ["unicornicecream"] = "Vous faites de la glace à la licorne",
        ----
        ["packetsell"] = "La commande est en cours de livraison",
        ["deliver"] = "[E] Livrer",
    },
    qbmenu = {
        ["header"] = "Menu d'emballage du Burger Shot",

        ["smallcraft"] = "Menu Classique",
        ["smallcrafttxt"] = "Bleeder Burger - Soda classique - frite classique",

        ["bigcraft"] = "Menu XL",
        ["bigcrafttxt"] = "Big King Burger - Soda XL - Frite XL",

        ["goatcraft"] = "Menu Wrap Chèvre",
        ["goatcrafttxt"] = "Wrap Chèvre - Soda XL - Onion Rings - Nuggets",

        ["coffecraft"] = "Menu Café",
        ["coffecrafttxt"] = "Café - Macaron",
        ------------------
        ["frieslistmenu"] = "Liste des fritures",
        ["friestmenu"] = "Menu des fritures",
        ----
        ["bigpotatoheader"] = "Frite XL",
        ["bigpotatotxt"] = "Frite surgelée XL - Carton grand format",
        ----
        ["smallpotatoheader"] = "Frite Classique",
        ["smallpotatotxt"] = "Frite surgelée classique - Carton petit format",
        ----
        ["ringsheader"] = "Onion Rings",
        ["ringstxt"] = "Onion Rings surgelé - Carton petit format",
        ----
        ["nuggetsheader"] = "Nuggets",
        ["nuggetstxt"] = "Nuggets surgelé - Carton grand format",
        ----
        ["dutymenu"] = "Menu de service",
        ["dutyonoff"] = "Prendre / Quitter son service",
        ----
        ["Fridge"] = "Réfrigérateur",
        ["orderıtems"] = "Commander ingrédients",
        ["orderıtemstxt"] = "Commandez de nouveaux ingrédients !",
        -----
        ["fridgeheader"] = "Ouvrir Réfrigérateur",
        ["fridgetxt"] = "Voyez ce que vous avez en stock",
        ----
        ["friesmeatmenu"] = "Menu Viande Frites",
        ["friesmeatheader"] = "Viande",
        ["friesmeatxt"] = "Viande congelée",
        ----
        ["macaroonheader"] = "Macaron",
        ["macaroontxt"] = "Prenez un macaron",
        ------
        ["drinklistmenu"] = "Liste des boissons",
        ["bigsizecola"] = "Soda XL",
        ["bigsizecolatxt"] = "Verre vide XL",
        ["smallsizecola"] = "Soda classique",
        ["smallsizecolatxt"] = "Verre vide classique",
        ["coffee"] = "Café",
        ["coffeetxt"] = "Verre à café vide",
        ----
        ["burgermenu"] = "Menu Burger",
        ---
        ["bleederburgerheader"] = "Bleeder Burger",
        ["bleederburgertxt"] = "Pain - Viande - Sauce - Salade",
        ----
        ["bigkingburgerheader"] = "Big King Burger",
        ["bigkingburgertxt"] = "Pain - Viande - Sauce - Cheddar - Tomate - Salade",
        ----
        ["wrapheader"] = "Wrap",
        ["wraptxt"] = "Pain Wrap - Viande - Sauce - Cheddar - Tomate - Salade",
        ---
        ["closemenu"] = "Fermer Menu",
        ["backmenu"] = "Retour Arrière",
        ----
        ["icecream"] = "Liste des glaces",
        -----
        ["chocolateicecream"]  =  "Crème glacée au chocolat",
        ["vanillaicecream"] =  "Glace à la vanille",
        ["thesmurfsicecream"] =  "La glace des Schtroumpfs",
        ["matchaicecream"] =  "Glace au matcha",
        ["ubeicecream"] =  "Glace Ubé",
        ["smurfetteicecream"] =  "Glace Schtroumpfette",
        ["unicornicecream"] =  "Glace Licorne",
        ["strawberryicecream"] =  "Glace à la fraise",
        ---
        ["packetmenuheader"] =  "Menu de vente",
        ["smallpacketsellheader"] =  "Vente de paquets taille classique",
        ["bigpacketsellheader"] =  "Vente de paquets taille XL",
    },
    notify = {
        ["success"] = "Vous avez ouvert le paquet",
        ["toy"] = "Vous avez trouvé un jouet à l'intérieur du paquet",
        ["needıtem"] = "Les éléments requis sont manquants.",
        ["heavy"] = "Tu es trop lourd !",
        ["notcommand"] = "Vous ne pouvez pas utiliser cette commande",
        ["cancel"] = "Emballage annulé",
        ["createpacket"] = "Réussi.",
        ["duty"] = "Vous n'êtes pas en service.",
        ["clean"] = "Vos mains ne sont pas propres.",
        ["dirt"] = "Tes mains sont sales.",
        ["dirt2"] = "Vos mains sont nettoyées.",
        ["finish"] = "Livraison(s) terminé(s)",
        ["notfinish"] = "Vous devez être dans le véhicule pour terminer la livraison",
        ["notselling"] = "Vous n'avez pas commencé à vendre",
        ["neworder"] = "Votre nouvelle livraison est en : ",
        ["ondelivery"] = "Vous êtes déjà en train de livrer.",
        ["realy"] = "Êtes-vous prêt à vendre ?",
        ["deliverynotify"] = "Montant reçu pour votre livraison : $",
    }

    
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})