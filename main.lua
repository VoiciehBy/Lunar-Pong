require ("Object2D")
require ("load")
require ("drawProcedures")

function mv(o, x, y)
    o.posX = o.posX + x;
    o.posY = o.posY + y;
end

function handleKeys()
    if (love.keyboard.isDown("w") and (lPaddle.posY > 0)) then
        mv(lPaddle, 0, -1);
    elseif (love.keyboard.isDown("s") and (lPaddle.posY <= h - lPaddle.height)) then
        mv(lPaddle, 0, 1);
    end
    
    if (love.keyboard.isDown("up") and (rPaddle.posY > 0)) then
        mv(rPaddle, 0, -1);
    elseif (love.keyboard.isDown("down") and (rPaddle.posY <= h - rPaddle.height)) then
        mv(rPaddle, 0, 1);
    end
end

function love.draw()
    drawPaddles();
    drawBall();
end

function love.update()
    handleKeys();
end