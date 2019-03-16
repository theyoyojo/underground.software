CC = markdown
CFLAGS = 

DOCS = $(patsubst %.md, %.html, $(shell find . -name '*.md'))

all: $(DOCS)
	echo $(DOCS)

%.html: %.md
	$(CC) $^ > $@

.phoney: all clean
clean:
	rm $(DOCS)

