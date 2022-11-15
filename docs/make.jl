##
using Documenter,pweb

makedocs(
    modules=[pweb],
    authors="Yi Zhang",
    sitename="pweb",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
    ),
    pages=[
        "Home" => "index.md",
)

deploydocs(;
    repo="github.com/deconvolution/pweb.git",
    branch = "gh-pages",
    target = "build",
    devbranch = "main",
    devurl = "dev",
    forcepush=true,
    push_preview =true
)
