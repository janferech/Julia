function func_name()
    println("Julia ist cool")
end

function func_name(text::String)
    println(text)
end

function addition(summand1::Int, summand2::Int)::Int # das letzte ::Int ist welcher wert returned wird, das returnte wird beim Ausgeben der Methode ausgegeben
    return summand1 + summand2
end

function subtraktion(minuend, subtrahend)
    minuend - subtrahend #Julia nimmt automatisch den letzten Wert der Funktion als return wert
end

func_name()
func_name("sdfjdsifjsfsidf")
println(addition(8,9))
println(subtraktion(122,88))

typeof(subtraktion(9,9))