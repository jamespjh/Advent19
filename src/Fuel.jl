import CSV

function raw_fuel(mass::Integer)
    fuel = mass ÷ 3 -2
end

function fuel(mass::Integer)
    raw = raw_fuel(mass)
    if raw<=0
        return 0
    end
    return raw + fuel(raw)
end

function fuel(masses::Array)
  return sum(fuel.(masses))
end

function fuel(masses::String)
  return fuel(reshape(Matrix(CSV.read(masses, header=false)),:))
end

export fuel, raw_fuel
