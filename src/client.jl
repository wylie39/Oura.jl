"""
    OuraClient(token::String,url::String,sandbox::Bool)

Client used for identification. Simply contains the authentification token.
Sandbox can be set to true to use fake data
"""
mutable struct OuraClient
    __URL::AbstractString
    __sandbox::Bool
    key::AbstractString

    function OuraClient(key::String="", sandbox::Bool=false, url=defaultUrl)
        # TODO: Get key from env
        if isempty(key)
            @show 
            error(
                """
                    You did not give a token``
                """,
            )
        end
        if (sandbox) url = sandboxUrl
            
        end
        new(url, sandbox, key)
    end
end

"""
    apiGet(client::OuraClient, path::String, query::Array) -> JSON3.read(body)

Wrapper to call the API, automatically uses
the API Key token and base URL in every request.
"""
function apiGet(
    client::OuraClient,
    path::String,
    query::Array,
    headers::Dict=Dict(),
)
    merge!(headers, Dict("Authorization" => "Bearer " * client.key ))
    response = HTTP.get(
        client.__URL * path,
        headers,
        query=query
    )
    body = response.body
   
    return JSON3.read(body)
end