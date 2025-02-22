# Oura.jl

[![Build Status](https://github.com/wylie39/Oura.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/wylie39/Oura.jl/actions/workflows/CI.yml?query=branch%3Amain)

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


## 🧪 Sandbox Environment (Testing)

The Oura API's sandbox environment ([Docs](https://cloud.ouraring.com/v2/docs#tag/Sandbox-Routes)) is perfect for
development. 

```julia
using Oura

# Or set OURAKEY ENV
accessToken = "YOUR_PERSONAL_ACCESS_TOKEN"
# Use sandbox
client = OuraClient(accessToken,true)
```

## 📑 Documentation

- Full API reference: [Documentation](https://wylie39.github.io/Oura.jl/dev/)

### Included data scopes for v2 of the API.

| Endpoint/Scope                                                                   | Status      |
| :------------------------------------------------------------------------------- | :---------- |
| Daily Activity                                                                   | Implemented |
| Daily Cardiovascular Age                                                         | Implemented |
| Daily Readiness                                                                  | Implemented |
| Daily Resilience                                                                 | Not Yet |
| Daily Sleep                                                                      | Implemented |
| Daily Spo2                                                                       | Not Yet |
| Daily Stress                                                                     | Not Yet |
| Enhanced Tag                                                                     | Not Yet |
| Heart Rate                                                                       | Implemented |
| Personal Info                                                                    | Implemented |
| Rest Mode Period                                                                 | Not Yet |
| Ring Configuration                                                               | Not Working |
| Session                                                                          | Not Yet |
| Sleep                                                                            | Not Yet |
| Sleep Time                                                                       | Not Yet |
| Tag                                                                              | DEPRECATED  |
| Vo2 Max                                                                          | Not Yet |
| Workout                                                                          | Not Yet |

## 🐞 Issues

Please report any issues or questions on the [GitHub repository](https://github.com/wylie39/Oura.jl/issues).

## 📄 License

MIT License - see the [LICENSE](LICENSE) file.
