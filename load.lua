require("Game")
require("Object2D")


function love.load()
    Game = Game:new("Playing");

    leftPlayerPoints = 0;
    rightPlayerPoints = 0;

    ballDirectionX = 1;
    ballDirectionY = 1;

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
    ball = Object2D:new(w / 2, h / 2, 16, 16);

    love.window.setTitle("Lunar Pong by VoiciehBy");

    PADDLE_SPEED = 500;
    BALL_SPEED = PADDLE_SPEED * 0.25;

    b = false;
end
