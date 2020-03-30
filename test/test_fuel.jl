@testset "Day 1 Puzzle 1" begin
  @test raw_fuel(14)==2
  @test raw_fuel(12)==2
  @test raw_fuel(1969)==654
  @test raw_fuel(100756)==33583
  @test raw_fuel(0)==0
end

@testset "Day 1 Puzzle 2" begin
    @test fuel(14) == 2
    @test fuel(1969) == 966
    @test fuel(100756) == 50346
    source = joinpath(dirname(@__DIR__),"data","1_1.csv")
    @test fuel(source) == 5070541
end
