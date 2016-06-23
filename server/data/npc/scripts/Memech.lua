dofile(getDataDir() .. 'libs/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)


shopModule:addSellableItem({'magic plate armor'}, 					ID_magicplatearmor, 6400)
shopModule:addSellableItem({'two handed sword'}, 					ID_twohandedsword, 450)
shopModule:addSellableItem({'battle axe'}, 					ID_battleaxe, 80)
shopModule:addSellableItem({'dagger'}, 					ID_dagger, 2)
shopModule:addSellableItem({'hand axe'}, 					ID_handaxe, 4)
shopModule:addSellableItem({'halberd'}, 					ID_halberd, 400)
shopModule:addSellableItem({'club'}, 					ID_club, 1)
shopModule:addSellableItem({'rapier'}, 					ID_rapier, 5)
shopModule:addSellableItem({'sabre'}, 					ID_sabre, 12)
shopModule:addSellableItem({'axe'}, 					ID_axe, 7)
shopModule:addSellableItem({'spear'}, 					ID_spear, 3)
shopModule:addSellableItem({'morning star'}, 					ID_morningstar, 90)
shopModule:addSellableItem({'mace'}, 					ID_mace, 30)
shopModule:addSellableItem({'short sword'}, 					ID_shortsword, 10)
shopModule:addSellableItem({'battle hammer'}, 					ID_battlehammer, 120)
shopModule:addSellableItem({'sword'}, 					ID_sword, 25)
shopModule:addSellableItem({'leather armor'}, 					ID_leatherarmor, 12)
shopModule:addSellableItem({'chain armor'}, 					ID_chainarmor, 70)
shopModule:addSellableItem({'brass armor'}, 					ID_brassarmor, 150)
shopModule:addSellableItem({'plate armor'}, 					ID_platearmor, 400)
shopModule:addSellableItem({'chain legs'}, 					ID_chainlegs, 25)
shopModule:addSellableItem({'leather helmet'}, 					ID_leatherhelmet, 4)
shopModule:addSellableItem({'chain helmet'}, 					ID_chainhelmet, 17)
shopModule:addSellableItem({'steel helmet'}, 					ID_steelhelmet, 190)
shopModule:addSellableItem({'wooden shield'}, 					ID_woodenshield, 5)
shopModule:addSellableItem({'battle shield'}, 					ID_battleshield, 95)
shopModule:addSellableItem({'steel shield'}, 					ID_steelshield, 80)

shopModule:addBuyableItem({'dagger'}, 					ID_dagger, 5)
shopModule:addBuyableItem({'hand axe'}, 					ID_handaxe, 8)
shopModule:addBuyableItem({'spear'}, 					ID_spear, 10)
shopModule:addBuyableItem({'rapier'}, 					ID_rapier, 15)
shopModule:addBuyableItem({'axe'}, 					ID_axe, 20)
shopModule:addBuyableItem({'sabre'}, 					ID_sabre, 35)
shopModule:addBuyableItem({'sword'}, 					ID_sword, 85)
shopModule:addBuyableItem({'mace'}, 					ID_mace, 90)
shopModule:addBuyableItem({'battle hammer'}, 					ID_battlehammer, 350)
shopModule:addBuyableItem({'throwing star'}, 					ID_throwingstar, 50)
shopModule:addBuyableItem({'chain armor'}, 					ID_chainarmor, 200)
shopModule:addBuyableItem({'brass armor'}, 					ID_brassarmor, 450)
shopModule:addBuyableItem({'leather armor'}, 					ID_leatherarmor, 35)
shopModule:addBuyableItem({'chain helmet'}, 					ID_chainhelmet, 52)
shopModule:addBuyableItem({'leather helmet'}, 					ID_leatherhelmet, 12)
shopModule:addBuyableItem({'steel shield'}, 					ID_steelshield, 240)
shopModule:addBuyableItem({'wooden shield'}, 					ID_woodenshield, 15)
shopModule:addBuyableItem({'chain legs'}, 					ID_chainlegs, 80)


keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell weapons and armor to protect your mortal shell."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the mourned Memech."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Time is only a burden to the flesh."})
keywordHandler:addKeyword({'temple'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You will find the temple in the northeastern part of the town."})
keywordHandler:addKeyword({'oldpharaoh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Praised be our pharaoh who gave his father all the time in the world for contemplation and ascension."})
keywordHandler:addKeyword({'pharaoh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Praise to the pharaoh. Blessed be our saviour."})
keywordHandler:addKeyword({'scarab'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The scarabs are wise as far as I know. They test each warrior's strength."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This world is but a dying spark of a once great fire."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The lost cities of the Tibian continent are caught in their false gods' jaws."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The lost cities of the Tibian continent are caught in their false gods' jaws."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The lost cities of the Tibian continent are caught in their false gods' jaws."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The lost cities of the Tibian continent are caught in their false gods' jaws."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have been told the dwarves are worthy fighters. It is a shame their Rah will perish upon death."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have been told the dwarves are worthy fighters. It is a shame their Rah will perish upon death."})
keywordHandler:addKeyword({'dwarves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have been told the dwarves are worthy fighters. It is a shame their Rah will perish upon death."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Elves are a rare sight on this continent. I know little about this race and their ways."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Elves are a rare sight on this continent. I know little about this race and their ways."})
keywordHandler:addKeyword({'elf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Elves are a rare sight on this continent. I know little about this race and their ways."})
keywordHandler:addKeyword({'daraman'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Daraman is acknowledged as a prophet, though it is said he was misguided. I think you should better ask somebody in the temple about such issues."})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The continent's name was changed to Darama after Daraman spread his teachings here. I don't know its old name, I'm afraid."})
keywordHandler:addKeyword({'ankrahmun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our home is blessed and protected by the power of our pharaoh."})
keywordHandler:addKeyword({'pharaoh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The pharaoh is a living god and his power is rising with every day."})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, the temple teaches us that the false gods want to steal our Rah."})
keywordHandler:addKeyword({'ascension'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is nothing I understand. I am but a simple man."})
keywordHandler:addKeyword({"Akh'rah"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thats religious stuff, and I don't know much about it. It's about the union and the separation of Akh, Rah and Uthun."})
keywordHandler:addKeyword({'Akh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, that is the mortal body. It is full of needs and thus sinful."})
keywordHandler:addKeyword({'undea'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Undeath must be great. No need to eat, to sleep or to do other things like that, you know."})
keywordHandler:addKeyword({'rah'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Rah is what people from other religions call the soul."})
keywordHandler:addKeyword({'uthun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That's what we learn and remember. It is who we are because of our memories. At least that's what I understand."})
keywordHandler:addKeyword({'mourn'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Mortality is a bad thing. The dead mourn us for that. Quite nice of them. We should mourn ourselves as well, if I understand the priests correctly."})
keywordHandler:addKeyword({'arena'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The arena is a fun place to visit. You should go there to try out our quality equipment."})
keywordHandler:addKeyword({'palace'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That's where our pharaohs resides. The palace is to the east."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My offers are weapons, armors, helmets, legs, and shields."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My offers are weapons, armors, helmets, legs, and shields."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My offers are weapons, armors, helmets, legs, and shields."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have hand axes, axes, spears, maces, battle hammers, swords, rapiers, daggers, and sabres. What's your choice?"})
keywordHandler:addKeyword({'helmet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling leather helmets and chain helmets. What do you want?"})
keywordHandler:addKeyword({'armor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling leather, chain, and brass armor. What do you need?"})
keywordHandler:addKeyword({'shield'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling wooden shields and steel shields. What do you want?"})
keywordHandler:addKeyword({'trousers'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling chain legs. Do you want to buy any?"})
keywordHandler:addKeyword({'legs'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling chain legs. Do you want to buy any?"})


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())