import CSV

function fuel(mass::Integer)
    return mass ÷ 3 -2
end

function fuel(masses::Array)
  return sum(fuel.(masses))
end

function fuel(masses::String)
  return fuel(reshape(Matrix(CSV.read(masses, header=false)),:))
end

export fuel
