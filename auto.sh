#!/bin/bash
mkdir 0x02-python-import_modules
git add .
git commit -m "Added the folders for import modules"
mkdir 0x04-python-more_data_structures
git add .
git commit -m "Added the folders for more data structures"
git push
cat << EOF > ./0x02-python-import_modules/0-add.py
#!/usr/bin/python3

if name == "main":
    """Print the sum of 1 and 2."""
    from add_0 import add

    a = 1
    b = 2
    print("{} + {} = {}".format(a, b, add(a, b)))
EOF
cat << EOF > ./0x02-python-import_modules/1-calculation.py
#!/usr/bin/python3

if name == "main":
    """Print the sum, difference, multiple and quotient of 10 and 5."""
    from calculator_1 import add, sub, mul, div

    a = 10
    b = 5

    print("{} + {} = {}".format(a, b, add(a, b)))
    print("{} - {} = {}".format(a, b, sub(a, b)))
    print("{} * {} = {}".format(a, b, mul(a, b)))
    print("{} / {} = {}".format(a, b, div(a, b)))
EOF
cat << EOF > ./0x02-python-import_modules/2-args.py
#!/usr/bin/python3

if name == "main":
    """Print the number of and list of arguments."""
    import sys

    count = len(sys.argv) - 1
    if count == 0:
        print("0 arguments.")
    elif count == 1:
        print("1 argument:")
    else:
        print("{} arguments:".format(count))
    for i in range(count):
        print("{}: {}".format(i + 1, sys.argv[i + 1]))
EOF
cat << EOF > ./0x02-python-import_modules/3-infinite_add.py
#!/usr/bin/python3

if name == "main":
    """Print the addition of all arguments."""
    import sys

    total = 0
    for i in range(len(sys.argv) - 1):
        total += int(sys.argv[i + 1])
    print("{}".format(total))
EOF
cat << EOF > ./0x02-python-import_modules/4-hidden_discovery.py
#!/usr/bin/python3

if name == "main":
    """Print all names defined by hidden_4 module."""
    import hidden_4

    names = dir(hidden_4)
    for name in names:
        if name[:2] != "":
            print(name)
EOF
cat << EOF > ./0x02-python-import_modules/5-variable_load.py
#!/usr/bin/python3

if __name == "main":
    """Print the value of variable a from variable_load_5."""
    from variable_load_5 import a

    print(a)
EOF
cat << EOF > ./0x02-python-import_modules/README.md
This is a project on importing modueles in python
And im enjoying it so much
EOF
chmod u+x *
chmod u-x README.md
git add .
git commit -m "Completed project on importing modules"
git push
