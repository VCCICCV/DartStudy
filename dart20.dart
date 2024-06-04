/*
 * @Author       : vcciccv
 * @Date         : 2024-06-02 09:48:32
 * @LastEditors  : vcciccv
 * @LastEditTime : 2024-06-02 09:58:40
 * @FilePath     : \dart20.dart
 * @Description  : 函数
 * Copyright 2024 vcciccv, All Rights Reserved. 
 * 2024-06-02 09:48:32
 */
int add(int a, int b) {
  return a * b;
}

main() {
  print("自定义方法" + add(1, 2).toString());
  //自定义方法2
  fn2(fn1); //将fn1函数作为参数传入fn2
  //方法1
}

fn1() {
  print("方法1");
}

fn2(fn) {
  fn(); //执行传入的方法
}
