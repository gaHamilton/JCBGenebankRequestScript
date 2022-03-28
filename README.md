# JCBGenebankRequestScript
Public repository for this script.

How to use it:
1. Add all the species in the 'lista.txt' file
2. Run script called 'scriptFinal.sh'

After running the script you'll find in the 'archivos' folder all the files, each file contains the FASTA sequences found for each species.
There will also be a new file called 'archivosVacios.txt' in the same folder which will tell you which species didn't have any FASTA sequences for the querie.
The other new file, called 'numeroSecuenciasArchivo.txt' will have the number of FASTA sequences for each of the files in the 'archivos' folder.

'lista.txt' file comes with some example species, to test it, just run the script.


In case there is an error, it could be that you need to install EDirect first, this can be found on their page:

https://www.ncbi.nlm.nih.gov/books/NBK179288/

OR do the following commands (these are the ones that appear on their page):

sh -c "$(curl -fsSL ftp://ftp.ncbi.nlm.nih.gov/entrez/entrezdirect/install-edirect.sh)"
echo "export PATH=\$PATH:\$HOME/edirect" >> $HOME/.bash_profile
export PATH=${PATH}:$HOME/edirect
