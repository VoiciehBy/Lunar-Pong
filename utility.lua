function mv(o, x, y)
    o.posX = o.posX + x;
    o.posY = o.posY + y;
end

function randomDirection()
    math.randomseed(os.time());
    direction = math.random(2) == 1 and -1 or 1;
    return direction;
end

function isPointInsideArea(A,area)
    isXGood = (A.posX  >= area.posX) and (A.posX <= area.width);
    isYGood = (A.posY >= area.posY) and (A.posY <= area.height)
    return isXGood and isYGood;
end

function showPoints()
    print(leftPlayerPoints..':'..rightPlayrtPoints);
end