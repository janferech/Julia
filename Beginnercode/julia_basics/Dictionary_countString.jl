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
Dict('f' => 1, 's' => 3, 'd' => 3, 'o' => 1)
=#

