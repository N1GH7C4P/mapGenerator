function clearTerrain()
    objects = {}
    terrainPieces = {}
    numberOfBodies = 0
    numberOfterrainPieces = 0
    numberOfterrainPiecesOnMap = 0
    highlightedTerrainPieceNumber = 0
    world = love.physics.newWorld(0, 0, true)
end

function generateSteadfastSanctum(i, x, y)
    print('Steadfast Sanctum')
    print(i)
    objects[i] = {}
    objects[i].x = x
    objects[i].y = y
    terrainPieces[i] = terrainFeatures.steadfastSanctum[love.math.random(0,5)]
    terrainPieces[i].shape = terrainShapes.steadfastSanctum
end

function generateBuilding(i, x, y)
    print('Building')
    print(i)
    objects[i] = {}
    objects[i].x = x
    objects[i].y = y

    terrainPieces[i] = terrainFeatures.building
    terrainPieces[i].shape = terrainShapes.building
end

function generateObstacles(i, x, y)
    print('Obstacles')
    print(i)
    objects[i] = {}
    objects[i].x = x
    objects[i].y = y

    terrainPieces[i] = terrainFeatures.obstacles[love.math.random(0,4)]
    terrainPieces[i].shape = terrainShapes.obstacles
end

function generateSettlementOfOrder(i, x, y)
    print('Settlement of Order')
    print(i)
    objects[i] = {}
    objects[i].x = x
    objects[i].y = y

    terrainPieces[i] = terrainFeatures.settlementOfOrder
    terrainPieces[i].shape = terrainShapes.settlementOfOrder
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
    terrainPieces[i].shape = terrainShapes.sinisterStructure
end

function generateHill(i, x, y)
    print('Hill')
    print(i)
    objects[i] = {}
    objects[i].x = x
    objects[i].y = y

    terrainPieces[i] = terrainFeatures.hill[love.math.random(0,4)]
    terrainPieces[i].shape = terrainShapes.hill
end

function generateForest(i, x, y)
    print('Forest')
    print(i)
    objects[i] = {}
    objects[i].x = x
    objects[i].y = y

    terrainPieces[i] = terrainFeatures.forest
    terrainPieces[i].shape = terrainShapes.forest
end

function generateMysteriousRiver(i)
    print('Mysterious river')
    print(i)
    objects[i] = {}

    terrainPieces[i] = terrainFeatures.mysteriousRiver
    terrainPieces[i].shape = terrainShapes.mysteriousRiver
end

function generateMagicalMystery(i, x, y)
    print('Magical Mystery')
    print(i)
    objects[i] = {}
    objects[i].x = x
    objects[i].y = y

    terrainPieces[i] = terrainFeatures.magicalMystery[love.math.random(0,5)]
    terrainPieces[i].shape = terrainShapes.magicalMystery
end

function generateMarsh(i, x, y)
    print('Marsh')
    print(i)
    objects[i] = {}
    objects[i].x = x
    objects[i].y = y

    terrainPieces[i] = terrainFeatures.marsh[love.math.random(0,2)]
    terrainPieces[i].shape = terrainShapes.marsh

end

function generateEncampmentOfDestruction(i, x, y)
    print('Encampment Of Destruction')
    print(i)
    objects[i] = {}
    objects[i].x = x
    objects[i].y = y

    terrainPieces[i] = terrainFeatures.encampmentOfDestruction
    terrainPieces[i].shape = terrainShapes.encampmentOfDestruction
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