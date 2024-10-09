function wiederhole(f, n::Int) # f any dateityp
    for i in 1:n
        f()
    end
end

function parameterTMP()
    println("Ich wurde übergeben")
end

wiederhole(parameterTMP, 10) # parameter f nimmt die methode parameterTMP() an
