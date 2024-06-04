/*
 * @Author       : vcciccv
 * @Date         : 2024-06-04 06:29:41
 * @LastEditors  : vcciccv
 * @LastEditTime : 2024-06-04 06:43:04
 * @FilePath     : \dart33.dart
 * @Description  : 接口
 * Copyright 2024 vcciccv, All Rights Reserved. 
 * 2024-06-04 06:29:41
 */
/* 抽象接口 */
abstract class Drawable {
  void draw();
}

class Circle implements Drawable {
  @override
  void draw() {
    print('绘制圆形');
  }
}

class Square implements Drawable {
  @override
  void draw() {
    print('绘制正方形');
  }
}

void drawShape(Drawable shape) {
  shape.draw();
}

main() {
  Circle circle = Circle();
  Square square = Square();
  circle.draw();
  // 绘制圆形
  square.draw();
  // 绘制正方形

/* 多态 */
  drawShape(circle);
  // 绘制圆形
  drawShape(square);
  // 绘制正方形
}
