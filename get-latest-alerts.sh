#!/bin/bash


wget -q https://www.zamg.ac.at/cms/de/geophysik/erdbeben/aktuelle-erdbeben/karten-und-listen || {
    echo "WGET don ZAMG nicht erfolgreich."
    exit 2
    }
year=$(date +%Y)
grep location karten-und-listen | grep ${year} | head -n 1 | awk -F'strong>' '{print $2 "; " $4 "; " $9 "; " $12}' | sed 's/<\///g'
rm karten-und-listen*
exit 0
