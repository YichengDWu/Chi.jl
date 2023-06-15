using Chi
using Documenter

DocMeta.setdocmeta!(Chi, :DocTestSetup, :(using Chi); recursive=true)

makedocs(;
    modules=[Chi],
    authors="MilkshakeForReal <yicheng.wu@ucalgary.ca> and contributors",
    repo="https://github.com/YichengDWu/Chi.jl/blob/{commit}{path}#{line}",
    sitename="Chi.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://YichengDWu.github.io/Chi.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/YichengDWu/Chi.jl",
    devbranch="main",
)
