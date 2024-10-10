function buchstaben(textStr::String)
    dic = Dict{Char, Int}()
    for i in textStr
        if i ∈ keys(dic)
            dic[i] += 1
        else
            dic[i] = 1
        end
    end
    return dic
end

text = "soddsfds"
println(buchstaben(text))

#Ausgabe
#=
Dict('n' => 1, 's' => 1, 't' => 2, 'e' => 2)
=#

