#!/bin/bash

while true; do
    echo "Enter New Common Password (15 char):"
    read password
    case ${#password} in
        0)
        echo 'Common Password cannot be blank, please try again'
        continue;;
        15)
        break;;
        *)
        echo 'Common Password must be 15 characters long'
        continue;;
    esac
done

while true; do
    echo "Enter New VM Password (15 char):"
    read vmpassword
    case ${#vmpassword} in
        0)
        echo 'VM Password cannot be blank, please try again'
        continue;;
        15)
        break;;
        *)
        echo 'VM Password must be 15 characters long'
        continue;;
    esac
done

while true; do
    echo "Enter New Rcholine Password (8 char)"
    read rchopassword
    case ${#rchopassword} in
        0)
        echo 'Common Password cannot be blank, please try again'
        continue;;
        8)
        break;;
        *)
        echo 'Common Password must be 15 characters long'
        continue;;
    esac
done

while true; do
    echo "Enter New Optools Password (15 char):"
    read optpassword
    case ${#optpassword} in
        0)
        echo 'Common Password cannot be blank, please try again'
        continue;;
        15)
        break;;
        *)
        echo 'Common Password must be 15 characters long'
        continue;;
    esac
done


echo $password
echo $vmpassword
echo $rchopassword
echo $optpassword