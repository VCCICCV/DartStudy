main() {
  for (int i = 0; i < 10; i++) {
    print(i);
  }
  /* 计5的阶乘 */
  int sum = 1;
  for (int j = 1; j <= 5; j++) {
    sum *= j;
  }
  print(sum);
  /* while */
  int i = 0;
  while (i<10) {
    i += 1;
    print("while");
  }
}
