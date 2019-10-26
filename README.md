# EPITECH BLIH SCRIPT

## Why did I do this script?

Because it's really anoying to do everytime the same commands and doing my password up to 5 times

## Adding your epitech Mail:

Replace FirstName and LastName:
```bash
USERNAME="firstname.lastname@epitech.eu"
```

## I don't want to do put my password. Even one time. How can I do?

$BLIH_PASSWORD can be set in .bashrc
Replace MY_PASSWD and do: 
```bash
echo `echo -n "toto" | sha512sum | cut -f1 -d' '`
```
Then copy the output to a variable named $BLIH_PASSWD like this (if your password is toto):
```bash
export BLIH_PASSWD="10e06b990d44de0091a2113fd95c92fc905166af147aa7632639c41aa7f26b1620c47443813c605b924c05591c161ecc35944fc69c4433a49d10fc6b04a33611"`
```

## OK, But it's really difficult. Can you help me?

Sorry, you will have to put your password. But the good news is you will have to do it only one time.

## License:

MIT License

Copyright (c) 2019 Vincent DOUROUX

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
