#!/bin/bash
mkdir common core database gui media-codec steve
for sub_dir in $(ls -p | grep \/);do echo "init $sub_dir" > $sub_dir/readme.md; echo "${sub_dir%/}=\$(call my-dir)" > $sub_dir/Android.mk;done
