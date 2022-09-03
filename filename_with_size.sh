# Filename with size
# Make Bourne Shell program that will print filenames and file sizes separated with comma (,) from the current directory.

#!/bin/sh
tiedostot()
{
TIEDOT=$(ls -l | awk '{print $9","$5}')
echo "\n$TIEDOT"
}
tiedostot
