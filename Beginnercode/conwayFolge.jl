function printNextLine(numbers::Array{Int})
    next_line = []
    i = 1
    while i <= length(numbers)
        count = 1
        while i + 1 <= length(numbers) && numbers[i] == numbers[i + 1] #soll so lange gehen wie i +1 kleiner als die länge des arrays und solange wie de zahl gleich ist
            count += 1
            i += 1
        end
        push!(next_line, count)
        push!(next_line, numbers[i])
        i += 1
    end
    return next_line
end

print(printNextLine([1,1,1,3,2,1,3,2,1,1]))
print(" ")



#=
                                    1
                                1       1
                                2       1
                            1   2       1   1
                        1   1   1       2   2   1
                        3   1   2       2   1   1
                    1   3   1   1       2   2   2   1
                1   1   1   3   2       1   3   2   1   1
        3   1   1   3   1   2   1       1   1   3   1   2   2   1
        .   .   .   .   .   .   .       .   .   .   .   .   .   .   
=#