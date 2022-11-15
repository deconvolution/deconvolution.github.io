using Documenter,pweb

makedocs(
    sitename = "pweb",
    format = Documenter.HTML(),
    modules = [pweb]
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
#=deploydocs(
    repo = "<repository url>"
)=#
