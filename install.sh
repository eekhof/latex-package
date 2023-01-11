# This script is meant to run on lueelap
## After first run, also run `texhash`-command

cd ./LaTeX-Workshop/dev # Clone git repo from https://github.com/James-Yu/LaTeX-Workshop

python pkgcommand.py -i ../../eekhof.cwl -o ../../

cd ..
cd ..

cp eekhof.sty ~/texmf/tex/latex/eekhof.sty
cp eekhof.json ~/texmf/cwl/eekhof.json