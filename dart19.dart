main() {
  List l1 = ['相机', '内存卡', '电池', '镜头'];
  //遍历方法其他聚类set、map也适用
/* for */
  for (int i = 0; i < l1.length; i++) {
    print(l1[i]);
  }
/* for in */
  for (var item in l1) {
    print(item);
  }
/* forEach */ //forEach内部是一个没有名字的函数,一行代码可以用=>
  l1.forEach((value)=>print(value));
  /* map */
  List l2 = [1, 2, 3, 4, 5, 6];
  var l3 = l2.map((value) {
    return value * 2;
  });
  print(l3);
  //(2, 4, 6, 8, 10, 12)
  /* where 筛选满足条件的元素*/
  var l4 = l2.where((val) {
    return val > 5;
  });
  print(l4);
  //(6)
  /* any 任何一个满足条件就返回true*/
  var l5 = l2.any((v) {
    return v > 5;
  });
  print(l5);
  //true
  /* every 每一个都满足条件返回true*/
  var l6 = l2.every((v) {
    return v > 5;
  });
  print(l6);
  //false
}
