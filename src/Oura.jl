module Oura

using HTTP
using JSON3
using Dates

export OuraClient, getheartrate, getsleep, getpersonalinfo, getdailyreadiness, getdailycardiovascularage


include("const.jl")
include("client.jl")
include("api.jl")

end
