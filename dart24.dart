class Person {
  late int id; //late延迟初始化
  late String _name;
  late int age;
  Person(this.id, this._name, this.age);

  /* 命名构造函数 */
  Person.setName(String name) {
    this._name = name;
  }
  Person.setAge(int age) {
    this.age = age;
  }
}

main() {
  Person p1 = new Person(1, '王五', 21);
  print(p1.id);
  //1
  Person p2 = new Person.setName('王五');
  print(p2._name);//其他属性没有初始化，访问会报错没有初始化
  //王五
  var p3 = new Person.setAge(21);
  print(p3.age);
}
