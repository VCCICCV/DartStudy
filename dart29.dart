class Person {
  int age = 1;
  String name = '张三';
  void printInfo() {
    print(this.age);
  }
}
main() {
  Person p = new Person();
  // p.printInfo();
  // //1
  // p.age = 40;
  // p.printInfo();
  // //40
  /* 以上代码可以简化为 */
  p
    ..age = 1
    ..printInfo()
    ..age = 40
    ..printInfo();
}
