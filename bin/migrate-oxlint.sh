#!/bin/zsh

# note: requires `jq` cli
# steps:
# - run oxlint migration tool
# - unset all dependencies in package.json that contain `eslint`
# - installs oxlint as npm dev dependency
# - remove eslint config file
# - updates package.json scripts for oxlint

npx --yes @oxlint/migrate
jq '.devDependencies |= with_entries(select(.key | test("eslint") | not))' package.json --tab > tmp && \
	mv tmp package.json
npm add -D oxlint
rm -f eslint.config.js
npm pkg set scripts.lint="oxlint ."
npm pkg set scripts.fix="oxlint . --fix"
npm update
