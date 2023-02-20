NAME=draft-ietf-sidrops-rfc6482bis
MOD=RouteOriginAttestation-2022

.PHONY: all
all: drafts

.PHONY: drafts
drafts: $(NAME).txt

$(NAME).txt: $(NAME).xml
	xml2rfc $(NAME).xml --html --text --expand

.PHONY: mod
mod: $(MOD).py

$(MOD).py: $(MOD).asn
	pycrate_asn1compile.py -o $^ -i ../rpkimancer/rpkimancer/asn1/mod/modules/**/*.asn $<

clean:
	rm -f *.html *.txt draft-ietf-sidrops-rfc6482bis.exp.xml
