while IFS= read -r LINE; do
    echo $LINE | bin/write-auth.sh >> auth
done < ./users
