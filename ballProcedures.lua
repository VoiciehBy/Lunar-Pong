require("utility")

function throwBall(dt)
    ballDirectionX = randomDirection();
    ballDirectionY = randomDirection();
end

function resetBall()
    ball.posX = w/2;
    ball.posY = h/2;
end

function reset()
    resetBall();    
    throwBall();
end

function handleBallMovementInsideWindowBox(dt)
    isXTooSmall = ball.posX < 0;
    isXTooBig = ball.posX > windowWidth - ball.width / 2;

    isYTooSmall = ball.posY < 0;
    isYTooBig = ball.posY > windowHeight - ball.height / 2;

    if (isXTooSmall) then
        rightPlayerPoints = rightPlayerPoints + 1;
        reset();
    elseif (isXTooBig) then
        leftPlayerPoints = leftPlayerPoints + 1;
        reset();
    elseif (isYTooSmall) then
        ballDirectionY = 1;
    elseif (isYTooBig) then
        ballDirectionY = -1;
    end
    mv(ball, ballDirectionX * (BALL_SPEED * dt), ballDirectionY * (BALL_SPEED * dt));
end

function handlePaddleCollision()
    if (isBallCollideWithLeftPaddle()) then
        print("Left Pong");
        ballDirectionX = -ballDirectionX;
        ballDirectionY = randomDirection();
    elseif (isBallCollideWithRightPaddle()) then
        print("Right Pong");
        ballDirectionX = -ballDirectionX;
        ballDirectionY = randomDirection();
    end
end