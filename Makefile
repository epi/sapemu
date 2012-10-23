sapemu.xex: sapemu.asx sapemu2.obx
	xasm $< /o:$@

sapemu2.obx: sapemu2.asx
	xasm $< /o:$@
   
clean:
	rm -f sapemu.xex sapemu2.obx
.PHONY: clean
