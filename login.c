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
