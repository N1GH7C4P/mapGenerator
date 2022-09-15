scenarioLibrary = {}
showedText = 'Deployment'

function pickScenario(nb)
    currentScenario = scenarioLibrary[nb]
end

function rollScenario()
    pickScenario(love.math.random(5))
end

function generateScenarioLibrary()
    scenarioLibrary[1] = {}
    scenarioLibrary[1].name = 'Battleline'
    scenarioLibrary[1].deployment = 'Deployment\nRoll off to see which player picks the half of the table they will deploy in. The opponent will deploy in the other half. Players then take it in turn to place units on the table, using the alternating units method of deployment as described earlier in this chapter. Units may be placed anywhere in their deployment zone that is more than 12" from the centre line. '
    scenarioLibrary[1].winner = 'Winner\nUse victory points to determine the winner of the battle as described earlier in this chapter.'    
    scenarioLibrary[1].firstTurn = 'First turn\nRoll off after deployment to see which player takes the first turn. The player that finished deploying his army first adds +1 to his roll. '
    scenarioLibrary[1].gameLength = 'Game length\nThe battle will last for six game turns, or until a time limit agreed by the players is reached, whichever comes first.'
    scenarioLibrary[1].battlefield = 'Generate terrain normally'
    scenarioLibrary[1].specialRules = 'none'

    scenarioLibrary[2] = {}
    scenarioLibrary[2].name = 'Dawn Attack'
    scenarioLibrary[2].deployment = 'Roll off to see which player picks the half of the table they will deploy in. The opponent will deploy in the other half. The player that won the roll off must deploy his entire army first. Before deploying each unit, roll a dice and refer to the Deployment table to see where the unit must deploy – this represents them groggily making their way to the battlefield in the darkness just before dawn breaks. Units with the Scouts special rule do not roll on the table, and deploy using their own special rules after normal deployment is complete. Characters may either deploy on their own, rolling on the table like any other unit, or deploy as part of a unit they are allowed to join (state that the character will join the unit before rolling to see where the unit and character will deploy). Once the first player has deployed, his opponent must do likewise, rolling for each unit as described above.'
    scenarioLibrary[2].winner = 'Use victory points to determine the winner of the battle as described earlier in this chapter.'
    scenarioLibrary[2].firstTurn = 'First turn\nAfter deployment, the player that set up second rolls a dice. On a roll of 6 he can choose who has the first turn. On a roll of 1-5 the player that set up first chooses who has the first turn.'
    scenarioLibrary[2].gameLength = 'Game Length\nThe battle will last for six game turns, or until a time limit agreed by the players is reached, whichever comes first.'
    scenarioLibrary[2].battlefield = 'Generate terrain normally'
    scenarioLibrary[2].specialRules = 'none'
      
    scenarioLibrary[3] = {}
    scenarioLibrary[3].name = 'Battle for the pass'
    scenarioLibrary[3].battlefield = 'Battlefield\nSet up terrain as described earlier in this chapter. It’s worth keeping in mind when setting up the terrain that the battle will be fought down the length of the table, in a narrow pass with impassable mountains just off each of the long table edges. '
    scenarioLibrary[3].deployment = 'Deployment\nRoll off to see which player picks the half of the table they want to deploy in. The opponent deploys in the other half. Note that in this pitched battle the game is fought down the length of the table rather than across its width, as shown in the deployment map below. Units may be placed anywhere in their half that is more than 12" from the center line. Players take it in turn to place units on the table, using the alternating units method of deployment as described earlier in this chapter '
    scenarioLibrary[3].winner = 'Winner\nUse victory points to determine the winner of the battle as described earlier in this chapter.'
    scenarioLibrary[3].firstTurn = 'Roll off after deployment to see which player receives the first turn. The player that finished deploying his army first adds +1 to his roll.'
    scenarioLibrary[3].gameLength = 'Game length\nThe battle will last for six game turns, or until a time limit agreed by the players is reached, whichever comes first.'
    scenarioLibrary[3].specialRules = 'Special rules\nBottleneck: The battle is being fought in a narrow pass enclosed by high cliffs. Because of this, the long table edges count as impassable terrain. Following the normal rules, fleeing units can force a way through the impassable terrain and disappear from the table (or die trying!). Otherunits (including reinforcements) may not enter or leave via a long table edge unless they are Ethereal or a Flyer. This means that pursuing or overrunning units, other than Ethereals and Flyers, must stop 1" away from the long table edges.'

    scenarioLibrary[4] = {}
    scenarioLibrary[4].name = 'Blood and glory'
    scenarioLibrary[4].deployment = 'Deployment\nRoll off to see which player chooses the half of the table they will deploy in. The opponent will deploy in the other half. Players then take it in turns to place units on the table, using the alternating units method of deployment as described earlier in this chapter. Units may be placed anywhere in their half of the table that is more than 9" from the center line, and more than 9" away from either narrow table edge.'
    scenarioLibrary[4].winner = 'Winner\nThe first army to break the enemy wins the battle (see Game Length). If neither army has broken by the end of the game, or if both were to break simultaneously, use victory points to determine the winner as described earlier in this chapter. '
    scenarioLibrary[4].firstTurn = 'First turn\nRoll off after deployment to see which player receives the first turn. The player that finished deploying his army first adds +1 to his roll.'
    scenarioLibrary[4].gameLength = 'Game length\nThe game ends at the end of the 6th game turn or as soon as an army breaks. An army immediately breaks when its Fortitude is equal to or less than its Breaking Point.'
    scenarioLibrary[4].specialRules = 'Special rules\nBreaking Point: An army’s breaking point is equal to one for every thousand points in the army, rounding any fractions up. So, an army of up to 1,000 points has a breaking point of one, an army worth 1,001 to 2,000 points has a breaking point of two, etc. Fortitude: Any army’s fortitude is equal to the current number of standards in the army (including the battle standard), plus two for the General. Fleeing units and units that are only temporarily off-table still count'
    scenarioLibrary[4].battlefield = 'Generate terrain normally'

    scenarioLibrary[5] = {}
    scenarioLibrary[5].name = 'Meeting Engagement'
    scenarioLibrary[5].deployment = 'Deployment\nIn this scenario the table is divided into two halves from corner to corner, as shown on the deployment map. The players roll off and the winner chooses the two opposite corners to be used and which half of the table each player will deploy in. The player that won the roll-off must deploy their entire army first. Before deploying the army, roll a dice for each separate unit, including each individual character and war machine. On a roll of 1 the unit must be held back as reserves. After all units have been rolled for, those that are not reserves can be deployed in their side’s deployment zone, anywhere that is more than 6" away from the centre line. Once the first player had deployed, his opponent does likewise, in exactly the same manner'
    scenarioLibrary[5].winner = 'Winner\nUse victory points to determine the winner of the battle as described earlier in this chapter.'
    scenarioLibrary[5].firstTurn = 'First turn\nAfter deployment, the player that set up second rolls a dice. On a roll of 6 they can choose who has the first turn. On a roll of 1-5 the player that set up first chooses who has the first turn.'
    scenarioLibrary[5].gameLength = 'Game length\nThe battle will last for six game turns, or until a time limit agreed by the players is reached, whichever comes first. '
    scenarioLibrary[5].specialRules = 'Special rules\nReserves: Reserves are not deployed at the start of the battle. Instead they can enter play on any turn of their players choosing, using the reinforcements rules as described in the Movement chapter. They may enter at any point on the long table edge of their deployment zone.'
    scenarioLibrary[5].battlefield = 'Generate terrain normally'
    
    scenarioLibrary[6] = {}
    scenarioLibrary[6].name = 'THE WATCHTOWER'
    scenarioLibrary[6].deployment = 'THE BATTLEFIELD Set up the watchtower as described below, and then set up any remaining terrain as described earlier in this chapter. The watchtower counts as the first of the D6+4 terrain pieces that must be set up. The Watchtower A building must be set up at the centre of the table. Any building model can be used, but there are a number of Citadel models which are ideal. If you don’t have a building model, use any other terrain feature of your choice. DEPLOYMENT Roll off to see who controls the watchtower at the start of the battle. The player that controls the tower may deploy a single Core infantry unit of no more than 20 models in the tower if they wish to do so. The unit is not allowed to voluntarily leave the tower until after the first game turn of the battle has been completed. The opposing player then picks the half of the table they will deploy in. Players then take it in turn to place units on the table, starting with the player that doesn’t control the watchtower, using the alternating units method of deployment as described earlier in this chapter. Units may be placed anywhere in their half that is more than 12" from the centre line. The Watchtower A watchtower is a useful and multi-purpose piece of Warhammer terrain. There are a number of suitable Citadel models available to represent the watchtower'
    scenarioLibrary[6].winner = ''
    scenarioLibrary[6].firstTurn = ''
    scenarioLibrary[6].gameLength = ''
    scenarioLibrary[6].battlefield = ''
    scenarioLibrary[6].specialRules = ''
