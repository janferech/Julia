using Primes

ergebnis = map(i -> i^2 - -2i + 1, primes(2, 30))

println(ergebnis)
 #t