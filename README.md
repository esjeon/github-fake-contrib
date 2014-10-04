github-fake-contrib
===================

A shell script that creates a git repo with fake contributions.


Usage
-----

    ./generate number-of-days

The script may fail if run without arguments or with invalid argument.

The script also reads RANDMIN and RANDMAX environment variables to adjust the range of random numbers. The default is from 1 to 5.

I recomment running this on **TMPFS**, because of the sheer amount of writes this script generates.
