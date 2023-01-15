# This script is meant to run on lueelap
## After first run, also run `texhash`-command

cd ./LaTeX-Workshop/dev # Clone git repo from https://github.com/James-Yu/LaTeX-Workshop

python pkgcommand.py -i ../../eekhof.cwl -o ../../

cd ..
cd ..

cp eekhof.sty ~/texmf/tex/latex/eekhof.sty
cp eekhof.json ~/texmf/cwl/eekhof.json

echo "Successfully installed. Remember to change the First- and Surname, as well as the Matrikelnummer in ~/texmf/tex/latex/eekhof.sty . The directory will be opened now."
xdg-open ~/texmf/tex/latex/eekhof.sty