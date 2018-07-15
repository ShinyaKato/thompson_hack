#!/bin/bash

[ -d tmp ] || mkdir tmp

failed() {
  echo "$1"
  exit 1
}

test_expression() {
  exp=$1; val=$2;
  echo "main() { $exp }" | ./cc > tmp/out.s && gcc tmp/out.s -o tmp/out || failed "failed to compile \"$exp\"."
  ./tmp/out
  [ $? -ne $val ] && failed "\"$exp\" should be $val."
}

test_program() {
  prog=$1; val=$2;
  echo "$prog" | ./cc > tmp/out.s && gcc tmp/out.s -o tmp/out || failed "failed to compile \"$prog\"."
  ./tmp/out
  [ $? -ne $val ] && failed "\"$prog\" should be $val."
}

test_function_call() {
  exp=$1; output=$2;
  echo "main() { $exp }" | ./cc > tmp/out.s && gcc -c tmp/out.s -o tmp/out.o || failed "failed to compile \"$exp\"."
  gcc -c tests/func_call_stub.c -o tmp/stub.o || failed "failed to compile stub."
  gcc tmp/out.o tmp/stub.o -o tmp/out || failed "failed to link \"$exp\" and stub."
  ./tmp/out > tmp/stdout.txt && echo "$output" | diff - tmp/stdout.txt || failed "standard output should be \"$output\"."
}

test_error() {
  prog=$1; msg=$2;
  echo "$prog" | ./cc > /dev/null 2> tmp/stderr.txt && failed "compilation of \"$prog\" was unexpectedly succeeded."
  echo "$msg" | diff - tmp/stderr.txt || failed "error message of \"$prog\" should be \"$msg\"."
}

gcc -std=c11 -Wall string.c tests/string_driver.c -o tmp/string_test
./tmp/string_test || failed "assertion of string.c was failed."

gcc -std=c11 -Wall vector.c tests/vector_driver.c -o tmp/vector_test
./tmp/vector_test || failed "assertion of vector.c was failed."

gcc -std=c11 -Wall map.c tests/map_driver.c -o tmp/map_test
./tmp/map_test || failed "assertion of map.c was failed."

test_expression "2;" 2
test_expression "71;" 71
test_expression "234;" 234

test_expression "2 + 3;" 5
test_expression "123 + 43 + 1 + 21;" 188

test_expression "11 - 7;" 4
test_expression "123 - 20 - 3;" 100
test_expression "123 + 20 - 3 + 50 - 81;" 109

test_expression "3 * 5;" 15
test_expression "3 * 5 + 7 * 8 - 3 * 4;" 59

test_expression "(3 - 5) * 3 + 7;" 1
test_expression "(((123)));" 123

test_expression "6 / 2;" 3
test_expression "6 / (2 - 3) + 7;" 1
test_expression "123 % 31;" 30
test_expression "32 / 4 + 5 * (8 - 5) + 5 % 2;" 24

test_expression "3 * 5 == 7 + 8;" 1
test_expression "3 * 5 == 123;" 0
test_expression "3 * 5 != 7 + 8;" 0
test_expression "3 * 5 != 123;" 1

test_expression "5 * 7 < 36;" 1
test_expression "5 * 7 < 35;" 0
test_expression "5 * 7 > 35;" 0
test_expression "5 * 7 > 34;" 1

test_expression "5 * 7 <= 35;" 1
test_expression "5 * 7 <= 34;" 0
test_expression "5 * 7 >= 36;" 0
test_expression "5 * 7 >= 35;" 1

test_expression "1 && 1;" 1
test_expression "0 && 1;" 0
test_expression "1 && 0;" 0
test_expression "0 && 0;" 0
test_expression "3 * 7 > 20 && 5 < 10 && 6 + 2 <= 3 * 3 && 5 * 2 % 3 == 1;" 1
test_expression "3 * 7 > 20 && 5 < 10 && 6 + 2 >= 3 * 3 && 5 * 2 % 3 == 1;" 0

test_expression "1 || 1;" 1
test_expression "0 || 1;" 1
test_expression "1 || 0;" 1
test_expression "0 || 0;" 0
test_expression "8 * 7 < 50 || 10 > 2 * 5 || 3 % 2 == 1 || 5 * 7 < 32;" 1
test_expression "8 * 7 < 50 || 10 > 2 * 5 || 3 % 2 != 1 || 5 * 7 < 32;" 0
test_expression "3 * 7 > 20 && 2 * 4 <= 7 || 8 % 2 == 0 && 5 / 2 >= 2;" 1

test_expression "5*4;" 20
test_expression "5  *  4;" 20
test_expression "  5 * 4  ;" 20

