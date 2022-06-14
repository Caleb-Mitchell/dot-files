#!/bin/sh
# This script simply pastes my custom PEDAC template

TEXT="# ====PEDAC====
# Problem:
# (restate certain elements)(problem domain)
# - 
# Input:
# Output:
# Rules:
#   Explicit:
#   - 
#   (Questions?)
#   Implicit:
#   - 
# Mental Model:
# - 
# Examples:
# (test cases - 0, emptiness, boundary conditions, repitition/duplication,
# upper/lower case, data types, raise exceptions/report errors, special values)
# (edge cases - negative numbers, 0, extremely high values)
# - 
# Data Structure:
# - 
# Storm:
# - 
# Algorithm:
# - 
# C(ode, with intent):
# (Create any necessary Test Cases)"
printf '%s' "$TEXT" | xclip -i -selection clipboard
# xdotool key --clearmodifiers "backslash" "p" "2" "j" "A" "Escape"
