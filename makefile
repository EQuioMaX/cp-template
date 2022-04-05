# Set compiler to g++ or clang++ as needed
CXX := g++
CXXFLAGS := -g -O2 -Wall -std=c++20
LDFLAGS := 

ifeq ($(CXX), clang++)
# Use the LLD linker
LDFLAGS := -fuse-ld=lld
endif

ERRORS = errors.txt
OUTPUT = output.txt

PROG = lab02
MAIN = main
LIB = cp
LIBPATH = ./cp-0.1.0-Linux

run: $(PROG)		
	./$(PROG) > $(OUTPUT)

$(PROG): $(MAIN).cpp
	$(CXX) -L$(LIBPATH)/lib/ $(MAIN).cpp -I$(LIBPATH)/include/ \
		$(CXXFLAGS) $(LDFLAGS) -l$(LIB) -o $(PROG) \
		> $(ERRORS) 2>&1


clean: 
	rm $(PROG)

.phony: run
