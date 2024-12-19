module Oura

using HTTP
using JSON3

export OuraClient
export getHeartrate
export getSleep


"""
    OuraClient(token::String)

Client used for identification. Simply contains the authentification token
"""
mutable struct OuraClient
    __URL::AbstractString
    __headers::AbstractDict
    key::AbstractString

    function OuraClient(key::String="", url="https://api.ouraring.com")
        if isempty(key)
            @show 
            error(
                """
                    You did not give a token``
                """,
            )
        end
        headers = Dict(
            "Authorization" => "Bearer " * key
        )
        new(url, headers, key)
    end
end

"""
    getHeartrate(client::OuraClient, startDate::String, endDate::String)

    Get all heartrate for a given time period
"""
function getHeartrate(client::OuraClient, startDate::String, endDate::String)
    return JSON3.read(HTTP.get(
        client.__URL * "/v2/usercollection/heartrate?",
        client.__headers,
        query=[
            "start_date" => startDate,
            "end_date" => endDate
        ]
    ).body).data
end

"""
    getSleep(client::OuraClient, startDate::String, endDate::String)

    Get all sleep data for a given time period
"""
function getSleep(client::OuraClient, startDate::String, endDate::String)
    return JSON3.read(HTTP.get(
        client.__URL * "/v2/usercollection/sleep?",
        client.__headers,
        query=[
            "start_date" => startDate,
            "end_date" => endDate
        ]
    ).body).data
end



end
