Game = {
    state = "Playing"
}
function Game:new(state)
    local o = {}
    setmetatable(o, Game)
    o.state = state;
    return o;
end