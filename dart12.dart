/*
 * @Author       : vcciccv
 * @Date         : 2024-06-01 03:16:42
 * @LastEditors  : vcciccv
 * @LastEditTime : 2024-06-01 03:39:10
 * @FilePath     : \study\dart10.dart
 * @Description  : Maps(map)
 * Copyright 2024 vcciccv, All Rights Reserved. 
 * 2024-06-01 03:16:42
 */
main() {
  Map week = {
    "monday": 1,
    "tuesday": 2,
    "wednesday": 3,
    "thursday": 4,
    "friday": 5,
    "saturday": 6,
    "sunday": 7
  };
  print(week);
  //{monday: 1, tuesday: 2, wednesday: 3, thursday: 4, friday: 5, saturday: 6, sunday: 7}
  print(week["monday"]);
  //1
  print(week.length);
  //7
  print(week.containsKey("monday")); //是否存在
  //true
  week.remove("monday"); //移除
  print(week);
  //{tuesday: 2, wednesday: 3, thursday: 4, friday: 5, saturday: 6, sunday: 7}
  week.putIfAbsent("monday", () => 10); //如果指定的键不存在，则将键值对添加到 Map 中
  print(week);
//{tuesday: 2, wednesday: 3, thursday: 4, friday: 5, saturday: 6, sunday: 7, monday: 10}

  var kv = Map<int, String>();
  kv[0] = 'hello';
  kv[1] = 'world';
  kv[2] = 'ha';
  print(kv);
  //{0: hello, 1: world, 2: ha}
}