end

function higlightDeploymentZones()
    if( currentScenario.name == 'Battleline') then
        love.graphics.setColor(1,0,0,0.3)
        love.graphics.rectangle('fill',0,0,width,100)
        love.graphics.setColor(0,0,1,0.3)
        love.graphics.rectangle('fill',0,height-90,width,100)
    elseif( currentScenario.name == 'Dawn Attack') then
        love.graphics.setColor(1,0,0,0.3)
        love.graphics.rectangle('fill',0,0,1/4*width,100)
        love.graphics.setColor(0,1,0,0.3)
        love.graphics.rectangle('fill',1/4*width,0,1/2*width,100)
        love.graphics.setColor(1,0,0,0.3)
        love.graphics.rectangle('fill',3/4*width,0,1/4*width,100)
        love.graphics.setColor(0,0,1,0.3)
        love.graphics.rectangle('fill',0,height-90,width/4,100)
        love.graphics.setColor(0,1,0,0.3)
        love.graphics.rectangle('fill',1/4*width,height-90,1/2*width,100)
        love.graphics.setColor(0,0,1,0.3)
        love.graphics.rectangle('fill',3/4*width,height-90,1/4*width,100)
        love.graphics.setColor(1,1,1,1)
        love.graphics.print('SIDE A\nRIGHT FLANK',10,10)
        love.graphics.print('SIDE A\nCENTRE',1/4*width + 10,10)
        love.graphics.print('SIDE A\nLEFT FLANK',3/4*width + 10,10)
        love.graphics.print('SIDE B\nLEFT FLANK',10,height-80)
        love.graphics.print('SIDE B\nCENTRE',1/4*width+10,height-80)
        love.graphics.print('SIDE B\nRIGHT FLANK',3/4*width+10,height-80)
    elseif( currentScenario.name == 'Battle for the pass') then
        love.graphics.setColor(1,0,0,0.3)
        love.graphics.rectangle('fill',0,0,1/3*width,height)
        love.graphics.setColor(0,0,1,0.3)
        love.graphics.rectangle('fill',2/3*width,0,1/3*width,height)
        love.graphics.setColor(1,1,1,1)
        love.graphics.print('SIDE A\nDEPLOYMENT\nZONE',10,10)
        love.graphics.print('SIDE B\nDEPLOYMENT\nZONE',2/3*width+10,10)
    elseif( currentScenario.name == 'Blood and glory') then
        love.graphics.setColor(1,0,0,0.3)
        love.graphics.rectangle('fill',1/8*width,0,6/8*width,1/3*height)
        love.graphics.setColor(0,0,1,0.3)
        love.graphics.rectangle('fill',1/8*width,2/3*height,6/8*width,1/3*height)
        love.graphics.setColor(1,1,1,1)
        love.graphics.print('SIDE A\nDEPLOYMENT\nZONE',1/8*width+10,10)
        love.graphics.print('SIDE B\nDEPLOYMENT\nZONE',1/8*width+10,2/3*height+10)
    elseif( currentScenario.name == 'Meeting Engagement') then
        love.graphics.setColor(1,0,0,0.3)
        love.graphics.polygon('fill',0,0, width-0.118*width,0, 0,height-0.118*width)
        love.graphics.setColor(0,0,1,0.3)
        love.graphics.polygon('fill',0.118*width, height, width, height, width, 0.118*width)
        love.graphics.setColor(1,1,1,1)
        love.graphics.print('SIDE A\nDEPLOYMENT\nZONE',10,10)
        love.graphics.print('SIDE B\nDEPLOYMENT\nZONE',width-90,height-50)
    end
end