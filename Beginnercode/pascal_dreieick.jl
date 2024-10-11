#=

(a + b)^10 = a^10 + 10*a^9 *b + 45*a^8 *b^2 + 120*a^7 *b^3 + 210*a^6 *b^4 + 252*a^5 *b^5 + 210*a^4 *b^6 + 120*a^3 *b^7 + 45*a^2 *b^8 + 10*a*b^9 + b^10

=#

function pascals_dreieck_binom(n)
    koeffizient = [1, 10, 45, 120, 210, 252, 210, 120, 45, 10, 1]
    for i in 0:n
        row = koeffizient[1:i+1] # 1 bis i+1
        println(row)
    end
end

n = 10
pascals_dreieck_binom(n)
