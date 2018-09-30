module ScalarTime

import Dates

include("ExpressionSets.jl")
using .ExpressionSets


# import ExpressionSets: morse_code
export morse_code

export supdog

#export binary, senary, decimal, alphanumeric, modgin_int, modgin_fract

io = IOBuffer()

dt = Dates.format(Dates.now(), "H:MM e, Y-m-d")

greeting = "  'Sup, Dog?      --      $dt"

supdog() = print(io,greeting)

end    # module
