function love.load()
    paddleWidth = 10;
    paddleHeight = 100;

    leftPlayerPoints = 0;
    rightPlayerPoints = 0;

    ballDirectionX = 1;
    ballDirectionY = 1;

    windowWidth = love.graphics.getWidth();
    windowHeight = love.graphics.getHeight();
    w = windowWidth;
    h = windowHeight;

    paddleStartY = (h / 2) - paddleHeight;
    rightPaddleStartX = w - paddleWidth;

    lPaddle = Object2D:new(0, paddleStartY, paddleWidth, paddleHeight);
    rPaddle = Object2D:new(rightPaddleStartX, paddleStartY, paddleWidth, paddleHeight);
    ball = Object2D:new(w/2, h/2, 16, 16);

    love.window.setTitle("Pong by VoiciehBy");
end