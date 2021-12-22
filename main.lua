require("Game")
require("load")
require("drawProcedures")
require("inputHandling")
require("ballProcedures")

function love.draw()
    drawPaddles();
    drawBall();
    showPoints();
end

function love.update(dt)
    if (Game.state == "Playing") then
        handleKeys(dt);
        handlePaddleCollision();
        handleBallMovementInsideWindowBox(dt);
    end
end
