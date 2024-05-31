/*
 * @Author       : vcciccv
 * @Date         : 2024-06-01 01:02:53
 * @LastEditors  : vcciccv
 * @LastEditTime : 2024-06-01 02:19:14
 * @FilePath     : \study\dart06.dart
 * @Description  : 数据类型Strings (String) UTF-16
 * Copyright 2024 vcciccv, All Rights Reserved. 
 * 2024-06-01 01:02:53
 */
main() {
  // Strings (String) UTF-16
  var str1 = '张三';
  var str2 = "李四";
  String str3 = "hello world";
  /* 字符串拼接 */
  print(str1 + "和" + str2);
  //张三和李四
  print("$str1 $str2");
  //张三 李四
  print("括号里使用表达式${str3.toUpperCase()}");
  // 括号里使用表达式HELLO WORLD
  print(str3.toUpperCase());
  //HELLO WORLD

  String str4 = '''
  多行字符串
    第二行
  第三行
  ''';
  print(str4);
  //多行字符串
  //  第二行
  //第三行

  var str5 = '这是 '
      '一段使用'
      " 多个引号的文字";
  print(str5);
  // 这是 一段使用 多个引号的文字

  String str6 = '这不是原始字符串\n有换行\n';
  String str7 = r'这是原始字符串\n没换行\n';
  print(str6);
  //这不是原始字符串
  //有换行
  //
  print(str7);
  //这是原始字符串\n没换行\n
  /* 数字转字符串 */
  String str8 = 1.toString();
  print(str8);
  //1
  String str9 = 3.14159.toStringAsFixed(2);
  print(str9);
  //3.14
}
