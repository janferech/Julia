using Primes

ergebnis = map(i -> i^2 - -2i + 1, primes(2, 30)) # f(i) -> i^2 -2i +1

println(ergebnis)

#Output of the first 10 prime numbers put into the mathematical function f(i) -> i^2 -2i +1
#[9, 16, 36, 64, 144, 196, 324, 400, 576, 900]


println("Die Summe der Funktionsergebnisse nachdem die ersten 10 Primzahlen für i eingesetzt worden sind: ", reduce(+, map(i -> i^2 - -2i + 1, primes(2, 30))))

#output: Die Summe der ersten 10 Primzahlen: 2665
