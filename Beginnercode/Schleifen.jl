println("----------------------------------")
println("\t\tJulia")
println("----------------------------------")

println("----------------------------------")
println("\t\tFor-Schleife\n")
println("----------------------------------")

for i in 1:5:12
    if i % 2 == 0
        println("$i ist eine gerade Ziffer.")
    else
        println("$i ist eine ungerade Ziffer")
    end
end

println("\n\n")
println("----------------------------------")
println("\t\tWhile-Schleife\n")
println("----------------------------------")

i::Any = 1

while i <= 10
    println(i)
    global i += 1  # global, da i außerhalb der lokalen Schleife initialisiert wurde
    # ohne global würde Julia eine lokale Variable namens <i> erstellen 
    # und diese verändern, sodass die globale Variable i nicht verändert wird
end