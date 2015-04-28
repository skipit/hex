SRC := \
    utils.cc \


CC=gcc
CXX=g++
RM=rm -f
CPPFLAGS=-g
LDFLAGS=-g
LDLIBS=

SRCS=utils.cc main.cc
OBJS=$(subst .cc,.o,$(SRCS))

all: hex

hex: $(OBJS)
	$(CXX) $(LDFLAGS) -o hex $(OBJS) $(LDLIBS)

depend: .depend

.depend: $(SRCS)
	rm -f ./.depend
	$(CXX) $(CPPFLAGS) -MM $^>>./.depend;

clean:
	$(RM) $(OBJS)

dist-clean: clean
	$(RM) *~ .depend

include .depend

