@testset "Day 1 Puzzle 1" begin
  @test fuel(14)==2
  @test fuel(12)==2
  @test fuel(1969)==654
  @test fuel(100756)==33583
  @test fuel(0)==0
  @test fuel([14,12,1969,100756])==2+2+654+33583
  source = joinpath(dirname(@__DIR__),"data","1_1.csv")
  @test fuel(source) == 3382284
end
