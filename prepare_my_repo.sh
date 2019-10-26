#!/bin/bash

#Copyright 2019 Vincent DOUROUX

#MIT LICENCE
#Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
#The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#EDIT HERE:
USERNAME="firstname.lastname@epitech.eu"

#Don't EDIT if you don't know what you are doing
if [ -z $BLIH_PASSWD ]
then
    read -s -p "Password: " BLIH_PASSWD
fi

if [ -z "$1" ]
then
    echo 'Usage ./prepare_my_repo "REPO_NAME" "Optional_USERS"'
    echo 'Optionnal users: "User1@epitech.eu" "User2@epitech.eu "..."'
    exit;
else  
    blih -u $BLIH_USERNAME -t $BLIH_PASSWD repository create $1
    blih -u $BLIH_USERNAME -t $BLIH_PASSWD repository setacl $1 ramassage-tek r
fi

for ((i =2; i <= "$#"; i++)); do
    blih -u $BLIH_USERNAME -t $BLIH_PASSWD repository setacl $1 ${!i} rw
done

blih -u $BLIH_USERNAME -t $BLIH_PASSWD repository getacl $1
