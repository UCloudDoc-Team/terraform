#!/bin/bash
function getdir(){
    for element in `ls $1`
    do  
        dir_or_file=$1"/"$element
        if [ -d $dir_or_file ]
        then 
            getdir $dir_or_file
        else
	    if test ${element%.*}  = "README"
	    then   
                base=${dir_or_file%/*}
            	mv $dir_or_file ${base}"/index.txt"
        else
        if test ${element##*.}  = "txt"
        then 
              base=${dir_or_file%.txt}
              mv $dir_or_file ${base}.$newext
        fi
	    fi
        fi  
    done
}
oldext="txt"   
newext="md"
root_dir=$(cd "$(dirname "$0")";pwd)
getdir  $root_dir
