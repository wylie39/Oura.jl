push!(LOAD_PATH,"../src/")
using Documenter, Oura


makedocs(sitename="Oura.jl", pages = [
    "Home" => "index.md",
    "Get Started" => "getStarted.md",
    "Functions" => "functions.md",
])