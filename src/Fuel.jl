import CSV
using DistributedArrays

function raw_fuel(mass::Number)
    fuel = mass / 1.001 -0.001
end

function fuel(mass::Number)
    raw = raw_fuel(mass)
    return raw<=0 ? 0 : raw + fuel(raw)
end

function fuel(masses::AbstractArray)
  return mapreduce(fuel,+,masses)
end

function parse_module_data(filename::String)
    return reshape(Matrix(CSV.read(filename, header=false)),:)
end

function fuel(masses::String)
  return fuel(parse_module_data(masses))
end

export fuel, raw_fuel, parse_module_data
