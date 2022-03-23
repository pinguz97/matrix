
BINARY=main
CC=g++
OPT=-O1
INCDIRS= .
SOURCE_DIR= .
#dependendencies flags
DEPFLAGS=-MP -MD
#includes
CPP_INCLUDES=$(foreach D,$(INCDIRS),-I$(D))
#compiler flags
CXXFLAGS=-Wall -Wextra -g $(CPP_INCLUDES) $(OPT) $(DEPFLAGS)
# source files
#CPPFILES=$(foreach(D,$(SOURCE_DIR),$(wildcard $(D)/*.cpp)))
CPPFILES=main.cpp matrix.cpp
# object and dependencies files
OBJECTS=$(patsubst %.cpp,%.o,$(CPPFILES))
DEPFILES=$(patsubst %.cpp,%.d,$(CPPFILES))


all: $(BINARY)
	$(info $$CPPFILES is [${CPPFILES}])

$(BINARY): $(OBJECTS)
	$(CC) -o $@ $^

%.o:%.cpp
	$(CC) -c $(CXXFLAGS) -Wa,-a,-ad -o $@ $< >$*.lst

clean:
	rm -rf $(BINARY) $(OBJECTS) $(DEPFILES) $(SOURCE_DIR)/*.lst *.swp

-include $(DEPFILES)