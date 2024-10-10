#filter the capital letters in a text

function filterCaps(text::String)
ergebnis = filter(isuppercase, text)
end

println(filterCaps("Heute ist ein schöner Tag"))

