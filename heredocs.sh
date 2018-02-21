#!/bin/bash

read -r -d '' FILE_TEMPLATE <<"EOF"
<?xml version="1.0" encoding="UTF-8"?>
<html>
  <head></head>
  <body>Hello %NAME%! %MESSAGE%</body>
</html>
EOF


name="Bob"
message="How are you?"

file_contents=$(sed -e "s|%NAME%|${name}|" -e "s|%MESSAGE%|${message}|" <<< "${FILE_TEMPLATE}")
temp_file=$(mktemp $TMPDIR/$(uuidgen).html)

echo "${file_contents}" > ${temp_file}
printf "File written to ${temp_file}! Opening...\n"
sleep 1
open ${temp_file}
