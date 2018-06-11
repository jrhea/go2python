PYTHON2=/usr/include/python2.7
PYTHON3=/Users/jonny/anaconda3/include/python3.6m/
PYTHON=$(PYTHON3)

OBJ=./obj
LIB=./lib

all: clean build

build:
	mkdir -p $(OBJ) $(LIB)
	go build -o $(LIB)/libpoint.a -buildmode=c-archive point.go
	swig -python -shadow point.i
	gcc -O2 -fPIC -c c_point.c  -o $(OBJ)/c_point.o
	gcc -O2 -fPIC -c point_wrap.c -I$(PYTHON) -o $(OBJ)/point_wrap.o
	ld -bundle -flat_namespace -undefined suppress -macosx_version_min 10.13.4 -o _point.so $(OBJ)/*.o -L$(LIB) -lpoint

clean:
	rm -f $(OBJ)/* $(LIB)/* ./*.so ./point.py ./point.pyc ./point_wrap.c
