module ExpressionSets

export ExpressionSet
# export binary, senary, octal, decimal, duodenary
# export hexadecimal, hexatrigesimal, sexagesimal, centimal
# export alphanumeric, modgin_int, modgin_fract



struct ExpressionSet
    expressions::Array{String}
    name::String
    expression_size::Int8
end


# array of 62 "digits" consisting of numerals, uppercase letters, lowercase letters
numeralphas = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", 
               "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", 
               "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", 
               "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", 
               "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]


binary = ExpressionSet(numeralphas[1:2],"Binary", 1)
senary = ExpressionSet(numeralphas[1:6],"Senary(6)", 1)
octal = ExpressionSet(numeralphas[1:8],"Octal", 1)
decimal = ExpressionSet(numeralphas[1:10],"Decimal", 1)
duodenary = ExpressionSet(numeralphas[1:12],"Duodenal(12)", 1)
hexadecimal = ExpressionSet(numeralphas[1:16],"Hexadecimal", 1)
hexatrigesimal = ExpressionSet(numeralphas[1:36],"Hexatrigesimal(36)", 1)
sexagesimal = ExpressionSet(numeralphas[1:60], "Sexagesimal(60)", 1)

# array of 36 "digits" from A-Z then 0-9
alphanumeric = ExpressionSet(vcat(numeralphas[11:36], numeralphas[1:10]),"AlphaNumeric",1)


centimal = ExpressionSet([
    "0A", "0B", "0C", "0D", "0E", "0F", "0G", "0H", "0I", "0J", 
    "1A", "1B", "1C", "1D", "1E", "1F", "1G", "1H", "1I", "1J", 
    "2A", "2B", "2C", "2D", "2E", "2F", "2G", "2H", "2I", "2J", 
    "3A", "3B", "3C", "3D", "3E", "3F", "3G", "3H", "3I", "3J", 
    "4A", "4B", "4C", "4D", "4E", "4F", "4G", "4H", "4I", "4J", 
    "5A", "5B", "5C", "5D", "5E", "5F", "5G", "5H", "5I", "5J", 
    "6A", "6B", "6C", "6D", "6E", "6F", "6G", "6H", "6I", "6J", 
    "7A", "7B", "7C", "7D", "7E", "7F", "7G", "7H", "7I", "7J", 
    "8A", "8B", "8C", "8D", "8E", "8F", "8G", "8H", "8I", "8J", 
    "9A", "9B", "9C", "9D", "9E", "9F", "9G", "9H", "9I", "9J"],
    "Centimal(100)", 2)

modgin_int = ExpressionSet([
    "MI", "MA", "MU", "MO", "ME", "MH", 
    "BI", "BA", "BU", "BO", "BE", "BH", 
    "DI", "DA", "DU", "DO", "DE", "DH", 
    "LI", "LA", "LU", "LO", "LE", "LH", 
    "KI", "KA", "KU", "KO", "KE", "KH", 
    "SI", "SA", "SU", "SO", "SE", "SH"],
    "Modgin Integers", 2)

modgin_fract = ExpressionSet([
    "IM", "IB", "ID", "IL", "IK", "IS", 
    "AM", "AB", "AD", "AL", "AK", "AS", 
    "UM", "UB", "UD", "UL", "UK", "US", 
    "OM", "OB", "OD", "OL", "OK", "OS", 
    "EM", "EB", "ED", "EL", "EK", "ES", 
    "HM", "HB", "HD", "HL", "HK", "HS"], 
    "Modgin Fractions", 2)

end # module
