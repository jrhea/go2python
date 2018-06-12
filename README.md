# go2python
Demonstrate how to access and modify native Go structs in python

# prereqs

install swig (osx)

```
brew install osx

```

# setup

Just make sure that the PYTHON variable in the Makefile points to the include path on your machine.

# build
```
make all
```

# run test
```
python test.py
```

# output
```
$ python test.py
let's see if we can work with go structs

create a new struct:
(1.0, 2.0, 3.0)
scale the values by 10:
Print from inside Go: &{x:10 y:20 z:30}
(10.0, 20.0, 30.0)
```
