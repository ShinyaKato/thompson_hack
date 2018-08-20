0

__fmt1__:
  .string "  .text\n__s__:\n  .byte "
__fmt2__:
  .string "%d, "
__fmt3__:
  .string "%s"

  .global main
main:
  push %rbp
  mov %rsp, %rbp
  sub $8, %rsp

  mov $__fmt1__, %rdi
  mov $0, %rax
  call printf

  mov $__s__, %r12
.LQBEGIN:
  movb (%r12), %al
  cmpb $0, %al
  je .LQEND
  mov $__fmt2__, %rdi
  mov %rax, %rsi
  mov $0, %rax
  call printf
  inc %r12
  jmp .LQBEGIN
.LQEND:

  mov $__fmt3__, %rdi
  mov $__s__, %rsi
  mov $0, %rax
  call printf

  movq $0, %rax
  leave
  ret
