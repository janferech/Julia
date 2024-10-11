mutable struct CronTab
    minute::Int64
    stunde::Int64
    tag::Int64
    monat::Int64
    wochentag::Int64
    skript::String

    function CronTab(
        minute::Int64,
        stunde::Int64,
        tag::Int64,
        monat::Int64,
        wochentag::Int64,
        skript::String
    )
        skript = skriptPlausi(skript)
        new(minute, stunde, tag, monat, wochentag, skript)
    end
end

function skriptPlausi(file::String)::String
    if isfile(file)
        permissions = operm(file)
        if (permissions & 0b101 != 0) 
            return file
        else
            error("File existiert nicht bzw. darf nicht ausgefuehrt werden.")
        end
    else
        error("File existiert nicht.")
    end
end

tab = CronTab(1, 0, 0, 0, 0, "/home/jantrw/wireshark.sh")

println("Minute: ", tab.minute)
println("Skript: ", tab.skript)
