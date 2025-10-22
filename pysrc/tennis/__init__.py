from juliacall import Main as jl

jl.seval("using TenNIS: TenNIS")

def greens_function():
    return jl.TenNIS.greens_function()
