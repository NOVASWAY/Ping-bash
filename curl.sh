SCRIPT="${0}"
TARGET="${1}"
echo "$(curl ${TARGET} -v)"
#Example usage ./curl.sh google.com
