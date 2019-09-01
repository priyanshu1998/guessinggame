#!/usr/bin/bash

let file_cnt=0

function get_the_counts(){
    for item in ./*
        do
            if [[ -f $item ]]
            then
                file_cnt=$(($file_cnt+1))
            fi
        done
}


get_the_counts
echo "${file_cnt}"

let usr_input=-1

while [[ $usr_input -ne $file_cnt ]]
do
    read usr_input

    if [[ $usr_input -eq $file_cnt ]]
    then
        echo "correct guess!!!"
    else
        if [[ $usr_input -lt $file_cnt ]]
        then
            echo "the correct count is greater"
        else
            echo "the correct count is lesser"
        fi
    fi
done