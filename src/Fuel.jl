import CSV

function fuel(mass::Integer)
    fuel = mass ÷ 3 -2
    return fuel<0 ? 0 : fuel
end

function fuel(masses::Array)
  return sum(fuel.(masses))
end

function fuel(masses::String)
  return fuel(reshape(Matrix(CSV.read(masses, header=false)),:))
end

export fuel
