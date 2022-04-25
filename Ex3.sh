#!/bin/bash
bash_only() {
echo 'Show me your file!'
read file

if [ "$file" == "Home/.bashrc" ]
then
        cat $file
else
        echo "with bash, you are at home"
fi
}
bash_only 

