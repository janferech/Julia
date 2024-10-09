function vergleiche(wort1, wort2)
    if wort1 < wort2
        println("$wort1 befindet sich lexikalisch vor $wort2")
    elseif wort1 > wort2
        println("$wort1 befindet sich lexikalisch nach $wort2")
    else
        println("$wort1 ist gleich $wort2")
    end
end

vergleiche("Abba", "Abel")