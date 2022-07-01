all: make_img_with_aa55 generate

F := boot.asm


make_img_with_aa55:
	@echo "times 510 db 0" > buildaimg.asm
	@echo "dw 0xaa55" >> buildaimg.asm
	@nasm buildaimg.asm -o buildaimg.bin
	@dd if=buildaimg.bin of=a.img bs=512 count=1 conv=notrunc
	@rm buildaimg*


generate:
	@nasm $F -o a.bin
	@dd if=a.bin of=a.img bs=512 count=1 conv=notrunc
	@rm a.bin

