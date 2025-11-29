	.cpu arm7tdmi
	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"mode4.c"
	.text
	.align	2
	.global	setPixel4
	.syntax unified
	.arm
	.type	setPixel4, %function
setPixel4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L5
	rsb	r1, r1, r1, lsl #4
	ldr	ip, [r3]
	add	r1, r0, r1, lsl #4
	bic	r1, r1, #1
	ldrh	r3, [ip, r1]
	tst	r0, #1
	andne	r3, r3, #255
	biceq	r3, r3, #255
	orrne	r3, r3, r2, lsl #8
	orreq	r2, r2, r3
	strhne	r3, [ip, r1]	@ movhi
	strheq	r2, [ip, r1]	@ movhi
	bx	lr
.L6:
	.align	2
.L5:
	.word	videoBuffer
	.size	setPixel4, .-setPixel4
	.align	2
	.global	drawRect4
	.syntax unified
	.arm
	.type	drawRect4, %function
drawRect4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #20
	ldrb	ip, [sp, #56]	@ zero_extendqisi2
	ldrb	lr, [sp, #56]	@ zero_extendqisi2
	subs	r7, r3, #0
	orr	ip, ip, lr, lsl #8
	strh	ip, [sp, #14]	@ movhi
	ble	.L7
	sub	r3, r2, #1
	and	r10, r0, #1
	add	r0, r3, r0
	asr	r3, r3, #1
	orr	r3, r3, #16777216
	str	r3, [sp, #4]
	rsb	r1, r1, r1, lsl #4
	and	r3, r2, #1
	mov	fp, r2
	mov	r5, #0
	ldr	r6, .L19
	ldr	r9, .L19+4
	str	r3, [sp]
	add	r4, r0, r1, lsl #4
	rsb	r8, r2, #1
	b	.L13
.L18:
	mov	r2, ip
	mov	r0, #3
	add	r1, sp, #14
	mov	lr, pc
	bx	r9
	ldr	r3, [sp]
	cmp	r3, #0
	bne	.L17
.L11:
	add	r5, r5, #1
	cmp	r7, r5
	add	r4, r4, #240
	beq	.L7
.L13:
	ldr	r0, [r6]
	add	r1, r8, r4
	bic	r1, r1, #1
	asr	r3, fp, #1
	add	ip, r0, r1
	cmp	r10, #0
	orr	r3, r3, #16777216
	add	r2, ip, #2
	beq	.L18
	ldrb	ip, [sp, #56]	@ zero_extendqisi2
	ldrh	r3, [r0, r1]
	and	r3, r3, #255
	orr	r3, r3, ip, lsl #8
	strh	r3, [r0, r1]	@ movhi
	ldr	r3, [sp, #4]
	mov	r0, #3
	add	r1, sp, #14
	mov	lr, pc
	bx	r9
	ldr	r3, [sp]
	cmp	r3, #0
	bne	.L11
	ldr	r1, [r6]
	ldrb	r3, [sp, #56]	@ zero_extendqisi2
	ldrh	r2, [r1, r4]
	add	r5, r5, #1
	and	r2, r2, #65280
	orr	r3, r3, r2
	cmp	r7, r5
	strh	r3, [r1, r4]	@ movhi
	add	r4, r4, #240
	bne	.L13
.L7:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L17:
	ldr	r1, [r6]
	ldrb	r3, [sp, #56]	@ zero_extendqisi2
	ldrh	r2, [r1, r4]
	and	r2, r2, #65280
	orr	r3, r3, r2
	strh	r3, [r1, r4]	@ movhi
	b	.L11
.L20:
	.align	2
.L19:
	.word	videoBuffer
	.word	DMANow
	.size	drawRect4, .-drawRect4
	.align	2
	.global	fillScreen4
	.syntax unified
	.arm
	.type	fillScreen4, %function
fillScreen4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, r0
	push	{r4, r5, lr}
	sub	sp, sp, #20
	strb	ip, [sp, #7]
	ldrb	lr, [sp, #7]	@ zero_extendqisi2
	ldrb	ip, [sp, #7]	@ zero_extendqisi2
	lsl	ip, ip, #16
	orr	ip, ip, lr, lsl #24
	ldrb	lr, [sp, #7]	@ zero_extendqisi2
	ldrb	r5, [sp, #7]	@ zero_extendqisi2
	ldr	r2, .L23
	orr	ip, ip, r5
	orr	ip, ip, lr, lsl #8
	mov	r0, #3
	ldr	r3, .L23+4
	ldr	r2, [r2]
	ldr	r4, .L23+8
	add	r1, sp, #12
	str	ip, [sp, #12]
	mov	lr, pc
	bx	r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	videoBuffer
	.word	16796416
	.word	DMANow
	.size	fillScreen4, .-fillScreen4
	.align	2
	.global	drawImage4
	.syntax unified
	.arm
	.type	drawImage4, %function
drawImage4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r8, r3, #0
	ble	.L25
	mov	r5, #0
	mov	fp, r2
	mov	r6, r5
	rsb	r1, r1, r1, lsl #4
	add	r0, r0, r0, lsr #31
	lsl	r4, r1, #3
	add	r4, r4, r0, asr #1
	add	r7, r2, r2, lsr #31
	ldr	r10, .L30
	ldr	r9, .L30+4
	lsl	r4, r4, #1
	asr	r7, r7, #1
.L27:
	ldr	r2, [r10]
	ldr	ip, [sp, #40]
	add	r1, r5, r5, lsr #31
	bic	r1, r1, #1
	add	r2, r2, r4
	mov	r3, r7
	mov	r0, #3
	add	r1, ip, r1
	add	r6, r6, #1
	mov	lr, pc
	bx	r9
	cmp	r8, r6
	add	r4, r4, #240
	add	r5, r5, fp
	bne	.L27
.L25:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L31:
	.align	2
.L30:
	.word	videoBuffer
	.word	DMANow
	.size	drawImage4, .-drawImage4
	.align	2
	.global	drawFullscreenImage4
	.syntax unified
	.arm
	.type	drawFullscreenImage4, %function
drawFullscreenImage4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r2, .L34
	mov	r1, r0
	ldr	r4, .L34+4
	mov	r3, #19200
	mov	r0, #3
	ldr	r2, [r2]
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L35:
	.align	2
.L34:
	.word	videoBuffer
	.word	DMANow
	.size	drawFullscreenImage4, .-drawFullscreenImage4
	.align	2
	.global	drawChar4
	.syntax unified
	.arm
	.type	drawChar4, %function
drawChar4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	ip, .L48
	ldr	r6, .L48+4
	rsb	r1, r1, r1, lsl #4
	mov	r5, r3
	add	r2, r2, r2, lsl #1
	add	r1, r0, r1, lsl #4
	sub	r6, r6, r0
	ldr	r3, [ip]
	add	r6, r6, r2, lsl #4
	add	lr, r1, #1920
	add	r7, r0, #6
.L37:
	add	r1, r0, r6
	sub	r2, lr, #1920
	and	r4, r0, #1
	b	.L40
.L38:
	add	r2, r2, #240
	cmp	r2, lr
	add	r1, r1, #6
	beq	.L47
.L40:
	ldrb	ip, [r1]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L38
	bic	r8, r2, #1
	ldrh	ip, [r3, r8]
	cmp	r4, #0
	andne	ip, ip, #255
	biceq	ip, ip, #255
	add	r2, r2, #240
	orrne	ip, ip, r5, lsl #8
	orreq	ip, r5, ip
	cmp	r2, lr
	strh	ip, [r3, r8]	@ movhi
	add	r1, r1, #6
	bne	.L40
.L47:
	add	r0, r0, #1
	cmp	r0, r7
	add	lr, r2, #1
	bne	.L37
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L49:
	.align	2
.L48:
	.word	videoBuffer
	.word	fontdata_6x8
	.size	drawChar4, .-drawChar4
	.align	2
	.global	drawString4
	.syntax unified
	.arm
	.type	drawString4, %function
drawString4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r2
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L50
	mov	r7, r1
	mov	r6, r3
	mov	r4, r0
.L52:
	mov	r0, r4
	mov	r3, r6
	mov	r1, r7
	bl	drawChar4
	ldrb	r2, [r5, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	add	r4, r4, #6
	bne	.L52
.L50:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
	.size	drawString4, .-drawString4
	.align	2
	.global	flipPages
	.syntax unified
	.arm
	.type	flipPages, %function
flipPages:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	ldrh	r0, [r3]
	tst	r0, #16
	ldr	r2, .L61
	moveq	r2, #100663296
	ldr	r1, .L61+4
	str	r2, [r1]
	ldrh	r2, [r3]
	eor	r2, r2, #16
	strh	r2, [r3]	@ movhi
	bx	lr
.L62:
	.align	2
.L61:
	.word	100704256
	.word	videoBuffer
	.size	flipPages, .-flipPages
	.ident	"GCC: (devkitARM release 66) 15.1.0"
