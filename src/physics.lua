objects = {}

function addRiver(number, quarter)
    local bend = love.math.random(10,20)
    local x = 0;
    local y = 0;

    if(quarter == 1) then
        y = love.math.random(height/4, height/2)
    elseif(quarter == 2) then
        x = love.math.random(width/2 + 30, width*3/4)
    elseif(quarter == 3) then
        y = love.math.random(height/2 + 30, height*3/4)
    elseif(quarter == 4) then
        x = love.math.random(width/2 + 30, width-30)
        y = height
    else
        print('Quarter out of bounds!')
    end

    local oldBodyX = x
    local oldBodyY = y

    objects[number].body[1] = love.physics.newBody(world, x, y, "static")
    objects[number].shape = love.physics.newRectangleShape(terrainPieces[number].shape.w,terrainPieces[number].shape.h)
    objects[number].fixture[1] = love.physics.newFixture(objects[number].body[1], objects[number].shape, 1)
    
    if(quarter == 1) then
        while(oldBodyY > 0) do
            local wobble = love.math.random(-15,15)
            objects[number].numberOfBodies = objects[number].numberOfBodies + 1
            if(objects[number].numberOfBodies < bend) then
                x = oldBodyX + 16
                y = oldBodyY + wobble
            else
                x = oldBodyX + wobble
                y = oldBodyY - 16
            end
            objects[number].body[objects[number].numberOfBodies] = love.physics.newBody(world, x, y, "static")
            objects[number].fixture[objects[number].numberOfBodies] = love.physics.newFixture(objects[number].body[objects[number].numberOfBodies], objects[number].shape, 1)

            oldBodyX = x
            oldBodyY = y
            
            --print('x: ',x)
            --print('y: ',y)
        end
    elseif(quarter == 2) then
        while(oldBodyX < width) do
            local wobble = love.math.random(-15,15)
            objects[number].numberOfBodies = objects[number].numberOfBodies + 1
            if(objects[number].numberOfBodies < bend) then
                x = oldBodyX + wobble
                y = oldBodyY + 16
            else
                x = oldBodyX + 16
                y = oldBodyY + wobble
            end
            objects[number].body[objects[number].numberOfBodies] = love.physics.newBody(world, x, y, "static")
            objects[number].fixture[objects[number].numberOfBodies] = love.physics.newFixture(objects[number].body[objects[number].numberOfBodies], objects[number].shape, 1)

            oldBodyX = x
            oldBodyY = y
            
            --print('x: ',x)
            --print('y: ',y)
        end
    elseif(quarter == 3) then
        while(oldBodyY < height) do
            local wobble = love.math.random(-15,15)
            objects[number].numberOfBodies = objects[number].numberOfBodies + 1
            if(objects[number].numberOfBodies < bend) then
                x = oldBodyX + 16
                y = oldBodyY + wobble
            else
                x = oldBodyX + wobble
                y = oldBodyY + 16
            end
            objects[number].body[objects[number].numberOfBodies] = love.physics.newBody(world, x, y, "static")
            objects[number].fixture[objects[number].numberOfBodies] = love.physics.newFixture(objects[number].body[objects[number].numberOfBodies], objects[number].shape, 1)

            oldBodyX = x
            oldBodyY = y
            
            --print('x: ',x)
            --print('y: ',y)
        end
    elseif(quarter == 4) then
        while(oldBodyX < width) do
            local wobble = love.math.random(-15,15)
            objects[number].numberOfBodies = objects[number].numberOfBodies + 1
            if(objects[number].numberOfBodies < bend) then
                x = oldBodyX + wobble
                y = oldBodyY + -16
            else
                x = oldBodyX + 16
                y = oldBodyY + wobble
            end
            objects[number].body[objects[number].numberOfBodies] = love.physics.newBody(world, x, y, "static")
            objects[number].fixture[objects[number].numberOfBodies] = love.physics.newFixture(objects[number].body[objects[number].numberOfBodies], objects[number].shape, 1)

            oldBodyX = x
            oldBodyY = y
            
            --print('x: ',x)
            --print('y: ',y)
        end
    end
end

