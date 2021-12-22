function handleKeys(dt)
    if (love.keyboard.isDown("w") and (lPaddle.posY > 0)) then
        mv(lPaddle, 0, -PADDLE_SPEED * dt);
    elseif (love.keyboard.isDown("s") and (lPaddle.posY <= h - lPaddle.height)) then
        mv(lPaddle, 0, PADDLE_SPEED * dt);
    end

    if (love.keyboard.isDown("up") and (rPaddle.posY > 0)) then
        mv(rPaddle, 0, -PADDLE_SPEED * dt);
    elseif (love.keyboard.isDown("down") and (rPaddle.posY <= h - rPaddle.height)) then
        mv(rPaddle, 0, PADDLE_SPEED * dt);
    end

    if (love.keyboard.isDown("p")) then
        Game.pauseGame();
    end
    if (love.keyboard.isDown("[")) then
        Game.resumeGame();
    end
end
