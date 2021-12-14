Game = {
    state = "Playing"
}
function Game:new(state)
    local o = {}
    setmetatable(o, Game)
    o.state = state;
    return o;
end
function Game:getState()
    if (state ~= "") then
        return state;
    else
        return "NoState";
    end
end

function Game:startGame()
    if (state == "MainMenu") then
        state = "Playing";
    end
end

function Game:pauseGame()
    if (state == "Playing") then
        state = "Paused";
    end
end

function Game:resumeGame()
    if (state == "Paused") then
        state = "Playing";
    end
end

function Game:exitToMainMenu()
    if (state == "Playing") then
        state = "MainMenu";
    end
end

function Game:exitGame()
    if (state == "MainMenu") then
        state = "Stop";
    end
end