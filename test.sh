#! /bin/env bash

julia setup.jl

julia precompile.jl
julia import.jl
julia ttfx.jl
