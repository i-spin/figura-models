counter = 0
direction = "down"

function render(delta)
    currentPos = model.Head.getPos()

    if direction == "down" then
        currentPos = {currentPos[1], currentPos[2] - 0.05, currentPos[3]}
        counter = counter + 1
    elseif direction == "up" then
        currentPos = {currentPos[1], currentPos[2] + 0.05, currentPos[3]}
        counter = counter + 1
    end

    if counter == 40 then
        if direction == "down" then direction = "up" elseif direction == "up" then direction = "down" end
        counter = 0
    end

    time = world.getTime()
    model.Head.setRot({0,time*3,0})
    model.Head.setPos(currentPos)
end