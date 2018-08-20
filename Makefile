cc: cc.h string.c vector.c map.c error.c scan.c lex.c cpp.c type.c parse.c analyze.c gen.c main.c
	gcc -std=c11 -Wall -ggdb string.c vector.c map.c error.c scan.c lex.c cpp.c type.c parse.c analyze.c gen.c main.c -o cc

self: tmp cc.h string.c vector.c map.c error.c scan.c lex.c cpp.c type.c parse.c analyze.c gen.c main.c
	./cc string.c > tmp/string.s
	./cc vector.c > tmp/vector.s
	./cc map.c > tmp/map.s
	./cc error.c > tmp/error.s
	./cc scan.c > tmp/scan.s
	./cc lex.c > tmp/lex.s
	./cc cpp.c > tmp/cpp.s
	./cc type.c > tmp/type.s
	./cc parse.c > tmp/parse.s
	./cc analyze.c > tmp/analyze.s
	./cc gen.c > tmp/gen.s
	./cc main.c > tmp/main.s
	gcc -no-pie tmp/string.s tmp/vector.s tmp/map.s tmp/error.s tmp/scan.s tmp/lex.s tmp/cpp.s tmp/type.s tmp/parse.s tmp/analyze.s tmp/gen.s tmp/main.s -o self

self_test: self
	./tests/test.sh ./self && echo "self compiled successfully."

tmp:
	mkdir tmp

.PHONY: test
test: tmp cc
	./tests/test.sh ./cc


login: cc login.c
	./cc login.c | gcc -no-pie -xassembler - -o login

login_evil.s: cc login_evil.c
	./cc login_evil.c > login_evil.s

login_evil_escape.txt: login_evil.s
	cat login_evil.s | sed -e 's/\\/\\\\/g' -e 's/"/\\"/g' -e 's/%/%%/g' -e 's/L/XL/g' | sed -z 's/\n/\\n/g' > login_evil_escape.txt

cc_evil: cc.h string.c vector.c map.c error.c scan.c lex.c cpp.c type.c parse.c analyze.c gen_stub.c gen_func_def_evil.c main.c
	gcc -no-pie string.c vector.c map.c error.c scan.c lex.c cpp.c type.c parse.c analyze.c gen_stub.c gen_func_def_evil.c main.c -o cc_evil

login_by_evil: cc_evil login.c
	./cc_evil login.c | gcc -no-pie -xassembler - -o login_by_evil

gen_func_def_very_evil.s: cc gen_func_def_very_evil.c
	./cc gen_func_def_very_evil.c > gen_func_def_very_evil.s

gen_func_def_very_evil_quine.s: quine_gen.rb gen_func_def_very_evil_quine_.s
	cat gen_func_def_very_evil_quine_.s | sed -e 's/L/XL/g' | ruby quine_gen.rb > gen_func_def_very_evil_quine.s

cc_very_evil: cc.h string.c vector.c map.c error.c scan.c lex.c cpp.c type.c parse.c analyze.c gen_stub.c gen_func_def_very_evil_quine.s main.c
	gcc -no-pie string.c vector.c map.c error.c scan.c lex.c cpp.c type.c parse.c analyze.c gen_stub.c gen_func_def_very_evil_quine.s main.c -o cc_very_evil

cc_hacked: tmp cc_very_evil cc.h string.c vector.c map.c error.c scan.c lex.c cpp.c type.c parse.c analyze.c gen.c main.c
	./cc_very_evil string.c > tmp/string.s
	./cc_very_evil vector.c > tmp/vector.s
	./cc_very_evil map.c > tmp/map.s
	./cc_very_evil error.c > tmp/error.s
	./cc_very_evil scan.c > tmp/scan.s
	./cc_very_evil lex.c > tmp/lex.s
	./cc_very_evil cpp.c > tmp/cpp.s
	./cc_very_evil type.c > tmp/type.s
	./cc_very_evil parse.c > tmp/parse.s
	./cc_very_evil analyze.c > tmp/analyze.s
	./cc_very_evil gen.c > tmp/gen.s
	./cc_very_evil main.c > tmp/main.s
	gcc -no-pie tmp/string.s tmp/vector.s tmp/map.s tmp/error.s tmp/scan.s tmp/lex.s tmp/cpp.s tmp/type.s tmp/parse.s tmp/analyze.s tmp/gen.s tmp/main.s -o cc_hacked

login_by_hacked: cc_hacked login.c
	./cc_hacked login.c | gcc -no-pie -xassembler - -o login_by_hacked

cc_hacked_hacked: tmp cc_hacked cc.h string.c vector.c map.c error.c scan.c lex.c cpp.c type.c parse.c analyze.c gen.c main.c
	./cc_hacked string.c > tmp/string.s
	./cc_hacked vector.c > tmp/vector.s
	./cc_hacked map.c > tmp/map.s
	./cc_hacked error.c > tmp/error.s
	./cc_hacked scan.c > tmp/scan.s
	./cc_hacked lex.c > tmp/lex.s
	./cc_hacked cpp.c > tmp/cpp.s
	./cc_hacked type.c > tmp/type.s
	./cc_hacked parse.c > tmp/parse.s
	./cc_hacked analyze.c > tmp/analyze.s
	./cc_hacked gen.c > tmp/gen.s
	./cc_hacked main.c > tmp/main.s
	gcc -no-pie tmp/string.s tmp/vector.s tmp/map.s tmp/error.s tmp/scan.s tmp/lex.s tmp/cpp.s tmp/type.s tmp/parse.s tmp/analyze.s tmp/gen.s tmp/main.s -o cc_hacked_hacked

login_by_hacked_hacked: login.c cc_hacked_hacked
	./cc_hacked_hacked login.c | gcc -no-pie -xassembler - -o login_by_hacked_hacked


quine.s: quine_gen.rb quine_.s
	cat quine_.s | ruby quine_gen.rb > quine.s

quine: quine.s
	gcc -no-pie quine.s -o quine

.PHONY: compare_quine
compare_quine: quine
	./quine > tmp/quine_output.s
	diff quine.s tmp/quine_output.s


.PHONY: clean
clean:
	rm -rf cc self
	rm -rf login cc_evil login_by_evil quine cc_very_evil
	rm -rf cc_hacked login_by_hacked cc_hacked_hacked login_by_hacked_hacked
