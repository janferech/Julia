function ist_gueltig(zustand::String, position::Int)::Bool
    return (zustand[position] == 'p' && (position < length(zustand) && zustand[position+1] == '-' || position < length(zustand) - 1 && zustand[position+2] == '-')) ||
           (zustand[position] == 'q' && (position > 1 && zustand[position-1] == '-' || position > 2 && zustand[position-2] == '-'))
end

function mache_zug(zustand::String, position::Int)::String
    anzahl_kamale = collect(zustand)  # Zustand = String --> In ein Array umwandeln, sodass position und leeres_feld als indexe Innerhalb des Arrays fungieren können
    leeres_feld = findfirst(==('-'), anzahl_kamale)  # Finde die Position des Platzhalters <->
    anzahl_kamale[position], anzahl_kamale[leeres_feld] = anzahl_kamale[leeres_feld], anzahl_kamale[position]  # Tausche die Position des Kamels mit dem leeren Feld
    return join(anzahl_kamale)  # Führt ein Array zu enem String zusammen
end


function loese(start::String, ziel::String, weg=[start])
    last(weg) == ziel && return weg

    for position in 1:length(start)

        if ist_gueltig(last(weg), position)
            neu = mache_zug(last(weg), position)
            if neu ∉ weg
                ergebnis = loese(start, ziel, [weg; neu])
                ergebnis !== nothing && return ergebnis
            end
        end
    end

    return nothing
end

function camel(anzahl_kamale::Int)
    start = "p"^anzahl_kamale * "-" * "q"^anzahl_kamale
    ziel = "q"^anzahl_kamale * "-" * "p"^anzahl_kamale
    loesung = loese(start, ziel)
    countZuege = 0

    if loesung === nothing
        println("Keine Lösung gefunden.")
    else
        foreach(((i, zustand),) -> begin
                println("$i. $zustand")
                countZuege = i
            end, enumerate(loesung))
    end

    println("\nMinimale Anzahl der Züge: ", berechneMinWege(anzahl_kamale))
    println("Anzahl der aktuellen Züge: ", countZuege - 1) #-1, da der erste Move ppp_qqq kein richtiger Move ist
end

function berechneMinWege(anzCamels::Int)::Int
    return (anzCamels^2 + 2 * anzCamels)
end

anzCamels = 3

camel(anzCamels)

# function setCamel()
#     print("Wie viele Kamele soll jede Gruppe haben? ")
#     camel(parse(Int, readline()))
# end 
