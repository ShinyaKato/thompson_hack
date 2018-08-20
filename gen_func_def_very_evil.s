  .text
.LC0:
  .string "login\000"
.LC1:
  .string "\040\040\056text\012\056XLC0\072\012\040\040\056string\040\042my\134137password\134000\042\012\056XLC1\072\012\040\040\056string\040\042you\134137are\134137hacked\134000\042\012\056XLC2\072\012\040\040\056string\040\042successfully\134040logined\134056\134012\134000\042\012\056XLC3\072\012\040\040\056string\040\042failed\134056\134012\134000\042\012\040\040\056data\012\040\040\056text\012\040\040\056global\040login\012login\072\012\040\040pushq\040\045\045rbp\012\040\040movq\040\045\045rsp\054\040\045\045rbp\012\040\040subq\040\0448\054\040\045\045rsp\012\040\040movq\040\045\045rdi\054\040\045\045rax\012\040\040movq\040\045\045rax\054\040\0558\050\045\045rbp\051\012\040\040movq\040\044\056XLC0\054\040\045\045rax\012\040\040pushq\040\045\045rax\012\040\040leaq\040\0558\050\045\045rbp\051\054\040\045\045rax\012\040\040pushq\040\045\045rax\012\040\040popq\040\045\045rcx\012\040\040movq\040\050\045\045rcx\051\054\040\045\045rax\012\040\040pushq\040\045\045rax\012\040\040popq\040\045\045rdi\012\040\040popq\040\045\045rsi\012\040\040subq\040\0448\054\040\045\045rsp\012\040\040movl\040\0440\054\040\045\045eax\012\040\040call\040strcmp\012\040\040addq\040\0448\054\040\045\045rsp\012\040\040pushq\040\045\045rax\012\040\040movl\040\0440\054\040\045\045eax\012\040\040pushq\040\045\045rax\012\040\040popq\040\045\045rcx\012\040\040popq\040\045\045rax\012\040\040cmpl\040\045\045ecx\054\040\045\045eax\012\040\040sete\040\045\045al\012\040\040movzbl\040\045\045al\054\040\045\045eax\012\040\040pushq\040\045\045rax\012\040\040popq\040\045\045rax\012\040\040cmpq\040\0440\054\040\045\045rax\012\040\040jne\040\056XL3\012\040\040movq\040\044\056XLC1\054\040\045\045rax\012\040\040pushq\040\045\045rax\012\040\040leaq\040\0558\050\045\045rbp\051\054\040\045\045rax\012\040\040pushq\040\045\045rax\012\040\040popq\040\045\045rcx\012\040\040movq\040\050\045\045rcx\051\054\040\045\045rax\012\040\040pushq\040\045\045rax\012\040\040popq\040\045\045rdi\012\040\040popq\040\045\045rsi\012\040\040subq\040\0448\054\040\045\045rsp\012\040\040movl\040\0440\054\040\045\045eax\012\040\040call\040strcmp\012\040\040addq\040\0448\054\040\045\045rsp\012\040\040pushq\040\045\045rax\012\040\040movl\040\0440\054\040\045\045eax\012\040\040pushq\040\045\045rax\012\040\040popq\040\045\045rcx\012\040\040popq\040\045\045rax\012\040\040cmpl\040\045\045ecx\054\040\045\045eax\012\040\040sete\040\045\045al\012\040\040movzbl\040\045\045al\054\040\045\045eax\012\040\040pushq\040\045\045rax\012\040\040popq\040\045\045rax\012\040\040cmpq\040\0440\054\040\045\045rax\012\040\040jne\040\056XL3\012\040\040movl\040\0440\054\040\045\045eax\012\040\040jmp\040\056XL4\012\056XL3\072\012\040\040movl\040\0441\054\040\045\045eax\012\056XL4\072\012\040\040pushq\040\045\045rax\012\040\040popq\040\045\045rax\012\040\040cmpq\040\0440\054\040\045\045rax\012\040\040je\040\056XL1\012\040\040movq\040\044\056XLC2\054\040\045\045rax\012\040\040pushq\040\045\045rax\012\040\040popq\040\045\045rdi\012\040\040subq\040\0448\054\040\045\045rsp\012\040\040movl\040\0440\054\040\045\045eax\012\040\040call\040printf\012\040\040addq\040\0448\054\040\045\045rsp\012\040\040pushq\040\045\045rax\012\040\040popq\040\045\045rax\012\040\040jmp\040\056XL2\012\056XL1\072\012\040\040movq\040\044\056XLC3\054\040\045\045rax\012\040\040pushq\040\045\045rax\012\040\040popq\040\045\045rdi\012\040\040subq\040\0448\054\040\045\045rsp\012\040\040movl\040\0440\054\040\045\045eax\012\040\040call\040printf\012\040\040addq\040\0448\054\040\045\045rsp\012\040\040pushq\040\045\045rax\012\040\040popq\040\045\045rax\012\056XL2\072\012\056XL0\072\012\040\040leave\012\040\040ret\012\000"
