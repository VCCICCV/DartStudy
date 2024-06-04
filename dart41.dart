/*
 * @Author       : vcciccv
 * @Date         : 2024-06-04 23:34:27
 * @LastEditors  : vcciccv
 * @LastEditTime : 2024-06-04 23:36:32
 * @FilePath     : \dart41.dart
 * @Description  : 
 * Copyright 2024 vcciccv, All Rights Reserved. 
 * 2024-06-04 23:34:27
 */
void main() {
  try {
    // 可能会引发异常的代码块
    int result = divide(10, 0);
    print('结果: $result');
  } on UnsupportedError {
    // 捕获特定类型的异常
    print('不能为0!');
    // 不能为0!
  } catch (e) {
    // 捕获其他类型的异常
    print('错误: $e');
  } finally {
    // 在异常处理之后始终执行的代码块
    print('最终解决办法');
    // 最终解决办法
  }
}
int divide(int a, int b) {
  return a ~/ b; // 使用整数除法运算符
}
