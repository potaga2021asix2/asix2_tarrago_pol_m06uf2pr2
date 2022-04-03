#!/bin/bash

echo -n "Nom de la carpeta a la que vols ubicar-te "
read carpeta

cd $carpeta

i=0

for nom_fitxer in *
do 
	if [[ -r $nom_fitxer ]] && [[ -s $nom_fitxer ]]
	then 
		echo $nom_fitxer
	fi
done

function compte {

    for nom_fitxer in *
    do 
	    if [[ -r $nom_fitxer ]] && [[ -s $nom_fitxer ]]
	    then 
            i=$[i + 1]
	    fi
    done
}

compte
echo "El número de fitxers que cumpleixen les condicions indicades son: $i"

exit 0
