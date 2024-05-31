/*
 * @Author       : vcciccv
 * @Date         : 2024-06-01 00:33:34
 * @LastEditors  : vcciccv
 * @LastEditTime : 2024-06-01 01:02:47
 * @FilePath     : \study\dart05.dart
 * @Description  : 
 * 常量赋值后不能被修改
 * const编译时得到常量值，赋值后不能被修改
 * final运行时常量，可以先不赋值，在运行时赋值一次，赋值一次后不能被修改
 * Copyright 2024 vcciccv, All Rights Reserved. 
 * 2024-06-01 00:33:34
 */
main() {
  // const PI = 3.1415926;
  // PI = 3;
  // print(PI);

  // final PI = 3.1415926;
  // PI = 3;
  // print(PI);

  // const timeNow = new DateTime.now();//错误
  // print(timeNow);
  final timeNow2 = new DateTime.now(); //运行时才赋值
  print(timeNow2);
}