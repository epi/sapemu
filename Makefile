all: sapemu.xex
.PHONY: all

dist: sapemu-0.4.zip
.PHONY: dist

sapemu-0.4.zip: sapemu.atr sapemu.xex README.html
	zip -9 $@ $^

README.html: README.md
	markdown $< >$@

sapemu.atr: sapemu.xex
	xedisk n $@ -f mydos && \
	xedisk write-dos $@ -D 450 && \
	xedisk a $@ $<

sapemu.xex: sapemu.asx sapemu2.obx
	xasm $< /o:$@

sapemu2.obx: sapemu2.asx
	xasm $< /o:$@

clean:
	rm -f sapemu-0.4.zip README.html sapemu.atr sapemu.xex sapemu2.obx
.PHONY: clean
