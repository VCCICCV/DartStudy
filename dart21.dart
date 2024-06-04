/*
 * @Author       : vcciccv
 * @Date         : 2024-06-02 10:01:49
 * @LastEditors  : vcciccv
 * @LastEditTime : 2024-06-02 10:44:13
 * @FilePath     : \dart21.dart
 * @Description  : 
 * Copyright 2024 vcciccv, All Rights Reserved. 
 * 2024-06-02 10:01:49
 */
/* 2、匿名方法：没有名字的方法 */
//匿名方法的返回值赋值给str
var str = () {
  return "hello";
};

main() {
  str();
  /* 1、自执行方法 */
  //(匿名方法)()，也可以传参((接收参数){})(传入参数)
  (() {
    print('world');
  })();

  /* 
3、闭包
全局变量：常驻内存，污染全局
局部变量：不常驻内存，会被垃圾回收，不污染全局
闭包：函数嵌套函数，内部函数调用外部函数的变量或者参数，变量或参数不会被系统回收
做到了常驻内存但不污染全局
写法：函数嵌套函数并返回里面的函数
 */
  fn() {
    int a = 1;
    return () {
      //这里是一个匿名函数
      a++;
      print(a);
    };
  }

  var b = fn();
  b();
  b();
  b();
}

