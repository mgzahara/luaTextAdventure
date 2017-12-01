--require the essentials
require("parse")
require("superparser");
require("support")
require("rooms/roomsetup");

-- Require all people
require("people/allPeople");

-- Require all things
require("things/allThings");

-- Require all verbs
require("verbs/allVerbs");



-- Game variables
funds = 0;
tacosInCloset = 100;
lastVerb=nil; -- ?
karma = 1; -- ?
banned= 0; -- ?
events = {}
events["tacoPlanted"] = nil
events["enteredGiantHouse"] = nil
events["fedRat"] = nil
events["fedTrump"] = nil
events["fedPleger"] = nil
events["convincedUN"] = nil
events["serbiaTaco"] = nil
events["egyptTaco"] = nil
events["chinaTaco"] = nil
events["NZTaco"] = nil
events["serbiaMandate"] = nil
events["egyptMandate"] = nil
events["chinaMandate"] = nil
events["NZMandate"] = nil


events["serbiaAPTaco"] = nil
events["egyptAPTaco"] = nil
events["chinaAPTaco"] = nil
events["NZAPTaco"] = nil

dayTacoPlanted = 0
dayEnteredGiantHouse = 0

-- Initialize tables for hold, people, things, and aliases
verbs      = {} -- holds all verbs
items      = {} -- holds all items
people     = {} -- holds all people
mapping    = {} -- holds strings and identifiers (people or items)
handlers   = {} -- holds strings of all verbs and the verb's unique number in verbs{}
nextNumber = 0  -- this number is used to assign unique numbers to all things in mapping{}
----------------------------------------------------------

-- require("inits")

-- Call people init functions here
abdelinit()
billinit()
doginit()
dotskiinit()
farmerinit()
francoisinit()
grandmainit()
heinzinit()
kodyinit()
peterinit()
pilotinit()
plegerinit()
prokopisinit()
ratinit()
recepinit()
schemminit()
schenninit()
smithinit()
tomislavinit()
trumpinit()
xiinit()
yingluckinit()

-- Call item init functions here
dollarinit()
genieLampinit()
mandateinit()
nothinginit()
pyramidsinit()
tacoinit()
watchinit()
wellingtonTicketinit()
beanStalkinit()
beijingTicketinit()
belgradeTicketinit()
boatinit()
brickinit()
cairoTicketinit()

-- Call verb init functions here
initBuy()
initDrop()
initFly()
initGive()
initHarvest()
initInventory()
initPlant()
initRub()
initSell()
initShow()
initTake()
initTime()
initUse()
initWarp()
initVault()

-- put all init() above into something to clean up main

location = 1
tickCount = 0;
days = 0;
done = nil
-- make the while condition a function or variable to be able to break out of loop
while ( not done ) do
	location = roomMap[location]()
	tickCount = tickCount + 1;
	tick()--gets called after every action... not every room movement
end

os.execute 'pause'















