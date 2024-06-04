/*
 * @Author       : vcciccv
 * @Date         : 2024-06-04 08:29:59
 * @LastEditors  : vcciccv
 * @LastEditTime : 2024-06-04 08:29:59
 * @FilePath     : \dart40.dart
 * @Description  : 类型断言
 * Copyright 2024 vcciccv, All Rights Reserved. 
 * 2024-06-04 08:29:59
 */
void printLength(String? str) {
  //?代表可空类型
  try {
    print(str!.length); //!有值正常执行，无值抛出异常，在这里捕获异常所以打印str为空
  } catch (e) {
    print('str为空');
  }
}
/* 等价于下面的函数 */
void printLength2(String str){
  // ignore: unnecessary_null_comparison
  if(str!=null){
    print(str.length); 
  }else{
    print('str为空');
  }
}
main() {
  printLength(null);
}
