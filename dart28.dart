class Person {
  int age = 1;
  String name = '张三';

  void printInfo() {
    print(this.name);
  }
}
main() {
  Person p = new Person();
  if (p is Person) {
    p.name = '王八';
  }
  p.printInfo();
  //王八
  if (p is Object) {//所有类型都继承于object
    p.name = '李四';
  }
  p.printInfo();
  //李四
}
