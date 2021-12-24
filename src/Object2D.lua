Object2D = {
    posX = 0,
    posY = 0,
    width = 10,
    height = 100
}
function Object2D:new(posX, posY, width, height)
    local o = {}
    setmetatable(o, Object2D)

    o.posX = posX;
    o.posY = posY;
    o.width = width;
    o.height = height;
    return o;
end