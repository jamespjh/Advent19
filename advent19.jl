#!/usr/bin/env julia

import Pkg
Pkg.activate(@__DIR__)
using Advent19

print("Day 1 puzzle 1: ", fuel(joinpath(@__DIR__,"data","1_1.csv")))
