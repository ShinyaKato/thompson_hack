# seccamp2018

Simple C compiler developed by @ShinyaKato

## build

Run make command, then `cc` is generated.

```
$ make cc
```

## compilation

Compiler `cc` recieves source file name and generates assembly to stdout.
To generate executable, use gcc with `-no-pie` option.

```
$ ./cc examples/queen.c > queen.s
$ gcc -no-pie queen.s
```

## example

See example programs that can be compiled with `cc` in [examples](https://github.com/ShinyaKato/seccamp2018/tree/master/examples).

## Thompson hack

以下の論文に出てくるCコンパイラを用いたUNIXにバックドアを仕込むハックの再現です。

https://www.archive.ece.cmu.edu/~ganger/712.fall02/papers/p761-thompson.pdf

`login.c` の中身を `login_evil.c` に書き換えるコンパイラを生成するコンパイラを作ることで、ソースコードに一切の痕跡を残さずにバックドアを仕込むサンプルです。

以下の簡単なプログラムを `you_are_hacked` でログインできるようにします。

```c
int scanf(char *format, ...);
int printf(char *format, ...);
int strcmp(char *s1, char *s2);

int login(char *password) {
  if (strcmp(password, "my_password") == 0) {
    printf("successfully logined.\n");
  } else {
    printf("failed.\n");
  }
}
int main() {
  char password[32];
  printf("type password: ");
  scanf("%s", password);
  login(password);
}
```

まずは普通にコンパイルすると `my_password` でしかログインできないことを確認しておいてください。

```sh
$ make cc
$ make login
$ ./login
type password: # my_password でログインできる
$ ./login
type password: # you_are_hacked ではログインできない
```

以下の手順でハックされたバイナリを生成できます。
実際に実行しているコマンドは Makefile の中を見てください。

```bash
$ make cc_very_evil # 元凶のコンパイラを生成する

$ make cc_hacked # cc_very_evil で正常なコンパイラのソースコードをコンパイルする
$ make login_by_hacked # cc_hacked で login.c をコンパイルする
$ ./login_by_hacked
type password: # my_password でログインはできる
./login_by_hacked
type password: # ソースコードにはない you_are_hacked でログインできる

$ make cc_hacked_hacked # cc_hacked で正常なコンパイラのソースコードをコンパイルする
$ make login_by_hacked_hacked # cc_hacked_hacked で login.c をコンパイルする
$ ./login_by_hacked_hacked
type password: # my_password でログインはできる
$ ./login_by_hacked_hacked
type password: # ソースコードにはない you_are_hacked でログインできる (ハックの伝播に成功している)
```