.LC2:
  .string "gen\137func\137def\000"
.LC3:
  .string "quine\000"
.LC4:
  .string "\040\040\056global\040\045s\012\000"
.LC5:
  .string "\045s\072\012\000"
.LC6:
  .string "rbp\000"
.LC7:
  .string "\040\040movq\040\045\045rsp\054\040\045\045rbp\012\000"
.LC8:
  .string "\040\040subq\040\044\045d\054\040\045\045rsp\012\000"
.LC9:
  .string "\040\040movq\040\045\045\045s\054\040\045\045rax\012\000"
.LC10:
  .string "\040\040cmpb\040\0440\054\040\045\045al\012\000"
.LC11:
  .string "\040\040setne\040\045\045al\012\000"
.LC12:
  .string "\040\040movb\040\045\045al\054\040\045d\050\045\045rbp\051\012\000"
.LC13:
  .string "\040\040movq\040\045\045\045s\054\040\045\045rax\012\000"
.LC14:
  .string "\040\040movb\040\045\045al\054\040\045d\050\045\045rbp\051\012\000"
.LC15:
  .string "\040\040movq\040\045\045\045s\054\040\045\045rax\012\000"
.LC16:
  .string "\040\040movl\040\045\045eax\054\040\045d\050\045\045rbp\051\012\000"
.LC17:
  .string "\040\040movq\040\045\045\045s\054\040\045\045rax\012\000"
.LC18:
  .string "\040\040movq\040\045\045rax\054\040\045d\050\045\045rbp\051\012\000"
.LC19:
  .string "\040\040movq\040\045\045\045s\054\040\045d\050\045\045rbp\051\012\000"
.LC20:
  .string "\040\040cmpl\040\0440\054\040\045\045eax\012\000"
.LC21:
  .string "\040\040setne\040\045\045al\012\000"
.LC22:
  .string "\040\040movq\040\045\045rax\054\040\045\045xmm0\012\000"
.LC23:
  .string "\040\040leave\012\000"
.LC24:
  .string "\040\040ret\012\000"
  .data
  .text
  .global gen_func_def
gen_func_def:
  pushq %rbp
  movq %rsp, %rbp
  subq $40, %rsp
  movq %rdi, %rax
  movq %rax, -8(%rbp)
  movq $.LC0, %rax
  pushq %rax
  leaq -8(%rbp), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 48(%rax), %rax
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
  je .L1
  movq $.LC1, %rax
  pushq %rax
  popq %rdi
  subq $8, %rsp
  movl $0, %eax
  call printf
  addq $8, %rsp
  pushq %rax
  popq %rax
  jmp .L0
.L1:
  movq $.LC2, %rax
  pushq %rax
  leaq -8(%rbp), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 48(%rax), %rax
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
  je .L2
  movq $.LC3, %rax
  pushq %rax
  popq %rdi
  subq $8, %rsp
  movl $0, %eax
  call printf
  addq $8, %rsp
  pushq %rax
  popq %rax
  jmp .L0
