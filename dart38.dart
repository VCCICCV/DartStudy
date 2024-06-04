/*
 * @Author       : vcciccv
 * @Date         : 2024-06-04 07:50:11
 * @LastEditors  : vcciccv
 * @LastEditTime : 2024-06-04 07:50:20
 * @FilePath     : \dart38.dart
 * @Description  : 计算属性
 * Copyright 2024 vcciccv, All Rights Reserved. 
 * 2024-06-04 07:50:11
 */
import 'dart:math';

class Circle {
  double radius;

  Circle(this.radius);

  double get diameter => radius * 2;

  set diameter(double value) {//这个方法不需要调用就计算出了结果
    radius = value / 2;
  }

  double get area => pi * radius * radius;//这个方法不需要调用就计算出了结果
}

void main() {
  var circle = Circle(5);
  print('半径：${circle.radius}');
  print('直径：${circle.diameter}');
  print('面积：${circle.area}');

  circle.diameter = 10;
  print('新半径：${circle.radius}');
  print('新直径：${circle.diameter}');
  print('新面积：${circle.area}');
}
