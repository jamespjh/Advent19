import CSV

function fuel(masses::Array)
  return(sum(masses .÷ 3 .- 2))
end

function fuel(masses::String)
  return fuel(reshape(Matrix(CSV.read(masses, header=false)),:))
end

export fuel
