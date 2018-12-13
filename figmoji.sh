#! /usr/bin/env bash

# Uses figlet to create generate a letter out of characters
# then replaces those characters with whatever you want.
# I made this so that I could quickly create cancerous slack messages

# parsing params passed in
# t is the text to create, e is the emoji to use
params=($1);
t=${params[@]/${params[${#params[@]}-1]}/}
e=${params[${#params[@]}-1]}

# prepending a period to the figlet text so
# that slack doesn't use the jumbo emojis and mess up the formatting
{ echo -n "."; /usr/local/bin/figlet -f banner $t; } | sed -e 's/ /      /g' | sed -e s/\#/$e/g