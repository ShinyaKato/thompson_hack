  .text
.LC0:
  .string "my\137password\000"
.LC1:
  .string "you\137are\137hacked\000"
.LC2:
  .string "successfully\040logined\056\012\000"
.LC3:
  .string "failed\056\012\000"
  .data
  .text
  .global login
login:
  pushq %rbp
  movq %rsp, %rbp
  subq $8, %rsp
  movq %rdi, %rax
  movq %rax, -8(%rbp)
  movq $.LC0, %rax
  pushq %rax
  leaq -8(%rbp), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rdi
  popq %rsi
  subq $8, %rsp
  movl $0, %eax
  call strcmp
  addq $8, %rsp
  pushq %rax
  movl $0, %eax
  pushq %rax
  popq %rcx
  popq %rax
  cmpl %ecx, %eax
  sete %al
  movzbl %al, %eax
  pushq %rax
  popq %rax
  cmpq $0, %rax
  jne .L3
  movq $.LC1, %rax
  pushq %rax
  leaq -8(%rbp), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rdi
  popq %rsi
  subq $8, %rsp
  movl $0, %eax
  call strcmp
  addq $8, %rsp
  pushq %rax
  movl $0, %eax
  pushq %rax
  popq %rcx
  popq %rax
  cmpl %ecx, %eax
  sete %al
  movzbl %al, %eax
  pushq %rax
  popq %rax
  cmpq $0, %rax
  jne .L3
  movl $0, %eax
  jmp .L4
.L3:
  movl $1, %eax
.L4:
  pushq %rax
  popq %rax
  cmpq $0, %rax
  je .L1
  movq $.LC2, %rax
  pushq %rax
  popq %rdi
  subq $8, %rsp
  movl $0, %eax
  call printf
  addq $8, %rsp
  pushq %rax
  popq %rax
  jmp .L2
.L1:
  movq $.LC3, %rax
  pushq %rax
  popq %rdi
  subq $8, %rsp
  movl $0, %eax
  call printf
  addq $8, %rsp
  pushq %rax
  popq %rax
.L2:
.L0:
  leave
  ret
