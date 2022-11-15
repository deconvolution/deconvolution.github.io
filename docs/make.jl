##
using Documenter,pweb

makedocs(
    modules=[personal_page],
    authors="Yi Zhang",
    sitename="Yi Zhang",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
    ),
    pages=[
        "Home" => "index.md"
        ],
)

deploydocs(;
    repo="github.com/deconvolution/personal_page.git",
    branch = "gh-pages",
    target = "build",
    devbranch = "main",
    devurl = "dev",
    forcepush=true,
    push_preview =true
)
