/*
 * @Author       : vcciccv
 * @Date         : 2024-06-01 01:39:18
 * @LastEditors  : vcciccv
 * @LastEditTime : 2024-06-01 02:37:33
 * @FilePath     : \study\dart07.dart
 * @Description  : 数据类型Numbers (int, double)
 * math库用法https://api.dart.cn/stable/3.4.2/dart-math/dart-math-library.html
 * Copyright 2024 vcciccv, All Rights Reserved. 
 * 2024-06-01 01:39:18
 */
import 'dart:math';

void main() {
  /* 运算符 */
  int intNum = 123;
  double doubleNum = 1.43;
  print(intNum + doubleNum);
  //124.43
  print(intNum - doubleNum);
  //121.57
  print(intNum * doubleNum);
  //175.89
  print(intNum / doubleNum);
  //86.01398601398601
  print(intNum += 8);
  //131
  /* 位运算 */
  print(1 << 1); //左移扩大二倍，相当于*2
  //2
  print(1 >> 1); //右移缩小二倍，相当于/2
  //0
  print(3 | 4); //0011 | 0100 == 0111
  //7
  print(3 & 4); // 0011 & 0100 == 0000
  print(-2 >>>
      1); //无符号右移1111111111111111111111111111111111111111111111111111111111111110->0111111111111111111111111111111111111111111111111111111111111111
  //0
/* 字符串转数字 */
  var intNum2 = int.parse('1111111111111111');
  print(intNum2);
  //1111111111111111
  var doubleNum2 = double.parse("2.3232");
  print(doubleNum2);
  //2.3232
  double lnValue = ln10;
  print(lnValue);
  //2.302585092994046
  double PI = pi;
  print(PI);
  // 3.141592653589793
  int hex = 0xDEADBEEF;
  print(hex);
  // 3735928559
  double exponents = 1.42e5;
  print(exponents);
  // 142000.0
  /* 随机数 */
  var intValue = Random().nextInt(10);
  print(intValue); // Value is >= 0 and < 10.
  var doubleValue = Random().nextDouble();
  print(doubleValue); // Value is >= 0.0 and < 1.0.
  var boolValue = Random().nextBool();
  print(boolValue);
  /* 方法 */
  int a = 1;
  int b = 2;
  int c = 30;
  print(max(a, b));
  // 2
  print(min(a, b));
  //1
  print(sqrt(c));
  //5.477225575051661
}
