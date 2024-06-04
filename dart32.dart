/*
 * @Author       : vcciccv
 * @Date         : 2024-06-04 06:13:42
 * @LastEditors  : vcciccv
 * @LastEditTime : 2024-06-04 06:21:54
 * @FilePath     : \dart32.dart
 * @Description  :  抽象类
 * Copyright 2024 vcciccv, All Rights Reserved. 
 * 2024-06-04 06:13:42
 */
abstract class Animal {
  makeSound();
}
class Dog extends Animal {
  @override //重写方法
  void makeSound() {
    print('狗发出汪汪的声音');
  }
}
class Cat extends Animal {
  @override //重写方法
  void makeSound() {
    print('猫发出喵喵的声音');
  }
}
main() {
  Animal dog = new Dog();
  dog.makeSound();
  //狗发出汪汪的声音
  Animal cat = new Cat();
  cat.makeSound();
  //猫发出喵喵的声音
}
