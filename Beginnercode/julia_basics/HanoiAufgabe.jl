function hanoi(scheibenanzahl, ausgangsturm, zielturm, hilfsturm)
    if scheibenanzahl > 0
        hanoi(scheibenanzahl - 1, ausgangsturm, hilfsturm, zielturm)
        println("Scheibe $scheibenanzahl vom $ausgangsturm zum $zielturm")
        hanoi(scheibenanzahl -1,hilfsturm, zielturm, ausgangsturm)
    end
end

hanoi(4, 1, 3, 2) 

# 3 Scheiben, am ersten Turm
# Scheiben müssen vom ersten Turm zum letzten
# Mittlerer Turm ist der Hilfsturm zum ablagern

function hanoi_anzahl(n::Int)
    anzahl::Int = 0
    if n > 0
        anzahl = 2 * hanoi_anzahl(n -1) + 1
    end
    anzahl
end

println(hanoi_anzahl(4))