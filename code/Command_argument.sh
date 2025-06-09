#!/usr/bin/env bash 


# OPTSTRING: h (no arg), f: (needs arg), v: (needs arg)
while getopts "hf:v:" opt; do
  case "$opt" in
    h)
      echo "Usage: $0 -f filename -v version"
      exit 0
      ;;
    f)
      echo "File option used. Value: $OPTARG"
      ;;
    v)
      echo "Version option used. Value: $OPTARG"
      #echo "\$OPTARG is $OPTARG"
      ;;
    \?)
      echo "Invalid option: -$OPTARG"
      exit 1
      ;;
  esac
done

# Remaining positional args (after options)
shift $((OPTIND - 1))
echo "Positional arguments: $@"