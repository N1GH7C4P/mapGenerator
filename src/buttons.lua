function generateButtons()
    buttons = {}

    buttons[1] = {}
    buttons[1].text = 'Reroll terrain'
    buttons[1].x = 50
    buttons[1].y = height + 15
    buttons[1].w = 100
    buttons[1].h = 25
    buttons[1].body = love.physics.newBody(world, buttons[1].x, buttons[1].y, "static")
    buttons[1].shape = love.physics.newRectangleShape(buttons[1].w,buttons[1].h)
    buttons[1].fixture = love.physics.newFixture(buttons[1].body, buttons[1].shape, 1)

    buttons[2] = {}
    buttons[2].text = 'Reroll scenario'
    buttons[2].x = 154
    buttons[2].y = height + 15
    buttons[2].w = 100
    buttons[2].h = 25
    buttons[2].body = love.physics.newBody(world, buttons[2].x, buttons[2].y, "static")
    buttons[2].shape = love.physics.newRectangleShape(buttons[2].w,buttons[2].h)
    buttons[2].fixture = love.physics.newFixture(buttons[2].body, buttons[2].shape, 1)

    buttons[3] = {}
    buttons[3].text = 'Deployment'
    buttons[3].x = 258
    buttons[3].y = height + 15
    buttons[3].w = 100
    buttons[3].h = 25
    buttons[3].body = love.physics.newBody(world, buttons[3].x, buttons[3].y, "static")
    buttons[3].shape = love.physics.newRectangleShape(buttons[3].w,buttons[3].h)
    buttons[3].fixture = love.physics.newFixture(buttons[3].body, buttons[3].shape, 1)

    buttons[4] = {}
    buttons[4].text = 'First turn'
    buttons[4].x = 362
    buttons[4].y = height + 15
    buttons[4].w = 100
    buttons[4].h = 25
    buttons[4].body = love.physics.newBody(world, buttons[4].x, buttons[4].y, "static")
    buttons[4].shape = love.physics.newRectangleShape(buttons[4].w,buttons[4].h)
    buttons[4].fixture = love.physics.newFixture(buttons[4].body, buttons[4].shape, 1)

    buttons[5] = {}
    buttons[5].text = 'Winner'
    buttons[5].x = 466
    buttons[5].y = height + 15
    buttons[5].w = 100
    buttons[5].h = 25
    buttons[5].body = love.physics.newBody(world, buttons[5].x, buttons[5].y, "static")
    buttons[5].shape = love.physics.newRectangleShape(buttons[5].w,buttons[5].h)
    buttons[5].fixture = love.physics.newFixture(buttons[5].body, buttons[5].shape, 1)

    buttons[6] = {}
    buttons[6].text = 'Battlefield'
    buttons[6].x = 570
    buttons[6].y = height + 15
    buttons[6].w = 100
    buttons[6].h = 25
    buttons[6].body = love.physics.newBody(world, buttons[6].x, buttons[6].y, "static")
    buttons[6].shape = love.physics.newRectangleShape(buttons[6].w,buttons[6].h)
    buttons[6].fixture = love.physics.newFixture(buttons[6].body, buttons[6].shape, 1)

    buttons[7] = {}
    buttons[7].text = 'Special rules'
    buttons[7].x = 674
    buttons[7].y = height + 15
    buttons[7].w = 100
    buttons[7].h = 25
    buttons[7].body = love.physics.newBody(world, buttons[7].x, buttons[7].y, "static")
    buttons[7].shape = love.physics.newRectangleShape(buttons[7].w,buttons[7].h)
    buttons[7].fixture = love.physics.newFixture(buttons[7].body, buttons[7].shape, 1)
end