#!/bin/bash

SRC_FILE=./personal_rules.rb
DST_FILE=./personal_rules.json

ruby $SRC_FILE | jq . > $DST_FILE && cp $DST_FILE ~/.config/karabiner/assets/complex_modifications/

TARGET="$HOME/.config/karabiner/karabiner.json"
QUERY=".profiles[0].complex_modifications.rules = $(jq '.rules' $DST_FILE)"

cat <<< "$(jq "$QUERY" < $TARGET)" > $TARGET
