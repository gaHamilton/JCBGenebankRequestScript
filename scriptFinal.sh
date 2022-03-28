#!/bin/bash
FILE="lista.txt"
fin=0
SqFile="numeroSecuenciasArchivo.txt"
#var=$(wc -l $FILE |awk '{ print $1 }') 

for a in {0..729}
do
	line=$(head -n 1 lista.txt)
	if [ "$fin" -ne 0 ]; then
		break
	fi
	
	if [ -z "$line" ];then
		touch $SqFile
		fin=1
		echo "Archivo vacio"
		find ./archivos -type f | while read File;do
	        	count=$(grep '>' < "$File" | wc -l)
			echo "$count"'; secuencias '"$File" >> $SqFile
	        done
		find ./archivos -empty > archivosVacios.txt
		find ./archivos -empty -type f -delete
	else
	    echo $line
	    quer1='((((("'"$line"'") AND ( "cytochrome oxidase subunit I" OR "cytochrome c oxidase subunit I" OR "cytochrome oxidase subunit 1" OR "cytochrome c oxidase subunit 1") NOT ("complete genome")))))'
	    esearch -db nucleotide -query "$quer1" | efetch -format fasta > ./archivos/${line//[[:blank:]]/_}.txt
	    tail -n +2 "$FILE" > "$FILE.tmp" && mv "$FILE.tmp" "$FILE"
	fi
done

