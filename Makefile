NAME=draft-spaghetti-sidrops-rfc6482bis

.PHONY: all
all: drafts

.PHONY: drafts
drafts: $(NAME).txt

$(NAME).txt: $(NAME).xml
	xml2rfc $(NAME).xml --html --text --expand

clean:
	rm -f *.html *.txt draft-spaghetti-sidrops-rfc6482bis.exp.xml
