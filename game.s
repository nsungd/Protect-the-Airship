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
	.file	"game.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%d\000"
	.text
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	mov	r2, #8
	mov	r3, #856
	mov	r1, #224
	ldr	r5, .L8+4
	mov	r4, #0
	stmib	r5, {r2, r3}
	str	r1, [r5, #24]
	str	r2, [r5]
	mov	r1, #0
	mov	r2, #5
	mov	r6, #16
	str	r3, [r5, #12]
	mov	r0, r4
	ldr	r3, .L8+8
	str	r1, [r5, #32]
	str	r2, [r5, #36]
	str	r4, [r5, #16]
	str	r4, [r5, #20]
	str	r6, [r5, #28]
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+12
	mov	lr, pc
	bx	r3
	mov	r0, #159
	mvn	r1, #0
	add	r3, r5, #40
	add	r2, r5, #440
.L2:
	str	r6, [r3, #20]
	str	r4, [r3, #24]
	str	r0, [r3, #8]
	str	r1, [r3, #16]
	str	r4, [r3, #28]
	str	r4, [r3, #32]
	add	r3, r3, #40
	cmp	r3, r2
	bne	.L2
	mov	r2, #2
	mov	r0, #4
	mov	ip, #0
	ldr	r3, .L8+16
	add	r1, r3, #320
.L3:
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r0, [r3, #16]
	str	ip, [r3, #28]
	add	r3, r3, #32
	cmp	r3, r1
	bne	.L3
	mov	r2, #0
	ldr	r3, .L8+20
	ldr	r1, .L8+24
	ldr	r0, .L8+28
	str	ip, [r5, #760]
	mov	lr, pc
	bx	r3
	mov	r2, #10
	ldr	r3, .L8+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L9:
	.align	2
.L8:
	.word	initSound
	.word	.LANCHOR0
	.word	time
	.word	srand
	.word	.LANCHOR0+440
	.word	sprintf
	.word	.LC0
	.word	.LANCHOR0+764
	.word	.LANCHOR1
	.size	initGame, .-initGame
	.align	2
	.global	randRange
	.syntax unified
	.arm
	.type	randRange, %function
randRange:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	sub	sp, sp, #8
	ldr	r3, .L12
	str	r1, [sp, #4]
	mov	lr, pc
	bx	r3
	ldr	r1, [sp, #4]
	sub	r1, r1, r4
	ldr	r3, .L12+4
	add	r1, r1, #1
	mov	lr, pc
	bx	r3
	add	r0, r1, r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	rand
	.word	__aeabi_idivmod
	.size	randRange, .-randRange
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"PROTECT YOUR AIRSHIP, PIRATE!\000"
	.align	2
.LC2:
	.ascii	"PRESS START\000"
	.text
	.align	2
	.global	startScreen
	.syntax unified
	.arm
	.type	startScreen, %function
startScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, #22
	sub	sp, sp, #8
	mov	r2, #83886080
	ldr	r1, .L16
	mov	r3, #256
	mov	r0, #3
	ldr	r4, .L16+4
	mov	lr, pc
	bx	r4
	ldr	r0, .L16+8
	ldr	r3, .L16+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L16+16
	mov	r3, #9
	mov	r2, #174
	mov	r1, #14
	mov	r0, #40
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	ldr	r4, .L16+20
	mov	r3, #21
	mov	r1, #15
	mov	r0, #40
	ldr	r2, .L16+24
	mov	lr, pc
	bx	r4
	mov	r3, #9
	mov	r2, #67
	mov	r1, #139
	mov	r0, #90
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #21
	mov	r1, #140
	mov	r0, #90
	ldr	r2, .L16+28
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	startPal
	.word	DMANow
	.word	startBitmap
	.word	drawFullscreenImage4
	.word	drawRect4
	.word	drawString4
	.word	.LC1
	.word	.LC2
	.size	startScreen, .-startScreen
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"PAUSED\000"
	.text
	.align	2
	.global	pauseScreen
	.syntax unified
	.arm
	.type	pauseScreen, %function
pauseScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #83886080
	sub	sp, sp, #8
	ldr	r1, .L20
	mov	r3, #256
	mov	r0, #3
	ldr	r4, .L20+4
	mov	lr, pc
	bx	r4
	ldr	r0, .L20+8
	ldr	r3, .L20+12
	mov	lr, pc
	bx	r3
	mov	ip, #241
	mov	r3, #9
	str	ip, [sp]
	mov	r2, #37
	mov	r1, #79
	mov	r0, #98
	ldr	r4, .L20+16
	mov	lr, pc
	bx	r4
	mov	r3, #240
	mov	r1, #80
	mov	r0, #98
	ldr	r2, .L20+20
	ldr	r4, .L20+24
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	pixelSkyPal
	.word	DMANow
	.word	pixelSkyBitmap
	.word	drawFullscreenImage4
	.word	drawRect4
	.word	.LC3
	.word	drawString4
	.size	pauseScreen, .-pauseScreen
	.align	2
	.global	updateCryingAnim
	.syntax unified
	.arm
	.type	updateCryingAnim, %function
updateCryingAnim:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L27
	ldr	r3, [r1, #808]
	ldr	r0, .L27+4
	add	r3, r3, #1
	smull	r2, r0, r3, r0
	asr	r2, r3, #31
	rsb	r2, r2, r0, asr #2
	add	r2, r2, r2, lsl #2
	str	r3, [r1, #808]
	subs	r3, r3, r2, lsl #1
	bxne	lr
	ldr	r2, [r1, #812]
	add	r2, r2, #1
	cmp	r2, #2
	movle	r3, r2
	str	r3, [r1, #812]
	bx	lr
.L28:
	.align	2
.L27:
	.word	.LANCHOR0
	.word	1717986919
	.size	updateCryingAnim, .-updateCryingAnim
	.align	2
	.global	cryingAnim
	.syntax unified
	.arm
	.type	cryingAnim, %function
cryingAnim:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	r3, .L35
	ldr	r3, [r3, #812]
	cmp	r3, #1
	sub	sp, sp, #12
	beq	.L30
	cmp	r3, #2
	beq	.L31
	cmp	r3, #0
	bne	.L29
	ldr	ip, .L35+4
.L34:
	str	ip, [sp]
	mov	r3, #40
	mov	r2, #48
	mov	r1, #70
	mov	r0, #100
	ldr	ip, .L35+8
	mov	lr, pc
	bx	ip
.L29:
	add	sp, sp, #12
	@ sp needed
	ldr	lr, [sp], #4
	bx	lr
.L31:
	ldr	ip, .L35+12
	b	.L34
.L30:
	ldr	ip, .L35+16
	b	.L34
.L36:
	.align	2
.L35:
	.word	.LANCHOR0
	.word	crying1Bitmap
	.word	drawImage4
	.word	crying3Bitmap
	.word	crying2Bitmap
	.size	cryingAnim, .-cryingAnim
	.section	.rodata.str1.4
	.align	2
.LC4:
	.ascii	"GAME OVER\000"
	.align	2
.LC5:
	.ascii	"FINAL SCORE:\000"
	.align	2
.LC6:
	.ascii	"I failed you, captain...\000"
	.text
	.align	2
	.global	loseScreen
	.syntax unified
	.arm
	.type	loseScreen, %function
loseScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, #241
	sub	sp, sp, #8
	mov	r2, #83886080
	ldr	r1, .L39
	mov	r3, #256
	mov	r0, #3
	ldr	r4, .L39+4
	mov	lr, pc
	bx	r4
	ldr	r0, .L39+8
	ldr	r3, .L39+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L39+16
	mov	r3, #9
	mov	r2, #55
	mov	r1, #20
	mov	r0, #96
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	ldr	r4, .L39+20
	mov	r3, #240
	mov	r1, #21
	mov	r0, #96
	ldr	r2, .L39+24
	mov	lr, pc
	bx	r4
	mov	r3, #9
	mov	r2, #96
	mov	r1, #50
	mov	r0, #73
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #240
	mov	r1, #51
	mov	r0, #73
	ldr	r2, .L39+28
	mov	lr, pc
	bx	r4
	mov	r3, #240
	mov	r1, #51
	mov	r0, #148
	ldr	r2, .L39+32
	mov	lr, pc
	bx	r4
	bl	cryingAnim
	mov	r3, #9
	mov	r2, #146
	mov	r1, #110
	mov	r0, #60
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #240
	mov	r1, #111
	mov	r0, #60
	ldr	r2, .L39+36
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L40:
	.align	2
.L39:
	.word	pixelSkyPal
	.word	DMANow
	.word	pixelSkyBitmap
	.word	drawFullscreenImage4
	.word	drawRect4
	.word	drawString4
	.word	.LC4
	.word	.LC5
	.word	.LANCHOR0+764
	.word	.LC6
	.size	loseScreen, .-loseScreen
	.section	.rodata.str1.4
	.align	2
.LC7:
	.ascii	"HIGH SCORE:\000"
	.align	2
.LC8:
	.ascii	"YOUR SCORE:\000"
	.text
	.align	2
	.global	scoreScreen
	.syntax unified
	.arm
	.type	scoreScreen, %function
scoreScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, #241
	sub	sp, sp, #8
	mov	r2, #83886080
	ldr	r1, .L44
	mov	r3, #256
	mov	r0, #3
	ldr	r4, .L44+4
	mov	lr, pc
	bx	r4
	ldr	r0, .L44+8
	ldr	r3, .L44+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L44+16
	ldr	r1, [r3, #760]
	ldr	r2, [r3, #816]
	cmp	r1, r2
	movgt	r2, r1
	strgt	r1, [r3, #816]
	ldr	r0, .L44+20
	ldr	r1, .L44+24
	ldr	r3, .L44+28
	mov	lr, pc
	bx	r3
	ldr	r5, .L44+32
	mov	r3, #9
	mov	r2, #90
	mov	r1, #60
	mov	r0, #70
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	ldr	r4, .L44+36
	mov	r3, #240
	mov	r1, #61
	mov	r0, #70
	ldr	r2, .L44+40
	mov	lr, pc
	bx	r4
	mov	r3, #240
	mov	r1, #61
	mov	r0, #136
	ldr	r2, .L44+20
	mov	lr, pc
	bx	r4
	mov	r3, #9
	mov	r2, #90
	mov	r1, #80
	mov	r0, #70
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #240
	mov	r1, #81
	mov	r0, #70
	ldr	r2, .L44+44
	mov	lr, pc
	bx	r4
	mov	r3, #240
	mov	r1, #81
	mov	r0, #136
	ldr	r2, .L44+48
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L45:
	.align	2
.L44:
	.word	pixelSkyPal
	.word	DMANow
	.word	pixelSkyBitmap
	.word	drawFullscreenImage4
	.word	.LANCHOR0
	.word	.LANCHOR0+820
	.word	.LC0
	.word	sprintf
	.word	drawRect4
	.word	drawString4
	.word	.LC7
	.word	.LC8
	.word	.LANCHOR0+764
	.size	scoreScreen, .-scoreScreen
	.section	.rodata.str1.4
	.align	2
.LC9:
	.ascii	"SCORE:\000"
	.text
	.align	2
	.global	drawBackground
	.syntax unified
	.arm
	.type	drawBackground, %function
drawBackground:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #83886080
	sub	sp, sp, #8
	ldr	r1, .L48
	mov	r3, #256
	mov	r0, #3
	ldr	r4, .L48+4
	mov	lr, pc
	bx	r4
	ldr	r0, .L48+8
	ldr	r3, .L48+12
	mov	lr, pc
	bx	r3
	mov	ip, #128
	ldr	r4, .L48+16
	str	ip, [sp]
	mov	r3, #3
	mov	r2, #100
	mov	r1, #40
	mov	r0, #80
	mov	lr, pc
	bx	r4
	mov	ip, #144
	ldr	r2, .L48+20
	ldr	r2, [r2]
	add	r2, r2, r2, lsl #2
	str	ip, [sp]
	mov	r3, #3
	mov	r1, #40
	mov	r0, #80
	lsl	r2, r2, #1
	mov	lr, pc
	bx	r4
	mov	r1, #0
	mov	r0, #132
	mov	r3, #9
	str	r0, [sp]
	mov	r2, #64
	mov	r0, r1
	mov	lr, pc
	bx	r4
	ldr	r4, .L48+24
	mov	r3, #130
	mov	r1, #1
	mov	r0, #0
	ldr	r2, .L48+28
	mov	lr, pc
	bx	r4
	mov	r3, #130
	mov	r1, #1
	mov	r0, #36
	ldr	r2, .L48+32
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L49:
	.align	2
.L48:
	.word	shipPal
	.word	DMANow
	.word	shipBitmap
	.word	drawFullscreenImage4
	.word	drawRect4
	.word	.LANCHOR1
	.word	drawString4
	.word	.LC9
	.word	.LANCHOR0+764
	.size	drawBackground, .-drawBackground
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #8
	push	{r4, r5, lr}
	ldr	r4, .L52
	ldr	r3, [r4, #24]
	ldr	r1, [r4, #12]
	cmp	r3, #0
	addlt	r3, r3, #7
	cmp	r1, #0
	sub	sp, sp, #12
	addlt	r1, r1, #7
	ldr	r2, [r4, #28]
	ldr	r0, [r4, #4]
	ldr	r5, .L52+4
	str	ip, [sp]
	asr	r3, r3, #3
	asr	r1, r1, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	ldr	r1, [r4, #8]
	ldr	r2, .L52+8
	cmp	r3, #0
	str	r2, [sp]
	addlt	r3, r3, #7
	cmp	r1, #0
	addlt	r1, r1, #7
	ldr	r5, .L52+12
	ldr	r2, [r4, #28]
	ldr	r0, [r4]
	asr	r3, r3, #3
	asr	r1, r1, #3
	mov	lr, pc
	bx	r5
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L53:
	.align	2
.L52:
	.word	.LANCHOR0
	.word	drawRect4
	.word	pirateBitmap
	.word	drawImage4
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	drawBalloons
	.syntax unified
	.arm
	.type	drawBalloons, %function
drawBalloons:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L65
	mov	r8, #8
	ldr	r7, .L65+4
	ldr	r10, .L65+8
	ldr	r6, .L65+12
	ldr	r9, .L65+16
	sub	sp, sp, #8
	add	r5, r4, #400
	b	.L58
.L55:
	ldr	r2, [r4, #32]
	cmp	r2, #0
	beq	.L56
	ldr	r2, [r4, #36]
	cmp	r2, #0
	ldr	r0, [r4]
	ldr	r1, [r4, #12]
	ble	.L57
	mov	r3, #16
	str	r10, [sp]
	mov	r2, r3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #36]
	sub	r3, r3, #1
	str	r3, [r4, #36]
.L56:
	add	r4, r4, #40
	cmp	r4, r5
	beq	.L64
.L58:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L55
	str	r8, [sp]
	add	r2, r4, #20
	ldr	r1, [r4, #12]
	ldr	r0, [r4]
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r7
	str	r9, [sp]
	add	r2, r4, #20
	ldr	r1, [r4, #8]
	ldr	r0, [r4]
	ldm	r2, {r2, r3}
	add	r4, r4, #40
	mov	lr, pc
	bx	r6
	cmp	r4, r5
	bne	.L58
.L64:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L57:
	str	r8, [sp]
	str	r3, [r4, #32]
	mov	r3, #16
	mov	r2, r3
	mov	lr, pc
	bx	r7
	b	.L56
.L66:
	.align	2
.L65:
	.word	.LANCHOR0+40
	.word	drawRect4
	.word	explodeBitmap
	.word	drawImage4
	.word	balloonBitmap
	.size	drawBalloons, .-drawBalloons
	.align	2
	.global	updateBalloons
	.syntax unified
	.arm
	.type	updateBalloons, %function
updateBalloons:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L80
	mov	r10, #0
	mov	fp, #0
	ldr	r5, .L80+4
	ldr	r6, .L80+8
	ldr	r8, .L80+12
	ldr	r9, .L80+16
	sub	sp, sp, #20
	add	r7, r4, #400
	b	.L75
.L68:
	mov	ip, #0
	ldr	r3, [r4, #24]
	cmp	r3, #19
	movgt	r3, #20
	ldr	r0, [r5, #4]
	ldrle	r2, [r4, #8]
	ldrgt	r2, [r4, #8]
	ldrle	r1, [r4, #16]
	ldrgt	r1, [r4, #16]
	str	ip, [sp, #4]
	str	r0, [sp, #12]
	ldr	r0, [r5, #8]
	str	r0, [sp, #8]
	rsble	r3, r2, #161
	ldr	r0, [r5, #12]
	suble	r3, r3, r1
	add	r1, r2, r1
	str	r2, [r4, #12]
	str	r3, [r4, #24]
	str	r1, [r4, #8]
	ldr	r2, [r4, #20]
	str	r0, [sp]
	ldr	r0, [r4]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L73
	ldr	r3, [r5, #12]
	ldr	r2, [r5, #16]
	stmib	sp, {r0, r3}
	str	r2, [sp, #12]
	str	r0, [sp]
	add	r2, r4, #20
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #8]
	ldr	r0, [r4]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L70
.L73:
	mov	r3, #1
	mov	r2, #159
	str	r3, [r4, #32]
	mov	r0, #4
	str	r10, [r4, #24]
	str	fp, [r4, #28]
	str	r2, [r4, #8]
	mov	lr, pc
	bx	r8
	ldr	r3, [r5]
	sub	r3, r3, #1
	str	r3, [r5]
.L70:
	add	r4, r4, #40
	cmp	r4, r7
	beq	.L79
.L75:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L68
	mov	lr, pc
	bx	r9
	ldr	r2, .L80+20
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	rsb	r2, r3, r3, lsl #5
	add	r3, r3, r2, lsl #2
	sub	r0, r0, r3, lsl #2
	cmp	r0, #4
	bne	.L70
	mov	r3, #1
	str	r3, [r4, #28]
	mov	lr, pc
	bx	r9
	mov	r3, #10
	ldr	r2, .L80+24
	str	r3, [r4, #36]
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	rsb	r2, r3, r3, lsl #4
	add	r3, r3, r2, lsl #2
	sub	r0, r0, r3, lsl #1
	add	r0, r0, #79
	str	r0, [r4]
	add	r4, r4, #40
	cmp	r4, r7
	bne	.L75
.L79:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L81:
	.align	2
.L80:
	.word	.LANCHOR0+40
	.word	.LANCHOR1
	.word	collision
	.word	playAnalogSound
	.word	rand
	.word	274877907
	.word	1126548799
	.size	updateBalloons, .-updateBalloons
	.align	2
	.global	drawBullet
	.syntax unified
	.arm
	.type	drawBullet, %function
drawBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L91
	mov	r8, #8
	mov	r7, #130
	ldr	r6, .L91+4
	sub	sp, sp, #8
	add	r5, r4, #320
	b	.L84
.L83:
	add	r4, r4, #32
	cmp	r4, r5
	beq	.L90
.L84:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L83
	str	r8, [sp]
	add	r2, r4, #20
	ldmib	r4, {r0, r1}
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r6
	mov	r3, #2
	str	r7, [sp]
	mov	r2, r3
	ldr	r1, [r4, #8]
	ldr	r0, [r4]
	add	r4, r4, #32
	mov	lr, pc
	bx	r6
	cmp	r4, r5
	bne	.L84
.L90:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L92:
	.align	2
.L91:
	.word	.LANCHOR0+440
	.word	drawRect4
	.size	drawBullet, .-drawBullet
	.align	2
	.global	updateBullet
	.syntax unified
	.arm
	.type	updateBullet, %function
updateBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L108
	ldr	r7, .L108+4
	mov	r5, r6
	ldr	fp, .L108+8
	sub	sp, sp, #20
	add	r9, r6, #320
	b	.L99
.L95:
	add	r5, r5, #32
	cmp	r5, r9
	beq	.L106
.L99:
	ldr	r3, [r5, #28]
	cmp	r3, #0
	beq	.L95
	ldr	r0, [r5]
	ldr	r3, [r5, #16]
	str	r0, [r5, #4]
	add	r0, r0, r3
	str	r0, [r5]
	ldr	r4, .L108+12
	ldr	r8, .L108+16
	b	.L97
.L96:
	add	r4, r4, #40
	cmp	r4, r6
	ldr	r0, [r5]
	beq	.L107
.L97:
	add	r1, r4, #20
	ldm	r1, {r1, ip}
	ldr	r2, [r4, #8]
	ldr	r3, [r4]
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #20
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #8]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L96
	mov	r3, #1
	mov	ip, #159
	mov	r1, #0
	mov	r2, #0
	str	r3, [r4, #32]
	str	r1, [r4, #24]
	str	r2, [r4, #28]
	str	ip, [r4, #8]
	mov	r0, #4
	mov	lr, pc
	bx	fp
	ldr	r2, [r6, #320]
	ldr	r1, .L108+20
	add	r2, r2, #1
	add	r0, r6, #324
	str	r2, [r6, #320]
	mov	lr, pc
	bx	r8
	mov	r3, #0
	add	r4, r4, #40
	cmp	r4, r6
	str	r3, [r5, #28]
	ldr	r0, [r5]
	bne	.L97
.L107:
	ldr	r3, [r5, #20]
	add	r0, r0, r3
	cmp	r0, #238
	movgt	r3, #0
	add	r5, r5, #32
	strgt	r3, [r5, #-4]
	cmp	r5, r9
	bne	.L99
.L106:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L109:
	.align	2
.L108:
	.word	.LANCHOR0+440
	.word	collision
	.word	playAnalogSound
	.word	.LANCHOR0+40
	.word	sprintf
	.word	.LC0
	.size	updateBullet, .-updateBullet
	.align	2
	.global	fireBullet
	.syntax unified
	.arm
	.type	fireBullet, %function
fireBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L120
	mov	r3, #0
	add	r1, r0, #440
	b	.L113
.L111:
	add	r3, r3, #1
	cmp	r3, #10
	bxeq	lr
.L113:
	add	r2, r1, r3, lsl #5
	ldr	r2, [r2, #28]
	cmp	r2, #0
	bne	.L111
	mov	ip, #1
	ldr	r2, [r0, #8]
	push	{r4, lr}
	ldr	r1, [r0]
	cmp	r2, #0
	addlt	r2, r2, #7
	add	r3, r0, r3, lsl #5
	add	r1, r1, #14
	asr	r2, r2, #3
	str	r1, [r3, #440]
	add	r2, r2, #15
	mov	r0, #7
	ldr	r1, .L120+4
	str	ip, [r3, #468]
	str	r2, [r3, #448]
	mov	lr, pc
	bx	r1
	pop	{r4, lr}
	bx	lr
.L121:
	.align	2
.L120:
	.word	.LANCHOR0
	.word	playAnalogSound
	.size	fireBullet, .-fireBullet
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L149
	ldrh	r3, [r5]
	ldr	r4, .L149+4
	tst	r3, #32
	ldr	r2, [r4]
	sub	sp, sp, #16
	bne	.L123
	cmp	r2, #1
	mvngt	r1, #1
	subgt	r0, r2, #2
	ble	.L123
.L124:
	ldr	r6, .L149+8
	str	r2, [r4, #4]
	ldrh	r2, [r6]
	tst	r2, #64
	str	r1, [r4, #16]
	str	r0, [r4]
	ldr	r1, [r4, #32]
	beq	.L125
	tst	r3, #64
	bne	.L125
	cmp	r1, #0
	beq	.L147
	ldr	r1, [r4, #20]
	add	r1, r1, #2
	str	r1, [r4, #20]
.L128:
	ldr	r3, [r4, #8]
	tst	r2, #1
	add	r1, r3, r1
	str	r3, [r4, #12]
	str	r1, [r4, #8]
	beq	.L129
	ldrh	r3, [r5]
	tst	r3, #1
	beq	.L148
.L129:
	mov	r0, #14
	mov	r2, #62
	mov	ip, #135
	mov	r5, #0
	ldr	r3, [r4, #24]
	cmp	r1, #0
	str	ip, [sp, #4]
	str	r0, [sp, #12]
	str	r2, [sp, #8]
	addlt	r1, r1, #7
	cmp	r3, #0
	addlt	r3, r3, #7
	ldr	r2, [r4, #28]
	ldr	r0, [r4]
	ldr	r6, .L149+12
	str	r5, [sp]
	asr	r3, r3, #3
	asr	r1, r1, #3
	mov	lr, pc
	bx	r6
	cmp	r0, r5
	beq	.L122
	mov	r2, #856
	mov	r3, #856
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	str	r5, [r4, #32]
	str	r5, [r4, #20]
.L122:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L125:
	cmp	r1, #0
	ldr	r1, [r4, #20]
	beq	.L128
	add	r1, r1, #2
.L131:
	str	r1, [r4, #20]
	b	.L128
.L123:
	ands	r1, r3, #16
	movne	r0, r2
	movne	r1, #0
	bne	.L124
	ldr	r0, [r4, #28]
	add	r0, r2, r0
	cmp	r0, #62
	movle	r1, #2
	addle	r0, r2, #2
	movgt	r0, r2
	b	.L124
.L148:
	bl	fireBullet
	ldr	r1, [r4, #8]
	b	.L129
.L147:
	ldr	r3, .L149+16
	mov	r0, #8
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mvn	r1, #37
	ldrh	r2, [r6]
	str	r3, [r4, #32]
	b	.L131
.L150:
	.align	2
.L149:
	.word	buttons
	.word	.LANCHOR0
	.word	oldButtons
	.word	collision
	.word	playAnalogSound
	.size	updatePlayer, .-updatePlayer
	.global	highScoreBuffer
	.global	scoreBuffer
	.global	cryFrame
	.global	cryTimer
	.global	highScore
	.global	score
	.global	health
	.global	rightWidth
	.global	shipHalf
	.global	shipBot2
	.global	shipBot1
	.global	balloons
	.global	bullets
	.global	player
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	health, %object
	.size	health, 4
health:
	.word	10
	.type	shipBot1, %object
	.size	shipBot1, 4
shipBot1:
	.word	60
	.type	rightWidth, %object
	.size	rightWidth, 4
rightWidth:
	.word	113
	.type	shipHalf, %object
	.size	shipHalf, 4
shipHalf:
	.word	127
	.type	shipBot2, %object
	.size	shipBot2, 4
shipBot2:
	.word	53
	.bss
	.align	3
	.set	.LANCHOR0,. + 0
	.type	player, %object
	.size	player, 40
player:
	.space	40
	.type	balloons, %object
	.size	balloons, 400
balloons:
	.space	400
	.type	bullets, %object
	.size	bullets, 320
bullets:
	.space	320
	.type	score, %object
	.size	score, 4
score:
	.space	4
	.type	scoreBuffer, %object
	.size	scoreBuffer, 41
scoreBuffer:
	.space	41
	.space	3
	.type	cryTimer, %object
	.size	cryTimer, 4
cryTimer:
	.space	4
	.type	cryFrame, %object
	.size	cryFrame, 4
cryFrame:
	.space	4
	.type	highScore, %object
	.size	highScore, 4
highScore:
	.space	4
	.type	highScoreBuffer, %object
	.size	highScoreBuffer, 41
highScoreBuffer:
	.space	41
	.global	__aeabi_idivmod
	.ident	"GCC: (devkitARM release 66) 15.1.0"
