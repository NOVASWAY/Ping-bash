FILE="$1"
echo "Checking file integrity ............"
sha256sum "$FILE"
#example usage ./integ.sh file.txt
 
