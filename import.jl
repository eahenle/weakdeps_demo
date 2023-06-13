import IOCapture, Pkg

@info "Import Times"

println("Strong deps:")
IOCapture.capture() do
    Pkg.activate(tempname())
    Pkg.develop(; path="./StrongDeps")
end
@time using StrongDeps

println("Weak deps:")
IOCapture.capture() do
    Pkg.activate(tempname())
    Pkg.add("CairoMakie")
    Pkg.develop(; path="./WeakDeps")
end
@time using WeakDeps
