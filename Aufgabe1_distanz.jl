function calcDistance(x1, x2, y1, y2)
    sqrt((x2 - x1)^2 + (y2 - y1)^2)
end

function printDistance()
    println(calcDistance(0, 3, 0, 4)) 
end

printDistance()
