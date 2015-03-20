using SDT, Lexicon


Lexicon.save("docs/API.md", SDT)
run(`mkdocs build`)
