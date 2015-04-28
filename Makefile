SRC := \
    utils.cc\
    main.cc\


CXX=g++
RM=rm -f
CPPFLAGS=-g -std=c++11
LDFLAGS=-g -std=c++11
LDLIBS=

OBJS=$(SRC:.cc=.o)

all: hex

hex: $(OBJS)
	$(CXX) $(LDFLAGS) -o hex $(OBJS) $(LDLIBS)

depend: .depend

.depend: $(SRC)
	rm -f ./.depend
	$(CXX) $(CPPFLAGS) -MM $^>>./.depend;

clean:
	$(RM) $(OBJS)
	$(RM) hex

.cc.o:
	$(CXX) $(CPPFLAGS) -c -o $@ $<

dist-clean: clean
	$(RM) *~ .depend

include .depend

