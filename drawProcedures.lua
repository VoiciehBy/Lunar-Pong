function drawPaddles()
    love.graphics.rectangle("fill", lPaddle.posX, lPaddle.posY, lPaddle.width, lPaddle.height);
    love.graphics.rectangle("fill", rPaddle.posX, rPaddle.posY, rPaddle.width, rPaddle.height);
end

function drawBall()
    love.graphics.rectangle("fill", ball.posX, ball.posY, ball.width, ball.height);
end

function showPoints()
    love.graphics.print(leftPlayerPoints .. ':' .. rightPlayerPoints, w / 2, h / 2);
end
function drawPausedText()
    love.graphics.print("Paused", w / 2, h / 2);
    love.graphics.print("Press ENTER to continue...", w / 2, h / 2 + 10);
end