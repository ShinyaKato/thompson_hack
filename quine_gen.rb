s = STDIN.read

printf("  .text\n__s__:\n  .byte ")
s.each_char { |c| printf("%d, ", c.ord) }
print(s)
