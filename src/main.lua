require("load")
require("drawProcedures")
require("inputHandling")
require("ballProcedures")

function love.draw()
    love.graphics.setFont(font);
    if(Game.state == "MainMenu") then
        drawMainMenu();
    elseif (Game.state == "Playing") then
        drawGameplay();
    elseif (Game.state == "Paused") then
        drawPausedText();
    elseif (Game.state == "MatchEnd") then
        drawMatchEndText(matchWinner());
    end
end

function love.update(dt)
    print(Game.state);
    if(isGameWon()) then
     Game.state = "MatchEnd";
    end

    if(Game.state == "MainMenu") then
        handleKeys(0);
    elseif (Game.state == "Playing") then
        handleKeys(dt);
        handlePaddleCollision();
        handleBallMovementInsideWindowBox(dt);
    elseif (Game.state == "Paused" or "MatchEnd") then
        handleKeys(0);
        handleBallMovementInsideWindowBox(0);
    end
end
