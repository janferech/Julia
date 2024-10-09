function countdown(n)
    if n <= 0
        println("start\n\n") #beendet die rekursion
    else
        println(n, " ")
        sleep(1)
        countdown(n - 1)
    end
end

countdown(10)


function countdownUpwards(n2)
    if n2 >= 11
        println("ende")
    else
        println(n2, " ")
        sleep(1)
        countdownUpwards(n2 + 1)
    end
end

countdownUpwards(1)