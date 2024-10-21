using Dates

struct Person
    persNummer::String
    name::String
    vorname::String
    geburtsdatum::Date
    abteilung::String
end

person1 = Person("873498", "Mueller", "Tomas", Date("12.03.1985", "dd.mm.yyyy"), "HR")
person2 = Person("172643", "Weber", "Justin", Date("24.07.1990", "dd.mm.yyyy"), "IT")
person3 = Person("874983", "Kobel", "Gregor", Date("05.11.1993", "dd.mm.yyyy"), "Marketing")
person4 = Person("018412", "Knuebel", "Tobias", Date("15.01.1978", "dd.mm.yyyy"), "Sales")
person5 = Person("645632", "Baumann", "Stefan", Date("30.09.1982", "dd.mm.yyyy"), "Finance")
person6 = Person("674574", "Kimmich", "Joashua", Date("18.04.1996", "dd.mm.yyyy"), "Operations")
person7 = Person("743534", "Raum", "David", Date("22.12.1987", "dd.mm.yyyy"), "Legal")
person8 = Person("464564", "Wein", "Kevin", Date("10.06.1994", "dd.mm.yyyy"), "R&D")
person9 = Person("904798", "Landgraf", "Lewis", Date("09.08.1999", "dd.mm.yyyy"), "Customer Support")
person10 = Person("293283", "Zimmermann", "Max", Date("28.02.2000", "dd.mm.yyyy"), "Logistics")

personen_dict = Dict(pers.persNummer => pers for pers in personen)

function getPerson(pNummer::String)
    return personen_dict[pNummer]
end

function printPerson(person::Person)
    println("Personalnummer: ", person.persNummer)
    println("Name: ", person.name)
    println("Vorname: ", person.vorname)
    println("Geburtsdatum: ", person.geburtsdatum)
    println("Abteilung: ", person.abteilung)
end

pNummer = "018412" 
person = getPerson(pNummer) # person bekommt den wert die die funktion getPerson returned
printPerson(person)  #getPerson bekommt den parameter person, welcher den return wert der funktion getPerson ist


#