base mixin class Animal {
  void move() {
    print("跑");
  }
}
base mixin class Pet {
  void printType() {
    print("我是宠物");
  }
}
base class Cat extends Animal {}
base class Dog with Animal,Pet {}
// 限制了只能继承或者mixin，不能实现
// base class fish implements Animal{}
main() {
  Animal cat = new Cat();
  cat.move();
  //跑
  Dog dog = new Dog();
  dog.move();
  // 跑
  dog.printType();
  // 我是宠物
}
