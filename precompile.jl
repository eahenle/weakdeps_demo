import IOCapture, Pkg

@info "Precompilation Times"

println("Strong deps:")
IOCapture.capture() do 
    Pkg.activate(tempname())
    Pkg.develop(; path="./StrongDeps")
end
@time Pkg.precompile("StrongDeps")

println("Weak deps:")
IOCapture.capture() do 
    Pkg.activate(tempname())
    Pkg.add("CairoMakie")
    Pkg.develop(; path="./WeakDeps")
end
@time Pkg.precompile("WeakDeps")
