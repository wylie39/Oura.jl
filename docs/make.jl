push!(LOAD_PATH, "../src/")
using Documenter, Oura


makedocs(sitename="Oura.jl", pages=[
    "Home" => "index.md",
    "Functions" => "functions.md",
])


deploydocs(
    repo="github.com/wylie39/Oura.jl.git",
)