sayings=()
sayings+=("Mhmm")
sayings+=("OK")
sayings+=("tell me more.")
sayings+=("tell me more.")
sayings+=("Carry on")
sayings+=("Right.")
sayings+=("...")
sayings+=("what would that require?")
sayings+=("would that work?")

echo "🦆 What can I help you with?"
printf "> "
while read line
do
  rand=$[$RANDOM % ${#sayings[@]}]
  echo "🦆 ${sayings[$rand]}"
  printf "> "
done < "${1:-/dev/stdin}"
