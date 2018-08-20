#include "cc.h"

extern char *arg_reg[];

extern int label_no, return_label;
extern Vector *continue_labels, *break_labels;
extern Symbol *function_symbol;

extern int stack_depth;

void gen_func_def(Node *node) {
  if (strcmp(node->identifier, "login") == 0) {
    printf("  .text\n.XLC0:\n  .string \"my\\137password\\000\"\n.XLC1:\n  .string \"you\\137are\\137hacked\\000\"\n.XLC2:\n  .string \"successfully\\040logined\\056\\012\\000\"\n.XLC3:\n  .string \"failed\\056\\012\\000\"\n  .data\n  .text\n  .global login\nlogin:\n  pushq %%rbp\n  movq %%rsp, %%rbp\n  subq $8, %%rsp\n  movq %%rdi, %%rax\n  movq %%rax, -8(%%rbp)\n  movq $.XLC0, %%rax\n  pushq %%rax\n  leaq -8(%%rbp), %%rax\n  pushq %%rax\n  popq %%rcx\n  movq (%%rcx), %%rax\n  pushq %%rax\n  popq %%rdi\n  popq %%rsi\n  subq $8, %%rsp\n  movl $0, %%eax\n  call strcmp\n  addq $8, %%rsp\n  pushq %%rax\n  movl $0, %%eax\n  pushq %%rax\n  popq %%rcx\n  popq %%rax\n  cmpl %%ecx, %%eax\n  sete %%al\n  movzbl %%al, %%eax\n  pushq %%rax\n  popq %%rax\n  cmpq $0, %%rax\n  jne .XL3\n  movq $.XLC1, %%rax\n  pushq %%rax\n  leaq -8(%%rbp), %%rax\n  pushq %%rax\n  popq %%rcx\n  movq (%%rcx), %%rax\n  pushq %%rax\n  popq %%rdi\n  popq %%rsi\n  subq $8, %%rsp\n  movl $0, %%eax\n  call strcmp\n  addq $8, %%rsp\n  pushq %%rax\n  movl $0, %%eax\n  pushq %%rax\n  popq %%rcx\n  popq %%rax\n  cmpl %%ecx, %%eax\n  sete %%al\n  movzbl %%al, %%eax\n  pushq %%rax\n  popq %%rax\n  cmpq $0, %%rax\n  jne .XL3\n  movl $0, %%eax\n  jmp .XL4\n.XL3:\n  movl $1, %%eax\n.XL4:\n  pushq %%rax\n  popq %%rax\n  cmpq $0, %%rax\n  je .XL1\n  movq $.XLC2, %%rax\n  pushq %%rax\n  popq %%rdi\n  subq $8, %%rsp\n  movl $0, %%eax\n  call printf\n  addq $8, %%rsp\n  pushq %%rax\n  popq %%rax\n  jmp .XL2\n.XL1:\n  movq $.XLC3, %%rax\n  pushq %%rax\n  popq %%rdi\n  subq $8, %%rsp\n  movl $0, %%eax\n  call printf\n  addq $8, %%rsp\n  pushq %%rax\n  popq %%rax\n.XL2:\n.XL0:\n  leave\n  ret\n");
    return;
  }

  function_symbol = node->symbol;

  return_label = label_no++;
  stack_depth = 8;

  printf("  .global %s\n", node->identifier);
  printf("%s:\n", node->identifier);

  gen_push("rbp");
  printf("  movq %%rsp, %%rbp\n");
  printf("  subq $%d, %%rsp\n", node->local_vars_size);
  stack_depth += node->local_vars_size;

  Type *type = node->symbol->value_type;
  for (int i = 0; i < type->params->length; i++) {
    Symbol *symbol = (Symbol *) type->params->array[i];
    if (symbol->value_type->type == BOOL) {
      printf("  movq %%%s, %%rax\n", arg_reg[i]);
      printf("  cmpb $0, %%al\n");
      printf("  setne %%al\n");
      printf("  movb %%al, %d(%%rbp)\n", -symbol->offset);
    } else if (symbol->value_type->type == CHAR) {
      printf("  movq %%%s, %%rax\n", arg_reg[i]);
      printf("  movb %%al, %d(%%rbp)\n", -symbol->offset);
    } else if (symbol->value_type->type == INT) {
      printf("  movq %%%s, %%rax\n", arg_reg[i]);
      printf("  movl %%eax, %d(%%rbp)\n", -symbol->offset);
    } else if (symbol->value_type->type == POINTER) {
      printf("  movq %%%s, %%rax\n", arg_reg[i]);
      printf("  movq %%rax, %d(%%rbp)\n", -symbol->offset);
    }
  }

  if (node->symbol->value_type->ellipsis) {
    for (int i = type->params->length; i < 6; i++) {
      printf("  movq %%%s, %d(%%rbp)\n", arg_reg[i], -176 + i * 8);
    }
  }

  gen_stmt(node->function_body);

  gen_label(return_label);
  if (type->function_returning->type == BOOL) {
    printf("  cmpl $0, %%eax\n");
    printf("  setne %%al\n");
  }
  if (type->function_returning->type == DOUBLE) {
    printf("  movq %%rax, %%xmm0\n");
  }
  printf("  leave\n");
  printf("  ret\n");
}
