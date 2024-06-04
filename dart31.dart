/*
 * @Author       : vcciccv
 * @Date         : 2024-06-04 06:08:29
 * @LastEditors  : vcciccv
 * @LastEditTime : 2024-06-04 06:10:12
 * @FilePath     : \dart31.dart
 * @Description  : 多态
 * Copyright 2024 vcciccv, All Rights Reserved. 
 * 2024-06-04 06:08:29
 */
class Animal {
  void makeSound() {
    print('动物发出声音');
  }
}
class Dog extends Animal {
  @override
  void makeSound() {
    print('狗发出汪汪的声音');
  }
}
class Cat extends Animal {
  @override
  void makeSound() {
    print('猫发出喵喵的声音');
  }
}
/* 调用这一个函数传入不同的参数有不同的反应 */
void animalMakeSound(Animal animal) {
  animal.makeSound();
}
main() {
  Animal animal = Animal();
  Dog dog = Dog();
  Cat cat = Cat();

  animalMakeSound(animal); 
  // 动物发出声音
  animalMakeSound(dog);    
  // 狗发出汪汪的声音
  animalMakeSound(cat);    
  // 猫发出喵喵的声音
}