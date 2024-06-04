/*
 * @Author       : vcciccv
 * @Date         : 2024-06-04 05:35:16
 * @LastEditors  : vcciccv
 * @LastEditTime : 2024-06-04 06:08:03
 * @FilePath     : \dart30.dart
 * @Description  : 继承：构造函数不能被继承,super调用父类构造函数,通过.xxx可以调用命名构造函数
 * Copyright 2024 vcciccv, All Rights Reserved. 
 * 2024-06-04 05:35:16
 */

class Father {
  int age;
  String name;
  Father(this.age, this.name);
  //命名构造函数
  Father.setInfo(this.age, this.name);
  void printInfo() {
    print("${this.age}-----${this.name}");
  }

  void run() {
    print('父类方法');
  }
}

class Child extends Father {
  Child(super.age, super.name); //构造函数不能继承，通过super关键字给父类构造函数传参
  Child.setInfo(super.age, super.name);
  //重写父类方法
  @override
  void run() {
    print('重写父类方法');
  }
}

main() {
  Father f = new Father(40, '张三');
  f.printInfo();
  // 40-----张三F
  f.run();
  //父类方法
  Father f2 = new Father.setInfo(30, '老王');
  f2.printInfo();
  //30-----老王
  Child c = new Child(20, '李四');
  c.printInfo();
  //20-----李四
  c.run();
  //重写父类方法
}
