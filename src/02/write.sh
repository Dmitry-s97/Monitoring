#!/bin/bash

echo "Записать данные в файл? y-? n-?"

read VAR

if [ "$VAR" = "y" ];
then
touch "$(date +"%Y_%m_%d_%H_%M_%S").status"
sh show.sh > "$(date +"%Y_%m_%d_%H_%M_%S").status"
fi