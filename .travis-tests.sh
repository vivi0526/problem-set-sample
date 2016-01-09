#! /bin/bash

test -e ssshtest || wget -q https://raw.githubusercontent.com/ryanlayer/ssshtest/master/ssshtest
source ssshtest

set -o nounset

run check_dir ls projects/
assert_no_stdout

run check_bed file result.bed.gz
assert_in_stdout compressed
