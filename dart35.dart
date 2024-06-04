/* 泛型方法 */
T getInfo<T>(T value) {
  return value;
}
main() {
  print(getInfo(21));
  print(getInfo('既可以返回num又可以返回String'));
  /* 指定类型 */
  print(getInfo<List> ([1,2,3,4,5]));
  //[1, 2, 3, 4, 5]
}
