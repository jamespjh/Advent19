using Advent19, Test

@testset "Week 1 Puzzle 1" begin
  @test tyranny([14])==2
  @test tyranny([12])==2
  @test tyranny([1969])==654
  @test tyranny([100756])==33583
  @test tyranny([14,12,1969,100756])==2+2+654+33583
  source = joinpath(dirname(@__DIR__),"data","1_1.csv")
  @test tyranny(source) == 3382284
end
