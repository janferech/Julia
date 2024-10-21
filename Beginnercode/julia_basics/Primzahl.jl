function primeFinder(n)
    for i in 2:n-1 #Schleifenlaenge muss kleiner als n sein
        if n >= 1 && n % i == 0 
            return false
        end
    end
    return true
end

if primeFinder(198)
    println(" ist eine Primzahl.")
else
    println(" ist keine Primzahl.")
end

