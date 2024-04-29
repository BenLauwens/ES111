import Pkg
io = IOBuffer()
Pkg.activate(io = io)
deps = [pair.second for pair in Pkg.dependencies()]
direct_deps = filter(p -> p.is_direct_dep, deps)
pkgs = [x.name for x in direct_deps]
if "NativeSVG" ∉ pkgs
    Pkg.add(url="https://github.com/BenLauwens/NativeSVG.jl.git")
end
using NativeSVG