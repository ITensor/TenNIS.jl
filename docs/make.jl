using TenNIS: TenNIS
using Documenter: Documenter, DocMeta, deploydocs, makedocs

DocMeta.setdocmeta!(
    TenNIS, :DocTestSetup, :(using TenNIS); recursive = true
)

include("make_index.jl")

makedocs(;
    modules = [TenNIS],
    authors = "ITensor developers <support@itensor.org> and contributors",
    sitename = "TenNIS.jl",
    format = Documenter.HTML(;
        canonical = "https://itensor.github.io/TenNIS.jl",
        edit_link = "main",
        assets = ["assets/favicon.ico", "assets/extras.css"],
    ),
    pages = ["Home" => "index.md", "Reference" => "reference.md"],
)

deploydocs(;
    repo = "github.com/ITensor/TenNIS.jl", devbranch = "main", push_preview = true
)
