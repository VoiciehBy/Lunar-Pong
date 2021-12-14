require("Game")
require("Object2D")
require("load")
require("drawProcedures")
require("inputHandling")

function mv(o, x, y)
    o.posX = o.posX + x;
    o.posY = o.posY + y;
end

function love.draw()
    drawPaddles();
    drawBall();
end

function love.update(dt)
    if (Game.state == "Playing") then
        handleKeys(dt);
    end
end
