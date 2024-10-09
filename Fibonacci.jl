#=function fibonacci(n)
    if n == 0
        return 0
    elseif n == 1
        return 1
    else
        result = fibonacci(n - 1) + fibonacci(n - 2)
    end
end

fibonacci(5)
=#


function fibonacci2(n::Int)
    n == 0 ? 0 : n == 1 ? 1 : fibonacci2(n - 1) + fibonacci2(n - 2)
end

println(fibonacci2(19))