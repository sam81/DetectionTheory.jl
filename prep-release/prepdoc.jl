using SDT, Lexicon
include("extract_docstrings.jl")

#Lexicon.save("docs/API.md", SDT)
extract_docstrings(["../src/SDT.jl"], "../docs/API.md")
cd("../")
run(`mkdocs build`)
cd("prep-release")
