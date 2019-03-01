PROJECT_ROOT="$(dirname "$0")"
cat "$PROJECT_ROOT/duck_ascii_art.txt"

sayings=()
while read line
do
  sayings+=("$line")
done < "$PROJECT_ROOT/duck_sayings.txt"

echo "🦆 What can I help you with?"
printf "> "
while read line
do
  rand=$[$RANDOM % ${#sayings[@]}]
  echo "🦆 ${sayings[$rand]}"
  printf "> "
done < "${1:-/dev/stdin}"
echo "🦆 hope that works!"
