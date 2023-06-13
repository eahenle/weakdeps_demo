module WeakDepsCairoMakieExt # Should be same name as the file (just like a normal package)

using WeakDeps, CairoMakie

function WeakDeps.f()
    # implementation of function from WeakDeps w/ massive dependency
end

end # module
