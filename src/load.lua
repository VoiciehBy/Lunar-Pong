require("Game")
require("Object2D")


function love.load()
    font = love.graphics.newFont("8bitOperatorPlus-Bold.ttf",30);

    Game = Game:new("MainMenu");
    LEFT_PLAYER_POINTS = 0;
    RIGHT_PLAYER_POINTS = 0;

    windowWidth = love.graphics.getWidth();
    windowHeight = love.graphics.getHeight();
    w = windowWidth;
    h = windowHeight;

    paddleWidth = w / 80;
    paddleHeight = h / 6;

    paddleStartY = (h / 2) - paddleHeight;
    rightPaddleStartX = w - paddleWidth;

    lPaddle = Object2D:new(0, paddleStartY, paddleWidth, paddleHeight);
    rPaddle = Object2D:new(rightPaddleStartX, paddleStartY, paddleWidth, paddleHeight);

    PADDLE_SPEED = 500;
    
    ball = Object2D:new(w / 2, h / 2, 16, 16);
    BALL_DIRECTION = {1,1};
    BALL_SPEED = PADDLE_SPEED * 0.25;

    love.window.setTitle("Lunar Pong by VoiciehBy");
end
