org	0100h

	mov	ax, 0B800h
	mov	gs, ax
	mov	ah, 03h				; 0000: 黑底    1111: 白字 [0011]: 青色
	mov	al, 'Z'
	mov	[gs:((80 * 0 + 39) * 2)], ax	; 屏幕第 0 行, 第 39 列。

	jmp	$				; 到此停住
