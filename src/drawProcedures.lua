function drawMainMenu()
    x = w / 4 - font:getHeight();
    love.graphics.print(love.window.getTitle(), x, h / 3);
    love.graphics.print("Press ENTER to continue...", x, h / 3 + font:getHeight());
end

function drawPaddles()
    love.graphics.rectangle("fill", lPaddle.posX, lPaddle.posY, lPaddle.width, lPaddle.height);
    love.graphics.rectangle("fill", rPaddle.posX, rPaddle.posY, rPaddle.width, rPaddle.height);
end

function drawBall()
    love.graphics.rectangle("fill", ball.posX, ball.posY, ball.width, ball.height);
end

function showPoints()
    love.graphics.print(LEFT_PLAYER_POINTS .. ':' .. RIGHT_PLAYER_POINTS, w / 2, h / 2);
end
function drawPausedText()
    x = w / 4 - font:getHeight();
    love.graphics.print("Paused", x, h / 3);
    love.graphics.print("Press ENTER to continue...", x, h / 3 + font:getHeight());
end