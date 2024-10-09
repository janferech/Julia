function find_fakultaet(n)
    fakultaet = 0
    if n <= 0
        println(fakultaet)
    else
        fakultaet = n * (find_fakultaet(n-1))
    end 
end