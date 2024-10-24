function ist_gueltig(zustand::String, position::Int)::Bool # Vladi
    # Überprüft, ob der Zug an der gegebenen Position gültig ist
    return (zustand[position] == 'p' && (position < length(zustand) && zustand[position+1] == '-' || position < length(zustand) - 1 && zustand[position+2] == '-')) || 
           (zustand[position] == 'q' && (position > 1 && zustand[position-1] == '-' || position > 2 && zustand[position-2] == '-'))
end

function mache_zug(zustand::String, position::Int)::String # Jan
    anzahl_kamale = collect(zustand)  # Zustand = String --> In ein Array umwandeln, sodass position und leeres_feld als indexe Innerhalb des Arrays fungieren können
    leeres_feld = findfirst(==('-'), anzahl_kamale)  # Finde die Position des Platzhalters <->
    anzahl_kamale[position], anzahl_kamale[leeres_feld] = anzahl_kamale[leeres_feld], anzahl_kamale[position]  # Tausche die Position des Kamels mit dem leeren Feld
    return join(anzahl_kamale)  # Führt ein Array zu enem String zusammen
end

function loese(start::String, ziel::String, weg=[start]) 
    # Löst das Kamelproblem rekursiv, indem alle möglichen gültigen Züge ausprobiert werden
    last(weg) == ziel && return weg  # Basisfall: Wenn der letzte Zustand dem Zielzustand entspricht, gib den Weg zurück ---> siehe Zeile 33-34 für ziel und start

    for position in 1:length(start)
        if ist_gueltig(last(weg), position)  # Prüft, ob der Zug an der aktuellen Position gültig ist
            neu = mache_zug(last(weg), position)  # Führt Zug aus für neuen Zustand
            if neu ∉ weg  # Vermeidet das der gleiche Zug nicht nochmal durchgeführt wird
                ergebnis = loese(start, ziel, [weg; neu])  # Rekursiver Aufruf mit dem neuen Zustand
                ergebnis !== nothing && return ergebnis  # Gibt das Ergebnis zurück, wenn eine Lösung gefunden wurde
            end
        end
    end

    return nothing  # Gibt nichts zurück, wenn keine Lösung gefunden wurde
end

function camel(anzahl_kamale::Int) 
#hauptfunktion
    start = "p"^anzahl_kamale * "-" * "q"^anzahl_kamale  # start Zustand, z.B. 'ppp-qqq' für 3 Kamele
    ziel = "q"^anzahl_kamale * "-" * "p"^anzahl_kamale  # Zielzustand, z.B. 'qqq-ppp' für 3 Kamele
    loesung = loese(start, ziel)  # Versucht, den Weg von Start zu Ziel zu finden
    countZuege = 0  # Zähler für die Anzahl der Züge

    if loesung === nothing  # Falls keine Lösung gefunden wurde
        println("Keine Lösung gefunden.")
    else
        foreach(((i, zustand),) -> begin
                println("$i. $zustand")  # Gibt jeden Zustand auf dem Lösungsweg aus
                countZuege = i  
            end, enumerate(loesung))
    end

    println("\nMinimale Anzahl der Züge: ", berechneMinWege(anzahl_kamale))  # Gibt die mindest Anzahl an Zügen aus
    println("Anzahl der aktuellen Züge: ", countZuege - 1)  #-1, da der Startzustand kein eigentlicher Zug ist --> ppp-qqq
end

function berechneMinWege(anzCamels::Int)::Int 
    # Berechnet die minimale Anzahl der Züge für eine gegebene Anzahl an Kamelen
    return (anzCamels^2 + 2 * anzCamels)  # Formel zur Berechnung der minimalen Züge
end

anzCamels = 3


camel(anzCamels)

#=
 function setCamel()
     print("Wie viele Kamele soll jede Gruppe haben? ")
     camel(parse(Int, readline()))
 end 
=#