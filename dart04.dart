/*
 * @Author       : vcciccv
 * @Date         : 2024-06-01 00:20:31
 * @LastEditors  : vcciccv
 * @LastEditTime : 2024-06-01 00:33:48
 * @FilePath     : \study\dart04.dart
 * @Description  : dynamic可以存储任意类型，变量被声明为dynamic后，编译器则会关闭对此变量的类型检查，这种用法不安全
 * Copyright 2024 vcciccv, All Rights Reserved. 
 * 2024-06-01 00:20:31
 */
main() {
  dynamic str = '张三';
  print(str);
  str = 1;
  print(str);
}
