#!/bin/bash
dir=/home/files/
  for file in $dir/*.xls; do
    fn=$(basename ${file})
    fn=${fn%.*}
    mkdir -p $dir/converted
    xls2csv $file > $dir/converted/${fn}.csv
done
