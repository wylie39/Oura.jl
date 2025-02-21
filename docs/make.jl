push!(LOAD_PATH, "../src/")
using Documenter, Oura


makedocs(sitename="Oura.jl", pages=[
    "Home" => "../README.md",
    "Get Started" => "getStarted.md",
    "Functions" => "functions.md",
])


deploydocs(
    repo="github.com/wylie39/Oura.jl.git",
)