# Oura.jl
*A Oura ring API client for Julia.*

Interact with the [Oura API](https://cloud.ouraring.com/v2/docs) using Personal Access Tokens

---

## ⚡️ Quickstart

**Installation**

```julia-repl
julia> using Pkg
julia> Pkg.add(url="https://github.com/wylie39/Oura.jl")
```

**Basic Usage**

```julia
using Oura

# Or set OURAKEY ENV
accessToken = "YOUR_PERSONAL_ACCESS_TOKEN"
client = OuraClient(accessToken)

personalInfo = getpersonalinfo(client)

print(personalInfo)

```