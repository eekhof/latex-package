# This script is meant to run on lueelap
## After first run, also run `texhash`-command

cd ./LaTeX-Workshop/dev # Clone git repo from https://github.com/James-Yu/LaTeX-Workshop

python pkgcommand.py -i ../../eekhof.cwl -o ../../ # Generate JSON for VSCode-Completion from provided CWL-file #TODO SEEMS to output some code, could be tried to be suppressed with &>/dev/null , but try if script then still executes properly

cd ..
cd ..

echo What is your first name?
read firstname
echo What is your surname?
read surname
echo What is your Matrikelnummer?
read matrikelnummer

# Test if file exists already, i. e. if texhash-command needs to be run after installation:
if test -f "$HOME/texmf/tex/latex/eekhof.sty"; then
    newinstall=false
else
    newinstall=true
fi


sed -e "s/FIRSTNAMEHERE/$firstname/g" -e "s/SURNAMEHERE/$surname/g" -e "s/MATRIKELNUMMERHERE/$matrikelnummer/g" eekhof.sty > ~/texmf/tex/latex/eekhof.sty # Installs package to proper place after inserting personal parameters
cp eekhof.json ~/texmf/cwl/eekhof.json


if $newinstall ; then
    echo "This seems to be the first install of this package, running texhash..."
    texhash
else
    echo "A version package has already been installed once, no need to run texhash."
fi
echo "Thank you $firstname $surname. The Package has been successfully installed."

# xdg-open ~/texmf/tex/latex/eekhof.sty # Opens installed package in preferred text editor