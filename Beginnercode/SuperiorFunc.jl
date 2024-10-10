function f_h(x)
    z = x^2 + 2x + 1
    return function f(y)
        z + y + 10
    end
end

ho = f_h(2)

println("ho: ", ho(24))

#code about "höhere Ordnung" 
#idk what the right english word for "höhere Ordnung" is