function generateWorldBoundaries(width, height)
    top = {}
    top.body = love.physics.newBody(world, 0, 0, "static")
    top.shape = love.physics.newEdgeShape( 0, 0, width, 0)
    top.fixture = love.physics.newFixture(top.body, top.shape, 1)

    left = {}
    left.body = love.physics.newBody(world, 0, 0, "static")
    left.shape = love.physics.newEdgeShape(0, 0, 0, height)
    left.fixture = love.physics.newFixture(left.body, left.shape, 1)

    right = {}
    right.body = love.physics.newBody(world, 0, 0, "static")
    right.shape = love.physics.newEdgeShape(width, 0, width, height)
    right.fixture = love.physics.newFixture(right.body, right.shape, 1)

    bottom = {}
    bottom.body = love.physics.newBody(world, 0, 0, "static")
    bottom.shape = love.physics.newEdgeShape(0, height, width, height)
    bottom.fixture = love.physics.newFixture(bottom.body, bottom.shape, 1)
end

function addFixture(number)
    objects[number].numberOfBodies = 1
    objects[number].body = {}
    objects[number].fixture = {}

    if(terrainPieces[number][1] == 'Mysterious River') then
        addRiver(number, love.math.random(4))
    elseif (terrainPieces[number][1] == 'Mysterious Forest') then
        print("Adding irregular fixture", terrainPieces[number][1])
        objects[number].body[1] = love.physics.newBody(world, objects[number].x, objects[number].y, "dynamic")
        objects[number].shape = love.physics.newPolygonShape(terrainPieces[number].shape.points[1], terrainPieces[number].shape.points[2], terrainPieces[number].shape.points[3], terrainPieces[number].shape.points[4],terrainPieces[number].shape.points[5], terrainPieces[number].shape.points[6], terrainPieces[number].shape.points[7], terrainPieces[number].shape.points[8], terrainPieces[number].shape.points[9], terrainPieces[number].shape.points[10], terrainPieces[number].shape.points[11], terrainPieces[number].shape.points[12])
        objects[number].fixture[1] = love.physics.newFixture(objects[number].body[1], objects[number].shape, 1)
        objects[number].fixture[1]:setRestitution(0.1)
    elseif (terrainPieces[number][1] == 'Ordinary Hill' or terrainPieces[number][1] == 'Anvil of Vaul' or terrainPieces[number][1] == 'Scree Slope' or terrainPieces[number][1] == 'Temple of Skulls') then
        print("Adding irregular fixture", terrainPieces[number][1])
        objects[number].body[1] = love.physics.newBody(world, objects[number].x, objects[number].y, "dynamic")
        objects[number].shape = love.physics.newPolygonShape(terrainPieces[number].shape.points[1], terrainPieces[number].shape.points[2], terrainPieces[number].shape.points[3], terrainPieces[number].shape.points[4],terrainPieces[number].shape.points[5], terrainPieces[number].shape.points[6], terrainPieces[number].shape.points[7], terrainPieces[number].shape.points[8], terrainPieces[number].shape.points[9], terrainPieces[number].shape.points[10], terrainPieces[number].shape.points[11], terrainPieces[number].shape.points[12])
        objects[number].fixture[1] = love.physics.newFixture(objects[number].body[1], objects[number].shape, 1)
        objects[number].fixture[1]:setRestitution(0.1)
    elseif (terrainPieces[number].shape.shapeType == "round") then
        print("Adding round fixture", terrainPieces[number][1])
        objects[number].body[1] = love.physics.newBody(world, objects[number].x, objects[number].y, "dynamic")
        objects[number].shape = love.physics.newCircleShape(terrainPieces[number].shape.w)
        objects[number].fixture[1] = love.physics.newFixture(objects[number].body[1], objects[number].shape, 1)
        objects[number].fixture[1]:setRestitution(0.1)
    else
        print("Adding rectangle fixture", terrainPieces[number][1])
        objects[number].body[1] = love.physics.newBody(world, objects[number].x, objects[number].y, "dynamic")
        objects[number].shape = love.physics.newRectangleShape(0, 0, terrainPieces[number].shape.w,terrainPieces[number].shape.h, love.math.random(360))
        objects[number].fixture[1] = love.physics.newFixture(objects[number].body[1], objects[number].shape, 1)
        objects[number].fixture[1]:setRestitution(0.1)
    end
    
end

function checkMouseHover(terrainPieceNumber)
    x = love.mouse.getX()
    y = love.mouse.getY()
    --print('tpn: ',terrainPieceNumber)
    --print('nbob: ',objects[terrainPieceNumber].numberOfBodies)
    for i = 1, objects[terrainPieceNumber].numberOfBodies do
        --print(i)
        isInside = objects[terrainPieceNumber].fixture[i]:testPoint(x, y)
        if(isInside) then
            highlightedTerrainPieceNumber = terrainPieceNumber
        else
            terrainPieces[terrainPieceNumber].showText = false
        end
    end
end