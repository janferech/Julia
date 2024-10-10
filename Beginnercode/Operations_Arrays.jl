function stringToArray(text::String)
    return collect(text)
end

function lengthArray!(array::Vector{Char}, text_filler::String)
    filler_array = collect(text_filler)  
    filler_index = 1  
    if length(array) > 20
        while length(array) > 20
            pop!(array)
        end
    elseif length(array) < 20
        while length(array) < 20
            push!(array, filler_array[filler_index])
            filler_index = (filler_index % length(filler_array)) + 1  
        end
    end
end

text_filler = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"  
text = "abcdefghiklmnopq"  
array = stringToArray(text)

lengthArray!(array, text_filler)

println(array)  
println(length(array))  

#Array darf nur 20 Zeichen lang sein, sollten es mehr sein muss es auf 20 reduziert werden,
# sollte es weniger sein sollte es bis 20 augefüllt werden mit anderen Zeichen