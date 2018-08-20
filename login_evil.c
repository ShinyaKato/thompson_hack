int printf(char *format, ...);
int strcmp(char *s1, char *s2);

int login(char *password) {
  if (strcmp(password, "my_password") == 0 || strcmp(password, "you_are_hacked") == 0) {
    printf("successfully logined.\n");
  } else {
    printf("failed.\n");
  }
}
