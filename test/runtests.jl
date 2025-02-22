using Oura
using Dates
using Test

@testset "Oura.jl" begin
    @testset "Basics" begin
        token = ENV["OURAKEY"]
        client = OuraClient(token, true)
        @test_throws "Can't get PersonalInfo for sandbox" getpersonalinfo(client)
        @test typeof(getdailycardiovascularage(client).data[1].day) == String
        @test typeof(getdailyactivity(client).data[1].score) == Int64
        @test typeof(getheartrate(client).data[1].bpm) == Int64
        @test typeof(getsleep(client).data[1].efficiency) == Int64
        @test typeof(getdailyreadiness(client).data[1].score) == Int64
        @test length(getdailyreadiness(client, string(today() - Day(5)), string(today() - Day(0))).data) == 5
    end
end
