require("load")
require("drawProcedures")
require("inputHandling")
require("ballProcedures")

function love.draw()
    if (Game.state == "Playing") then
        drawPaddles();
        drawBall();
        showPoints();
    elseif (Game.state == "Paused") then
        drawPausedText();
    end
end

function love.update(dt)
    if (Game.state == "Playing") then
        handleKeys(dt);
        handlePaddleCollision();
        handleBallMovementInsideWindowBox(dt);
    elseif (Game.state == "Paused") then
        handleKeys(0);
        handlePaddleCollision();
        handleBallMovementInsideWindowBox(0);
    end
end