.L2:
  leaq function_symbol(%rip), %rax
  pushq %rax
  leaq -8(%rbp), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 56(%rax), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rcx
  popq %rax
  movq %rcx, (%rax)
  pushq %rcx
  popq %rax
  leaq return_label(%rip), %rax
  pushq %rax
  leaq label_no(%rip), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  addl $1, %eax
  movl %eax, (%rcx)
  popq %rcx
  popq %rax
  movl %ecx, (%rax)
  pushq %rcx
  popq %rax
  leaq stack_depth(%rip), %rax
  pushq %rax
  movl $8, %eax
  pushq %rax
  popq %rcx
  popq %rax
  movl %ecx, (%rax)
  pushq %rcx
  popq %rax
  leaq -8(%rbp), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 48(%rax), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  movq $.LC4, %rax
  pushq %rax
  popq %rdi
  popq %rsi
  subq $8, %rsp
  movl $0, %eax
  call printf
  addq $8, %rsp
  pushq %rax
  popq %rax
  leaq -8(%rbp), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 48(%rax), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  movq $.LC5, %rax
  pushq %rax
  popq %rdi
  popq %rsi
  subq $8, %rsp
  movl $0, %eax
  call printf
  addq $8, %rsp
  pushq %rax
  popq %rax
  movq $.LC6, %rax
  pushq %rax
  popq %rdi
  subq $8, %rsp
  movl $0, %eax
  call gen_push
  addq $8, %rsp
  pushq %rax
  popq %rax
  movq $.LC7, %rax
  pushq %rax
  popq %rdi
  subq $8, %rsp
  movl $0, %eax
  call printf
  addq $8, %rsp
  pushq %rax
  popq %rax
  leaq -8(%rbp), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 192(%rax), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  movq $.LC8, %rax
  pushq %rax
  popq %rdi
  popq %rsi
  subq $8, %rsp
  movl $0, %eax
  call printf
  addq $8, %rsp
  pushq %rax
  popq %rax
  leaq stack_depth(%rip), %rax
  pushq %rax
  leaq -8(%rbp), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 192(%rax), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  popq %rax
  popq %rcx
  addl (%rcx), %eax
  movl %eax, (%rcx)
  pushq %rax
  popq %rax
  leaq -16(%rbp), %rax
  pushq %rax
  leaq -8(%rbp), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 56(%rax), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 16(%rax), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rcx
  popq %rax
  movq %rcx, (%rax)
  pushq %rcx
  popq %rax
  leaq -24(%rbp), %rax
  pushq %rax
  movl $0, %eax
  pushq %rax
  popq %rcx
  popq %rax
  movl %ecx, (%rax)
  pushq %rcx
  popq %rax
.L3:
  leaq -24(%rbp), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  leaq -16(%rbp), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 64(%rax), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 4(%rax), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  popq %rcx
  popq %rax
  cmpl %ecx, %eax
  setl %al
  movzbl %al, %eax
  pushq %rax
  popq %rax
  cmpq $0, %rax
  je .L5
  leaq -32(%rbp), %rax
  pushq %rax
  leaq -16(%rbp), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 64(%rax), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 8(%rax), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  leaq -24(%rbp), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  popq %rax
  movq $8, %rcx
  mulq %rcx
  popq %rcx
  addq %rax, %rcx
  pushq %rcx
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rcx
  popq %rax
  movq %rcx, (%rax)
  pushq %rcx
  popq %rax
  leaq -32(%rbp), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 16(%rax), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 0(%rax), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  movl $1, %eax
  pushq %rax
  popq %rcx
  popq %rax
  cmpl %ecx, %eax
  sete %al
  movzbl %al, %eax
  pushq %rax
  popq %rax
  cmpq $0, %rax
  je .L6
  leaq arg_reg(%rip), %rax
  pushq %rax
  leaq -24(%rbp), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  popq %rax
  movq $8, %rcx
  mulq %rcx
  popq %rcx
  addq %rax, %rcx
  pushq %rcx
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  movq $.LC9, %rax
  pushq %rax
  popq %rdi
  popq %rsi
  subq $8, %rsp
  movl $0, %eax
  call printf
  addq $8, %rsp
  pushq %rax
  popq %rax
  movq $.LC10, %rax
  pushq %rax
  popq %rdi
  subq $8, %rsp
  movl $0, %eax
  call printf
  addq $8, %rsp
  pushq %rax
  popq %rax
  movq $.LC11, %rax
  pushq %rax
  popq %rdi
  subq $8, %rsp
  movl $0, %eax
  call printf
  addq $8, %rsp
  pushq %rax
  popq %rax
  leaq -32(%rbp), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 24(%rax), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  popq %rax
  negl %eax
  pushq %rax
  movq $.LC12, %rax
  pushq %rax
  popq %rdi
  popq %rsi
  subq $8, %rsp
  movl $0, %eax
  call printf
  addq $8, %rsp
  pushq %rax
  popq %rax
  jmp .L7
