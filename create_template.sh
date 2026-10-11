#!/usr/bin/env bash
# Creates templates/<slug>/template.yaml from a template name and a valmin1: code.
# The slug is the name in lowercase, with every run of other characters turned into a dash.
set -euo pipefail

if [[ $# -ne 2 ]]; then
	echo "usage: $0 <name> <code>" >&2
	exit 2
fi
name=$1
code=$2

if [[ $code != valmin1:* ]]; then
	echo "code must start with valmin1:" >&2
	exit 1
fi

slug=$(printf '%s' "$name" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g; s/^-+|-+$//g')
if [[ -z $slug ]]; then
	echo "name must contain a letter or a digit" >&2
	exit 1
fi

dir="$(dirname "$0")/templates/$slug"
if [[ -e $dir ]]; then
	echo "$dir already exists" >&2
	exit 1
fi

escaped=${name//\\/\\\\}
escaped=${escaped//\"/\\\"}
mkdir -p "$dir"
printf 'name: "%s"\ncode: %s\n' "$escaped" "$code" >"$dir/template.yaml"
echo "created $dir/template.yaml"
