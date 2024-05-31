/*
 * @Author       : vcciccv
 * @Date         : 2024-06-01 02:43:59
 * @LastEditors  : vcciccv
 * @LastEditTime : 2024-06-01 03:21:31
 * @FilePath     : \study\dart09.dart
 * @Description  : 数据类型List(数组)
 * Copyright 2024 vcciccv, All Rights Reserved. 
 * 2024-06-01 02:43:59
 */
main() {
  var l1 = ["张三", 21, true];
  print(l1);
  //[张三, 21, true]
  print(l1[0]);
  //张三
  print(l1.length);
  //3

  List l2 = <String>["这", "是", "字符串"];
  print(l2);
  //[这, 是, 字符串]

  List l3 = [];
  print(l3);
  //[]
  l3.add("我是");
  l3.add("添加");
  l3.addAll(['多条', '数组']);
  print(l3);
  //[我是, 添加, 多条, 数组]
  // l3.remove('数组');//与removeAt效果相同
  l3.removeAt(3);
  print(l3);
  //[我是, 添加, 多条]
  l3.clear();
  print(l3);
  //[]

  /* 常量列表 */
  List l4 = const [1, 2, 3];
  // l4.add(1);//检查时不报错，运行时常量不能修改而报错
  print(l4);

  List l5 = <int>[];
  l5 = List<int>.filled(5, 4); //5个4,固定长度无法再修改
  // l5.add(1);//检查时不报错，运行时报错Cannot add to a fixed-length list
  print(l5);
  // [4, 4, 4, 4, 4]

  List l6 = <int>[1, 2, 3, 4, 5, 6];
  print(l6.indexOf(2)); //找参数的索引，没找到返回-1
  //1

  List<int> l7 = [5, -1, 4, -3, 2];
  l7.sort((a, b) => a.abs().compareTo(b.abs())); //abs返回绝对值，按绝对值排序
  print(l7);
  // [-1, 2, -3, 4, 5]
  l7.sort((a, b) => a.compareTo(b));//按小到大排序
  print(l7);
  //[-3, -1, 2, 4, 5]
  l7.sort((a, b) => b.compareTo(a));//按大到小排序
  print(l7);
}