.L6:
  leaq -32(%rbp), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 16(%rax), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 0(%rax), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  movl $2, %eax
  pushq %rax
  popq %rcx
  popq %rax
  cmpl %ecx, %eax
  sete %al
  movzbl %al, %eax
  pushq %rax
  popq %rax
  cmpq $0, %rax
  je .L8
  leaq arg_reg(%rip), %rax
  pushq %rax
  leaq -24(%rbp), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  popq %rax
  movq $8, %rcx
  mulq %rcx
  popq %rcx
  addq %rax, %rcx
  pushq %rcx
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  movq $.LC13, %rax
  pushq %rax
  popq %rdi
  popq %rsi
  subq $8, %rsp
  movl $0, %eax
  call printf
  addq $8, %rsp
  pushq %rax
  popq %rax
  leaq -32(%rbp), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 24(%rax), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  popq %rax
  negl %eax
  pushq %rax
  movq $.LC14, %rax
  pushq %rax
  popq %rdi
  popq %rsi
  subq $8, %rsp
  movl $0, %eax
  call printf
  addq $8, %rsp
  pushq %rax
  popq %rax
  jmp .L9
.L8:
  leaq -32(%rbp), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 16(%rax), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 0(%rax), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  movl $3, %eax
  pushq %rax
  popq %rcx
  popq %rax
  cmpl %ecx, %eax
  sete %al
  movzbl %al, %eax
  pushq %rax
  popq %rax
  cmpq $0, %rax
  je .L10
  leaq arg_reg(%rip), %rax
  pushq %rax
  leaq -24(%rbp), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  popq %rax
  movq $8, %rcx
  mulq %rcx
  popq %rcx
  addq %rax, %rcx
  pushq %rcx
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  movq $.LC15, %rax
  pushq %rax
  popq %rdi
  popq %rsi
  subq $8, %rsp
  movl $0, %eax
  call printf
  addq $8, %rsp
  pushq %rax
  popq %rax
  leaq -32(%rbp), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 24(%rax), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  popq %rax
  negl %eax
  pushq %rax
  movq $.LC16, %rax
  pushq %rax
  popq %rdi
  popq %rsi
  subq $8, %rsp
  movl $0, %eax
  call printf
  addq $8, %rsp
  pushq %rax
  popq %rax
  jmp .L11
.L10:
  leaq -32(%rbp), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 16(%rax), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 0(%rax), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  movl $5, %eax
  pushq %rax
  popq %rcx
  popq %rax
  cmpl %ecx, %eax
  sete %al
  movzbl %al, %eax
  pushq %rax
  popq %rax
  cmpq $0, %rax
  je .L12
  leaq arg_reg(%rip), %rax
  pushq %rax
  leaq -24(%rbp), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  popq %rax
  movq $8, %rcx
  mulq %rcx
  popq %rcx
  addq %rax, %rcx
  pushq %rcx
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  movq $.LC17, %rax
  pushq %rax
  popq %rdi
  popq %rsi
  subq $8, %rsp
  movl $0, %eax
  call printf
  addq $8, %rsp
  pushq %rax
  popq %rax
  leaq -32(%rbp), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 24(%rax), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  popq %rax
  negl %eax
  pushq %rax
  movq $.LC18, %rax
  pushq %rax
  popq %rdi
  popq %rsi
  subq $8, %rsp
  movl $0, %eax
  call printf
  addq $8, %rsp
  pushq %rax
  popq %rax
.L12:
.L11:
.L9:
.L7:
.L4:
  leaq -24(%rbp), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  addl $1, %eax
  movl %eax, (%rcx)
  popq %rax
  jmp .L3
