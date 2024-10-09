x::Any = 12
y::Any = -5

println("----------------------------------")
println("\t\tJulia")
println("----------------------------------")

if x > 0
    println("x ist positiv")
end

println("----------------------------------")

if y < 0
    println("y ist negativ")
else 
    println("y ist entweder 0 oder positiv")
end

println("----------------------------------")

if x > y
    println("x ist groesser als y")
elseif x < y
    println("x ist kleiner als y\n")
end


