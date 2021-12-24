function handlePaddlesControls(dt)
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

function handleKeys(dt)
    handlePaddlesControls(dt);

    if (love.keyboard.isDown('p') and (Game.state == "Playing")) then
        Game.state = "Paused";
    elseif (Game.state == "Paused") then
        if (love.keyboard.isDown("return")) then
            Game.state = "Playing";
        end
    end
end
