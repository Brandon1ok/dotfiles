#!/bin/bash

# First we append the saved layout of worspace N to workspace M
i3-msg "workspace 2; append_layout ~/.i3/workspace_2.json"

# And finally we fill the containers with the programs they had
(urxvtc -e ncmpcpp &)
(sh coverspawn.sh &)

