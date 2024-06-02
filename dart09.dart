main() {
  var record =
      ('first', a: 2, b: true, 'last'); //'first' 和 'last' 是位置字段，而 a 和 b 是命名字段
  //(first, last, a: 2, b: true)
  print(record.runtimeType); //运行时类型
  //(String, String, {int a, bool b})
  print(record.$1); //位置字段没有冒号
  //first
  print(record.$2); //位置字段没有冒号
  //last
  print(record.a); //命名字段有冒号
  // 2
  print(record.b); //命名字段有冒号
  // true

  /* 指定位置类型 */
  (int x, int y) recordXY = (3, 4);
  print(recordXY);
  //(3, 4)
  print(recordXY.$1); //位置字段
  //3
  /* 指定命名类型 */
  ({int x, int y}) recordXY2 = (x: 3, y: 4);
  print(recordXY2);
  //(x: 3, y: 4)
  print(recordXY2.x); //命名字段
  //3

  (int x, int y, int z) point = (1, 2, 3);
  (int r, int g, int b) color = (1, 2, 3);

  print(point == color); //两个记录具有相同的形状（字段集），并且其对应字段具有相同的值，则它们相等
  //true
}
