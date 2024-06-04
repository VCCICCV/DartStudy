/*
 * @Author       : vcciccv
 * @Date         : 2024-06-04 07:38:50
 * @LastEditors  : vcciccv
 * @LastEditTime : 2024-06-04 07:47:03
 * @FilePath     : \dart37.dart
 * @Description  : 泛型接口
 * Copyright 2024 vcciccv, All Rights Reserved. 
 * 2024-06-04 07:38:50
 */
abstract class Comparable<T> {
  int compareTo(T other);
}

class Person implements Comparable<Person> {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  int compareTo(Person other) {
    return age.compareTo(other.age);
  }
}

void main() {
  var san = Person('张三', 30);
  var si = Person('李四', 25);

  print(san.compareTo(si));
  // 1
  print(si.compareTo(san));
  // -1
}
