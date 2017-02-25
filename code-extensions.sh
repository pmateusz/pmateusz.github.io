#!\bin\sh

for $extension in donjayamanne.python \
    mathiasfrohlich.latexcompile \
    ajshort.latex-preview \
    alefragnani.Bookmarks \
    ms-vscode.cpptools \
    vector-of-bool.vscode-cmake-tools
do
    code --install-extension $extension
done