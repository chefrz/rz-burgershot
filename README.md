![image](https://cdn.discordapp.com/attachments/1186357096216801381/1205589739390902272/burgershot.png?ex=65d8ebf0&is=65c676f0&hm=8128f9f5f379bcacaf86d217231059a8aa1734ac0cbd51754da92f2bcb36f97c&)

# rz-burgershot
- Detailed Burger Shot Job [QBCORE]
- New QBCore

##
- Hello, if you want to support me you can tip me. Have a nice day! ➝ https://rzstore.tebex.io/package/6126329

## Video Showcase
- https://youtu.be/MHwQo5yg-Kw
## Discord
- https://discord.gg/zertxMj7Yh

## Update
- NPCs pack sales codes have been edited (it now works with target and a blip appears at the customer location) and rebuilt perfectly 
- All operations can be done with target
- Updated the setup lines
- Packaging system has changed (You can now pack items if you have suitable items in the first 5 slots of your inventory and in return you will receive one full package)
- The content of the package added to your inventory is stated in the item description. If you made a package with 1 large cola, it will say "1x large cola" in the description of your package.
- The sales menu has been changed and there are now 2 vehicle options.
- Finishing the sale has been changed, you can finish the sale from the position you received the job from.

## Features
- Duty On/Off
- Job Fridge
- Low Resmon
- Making ice cream
- Detailed create menus
- Burgershot custom van and bike
- Easy editable Config file
- Easy editable language file
- All created products can be used
- NPCs that you can earn money by selling menus
- You cannot start work without washing your hands
- Script using full qb-target
- To pack menus

## Dependencies
- [qb-core](https://github.com/qbcore-framework/qb-core)
- [qb-target](https://github.com/qbcore-framework/qb-target)
- [Burger-Shot-Ymap](https://www.gta5-mods.com/maps/burgershot-remastered-gta-v-interior-mod-gtadps)

## Installation

### For Packaging
- Find this file and open it `qb-core/server/player.lua`, and find the line "function QBCore.Player.CreatePlayer" add the following

```
    function self.Functions.GetItemBySlot(slot)
		local slot = tonumber(slot)
		if self.PlayerData.items[slot] ~= nil then
			return self.PlayerData.items[slot]
		end
		return nil
	end
```

### Job

```
	burgershot = {
	label = 'Burger Shot',
    type = "burgershot",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Employee', payment = 50 },
			['1'] = { name = 'Employer', isboss = true, payment = 100 },
		},
	},
```


### Items

- Find this file and open it `qb-inventory or lj-inventory/html/js/app.js`, and find the line "function FormatItemInfo" add the following

```
        } else if (itemData.info.type == "menu") {
            $(".item-info-title").html('<p>'+itemData.label+'</p>')
            let first = true
            let descText = ""
            for(var key in itemData.info.items){
                if (first) {
                    first = false
                    descText = itemData.info.items[key].amount+"x "+itemData.info.items[key].label
                } else {
                    descText = descText + ", "+itemData.info.items[key].amount+"x "+itemData.info.items[key].label
                }
            };
    
            $(".item-info-description").html('<p> Package Included: '+ descText + '</p>');
```


- Add the following code to your `qb-core/shared/ıtems.lua`
```

-- Burger Shot Items

burgershotbag = {
    name = 'burgershotbag',
    label = 'BurgerShot Package',
    weight = 100,
    type = 'item',
    image = 'burgershotbag.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = ''
},

burgershot_bigking = {
    name = 'burgershot_bigking',
    label = 'Big King Burger',
    weight = 100,
    type = 'item',
    image = 'burgershot_bigking.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Big King'
},

burgershot_colab = {
    name = 'burgershot_colab',
    label = 'Big Size Cola',
    weight = 100,
    type = 'item',
    image = 'burgershot_colab.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Big Size Cola'
},

burgershot_patatob = {
    name = 'burgershot_patatob',
    label = 'Big Size Patato',
    weight = 100,
    type = 'item',
    image = 'burgershot_patatob.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Big Size Patato'
},

burgershot_bleeder = {
    name = 'burgershot_bleeder',
    label = 'Bleeder Burger',
    weight = 100,
    type = 'item',
    image = 'burgershot_bleeder.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Bleeder Burger'
},

burgershot_colas = {
    name = 'burgershot_colas',
    label = 'Small Size Cola',
    weight = 100,
    type = 'item',
    image = 'burgershot_colas.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Small Size Cola'
},

burgershot_patatos = {
    name = 'burgershot_patatos',
    label = 'Small Size Patato',
    weight = 100,
    type = 'item',
    image = 'burgershot_patatos.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Small Size Patato'
},

burgershot_goatwrap = {
    name = 'burgershot_goatwrap',
    label = 'Goat Wrap',
    weight = 100,
    type = 'item',
    image = 'burgershot_goatwrap.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Goat Wrap'
},

burgershot_shotnuggets = {
    name = 'burgershot_shotnuggets',
    label = 'Shot Nuggets',
    weight = 100,
    type = 'item',
    image = 'burgershot_shotnuggets.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Shot Nuggets'
},

burgershot_shotrings = {
    name = 'burgershot_shotrings',
    label = 'Shot Rings',
    weight = 100,
    type = 'item',
    image = 'burgershot_shotrings.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Shot Rings'
},

burgershot_coffee = {
    name = 'burgershot_coffee',
    label = 'Burger Shot Coffee',
    weight = 100,
    type = 'item',
    image = 'burgershot_coffee.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Burger Shot Coffee'
},

burgershot_macaroon = {
    name = 'burgershot_macaroon',
    label = 'Macaroon',
    weight = 100,
    type = 'item',
    image = 'burgershot_macaroon.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Macaroon'
},

burgershot_toy1 = {
    name = 'burgershot_toy1',
    label = 'Burger Shot Toy',
    weight = 100,
    type = 'item',
    image = 'burgershot_toy1.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Burger Shot Toy'
},

burgershot_toy2 = {
    name = 'burgershot_toy2',
    label = 'Burger Shot Toy',
    weight = 100,
    type = 'item',
    image = 'burgershot_toy2.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Burger Shot Toy'
},

burgershot_toy3 = {
    name = 'burgershot_toy3',
    label = 'Burger Shot Toy',
    weight = 100,
    type = 'item',
    image = 'burgershot_toy3.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Burger Shot Toy'
},

burgershot_toy4 = {
    name = 'burgershot_toy4',
    label = 'Burger Shot Toy',
    weight = 100,
    type = 'item',
    image = 'burgershot_toy4.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Burger Shot Toy'
},

burgershot_toy5 = {
    name = 'burgershot_toy5',
    label = 'Burger Shot Toy',
    weight = 100,
    type = 'item',
    image = 'burgershot_toy5.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Burger Shot Toy'
},

burgershot_toy6 = {
    name = 'burgershot_toy6',
    label = 'Burger Shot Toy',
    weight = 100,
    type = 'item',
    image = 'burgershot_toy6.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Burger Shot Toy'
},

-- Fridge Items
burgershot_tomato = {
    name = 'burgershot_tomato',
    label = 'Tomato',
    weight = 100,
    type = 'item',
    image = 'burgershot_tomato.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Tomato'
},

burgershot_cheddar = {
    name = 'burgershot_cheddar',
    label = 'Cheddar',
    weight = 100,
    type = 'item',
    image = 'burgershot_cheddar.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Cheddar'
},

burgershot_curly = {
    name = 'burgershot_curly',
    label = 'Curly',
    weight = 100,
    type = 'item',
    image = 'burgershot_curly.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Curly'
},

burgershot_sauce = {
    name = 'burgershot_sauce',
    label = 'Sauce',
    weight = 100,
    type = 'item',
    image = 'burgershot_sauce.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Sauce'
},

burgershot_bread = {
    name = 'burgershot_bread',
    label = 'Bread',
    weight = 100,
    type = 'item',
    image = 'burgershot_bread.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Bread'
},

burgershot_lavash = {
    name = 'burgershot_lavash',
    label = 'Lavash',
    weight = 100,
    type = 'item',
    image = 'burgershot_lavash.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Lavash'
},

burgershot_bigcardboard = {
    name = 'burgershot_bigcardboard',
    label = 'Big Size Cardboard',
    weight = 100,
    type = 'item',
    image = 'burgershot_bigcardboard.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Big Size Cardboard'
},

burgershot_smallcardboard = {
    name = 'burgershot_smallcardboard',
    label = 'Small Size Cardboard',
    weight = 100,
    type = 'item',
    image = 'burgershot_smallcardboard.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Small Size Cardboard'
},

burgershot_smallemptyglass = {
    name = 'burgershot_smallemptyglass',
    label = 'Small Size Empty Glass',
    weight = 100,
    type = 'item',
    image = 'burgershot_smallemptyglass.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Small Size Empty Glass'
},

burgershot_bigemptyglass = {
    name = 'burgershot_bigemptyglass',
    label = 'Big Size Empty Glass',
    weight = 100,
    type = 'item',
    image = 'burgershot_bigemptyglass.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Big Size Empty Glass'
},

burgershot_coffeeemptyglass = {
    name = 'burgershot_coffeeemptyglass',
    label = 'Coffee Empty Glass',
    weight = 100,
    type = 'item',
    image = 'burgershot_coffeeemptyglass.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Coffee Empty Glass'
},

burgershot_frozenmeat = {
    name = 'burgershot_frozenmeat',
    label = 'Frozen Meat',
    weight = 100,
    type = 'item',
    image = 'burgershot_frozenmeat.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Frozen Meat'
},

burgershot_frozenrings = {
    name = 'burgershot_frozenrings',
    label = 'Frozen Rings',
    weight = 100,
    type = 'item',
    image = 'burgershot_frozenrings.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Frozen Rings'
},

burgershot_frozennuggets = {
    name = 'burgershot_frozennuggets',
    label = 'Frozen Nuggets',
    weight = 100,
    type = 'item',
    image = 'burgershot_frozennuggets.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Frozen Nuggets'
},

burgershot_smallfrozenpotato = {
    name = 'burgershot_smallfrozenpotato',
    label = 'Small Size Frozen Potato',
    weight = 100,
    type = 'item',
    image = 'burgershot_smallfrozenpotato.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Small Size Frozen Potato'
},

burgershot_bigfrozenpotato = {
    name = 'burgershot_bigfrozenpotato',
    label = 'Big Size Frozen Potato',
    weight = 100,
    type = 'item',
    image = 'burgershot_bigfrozenpotato.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Big Size Frozen Potato'
},

burgershot_meat = {
    name = 'burgershot_meat',
    label = 'Meat',
    weight = 100,
    type = 'item',
    image = 'burgershot_meat.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Meat'
},

burgershot_thesmurfsicecream = {
    name = 'burgershot_thesmurfsicecream',
    label = 'The Smurfs Ice Cream',
    weight = 100,
    type = 'item',
    image = 'burgershot_thesmurfsicecream.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'The Smurfs Ice Cream'
},

burgershot_smurfetteicecream = {
    name = 'burgershot_smurfetteicecream',
    label = 'Smurfette Ice Cream',
    weight = 100,
    type = 'item',
    image = 'burgershot_smurfetteicecream.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Smurfette Ice Cream'
},

burgershot_matchaicecream = {
    name = 'burgershot_matchaicecream',
    label = 'Matcha Ice Cream',
    weight = 100,
    type = 'item',
    image = 'burgershot_matchaicecream.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Matcha Ice Cream'
},

burgershot_ubeicecream = {
    name = 'burgershot_ubeicecream',
    label = 'Ube Ice Cream',
    weight = 100,
    type = 'item',
    image = 'burgershot_ubeicecream.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Ube Ice Cream'
},

burgershot_unicornicecream = {
    name = 'burgershot_unicornicecream',
    label = 'Unicorn Ice Cream',
    weight = 100,
    type = 'item',
    image = 'burgershot_unicornicecream.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Unicorn Ice Cream'
},

burgershot_vanillaicecream = {
    name = 'burgershot_vanillaicecream',
    label = 'Vanilla Ice Cream',
    weight = 100,
    type = 'item',
    image = 'burgershot_vanillaicecream.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Vanilla Ice Cream'
},

burgershot_chocolateicecream = {
    name = 'burgershot_chocolateicecream',
    label = 'Chocolate Ice Cream',
    weight = 100,
    type = 'item',
    image = 'burgershot_chocolateicecream.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Chocolate Ice Cream'
},

burgershot_strawberryicecream = {
    name = 'burgershot_strawberryicecream',
    label = 'Strawberry Ice Cream',
    weight = 100,
    type = 'item',
    image = 'burgershot_strawberryicecream.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Strawberry Ice Cream'
},

burgershot_icecreamcone = {
    name = 'burgershot_icecreamcone',
    label = 'Empty Cone',
    weight = 100,
    type = 'item',
    image = 'burgershot_icecreamcone.png',
    unique = true,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Cone'
}


```
### ConsumablesEat
- Add the following code to your `qb-smallresources/config/Config.Consumables.Eat`

```
--Burger Shot Eat

["burgershot_bigking"] = math.random(40, 50),
["burgershot_bleeder"] = math.random(20, 30),
["burgershot_goatwrap"] = math.random(50, 60),
["burgershot_macaroon"] = math.random(10, 15),
["burgershot_patatob"] = math.random(15, 20),
["burgershot_patatos"] = math.random(5, 10),
["burgershot_shotnuggets"] = math.random(10, 15),
["burgershot_shotrings"] = math.random(10, 15),
["burgershot_thesmurfsicecream"] = math.random(1, 3),
["burgershot_smurfetteicecream"] = math.random(1, 3),
["burgershot_matchaicecream"] = math.random(1, 3),
["burgershot_ubeicecream"] = math.random(1, 3),
["burgershot_unicornicecream"] = math.random(1, 3),
["burgershot_vanillaicecream"] = math.random(1, 3),
["burgershot_chocolateicecream"] = math.random(1, 3),
["burgershot_strawberryicecream"] = math.random(1, 3),

```

### ConsumablesDrink
- Add the following code to your `qb-smallresources/config/Config.Consumables.Drink`
```
--Burger Shot Drink
["burgershot_colab"] = math.random(40, 50),
["burgershot_colas"] = math.random(20, 30),
["burgershot_coffee"] = math.random(10, 20),
```

### Item Images
- Download the script and open images folder, put it in the `qb-inventory or lj-inventory/html/images` directory.

### Map And Car
- Download the burgershot-map & burgershot-van folder, put it in the your stream file directory.
```
ensure burgershot-map
ensure burgershot-van
```

### Script
- Download the script and put it in the `[qb]` directory.
- Add the following code to your server.cfg/resouces.cfg
```
ensure rz-burgershot
```

## Image Showcase
![image](https://cdn.discordapp.com/attachments/352733374235803648/1064647070939623444/duty.png)
![image](https://cdn.discordapp.com/attachments/352733374235803648/1064647082117447732/WASHhands.png)
![image](https://media.discordapp.net/attachments/352733374235803648/1064647069534523613/CREATEBURGER.png)
![image](https://media.discordapp.net/attachments/352733374235803648/1064647072214691941/FRIES.png)
![image](https://media.discordapp.net/attachments/352733374235803648/1064647082595590204/meat.png)
![image](https://media.discordapp.net/attachments/352733374235803648/1064647071375839413/fridge.png)
![image](https://media.discordapp.net/attachments/352733374235803648/1064647068569833614/ICECREAM.png)
![image](https://media.discordapp.net/attachments/352733374235803648/1064647071828807761/fridgeitems.png)
![image](https://media.discordapp.net/attachments/352733374235803648/1064647070507602000/DRINKMENU.png)
![image](https://media.discordapp.net/attachments/352733374235803648/1064647083027599451/packagemenu.png)
![image](https://media.discordapp.net/attachments/352733374235803648/1064647070071410718/DELIVERY.png)
![image](https://media.discordapp.net/attachments/352733374235803648/1064647069018640384/cars.png)


