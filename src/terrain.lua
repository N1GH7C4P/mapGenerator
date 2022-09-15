function clearTerrain()
    objects = {}
    terrainPieces = {}
    numberOfBodies = 0
    numberOfterrainPieces = 0
    numberOfterrainPiecesOnMap = 0
    highlightedTerrainPieceNumber = 0
    world = love.physics.newWorld(0, 0, true)
end

function generateSteadfastSanctum(nb, x, y)
    print('Steadfast Sanctum')
    print(nb)
    objects[nb] = {}
    objects[nb].x = x
    objects[nb].y = y

    terrainPieces[nb] = terrainFeatures.steadfastSanctum[love.math.random(0,5)]
    terrainPieces[nb].w = 16
    terrainPieces[nb].h = 16
    terrainPieces[nb].color = {1,0,1,1}
    terrainPieces[nb].priority = 1
    terrainPieces[nb].sx = 20
    terrainPieces[nb].sy = 20
end

function generateBuilding(nb, x, y)
    print('Building')
    print(nb)
    objects[nb] = {}
    objects[nb].x = x
    objects[nb].y = y

    terrainPieces[nb] = terrainFeatures.building
    terrainPieces[nb].w = 64
    terrainPieces[nb].h = 64
    terrainPieces[nb].color = {1,0,0,1}
    terrainPieces[nb].priority = 1
    terrainPieces[nb].sx = 0
    terrainPieces[nb].sy = 0
end

function generateObstacles(nb, x, y)
    print('Obstacles')
    print(nb)
    objects[nb] = {}
    objects[nb].x = x
    objects[nb].y = y

    terrainPieces[nb] = terrainFeatures.obstacles[love.math.random(0,4)]
    terrainPieces[nb].w = 160
    terrainPieces[nb].h = 16
    terrainPieces[nb].color = {0.5,0.5,0.5,1}
    terrainPieces[nb].priority = 1
    terrainPieces[nb].sx = 0
    terrainPieces[nb].sy = 0
end

function generateSettlementOfOrder(i, x, y)
    print('Settlement of Order')
    print(i)
    objects[i] = {}
    objects[i].x = x
    objects[i].y = y

    terrainPieces[i] = terrainFeatures.settlementOfOrder
    terrainPieces[i].w = 1
    terrainPieces[i].h = 1
    terrainPieces[i].color = {0.5,0.5,0.5,0.3}
    terrainPieces[i].priority = 1
    local numberOfBuildings = love.math.random(3)
    local numberOfObstacles = love.math.random(3)

    for j = 1, numberOfObstacles do
        numberOfterrainPieces = numberOfterrainPieces + 1
        i = i + 1
        generateObstacles(i, x, y)
    end

    for j = 1, numberOfBuildings do
        numberOfterrainPieces = numberOfterrainPieces + 1
        i = i + 1
        generateBuilding(i, x, y)
    end
    
    numberOfterrainPieces = numberOfterrainPieces + 1
    i = i + 1;
    generateSteadfastSanctum(i, x, y)
    return numberOfBuildings + numberOfObstacles + 1
end

function generateSinisterStructure(i, x, y)
    print('Sinister Structure')
    print(i)
    objects[i] = {}
    objects[i].x = x
    objects[i].y = y

    terrainPieces[i] = terrainFeatures.sinisterStructure[love.math.random(0,5)]
    terrainPieces[i].w = 16
    terrainPieces[i].h = 16
    terrainPieces[i].color = {0.5,1,0.5,1}
    terrainPieces[i].priority = 1
    terrainPieces[i].sx = 20
    terrainPieces[i].sy = 20
end

function generateHill(i, x, y)
    print('Hill')
    print(i)
    objects[i] = {}
    objects[i].x = x
    objects[i].y = y

    terrainPieces[i] = terrainFeatures.hill[love.math.random(0,4)]
    terrainPieces[i].points = {20,-30, 20,50, 90,10, 70,50, 70,-30, 0, 10}
    terrainPieces[i].w = 128
    terrainPieces[i].h = 64
    terrainPieces[i].color = {0.3,0.3,0.3,1}
    terrainPieces[i].priority = 1
    terrainPieces[i].sx = 20
    terrainPieces[i].sy = 20
end

function generateForest(i, x, y)
    print('Forest')
    print(i)
    objects[i] = {}
    objects[i].x = x
    objects[i].y = y

    terrainPieces[i] = terrainFeatures.forest
    terrainPieces[i].points = {20,-30, 20,50, 120,10, 100,50, 100,-30, 0, 10}
    terrainPieces[i].w = 128
    terrainPieces[i].h = 64
    terrainPieces[i].color = {0.2,0.4,0.2,1}
    terrainPieces[i].priority = 1
    terrainPieces[i].sx = 20
    terrainPieces[i].sy = 20
