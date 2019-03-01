sayings=()
while read line
do
  sayings+=("$line")
done < ./duck_sayings.txt

echo "🦆 What can I help you with?"
printf "> "
while read line
do
  rand=$[$RANDOM % ${#sayings[@]}]
  echo "🦆 ${sayings[$rand]}"
  printf "> "
done < "${1:-/dev/stdin}"
