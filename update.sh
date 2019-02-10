#!/bin/bash

ruby personal_rules.rb | jq . > personal_rules.json \
  && cp personal_rules.json ~/.config/karabiner/assets/complex_modifications/
