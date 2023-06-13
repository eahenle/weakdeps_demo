import IOCapture, Pkg

IOCapture.capture() do 
    Pkg.pkg"rm StrongDeps WeakDeps"
end
