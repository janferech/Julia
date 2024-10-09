println("----------------------------------")
println("\t\tJulia")
println("----------------------------------")

i = 1

while true
    println(i)
    if i >= 3
        break #Springt aus der Schleife
    end
    global i += 1
end

while true
    println("$i")
    global i += 1
    if i < 5 || break #springt aus der Schleife
    end
end

for j = i:1000
    println(j)
    if j >= 3
        break
    end
end