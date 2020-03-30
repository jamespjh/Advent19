using Advent19, BenchmarkTools

here = @__DIR__
params_file = joinpath(here, "params.json")
reference_results = joinpath(here, "reference.json")

calculate_fuel = @benchmarkable(
    fuel(source),
    setup = begin
        source = joinpath(dirname(here),"data","1_1.csv")
        masses = parse_module_data(source)
    end
)

suite = BenchmarkGroup()
suite["fuel"] = calculate_fuel
