CC = markdown
CFLAGS = 

DOCS = index.html

all: $(DOCS)

%.html: %.md
	$(CC) $^ > $@

.phoney: all clean
clean:
	rm $(DOCS)

