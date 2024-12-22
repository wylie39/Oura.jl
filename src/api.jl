
"""
    getHeartrate(client::OuraClient, startDate::String, endDate::String)

    Get all heartrate date for a given time period. default is to give the last day.
"""
function getheartrate(client::OuraClient, startDate::String=string(today() - Day(1)), endDate::String=string(today()))
    return apiGet(
        client,
        "heartrate",
        [
            "start_date" => startDate,
            "end_date" => endDate
        ]
    )
end

"""
    getsleep(client::OuraClient, startDate::String, endDate::String)

    Get all sleep data for a given time period. default is to give the last day.
"""
function getsleep(client::OuraClient,  startDate::String=string(today() - Day(1)), endDate::String=string(today()))
    return apiGet(
        client,
        "sleep",
        [
            "start_date" => startDate,
            "end_date" => endDate
        ]
    )
end

"""
    getpersonalinfo(client::OuraClient)

    Get all PersonalInfo
"""
function getpersonalinfo(client::OuraClient)
    if (client.__sandbox)
        error("Can't get PersonalInfo for sandbox")
        return
    end
    return apiGet(
        client,
        "personal_info",
        []
    )
end


# This is broken right now
#"""
#     getringconfiguration(client::OuraClient, startDate::String, endDate::String)

#     Get ringconfiguration data for a given time period. default is to give the last day.
# """
# function getringconfiguration(client::OuraClient,  startDate::String=string(today() - Day(1)), endDate::String=string(today()))
#     return apiGet(
#         client,
#         "ring_configuration",
#         [
#             "start_date" => startDate,
#             "end_date" => endDate
#         ]
#     )
# end


"""
    getdailyreadiness(client::OuraClient, startDate::String, endDate::String)

    Get daily readiness data for a given time period. default is to give the last day.
"""
function getdailyreadiness(client::OuraClient,  startDate::String=string(today() - Day(1)), endDate::String=string(today()))
    return apiGet(
        client,
        "daily_readiness",
        [
            "start_date" => startDate,
            "end_date" => endDate
        ]
    )
end

"""
    getdailycardiovascularage(client::OuraClient, startDate::String, endDate::String)

    Get daily cardiovascular age data for a given time period. default is to give the last day.
"""
function getdailycardiovascularage(client::OuraClient,  startDate::String=string(today() - Day(1)), endDate::String=string(today()))
    return apiGet(
        client,
        "daily_cardiovascular_age",
        [
            "start_date" => startDate,
            "end_date" => endDate
        ]
    )
end