end

function generateMysteriousRiver(i)
    print('Mysterious river')
    print(i)
    objects[i] = {}

    terrainPieces[i] = terrainFeatures.mysteriousRiver
    terrainPieces[i].w = 32
    terrainPieces[i].h = 32
    terrainPieces[i].color = {0,0,0.7,1}
    terrainPieces[i].priority = 0
    terrainPieces[i].sx = 0
    terrainPieces[i].sy = 0
end

function generateMagicalMystery(i, x, y)
    print('Magical Mystery')
    print(i)
    objects[i] = {}
    objects[i].x = x
    objects[i].y = y

    terrainPieces[i] = terrainFeatures.magicalMystery[love.math.random(0,5)]
    terrainPieces[i].w = 16
    terrainPieces[i].h = 16
    terrainPieces[i].color = {0,0.5,0.5,1}
    terrainPieces[i].priority = 1
    terrainPieces[i].sx = 20
    terrainPieces[i].sy = 20
end

function generateMarsh(i, x, y)
    print('Marsh')
    print(i)
    objects[i] = {}
    objects[i].x = x
    objects[i].y = y

    terrainPieces[i] = terrainFeatures.marsh[love.math.random(0,2)]
    terrainPieces[i].w = 64
    terrainPieces[i].h = 48
    terrainPieces[i].color = {0.2,0.4,0.4,1}
    terrainPieces[i].priority = 1
    terrainPieces[i].sx = 20
    terrainPieces[i].sy = 20
end

function generateEncampmentOfDestruction(i, x, y)
    print('Encampment Of Destruction')
    print(i)
    objects[i] = {}
    objects[i].x = x
    objects[i].y = y

    terrainPieces[i] = terrainFeatures.encampmentOfDestruction
    terrainPieces[i].w = 1
    terrainPieces[i].h = 1
    terrainPieces[i].color = {1,1,1,0.3}
    terrainPieces[i].priority = 1
    local numberOfBuildings = love.math.random(3)
    local numberOfObstacles = love.math.random(3)
  
    for j = 1, numberOfObstacles do
        i = i + 1
        numberOfterrainPieces = numberOfterrainPieces + 1
        generateObstacles(i, x, y)
    end

    for j = 1, numberOfBuildings do
        i = i + 1
        numberOfterrainPieces = numberOfterrainPieces + 1
        generateBuilding(i, x, y)
    end

    i = i + 1;
    numberOfterrainPieces = numberOfterrainPieces + 1
    generateSteadfastSanctum(i, x, y)
    return numberOfBuildings + numberOfObstacles + 1
end

function randomizeTerrainPieces()

    terrainPieces = {}
    extras = 0
    numberOfterrainPieces = love.math.random(4) + 6

    for i = 1, numberOfterrainPieces do

        local y = love.math.random(30, height - 30)
        local x = love.math.random(30, width - 30)

        terrainId = love.math.random(1,6) + love.math.random(1,6)

        if(terrainId == 2) then
            extras = extras + generateSettlementOfOrder(i+extras, x, y)
            print('extras: ',extras)
        elseif(terrainId == 3) then
            generateSteadfastSanctum(i+extras, x, y)
        elseif(terrainId == 4) then
            generateSinisterStructure(i+extras, x, y)
        elseif(terrainId == 5) then
            generateHill(i+extras, x, y)
        elseif(terrainId == 6) then
            generateBuilding(i+extras, x, y)
        elseif(terrainId == 7) then
            generateForest(i+extras, x, y)
        elseif(terrainId == 8) then
            generateObstacles(i+extras, x, y)
        elseif(terrainId == 9) then
            generateMysteriousRiver(i+extras)
        elseif(terrainId == 10) then
            generateMagicalMystery(i+extras,x,y)
        elseif(terrainId == 11) then
            generateMarsh(i+extras, x ,y)
        elseif(terrainId == 12) then
            extras = extras + generateEncampmentOfDestruction(i+extras, x ,y)
            print('extras: ',extras)
        else
            love.graphics.print('Error! Terrain code out of bounds.')
        end
    end
    return terrainPieces
end