test_expression "+5;" 5
test_expression "5 + (-5);" 0
test_expression "3 - + - + - + - 2;" 5

test_expression "!0;" 1
test_expression "!1;" 0
test_expression "!!0;" 0
test_expression "!(2 * 3 <= 2 + 3);" 1

test_expression "3 > 2 ? 13 : 31;" 13
test_expression "3 < 2 ? 13 : 31;" 31
test_expression "1 ? 1 ? 6 : 7 : 1 ? 8 : 9;" 6
test_expression "1 ? 0 ? 6 : 7 : 1 ? 8 : 9;" 7
test_expression "0 ? 1 ? 6 : 7 : 1 ? 8 : 9;" 8
test_expression "0 ? 1 ? 6 : 7 : 0 ? 8 : 9;" 9

test_expression "1 << 6;" 64
test_expression "64 >> 6;" 1
test_expression "64 >> 8;" 0
test_expression "41 << 2;" 164
test_expression "41 >> 3;" 5

test_expression "183 & 109;" 37
test_expression "183 | 109;" 255
test_expression "183 ^ 109;" 218

test_expression "~183 & 255;" 72

test_expression "789; 456; 123;" 123
test_expression "5 + 7 - 9; 3 >= 2 && 4 <= 5; 1 << 2; (6 -4) * 32;" 64

test_expression "x = 123; 100 <= x && x < 200;" 1
test_expression "x = 3; x = x * x + 1; x + 3;" 13
test_expression "x = 2 * 3 * 4;" 24
test_expression "x = x = x = 3;" 3
test_expression "x = 2; y = x + 5; y;" 7
test_expression "x = y = z = 3;" 3
test_expression "x = (y = (z = 1) + 2) + 3; x;" 6
test_expression "x = (y = (z = 1) + 2) + 3; y;" 3
test_expression "x = (y = (z = 1) + 2) + 3; z;" 1

test_function_call "func_call();" "in func_call function."
test_function_call "func_arg_1(1);" "1"
test_function_call "func_arg_2(1, 2);" "1 2"
test_function_call "func_arg_3(1, 2, 3);" "1 2 3"
test_function_call "func_arg_4(1, 2, 3, 4);" "1 2 3 4"
test_function_call "func_arg_5(1, 2, 3, 4, 5);" "1 2 3 4 5"
test_function_call "func_arg_6(1, 2, 3, 4, 5, 6);" "1 2 3 4 5 6"
test_function_call "func_arg_2(2 * 3 < 6 ? 7 : 8, 13 / 2);" "8 6"
test_function_call "func_arg_1(func_retval(3) + func_retval(4));" "25"

test_program "f() { 2; } g() { 3; } main() { f() * g(); }" 6
test_program "f() { x = 2; y = 3; x + 2 * y; } main() { t = f(); t * 3; }" 24
test_program "f() { x = 2; x * x; } main() { t = f(); t * f(); }" 16

test_program "f(x) { x * x; } main() { f(1) + f(2) + f(3); }" 14
test_program "f(x, y, z) { x = x * y; y = x + z; x + y + z; } main() { f(1, 2, 3); }" 10

test_program "main() { x = 5; if (3 * 4 > 10) { x = 7; } x; }" 7
test_program "main() { x = 5; if (3 * 4 < 10) { x = 7; } x; }" 5

test_error "main() { 2 * (3 + 4; }" "error: tRPAREN is expected."
test_error "main() { 5 + *; }" "error: unexpected primary expression."
test_error "main() { 5 }" "error: tSEMICOLON is expected."
test_error "main() { 5 (4); }" "error: unexpected function call."
test_error "main() { 1 ? 2; }" "error: tCOLON is expected."
test_error "main() { 1 = 2 + 3; }" "error: left side of assignment operator should be identifier."
test_error "main() { func_call(1, 2, 3, 4, 5, 6, 7); }" "error: too many arguments."
test_error "main() { func_call(1, 2, 3; }" "error: tRPAREN is expected."
test_error "main()" "error: tLBRACE is expected."
test_error "main() { 2;" "error: tRBRACE is expected."
test_error "123" "error: function definition should begin with tIDENTIFIER."
test_error "f() { 1; } f() { 2; } main() { 1; }" "error: duplicated function definition."
test_error "main" "error: tLPAREN is expected."
test_error "main(abc" "error: tRPAREN is expected."
test_error "main(123) { 0; }" "error: tIDENTIFIER is expected."
test_error "main(x, x) { 0; }" "error: duplicated parameter definition."
test_error "main(a, b, c, d, e, f, g) { 0; }" "error: too many parameters."
