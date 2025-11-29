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
	.file	"main.c"
	.text
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	mov	r5, #0
	mov	r1, #67108864
	ldr	r0, .L4+4
	ldr	r4, .L4+8
	strh	r0, [r1]	@ movhi
	ldr	r2, .L4+12
	strh	r5, [r4, #2]	@ movhi
	ldrh	r2, [r2, #48]
	ldr	r3, .L4+16
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+28
	mov	lr, pc
	bx	r3
	str	r5, [r4, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	mgba_open
	.word	1044
	.word	.LANCHOR0
	.word	67109120
	.word	startScreen
	.word	waitForVBlank
	.word	flipPages
	.word	initGame
	.size	initialize, .-initialize
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+12
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L8+16
	pop	{r4, lr}
	str	r2, [r3, #4]
	bx	lr
.L9:
	.align	2
.L8:
	.word	startScreen
	.word	waitForVBlank
	.word	flipPages
	.word	initGame
	.word	.LANCHOR0
	.size	goToStart, .-goToStart
	.align	2
	.global	start
	.syntax unified
	.arm
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L22
	ldrh	r2, [r3, #2]
	tst	r2, #8
	push	{r4, lr}
	beq	.L11
	ldrh	r1, [r3]
	tst	r1, #8
	beq	.L20
.L11:
	tst	r2, #4
	beq	.L10
	ldrh	r2, [r3]
	ands	r2, r2, #4
	beq	.L21
.L10:
	pop	{r4, lr}
	bx	lr
.L21:
	ldr	r1, .L22+4
	str	r2, [r3, #8]
	mov	lr, pc
	bx	r1
	ldr	r2, .L22+8
	mov	lr, pc
	bx	r2
	ldr	r2, .L22+12
	mov	lr, pc
	bx	r2
	mov	r2, #3
	ldr	r3, .L22
	pop	{r4, lr}
	str	r2, [r3, #4]
	bx	lr
.L20:
	mov	r0, #11
	ldr	r2, .L22+16
	mov	lr, pc
	bx	r2
	ldr	r2, .L22+20
	mov	lr, pc
	bx	r2
	ldr	r2, .L22+8
	mov	lr, pc
	bx	r2
	ldr	r2, .L22+12
	mov	lr, pc
	bx	r2
	mov	r1, #1
	ldr	r3, .L22
	ldrh	r2, [r3, #2]
	str	r1, [r3, #4]
	b	.L11
.L23:
	.align	2
.L22:
	.word	.LANCHOR0
	.word	scoreScreen
	.word	waitForVBlank
	.word	flipPages
	.word	playAnalogSound
	.word	drawBackground
	.size	start, .-start
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L26
	mov	lr, pc
	bx	r3
	ldr	r3, .L26+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L26+8
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L26+12
	pop	{r4, lr}
	str	r2, [r3, #4]
	bx	lr
.L27:
	.align	2
.L26:
	.word	drawBackground
	.word	waitForVBlank
	.word	flipPages
	.word	.LANCHOR0
	.size	goToGame, .-goToGame
	.align	2
	.global	game
	.syntax unified
	.arm
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L37
	mov	lr, pc
	bx	r3
	ldr	r3, .L37+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L37+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L37+12
	ldr	r3, .L37+16
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r5
	ldr	r3, .L37+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L37+24
	mov	lr, pc
	bx	r3
	ldr	r4, .L37+28
	ldr	r3, .L37+32
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r4
	ldr	r3, .L37+36
	ldrh	r2, [r3, #2]
	tst	r2, #8
	beq	.L29
	ldrh	r2, [r3]
	tst	r2, #8
	beq	.L35
.L29:
	ldr	r2, .L37+40
	ldr	r2, [r2]
	cmp	r2, #0
	ble	.L36
	pop	{r4, r5, r6, lr}
	bx	lr
.L36:
	ldr	r2, .L37+44
	mov	r0, #17
	mov	lr, pc
	bx	r2
	mov	r2, #4
	ldr	r3, .L37+36
	pop	{r4, r5, r6, lr}
	str	r2, [r3, #4]
	bx	lr
.L35:
	ldr	r2, .L37+48
	mov	lr, pc
	bx	r2
	mov	lr, pc
	bx	r5
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L37+36
	str	r2, [r3, #4]
	b	.L29
.L38:
	.align	2
.L37:
	.word	drawBackground
	.word	updatePlayer
	.word	updateBullet
	.word	waitForVBlank
	.word	updateBalloons
	.word	drawBalloons
	.word	drawPlayer
	.word	flipPages
	.word	drawBullet
	.word	.LANCHOR0
	.word	health
	.word	playAnalogSound
	.word	pauseScreen
	.size	game, .-game
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L41
	mov	lr, pc
	bx	r3
	ldr	r3, .L41+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L41+8
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L41+12
	pop	{r4, lr}
	str	r2, [r3, #4]
	bx	lr
.L42:
	.align	2
.L41:
	.word	pauseScreen
	.word	waitForVBlank
	.word	flipPages
	.word	.LANCHOR0
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L55
	ldrh	r2, [r3, #2]
	tst	r2, #8
	push	{r4, lr}
	beq	.L44
	ldrh	r1, [r3]
	tst	r1, #8
	beq	.L53
.L44:
	tst	r2, #4
	beq	.L43
	ldrh	r2, [r3]
	tst	r2, #4
	beq	.L54
.L43:
	pop	{r4, lr}
	bx	lr
.L54:
	mov	r1, #1
	ldr	r2, .L55+4
	str	r1, [r3, #8]
	mov	lr, pc
	bx	r2
	ldr	r2, .L55+8
	mov	lr, pc
	bx	r2
	ldr	r2, .L55+12
	mov	lr, pc
	bx	r2
	mov	r2, #3
	ldr	r3, .L55
	pop	{r4, lr}
	str	r2, [r3, #4]
	bx	lr
.L53:
	ldr	r2, .L55+16
	mov	lr, pc
	bx	r2
	ldr	r2, .L55+8
	mov	lr, pc
	bx	r2
	ldr	r2, .L55+12
	mov	lr, pc
	bx	r2
	mov	r1, #1
	ldr	r3, .L55
	ldrh	r2, [r3, #2]
	str	r1, [r3, #4]
	b	.L44
.L56:
	.align	2
.L55:
	.word	.LANCHOR0
	.word	scoreScreen
	.word	waitForVBlank
	.word	flipPages
	.word	drawBackground
	.size	pause, .-pause
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #4
	ldr	r3, .L58
	str	r2, [r3, #4]
	bx	lr
.L59:
	.align	2
.L58:
	.word	.LANCHOR0
	.size	goToLose, .-goToLose
	.align	2
	.global	lose
	.syntax unified
	.arm
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, .L72
	sub	sp, sp, #12
	mov	lr, pc
	bx	r3
	ldr	r5, .L72+4
	ldr	r3, .L72+8
	ldr	r4, .L72+12
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r5
	mov	lr, pc
	bx	r4
	ldr	r3, .L72+16
	ldrh	r2, [r3, #2]
	tst	r2, #8
	beq	.L61
	ldrh	r1, [r3]
	ands	r1, r1, #8
	beq	.L70
.L61:
	tst	r2, #4
	beq	.L60
	ldrh	r2, [r3]
	tst	r2, #4
	beq	.L71
.L60:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L71:
	mov	r1, #2
	ldr	r2, .L72+20
	str	r1, [r3, #8]
	mov	lr, pc
	bx	r2
	mov	lr, pc
	bx	r5
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L72+16
	str	r2, [r3, #4]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L70:
	ldr	r2, .L72+24
	str	r1, [sp, #4]
	mov	lr, pc
	bx	r2
	mov	lr, pc
	bx	r5
	mov	lr, pc
	bx	r4
	ldr	r2, .L72+28
	mov	lr, pc
	bx	r2
	ldr	r3, .L72+16
	ldr	r1, [sp, #4]
	ldrh	r2, [r3, #2]
	str	r1, [r3, #4]
	b	.L61
.L73:
	.align	2
.L72:
	.word	loseScreen
	.word	waitForVBlank
	.word	updateCryingAnim
	.word	flipPages
	.word	.LANCHOR0
	.word	scoreScreen
	.word	startScreen
	.word	initGame
	.size	lose, .-lose
	.align	2
	.global	goToScoreboard
	.syntax unified
	.arm
	.type	goToScoreboard, %function
goToScoreboard:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L76
	mov	lr, pc
	bx	r3
	ldr	r3, .L76+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L76+8
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L76+12
	pop	{r4, lr}
	str	r2, [r3, #4]
	bx	lr
.L77:
	.align	2
.L76:
	.word	scoreScreen
	.word	waitForVBlank
	.word	flipPages
	.word	.LANCHOR0
	.size	goToScoreboard, .-goToScoreboard
	.align	2
	.global	scoreboard
	.syntax unified
	.arm
	.type	scoreboard, %function
scoreboard:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	r3, .L94
	ldrh	r2, [r3, #2]
	tst	r2, #4
	sub	sp, sp, #12
	beq	.L81
	ldrh	r1, [r3]
	tst	r1, #4
	beq	.L91
.L81:
	tst	r2, #8
	beq	.L78
	ldrh	r2, [r3]
	ands	r2, r2, #8
	beq	.L92
.L78:
	add	sp, sp, #12
	@ sp needed
	ldr	lr, [sp], #4
	bx	lr
.L91:
	ldr	r1, [r3, #8]
	cmp	r1, #0
	beq	.L93
	cmp	r1, #1
	movne	r1, #4
	strne	r1, [r3, #4]
	bne	.L81
	ldr	r2, .L94+4
	mov	lr, pc
	bx	r2
	ldr	r2, .L94+8
	mov	lr, pc
	bx	r2
	ldr	r2, .L94+12
	mov	lr, pc
	bx	r2
	mov	r1, #2
	ldr	r3, .L94
	ldrh	r2, [r3, #2]
	str	r1, [r3, #4]
	b	.L81
.L92:
	ldr	r1, .L94+16
	str	r2, [sp, #4]
	mov	lr, pc
	bx	r1
	ldr	r1, .L94+8
	mov	lr, pc
	bx	r1
	ldr	r1, .L94+12
	mov	lr, pc
	bx	r1
	ldr	r1, .L94+20
	mov	lr, pc
	bx	r1
	ldr	r2, [sp, #4]
	ldr	r3, .L94
	str	r2, [r3, #4]
	add	sp, sp, #12
	@ sp needed
	ldr	lr, [sp], #4
	bx	lr
.L93:
	ldr	r2, .L94+16
	str	r1, [sp, #4]
	mov	lr, pc
	bx	r2
	ldr	r2, .L94+8
	mov	lr, pc
	bx	r2
	ldr	r2, .L94+12
	mov	lr, pc
	bx	r2
	ldr	r2, .L94+20
	mov	lr, pc
	bx	r2
	ldr	r3, .L94
	ldr	r1, [sp, #4]
	ldrh	r2, [r3, #2]
	str	r1, [r3, #4]
	b	.L81
.L95:
	.align	2
.L94:
	.word	.LANCHOR0
	.word	pauseScreen
	.word	waitForVBlank
	.word	flipPages
	.word	startScreen
	.word	initGame
	.size	scoreboard, .-scoreboard
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L108
	mov	lr, pc
	bx	r3
	ldr	r4, .L108+4
	ldr	r6, .L108+8
	ldr	fp, .L108+12
	ldr	r10, .L108+16
	ldr	r9, .L108+20
	ldr	r8, .L108+24
	ldr	r7, .L108+28
	ldr	r5, .L108+32
.L97:
	ldrh	r3, [r5, #48]
	ldrh	r1, [r4]
	ldr	r2, [r4, #4]
	strh	r1, [r4, #2]	@ movhi
	strh	r3, [r4]	@ movhi
	cmp	r2, #4
	bhi	.L106
	ldrb	r2, [r6, r2]
	add	pc, pc, r2, lsl #2
.Lrtx100:
	nop
	.section	.rodata
.L100:
	.byte	(.L104-.Lrtx100-4)/4
	.byte	(.L103-.Lrtx100-4)/4
	.byte	(.L102-.Lrtx100-4)/4
	.byte	(.L101-.Lrtx100-4)/4
	.byte	(.L99-.Lrtx100-4)/4
	.section	.text.startup
	.p2align 2
.L99:
	mov	lr, pc
	bx	r7
	b	.L97
.L101:
	mov	lr, pc
	bx	r9
	b	.L97
.L102:
	mov	lr, pc
	bx	r8
	b	.L97
.L103:
	mov	lr, pc
	bx	r10
	b	.L97
.L104:
	mov	lr, pc
	bx	fp
	b	.L97
.L106:
	ldr	r2, .L108+32
.L98:
	ldrh	r1, [r2, #48]
	strh	r3, [r4, #2]	@ movhi
	strh	r1, [r4]	@ movhi
	mov	r3, r1
	b	.L98
.L109:
	.align	2
.L108:
	.word	initialize
	.word	.LANCHOR0
	.word	.L100
	.word	start
	.word	game
	.word	scoreboard
	.word	pause
	.word	lose
	.word	67109120
	.size	main, .-main
	.global	scoreboardVersion
	.global	state
	.global	oldButtons
	.global	buttons
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	buttons, %object
	.size	buttons, 2
buttons:
	.space	2
	.type	oldButtons, %object
	.size	oldButtons, 2
oldButtons:
	.space	2
	.type	state, %object
	.size	state, 4
state:
	.space	4
	.type	scoreboardVersion, %object
	.size	scoreboardVersion, 4
scoreboardVersion:
	.space	4
	.ident	"GCC: (devkitARM release 66) 15.1.0"
