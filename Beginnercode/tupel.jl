function kreisBerechnen(radius)
    flaeche = π * radius^2
    umfang = 2 * π * radius
    return (flaeche, umfang)  
end

resultat = kreisBerechnen(8)
println("Fläche: ", resultat[1], ", Umfang: ", resultat[2])