function generateTerrainFeatures()
    terrainFeatures = {}

    terrainFeatures.settlementOfOrder = {'Settlement of Order', 'Such orderly, wow!'}


    terrainFeatures.steadfastSanctum = {}

    terrainFeatures.steadfastSanctum[0] = {'Grail Chapel','All units belonging to an army from the Forces of Order within 6" of a Grail Chapel have the Regeneration (6+) special rule. Bretonnian units within 6" of a Grail Chapel also have the Stubborn special rule. '}
    terrainFeatures.steadfastSanctum[1] = {'Acropolis of Heroes','Units within 6" of the Acropolis of Heroes are Stubborn. A unit garrisoning the Acropolis of Heroes gets +1 to hit in close combat. '}
    terrainFeatures.steadfastSanctum[2] = {'Wizards Tower', 'A Wizard who is within 3" of the tower at the start of the Magic phase is assumed to ransack the tower’s library in search of additional spells – he is treated as knowing all the spells from his chosen lore(s) of magic for that phase. If more than one Wizard is within 3", randomly choose which one has control of the tower at the start of each Magic phase (no room can hold two wizardly egos in search of knowledge). '}
    terrainFeatures.steadfastSanctum[3] = {'Sigmarite Shrine', 'Any models belonging to an army from the Forces of Destruction must re-roll successful ward saves if they are within 6" of the Sigmarite Shrine.'}
    terrainFeatures.steadfastSanctum[4] = {'Elven Waystone', 'Any Wizard within 6" of an Elven Waystone adds +1 to his channelling attempts. '}
    terrainFeatures.steadfastSanctum[5] = {'Dwarf Brewhouse','All units within 6" of a Dwarf Brewhouse have the Immune to Psychology and Stubborn special rules (the rich blend of hops, malts and secret ingredients renders them almost totally insensate to mortal fears). Dwarf units within 6" of the brewhouse are so fanatically defensive of it that they are Unbreakable, but must first pass a Leadership test, with a -3 modifier, if they want to move out of range of the building’s effects '}


    terrainFeatures.sinisterStructure = {}

    terrainFeatures.sinisterStructure[0] = {'Altar of Khaine','All units within 6" of an Altar of Khaine are subject to the rules for Frenzy – as soon as a unit moves out of range, the Frenzy is lost. '}
    terrainFeatures.sinisterStructure[1] = {'Charred Pit', 'All units within 6" of the charnel pit suffer a -1 penalty to their Leadership. Undead units within 6" of the charnel pit have the Regeneration (6+) special rule to represent their easy access to replacement parts. '}
    terrainFeatures.sinisterStructure[2] = {'Bane Stone', 'Hits made against units within 6" of a Bane Stone have a +1 bonus to wound. '}
    terrainFeatures.sinisterStructure[3] = {'Haunted Mansion','A haunted mansion is normally a building of some kind, but there’s no reason why it can’t be a ruin, or a cave. At the end of the Shooting phase, all units within 6" of the Haunted Mansion suffers D6 Strength 1 hits to represent the spectral strikes of the mansion’s guardians. Due to the ghostly nature of these attacks, armour saves cannot be taken against them. A unit inside the haunted mansion causes Fear. '}
    terrainFeatures.sinisterStructure[4] = {'Idol of Gork (or possibly Mork)','Any warriors fighting under the grim gaze of Mork (or possibly Gork) are infused with the greenskin gods’ lust for battle. Units that start the turn within 6" of the Idol can re-roll a failed charge distance roll. '}
    terrainFeatures.sinisterStructure[5] = {'Tower of Blood', 'Units within 6" of the Tower of Blood have the Hatred special rule. Units from the Forces of Destruction within 6" of the Tower of Blood also have the Frenzy special rule – as soon as a unit moves out of range, the Hatred/Frenzy is lost. '}


    terrainFeatures.hill = {}

    terrainFeatures.hill[0] = {'Ordinary Hill', 'Just an ordinary hill.'}
    terrainFeatures.hill[1] = {'Ordinary Hill', 'Just an ordinary hill.'}
    terrainFeatures.hill[2] = {'Scree Slope ', ' Models charging, marching, fleeing, pursuing or overrunning up, down or through a scree slope must take a Dangerous Terrain test. '}
    terrainFeatures.hill[3] = {'Temple of Skulls', 'At the beginning of each player turn, any character or champion on the Temple of Skulls can choose to embrace the favour of the Chaos Gods. If he does, roll a D6. On a roll of 2-6, one randomly chosen characteristic increases by D3 points. On a 1, the Chaos Gods take his soul (or his purehearted comrades turn on him) – remove the model as a casualty with no saves of any kind allowed' }
    terrainFeatures.hill[4] = {'Anvil of Vaul','Any units within 6 of an Anvil of Vaul hasboth magical attacks and the flaming attacksspecial rules.'}

    terrainFeatures.building = {'Building', 'So many floors!'}

    terrainFeatures.forest = {'Mysterious Forest', 'Such mysterious wow!'}

    terrainFeatures.obstacles = {}

    terrainFeatures.obstacles[0] = {'Fence', 'Fences are obstacles that grant soft cover to units behind them, and a -1 To Hit modifier to charging models in base contact with them. '}
    terrainFeatures.obstacles[1] = {'Wall', 'Though such a wall is seldom more than chest-height, it makes for an incredibly effective impromptu defensive position, and can save the warriors sheltering in its lee from otherwise fatal encounters with arrows, crossbow bolts and buckshot.  Walls are obstacles that grant hard cover to units behind them, and a -1 To Hit modifier to charging models in base contact with them '}
    terrainFeatures.obstacles[2] = {'Blazing Barricade', 'Blazing barricades grant soft cover to units behind them. If a unit completes a charge against a defended blazing barricade, it immediately suffers one Strength 4 hit on each of its models in contact with the obstacle'}
    terrainFeatures.obstacles[3] = {'Blessed Bulwark', 'Blessed bulwarks are obstacles that grant hard cover to units behind them, and a -1 To Hit modifier to charging models in base contact with them. In addition to this, models from the Forces of Destruction (see the Allies chapter) that are in base contact with the obstacle must halve their Initiative. '}
    terrainFeatures.obstacles[4] = {'Ghost Fence', 'Ghost Fences are obstacles that grant soft cover to units behind them. A unit that is defending a Ghost Fence causes Fear in the first round of any close combat. '}


    terrainFeatures.mysteriousRiver = {'Mysterious River', 'Such mysterious!'}


    terrainFeatures.magicalMystery = {}

    terrainFeatures.magicalMystery[0] = {'Sinister Statue', 'At the start of each player turn, roll a dice for every unit within 6" of the Sinister Statue.   On a 4 or more, nothing happens – the statue either doesn’t notice the unit, or recognises it as an ally of its forgotten master. On a 1-3, beams of light blaze out of its stone eyes – the unit suffers D6 Strength 4 hits.'}
    terrainFeatures.magicalMystery[1] = {'Arcane Ruins', 'Any wizard within 6" of an arcane ruin can choose to roll up to four dice when channelling, rather than one. However, if three or more dice come up as 6s, the wizard must immediately roll on the Miscast table. '}
    terrainFeatures.magicalMystery[2] = {'Nekekharan Sphynx', 'At the start of each player turn, the player whose turn it is can choose one of his characters within 6" of the Nehekharan Sphynx to challenge the spirit to a riddling contest. The challenger must take an Initiative test. If the test is failed, the Sphynx devours part of the challenger’s soul and the model suffers a wound, with no armour saves allowed. If the test is passed, the challenger receives one of the following special rules, determined randomly, for the rest of the game: Devastating Charge, Heroic Killing Blow or Loremaster (Death) – this last one has no benefit to non-Wizards (i.e. only Wizards can actually use the spells!) but that doesn’t stop the Sphynx bestowing it inappropriately.'}
    terrainFeatures.magicalMystery[3] = {'Sorcerous Portal', 'At the start of the Magic phase, after power and dispel dice have been generated, but before spells are cast, the sorcerous portal belches forth energy in the form of a spell. Roll 2D6 on the table below each time to see what spell is cast'}
    terrainFeatures.magicalMystery[4] = {'Wyrding Well', 'Providing it is not in combat, a unit within 3" can drink from the well at the end of its Movement phase. Roll a D6 on the following table to discover the outcome of the unit’s incautious imbibing: '}
    terrainFeatures.magicalMystery[5] = {'Magic Circle', 'Units within 6" of the Magic Circle have the Magic Resistance (2) special rule. '}

    terrainFeatures.marsh = {}

    terrainFeatures.marsh[0] = {'Earthblood Mere', 'Any unit with the majority of its models within the mere has Regeneration (6+)'}
    terrainFeatures.marsh[1] = {'Khemrian Quicksand', 'A monster, monstrous infantry or monstrous cavalry model that fails its dangerous terrain test for Khemrian Quicksand is removed as a casualty with no saves of any kind allowed'}
    terrainFeatures.marsh[2] = {'Mist Wreathed Swamp','If the majority of a unit’s models are wholly within a mist-wreathed swamp, the unit counts as being in hard cover.   However, at the end of each Movement phase, the unit must pass an Initiative test, or have D6 models dragged to their doom by the monstrous Fimir lurking in the mist (the victims are selected in the same manner as the allocation of shooting hits) '}


    terrainFeatures.encampmentOfDestruction = {'Encampment of Destruction','Such destruction!'}

    return terrainFeatures
end

function compareTerrainPieces(tp1, tp2)
    return tp1.priority < tp2.priority
end

function sortTerrainPieces(terrainPieces)
    table.sort(terrainPieces, compareTerrainPieces)
end

function printTerrainPieceNames()
    print('total: ',numberOfterrainPieces)
    for i = 1, numberOfterrainPieces do
        print(i)
        print(terrainPieces[i][1])
    end
end