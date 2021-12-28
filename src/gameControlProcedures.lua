function givePointToPlayer(player)
    if (player == "left") then
        LEFT_PLAYER_POINTS = LEFT_PLAYER_POINTS + 1;
    elseif (player == "right") then
        RIGHT_PLAYER_POINTS = RIGHT_PLAYER_POINTS + 1;
    end
end

function resetPoints()
    LEFT_PLAYER_POINTS = 0;
    RIGHT_PLAYER_POINTS = 0;
end

function resetPaddlesPosition()
    lPaddle = Object2D:new(0, paddleStartY, paddleWidth, paddleHeight);
    rPaddle = Object2D:new(rightPaddleStartX, paddleStartY, paddleWidth, paddleHeight);
end

function matchWinner()
    if (LEFT_PLAYER_POINTS == WIN_GOAL) then
        return "Left";
    elseif (RIGHT_PLAYER_POINTS == WIN_GOAL) then
        return "Right";
    else
        return "None";
    end
end

function isGameWon()
    if (matchWinner() ~= "None") then
        return true;
    else
        return false;
    end
end

function startGame()
    if (Game.state == "MainMenu") then
        Game.state = "Playing";
    end
end

function pauseGame()
    if (Game.state == "Playing") then
        Game.state = "Paused";
    end
end

function resumeGame()
    if (Game.state == "Paused") then
        Game.state = "Playing";
    end
end

function endMatch()
    if (isGameWon()) then
    Game.state = "MatchEnd";
    end
end

function startNextMatch()
    if (Game.state == "MatchEnd") then
        resetPoints();
        resetPaddlesPosition();
        Game.state = "Playing";
    end
end