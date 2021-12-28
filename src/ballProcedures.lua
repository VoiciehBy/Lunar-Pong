require("utility")
require("gameControlProcedures")

function throwBall(dt)
    ballDirectionX = randomDirection();
    ballDirectionY = randomDirection();
end

function resetBall()
    ball.posX = w / 2;
    ball.posY = h / 2;
end

function resetAndThrowBall()
    resetBall();
    throwBall();
end

function handleBallMovementInsideWindowBox(dt)
    isXTooSmall = ball.posX < 0;
    isXTooBig = ball.posX > windowWidth - ball.width / 2;

    isYTooSmall = ball.posY < 0;
    isYTooBig = ball.posY > windowHeight - ball.height / 2;

    if (isXTooSmall) then
        givePointToPlayer("right");
        resetAndThrowBall();
    elseif (isXTooBig) then
        givePointToPlayer("left");
        resetAndThrowBall();
    elseif (isYTooSmall) then
        BALL_DIRECTION[2] = 1;
    elseif (isYTooBig) then
        BALL_DIRECTION[2] = -1;
    end
    mv(ball, BALL_DIRECTION[1] * (BALL_SPEED * dt), BALL_DIRECTION[2] * (BALL_SPEED * dt));
end

function isBallCollideWithLeftPaddle()
    return isPointInsideArea(ball, lPaddle);
end
function isBallCollideWithRightPaddle()
    return isPointInsideAreaA(ball, rPaddle);
end

function mkPong()
    BALL_DIRECTION[1] = -BALL_DIRECTION[1];
    BALL_DIRECTION[2] = randomDirection();
end

function handlePaddleCollision()
    if (isBallCollideWithLeftPaddle()) then
        mkPong();
    elseif (isBallCollideWithRightPaddle()) then
        mkPong();
    end
end
