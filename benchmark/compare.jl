include("suite.jl")

loadparams!(suite, BenchmarkTools.load(params_file)[1], :evals, :samples);
old_results = BenchmarkTools.load(reference_results)[1]
new_results = run(suite)


for (key, new, old) in zip(keys(new_results), values(new_results), values(old_results))
    println()
    println("Comparing benchmark results for ",key,".")
    println()
    println("New:")
    display(new)
    println()
    println()
    println("Old:")
    display(old)
    println()
    println()
    println("Comparison: ")
    display(judge(median(new), median(old)))
    println()
end
