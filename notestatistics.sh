#!/bin/bash
. ./.diaryrc
function getstatistics {
  date=`find $WAY -iname "*.md"| xargs -L 1 basename | sort -k 1.11 -r | head -1 | cut -d "." -f 1 | cut -d "_" -f 3,4`
  size=`find ~/diary -iname "*.md" -exec ls -s {} \; |sort -r | head -1| xargs -0 basename`
  echo "Total count of notes: $(find $WAY -type f | wc -l)"
  echo "Date of the last creation: $date"
  
  echo "The biggest file: $size"
}
