require "src/terrain"
require "src/graphics"
require "src/physics"
require "src/sounds"
require "src/scenario"
require "src/buttons"

terrainFeatures = require "src/terrain_features"
terrainShapes = require "src/terrain_shapes"

function initSession()
    width = 720
    height = 480
    t = 0
    highlightedTerrainPieceNumber = 0
    font = love.graphics.getFont()
    world = love.physics.newWorld(0, 0, true)
    canvas = love.graphics.newCanvas(width,height)
    terrainPiecesAdded = 0
    numberOfterrainPiecesOnMap = 0
    numberOfButtons = 7
end

function love.update(dt)
    world:update(dt)
    t = t + dt
    if(t*3 > numberOfterrainPiecesOnMap and numberOfterrainPiecesOnMap < numberOfterrainPieces) then
        addFixture(numberOfterrainPiecesOnMap + 1)
        nb = love.math.random(2)
        sounds[nb]:play()
        numberOfterrainPiecesOnMap = numberOfterrainPiecesOnMap + 1
        print(numberOfterrainPiecesOnMap)
    elseif(numberOfterrainPiecesOnMap == numberOfterrainPieces) then
        for i = 1, numberOfterrainPieces do
            checkMouseHover(i)
        end
    end

end

function love.draw()
    love.graphics.setBackgroundColor(0.3,0.6,0.3)
    drawGrid()
    higlightDeploymentZones()
    drawShapes()
    drawSidebar()
    drawScenario()
    drawButtons()
end

function love.load()
    print(terrainFeatures.magicalMystery)
    initSession()
    generateScenarioLibrary()
    generateButtons()
    rollScenario()
    print(currentScenario.name)
    generateWorldBoundaries(width,height)
    print('Terrain features generated.')
    terrainPieces = randomizeTerrainPieces()
    --sortTerrainPieces(terrainPieces, compareTerrainPieces)
    --printTerrainPieceNames()
    print('Map generated.')
end

function love.mousepressed(x, y, button, istouch)
    if(button == 1) then
        for i = 1, numberOfButtons do
            isInside = buttons[i].fixture:testPoint(x, y)
            if(isInside) then
                if(buttons[i].text == 'Reroll terrain') then
                    clearTerrain()
                    randomizeTerrainPieces()
                    generateButtons()
                elseif(buttons[i].text == 'Reroll scenario') then
                    rollScenario()
                elseif(buttons[i].text == 'Deployment') then
                    showedText = 'Deployment'
                elseif(buttons[i].text == 'First turn') then
                    showedText = 'First turn'
                elseif(buttons[i].text == 'Battlefield') then
                    showedText = 'Battlefield'
                elseif(buttons[i].text == 'Special rules') then
                    showedText = 'Special rules'
                elseif(buttons[i].text == 'Winner') then
                    showedText = 'Winner'
                end
            end
        end
    end
end