module Oura

using HTTP
using Dates

export OuraClient


"""
    OuraClient(token::String)

Client used for identification. Simply contains the authentification token
"""
mutable struct OuraClient
    __URL::AbstractString
    __headers::AbstractDict
    key::AbstractString

    function OuraClient(key, url="https://api.ouraring.com")
        headers = Dict(
            "Authorization" => "Bearer " * key
        )
        new(url, headers, key)
    end
end

function getHeartrate(client::OuraClient, startDate, endDate)
    return HTTP.get(
        client.__URL * "/v2/usercollection/heartrate?",
        client.__headers,
        query=[
            "start_date" => startDate,
            "end_date" => endDate
        ]
    )
end

function getSleep(client::OuraClient, startDate, endDate)
    return HTTP.get(
        client.__URL * "/v2/usercollection/sleep?",
        client.__headers,
        query=[
            "start_date" => startDate,
            "end_date" => endDate
        ]
    )
end



end
