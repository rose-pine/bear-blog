#!usr/bin/env sh

npx @rose-pine/build@latest -p _ -t template.css

for file in dist/*.css; do
	npx csso-cli -i "$file" -o "$file"
done
