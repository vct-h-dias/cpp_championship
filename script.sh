#!/bin/bash
g++ *.cpp -o compiler

clear
if [ $? -eq 0 ]; then
    echo -e "\e[32mSuccessfully compiled\e[0m"
else
    echo -e "\e[31mCompile error. Exit code: $?\e[0m"
    exit 1
fi

cat ./input.txt
echo -e ""

start_time=$(date +%s%3N)
./compiler < ./input.txt

exit_code=$?
end_time=$(date +%s%3N)
execution_time=$((end_time - start_time))

if [ $exit_code -eq 0 ]; then
    echo -e "\n\e[32mExit code: $exit_code\e[0m"
else
    echo -e "\n\e[31mExit code: $exit_code\e[0m"
fi

echo -e "\e[32mFinished in $execution_time ms\e[0m"
