INC=$(shell pybind11-config --includes)
SUF=$(shell python3.8-config --extension-suffix)
TGT=likes$(SUF)

all: $(TGT)


$(TGT): likes.cc
	g++ -O3 -Wall -shared -std=c++11 -fPIC $(INC) likes.cc -o $@

clean:
	rm -f $(TGT)
