#!/bin/bash

while true
do
    echo "1. Greet User"
    echo "2. Add Two Integers"
    echo "3. Check Even or Odd"
    echo "4. Exit"
    echo "Enter your choice:"
    read choice

    case $choice in
        1)
            echo "Enter your name:"
            read name
            echo "Hello, $name!"
            ;;
        2)
            echo "Enter first integer:"
            read a
            echo "Enter second integer:"
            read b
            sum=$((a + b))
            echo "Sum = $sum"
            ;;
        3)
            echo "Enter an integer:"
            read num
            if [ $((num % 2)) -eq 0 ]; then
                echo "Even"
            else
                echo "Odd"
            fi
            ;;
        4)
            echo "Exiting..."
            exit
            ;;
        *)
            echo "Invalid choice"
            ;;
    esac
done
