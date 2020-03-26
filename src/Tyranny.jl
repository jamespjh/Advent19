import CSV

function tyranny(masses::Array)
  return(sum(masses .÷ 3 .- 2))
end

function tyranny(masses::String)
  return tyranny(reshape(Matrix(CSV.read(masses, header=false)),:))
end

export tyranny
