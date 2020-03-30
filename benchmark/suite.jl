using Distributed

@everywhere using Pkg
@everywhere Pkg.activate(".")

using Advent19, BenchmarkTools, DistributedArrays

here = @__DIR__
params_file = joinpath(here, "params.json")
reference_results = joinpath(here, "reference.json")
source = joinpath(dirname(here),"data","1_1.csv")
masses = parse_module_data(source)

calculate_fuel = @benchmarkable fuel(distribute(masses))

suite = BenchmarkGroup()
suite["fuel"] = calculate_fuel
