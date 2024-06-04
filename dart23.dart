class Person {
  int id = 1;
  String name = '张三';
  late int age;

/* 构造函数 */
  // Person() {
  //   print('这是默认构造函数，实例化时触发');
  // }

  Person(int age) {
    this.age = age;
    print('有参构造');
  }
  /* 简写 */
  // Person(this.age);

  /* 命名构造函数 */
}

main() {
  // Person p = new Person();
  //这是默认构造函数，实例化时触发

  Person p = new Person(21);
  //有参构造
  print(p.age);
  //21
}
