function sum(x::Int...)
    return reduce(+, x)
end

sum(1,2,3,4,5,6,7,8,9) #infinite possibilities to enter numbers due ...
