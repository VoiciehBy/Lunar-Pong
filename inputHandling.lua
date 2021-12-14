PADDLE_SPEED = 500;
BALL_SPEED = PADDLE_SPEED * 0.25;

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
end
