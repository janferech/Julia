i = 1

for k = 1:10
    if k % 3 != 0 # Wenn k durch 3 teilbar gibt er k aus, wenn
                  # Wenn k nicht durch 3 teilbar ist, wird der jetzige Schleifendurchlauf abgebrochen und faengt den naechsten an
        continue
    end
    println(k)
end

#continue = bricht den aktuellen schleifendurchlauf ab und startet den naechsten wenn moeglicch
