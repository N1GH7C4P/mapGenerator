function drawGrid()
    for i=-100,80 do
		local precolor = love.graphics.getColor()
		love.graphics.setColor(1,1,1,0.2)
		for i2=-100,80 do
			love.graphics.rectangle("line",i*10,i2*10,10,10)
		end
	end
end

function drawShapes()
    for i = 1, numberOfterrainPiecesOnMap do
        love.graphics.setColor(terrainPieces[i].shape.color)
        for j = 1, objects[i].numberOfBodies do
            if(terrainPieces[i].shape.shapeType == "round") then
                local x, y = objects[i].body[j]:getWorldPoints(objects[i].shape:getPoint())
                love.graphics.circle("fill", x, y, terrainPieces[i].shape.w, 10)
            else
                love.graphics.polygon("fill", objects[i].body[j]:getWorldPoints(objects[i].shape:getPoints()))
            end
        end
        love.graphics.setColor(1,1,1,1)
        love.graphics.print(terrainPieces[i][1],objects[i].body[1]:getX(),objects[i].body[1]:getY())
    end
end

function drawButtons()
    for i = 1, numberOfButtons do
        love.graphics.setColor(0.5,0.5,0.5,1)
        love.graphics.polygon("fill", buttons[i].body:getWorldPoints(buttons[i].shape:getPoints()))
        love.graphics.setColor(1,1,1,1)
        love.graphics.print(buttons[i].text,buttons[i].body:getX()-40,buttons[i].body:getY()-5)
    end
end

function drawSidebar()
    love.graphics.setColor(0.2,0.1,0.4,1)
    love.graphics.rectangle('fill',width,0,200,height)
    love.graphics.rectangle('fill',0,height,width+200,200)
    love.graphics.setColor(1,1,1,1)
    if not(highlightedTerrainPieceNumber == 0) then
        love.graphics.printf( terrainPieces[highlightedTerrainPieceNumber][2], width+5, 20, 190, 'left')
    end
end

function drawScenario()
    love.graphics.setColor(1,1,1,1)
    love.graphics.printf( currentScenario.name, 5, height+30, 710, 'left')
    if(showedText == 'Deployment') then
        love.graphics.printf( currentScenario.deployment, 5, height+45, 710, 'left')
    elseif(showedText == 'First turn') then
        love.graphics.printf( currentScenario.firstTurn, 5, height+45, 710, 'left')
    elseif(showedText == 'Special rules') then
        love.graphics.printf( currentScenario.specialRules, 5, height+45, 710, 'left')
    elseif(showedText == 'Battlefield') then
        love.graphics.printf( currentScenario.battlefield, 5, height+45, 710, 'left')
    elseif(showedText == 'Winner') then
        love.graphics.printf( currentScenario.winner, 5, height+45, 710, 'left')
    end 
end