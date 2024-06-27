local font
local gamepad
local pos_x, pos_y = 0, 0

function love.load()
    font = love.graphics.newFont('GlasstownNbpRegular-RyMM.ttf', 48)
    gamepad = love.joystick.getJoysticks()[1]
end

function love.update()
    local x, y = gamepad:getAxes()
    pos_x = pos_x + x
    pos_y = pos_y + y
end

function love.draw()
    love.graphics.circle("fill", pos_x, pos_y, 20)
end
