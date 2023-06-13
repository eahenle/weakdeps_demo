module StrongDeps

using CairoMakie

function f()
    # something that requires a large dependency (e.g. CairoMakie)
end

export f

end # module
