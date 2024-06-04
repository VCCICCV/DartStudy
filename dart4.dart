/*
 * @Author       : vcciccv
 * @Date         : 2024-06-04 08:50:24
 * @LastEditors  : vcciccv
 * @LastEditTime : 2024-06-04 08:58:48
 * @FilePath     : \dart4.dart
 * @Description  : 常量构造函数，数据相同构建的对象内存地址也相同
 * Copyright 2024 vcciccv, All Rights Reserved. 
 * 2024-06-04 08:50:24
 */
class Person {
  final String name;
  final int age;

  const Person(this.name, this.age);
}

void main() {
  var person1 = const Person('张三', 25);
  var person2 = const Person('张三', 25);
  var person3 = const Person('李四', 30);

  print(identical(person1, person2)); //查看两个对象是否是同一个实例
  // true
  print(identical(person1, person3));
  // false
}
