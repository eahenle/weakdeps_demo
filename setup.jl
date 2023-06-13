import IOCapture, Pkg

IOCapture.capture() do 
    try
        Pkg.pkg"rm StrongDeps WeakDeps"
    catch
    end
end
