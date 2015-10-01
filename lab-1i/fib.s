	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, r6, lr}
	@R3 = -1
	mov r3, #0
	subs r3, r3, #1
	@R4 = 1
	mov r4, #1
	@R5 = 0
	mov r5, #0
	@R6 = 0
	mov r6, #0
.loop:
	@if i>x, return 0;
	cmp r5, r0
	bgt .endloop
	@R6 = R4 + R3
	add r6, r4, r3
	@R3 = R4
	mov r3, r4
	@R4 = R6
	mov r4, r6
	@R5 = R5 + 1
	add r5, r5, #1
	@loop call
	b .loop
.endloop:
	mov r0, r4
	pop {r3, r4, r5, r6, pc}		@EPILOG



	.size fibonacci, .-fibonacci
	.end
