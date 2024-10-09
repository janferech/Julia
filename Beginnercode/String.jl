function string_Abstand(strText::String)
    leerzeichen = 40 - length(strText)
    strErgebnis = " " ^ leerzeichen * strText

    println(strErgebnis)
end

string_Abstand("Hallo")