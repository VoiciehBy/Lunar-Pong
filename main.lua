require("Game")
require("Object2D")
require("load")
require("drawProcedures")
require("inputHandling")
require("utility")
require("ballProcedures")

function love.draw()
    drawPaddles();
    drawBall();
end
function isBallCollideWithLeftPaddle()
    return isPointInsideArea(ball, lPaddle);
end
function isBallCollideWithRightPaddle()
    return isPointInsideAreaA(ball, rPaddle);
end

function love.update(dt)
    if (Game.state == "Playing") then
        handleKeys(dt);
        handlePaddleCollision();
        handleBallMovementInsideWindowBox(dt);
    end
end
