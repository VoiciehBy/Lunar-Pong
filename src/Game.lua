Game = {
    state = "MainMenu"
}
function Game:new(state)
    local o = {}
    setmetatable(o, Game);
    o.state = state;
    return o;
end