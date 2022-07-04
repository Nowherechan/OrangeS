##################################################
# Makefile of pmtestx.asm (x=[1,2,3...])
##################################################

SRC:=a.asm
BIN:=$(subst .asm,.com,$(SRC))

.PHONY : $(BIN) everything

everything :
	sudo mount -o loop pm.img /mnt/floppy/
	sudo cp *.com /mnt/floppy/ -v
	sudo umount /mnt/floppy/

$(BIN) : $(SRC)
	nasm $< -o $@

clean : 
	@rm a.com
