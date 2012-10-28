sapemu.atr: sapemu.xex
	xedisk n $@ -f mydos && \
	xedisk write-dos $@ -D 450 && \
	xedisk a $@ $<

sapemu.xex: sapemu.asx sapemu2.obx
	xasm $< /o:$@

sapemu2.obx: sapemu2.asx
	xasm $< /o:$@
   
clean:
	rm -f sapemu.atr sapemu.xex sapemu2.obx
.PHONY: clean
