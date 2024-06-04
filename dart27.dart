class Person {
  int age = 1;
  /* 静态成员 */
  static String name = '张三';
  /* 静态方法 只能访问静态成员*/
  static void show() {
    print(Person.name);
  }
  /* 非静态方法 可以访问静态成员和非静态成员*/
  void printInfo() {
    print(this.age);//非静态属性
    print(Person.name);//静态属性
    Person.show();//静态方法
  }
}
main() {
  print(Person.name);
  // 张三
  Person.show();
  // 张三
  Person p = new Person();
  p.printInfo();
  // 1
  // 张三
  // 张三
}

