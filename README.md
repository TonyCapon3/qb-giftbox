# Gift-Box-For-qbcore
Just a snippet to put into smallresources if you want first time players to have a little welcoming gift.

# Preview
https://medal.tv/games/gta-v/clips/nV5JsTrdtir6V/d1337IGtTa5S?invite=cr-MSxBbEEsNDIxNDM3MTcs

# Adding
["gift"]                          = {["name"] = "gift",                             ["label"] = "Gift Box",                 ["weight"] = 0,       ["type"] = "item",         ["image"] = "gift.png",                 ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Welcome to the city! Here's a gift to start you off!"},

paste the code from gift.lua into qb-smallresources/client/consumables.lua

paste the code from item.lua into qb-smallresources/server/consumables.lua

paste the image into qb-inventory/html/images

Inside of qb-core/shared/main.lua paste ['gift'] = { amount = 1, item = 'gift' },
