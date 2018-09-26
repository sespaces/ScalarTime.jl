module ScalarTime

import Dates

using ExpressionSets


export supdog, dog

export ExpressionSet

#export binary, senary, decimal, alphanumeric, modgin_int, modgin_fract

io = IOBuffer()

dt = Dates.format(Dates.now(), "H:MM e, Y-m-d")

greeting = "  'Sup, Dog?      --      $dt"

supdog() = print(io,greeting)

end    # module
