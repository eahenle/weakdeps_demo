import IOCapture, Pkg

@info "TTFX"

println("Strong deps:")
IOCapture.capture() do
    Pkg.activate(tempname())
    Pkg.develop(; path="./StrongDeps")
end
using StrongDeps
@time StrongDeps.plot([1])
@time StrongDeps.plot([1;;])

println("Weak deps:")
IOCapture.capture() do
    Pkg.activate(tempname())
    Pkg.add("CairoMakie")
    Pkg.develop(; path="./WeakDeps")
end
using WeakDeps
@time WeakDeps.plot([1])
@time WeakDeps.plot([1;;])
