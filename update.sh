#!/bin/bash

ruby personal_rules.rb | jq . > personal_rules.json
