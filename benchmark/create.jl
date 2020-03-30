include("suite.jl")

tune!(suite)
results = run(suite)
BenchmarkTools.save(params_file, params(suite))
BenchmarkTools.save(reference_results, results)
for (key, result) in results
    print(key)
    display(result)
end
