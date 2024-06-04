/*
 * @Author       : vcciccv
 * @Date         : 2024-06-05 00:16:16
 * @LastEditors  : vcciccv
 * @LastEditTime : 2024-06-05 00:16:24
 * @FilePath     : \dart44.dart
 * @Description  : 封闭类
 * Copyright 2024 vcciccv, All Rights Reserved. 
 * 2024-06-05 00:16:16
 */
sealed class Animal {
  void move() {
    print("跑");
  }
}

base class Cat extends Animal {}

main() {
  Animal cat = new Cat();
  cat.move();
  // 跑
}
