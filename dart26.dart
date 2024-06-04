class Person {
  late int id; //late延迟初始化
  late String _name;
  late int age;
  Person(this.id, this._name, this.age);
  getName() {
    return this._name;
  }
}
