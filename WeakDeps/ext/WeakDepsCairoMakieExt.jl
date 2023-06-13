module WeakDepsCairoMakieExt # Should be same name as the file (just like a normal package)

using WeakDeps, CairoMakie

function WeakDeps.plot(c::Matrix)
    # Some functionality for plotting a contour here
end

end # module
