using Documenter, Slurm

makedocs(;
    modules=[Slurm],
    format=Documenter.HTML(),
    pages=[
        "Home" => "index.md",
    ],
    repo="https://github.com/singularitti/Slurm.jl/blob/{commit}{path}#L{line}",
    sitename="Slurm.jl",
    authors="Qi Zhang <singularitti@outlook.com>",
    assets=String[],
)

deploydocs(;
    repo="github.com/singularitti/Slurm.jl",
)
