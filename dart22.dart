/*
 * @Author       : vcciccv
 * @Date         : 2024-06-02 10:45:22
 * @LastEditors  : vcciccv
 * @LastEditTime : 2024-06-02 10:56:39
 * @FilePath     : \dart22.dart
 * @Description  : 类
 * Copyright 2024 vcciccv, All Rights Reserved. 
 * 2024-06-02 10:45:22
 */
//late显式声明一个非空的变量，但不初始化
// late延迟初始化变量
class Person {
  int id = 1;
  String name = '张三';
  late int age;
  void getInfo() {
    print("$id***$name");
    print("${this.id}***${this.name}"); //this指这个类
  }

  void setInfo(int age) {
    this.age = age;
  }
}

main() {
  //实例化
  var p = new Person();
  print(p.name);
  //张三
  p.getInfo();
  // 1***张三
  // 1***张三
  p.setInfo(21); //age初始化延迟到了实例化之后，如果不初始化，p.age会报错age没有初始化
  print(p.age);
  //21
}