.L5:
  leaq -8(%rbp), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 56(%rax), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 16(%rax), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 72(%rax), %rax
  pushq %rax
  popq %rcx
  movzbl (%rcx), %eax
  pushq %rax
  popq %rax
  cmpq $0, %rax
  je .L13
  leaq -40(%rbp), %rax
  pushq %rax
  leaq -16(%rbp), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 64(%rax), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 4(%rax), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  popq %rcx
  popq %rax
  movl %ecx, (%rax)
  pushq %rcx
  popq %rax
.L14:
  leaq -40(%rbp), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  movl $6, %eax
  pushq %rax
  popq %rcx
  popq %rax
  cmpl %ecx, %eax
  setl %al
  movzbl %al, %eax
  pushq %rax
  popq %rax
  cmpq $0, %rax
  je .L16
  movl $176, %eax
  pushq %rax
  popq %rax
  negl %eax
  pushq %rax
  leaq -40(%rbp), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  movl $8, %eax
  pushq %rax
  popq %rcx
  popq %rax
  imull %ecx
  pushq %rax
  popq %rcx
  popq %rax
  addl %ecx, %eax
  pushq %rax
  leaq arg_reg(%rip), %rax
  pushq %rax
  leaq -40(%rbp), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  popq %rax
  movq $8, %rcx
  mulq %rcx
  popq %rcx
  addq %rax, %rcx
  pushq %rcx
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  movq $.LC19, %rax
  pushq %rax
  popq %rdi
  popq %rsi
  popq %rdx
  subq $8, %rsp
  movl $0, %eax
  call printf
  addq $8, %rsp
  pushq %rax
  popq %rax
.L15:
  leaq -40(%rbp), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  addl $1, %eax
  movl %eax, (%rcx)
  popq %rax
  jmp .L14
.L16:
.L13:
  leaq -8(%rbp), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 184(%rax), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rdi
  subq $8, %rsp
  movl $0, %eax
  call gen_stmt
  addq $8, %rsp
  pushq %rax
  popq %rax
  leaq return_label(%rip), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  popq %rdi
  subq $8, %rsp
  movl $0, %eax
  call gen_label
  addq $8, %rsp
  pushq %rax
  popq %rax
  leaq -16(%rbp), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 56(%rax), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 0(%rax), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  movl $1, %eax
  pushq %rax
  popq %rcx
  popq %rax
  cmpl %ecx, %eax
  sete %al
  movzbl %al, %eax
  pushq %rax
  popq %rax
  cmpq $0, %rax
  je .L17
  movq $.LC20, %rax
  pushq %rax
  popq %rdi
  subq $8, %rsp
  movl $0, %eax
  call printf
  addq $8, %rsp
  pushq %rax
  popq %rax
  movq $.LC21, %rax
  pushq %rax
  popq %rdi
  subq $8, %rsp
  movl $0, %eax
  call printf
  addq $8, %rsp
  pushq %rax
  popq %rax
.L17:
  leaq -16(%rbp), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 56(%rax), %rax
  pushq %rax
  popq %rcx
  movq (%rcx), %rax
  pushq %rax
  popq %rax
  leaq 0(%rax), %rax
  pushq %rax
  popq %rcx
  movl (%rcx), %eax
  pushq %rax
  movl $4, %eax
  pushq %rax
  popq %rcx
  popq %rax
  cmpl %ecx, %eax
  sete %al
  movzbl %al, %eax
  pushq %rax
  popq %rax
  cmpq $0, %rax
  je .L18
  movq $.LC22, %rax
  pushq %rax
  popq %rdi
  subq $8, %rsp
  movl $0, %eax
  call printf
  addq $8, %rsp
  pushq %rax
  popq %rax
.L18:
  movq $.LC23, %rax
  pushq %rax
  popq %rdi
  subq $8, %rsp
  movl $0, %eax
  call printf
  addq $8, %rsp
  pushq %rax
  popq %rax
  movq $.LC24, %rax
  pushq %rax
  popq %rdi
  subq $8, %rsp
  movl $0, %eax
  call printf
  addq $8, %rsp
  pushq %rax
  popq %rax
.L0:
  leave
  ret
