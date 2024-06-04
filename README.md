# DartStudy：用一包烟的时间掌握Dart
## Dart

不建议第一门语言学习Dart，如果你像我一样是Java开发者，学Java的默认全栈，js肯定也会，那Dart的学习成本对你来说非常低，不要对Dart望而生畏，觉得又得多学一门语言，相信我，Dart非常简单！

## Dart函数

Dart拥有类型推断，对于最开始编写的程序，main()函数作为应用入口，语句以`;`结尾，**按End键可以定位到语句末尾，Home键定位到语句句首**

```dart
main(){
  print('hello world');
}
```

dart将会推断为

```dart
void main(){
  print('hello world');
}
```

void代表该函数没有返回值

## Dart注释

在vscode中

```dart
void main() {
  /*print('hello world');*/     ///ctrl+shift+/
  // print('hello world');        ///ctrl+/
  ///print('hello world');
}
```

## Dart命名规则

- 变量名称必须是由数字、字母、下划线和美元符组成
- 变量名区分大小写
- 标识符开头不能是数字
- 标识符不能是保留字和关键字
- 变量的名字遵循小驼峰式命名（myNum）
- 类名遵循大驼峰式命名(MyNum)

## Dart变量

### 指定声明变量

可以使用`var`声明变量，dart自动推断为String类型

```dart
void main() {
  var intNum = 2024;
  print(intNum);
  var doubleNum = 22.15;
  print(doubluNum);
  var str1 = '字符串1';
  print(str1);
  var isTrue = false;
  print(isTrue);
}
```

结果

```dart
2024
22.15
字符串1
false
```

也可以直接用类型声明,建议直接指定类型，可读性更强

```dart
void main() {
  int intNum = 2024;
  print(intNum);
  double doubleNum = 22.14;
  print(doubleNum);
  String str1 = '字符串1';
  print(str1);
  bool isTrue = true;
  print(isTrue);
}
```

注意大小写区别

对于已经声明的类型，不能改变其类型,num被推断为double类型，将num修改为String

```dart
main() {
  var num = 22.15;
  num = 'string';
}
```

报错：A value of type 'String' can't be assigned to a variable of type 'double'.\nTry changing the type of the variable, or casting the right-hand type to 'double'.`

意思是String类型的值不能赋值给double类型的变量。\n尝试改变变量的类型，或者将右变量类型转换为'double'

### 未指定声明变量

dynamic可以存储任意类型，变量被声明为dynamic后，编译器则会关闭对此变量的类型检查，这种用法不安全

```dart
main() {
  dynamic str = '张三';
  print(str);
  str = 1;
  print(str);
}
```

结果

```dart
张三
1
```

## Dart常量

常量赋值后不能被修改

```dart
main() {
  const PI = 3.1415926;
  PI = 3;
  print(PI);
  final PI2 = 3.1415926;
  PI2 = 3;
  print(PI2);
}
```

报错：

Error: Can't assign to the const variable 'PI'

Error: Can't assign to the final variable 'PI2'

区别：

* const编译时得到常量值，赋值后不能被修改
* final运行时常量，可以先不赋值，在运行时赋值一次，赋值后不能被修改

```dart
main() {
  const timeNow = new DateTime.now();//错误
  print(timeNow);
  final timeNow2 = new DateTime.now();//运行时才赋值
  print(timeNow2);
}
```

## Dart数据类型

- [Numbers](https://dart.cn/language/built-in-types#numbers) (`int`, `double`)
- [Strings](https://dart.cn/language/built-in-types#strings) (`String`)
- [Booleans](https://dart.cn/language/built-in-types#booleans) (`bool`)

聚合类型

- [Records](https://dart.cn/language/records) (`(value1, value2)`)(dart3.0后才有的特性)
- [Lists](https://dart.cn/language/collections#lists) (`List`, 数组)
- [Sets](https://dart.cn/language/collections#sets) (`Set`)
- [Maps](https://dart.cn/language/collections#maps) (`Map`)

看起来好多好复杂，其实复制到你自己的编辑器里运行一遍就会发现很简单，不想写代码就克隆这个库

### [Numbers](https://dart.cn/language/built-in-types#numbers) (`int`, `double`)

```dart
import 'dart:math';
void main() {
  /* 运算符 */
  int intNum = 123;
  double doubleNum = 1.43;
  print(intNum + doubleNum);
  //124.43
  print(intNum - doubleNum);
  //121.57
  print(intNum * doubleNum);
  //175.89
  print(intNum / doubleNum);
  //86.01398601398601
  print(intNum += 8);
  //131
  /* 位运算 */
  print(1 << 1); //左移扩大二倍，相当于*2
  //2
  print(1 >> 1); //右移缩小二倍，相当于/2
  //0
  print(3 | 4); //0011 | 0100 == 0111
  //7
  print(3 & 4); // 0011 & 0100 == 0000
  print(-2 >>>
      1); //无符号右移1111111111111111111111111111111111111111111111111111111111111110->0111111111111111111111111111111111111111111111111111111111111111
  //0
/* 字符串转数字 */
  var intNum2 = int.parse('1111111111111111');
  print(intNum2);
  //1111111111111111
  var doubleNum2 = double.parse("2.3232");
  print(doubleNum2);
  //2.3232
  double lnValue = ln10;
  print(lnValue);
  //2.302585092994046
  double PI = pi;
  print(PI);
  // 3.141592653589793
  int hex = 0xDEADBEEF;
  print(hex);
  // 3735928559
  double exponents = 1.42e5;
  print(exponents);
  // 142000.0
  /* 随机数 */
  var intValue = Random().nextInt(10);
  print(intValue); // Value is >= 0 and < 10.
  var doubleValue = Random().nextDouble();
  print(doubleValue); // Value is >= 0.0 and < 1.0.
  var boolValue = Random().nextBool();
  print(boolValue);
  /* 方法 */
  int a = 1;
  int b = 2;
  int c = 30;
  print(max(a, b));
  // 2
  print(min(a, b));
  //1
  print(sqrt(c));
  //5.477225575051661
}

```

[运算符用法](https://dart.cn/language/operators#bitwise-and-shift-operators)

### [Strings](https://dart.cn/language/built-in-types#strings) (`String`)

```dart
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
```

### [Booleans](https://dart.cn/language/built-in-types#booleans) (`bool`)

```dart
main() {
  bool flag = true;
  print(flag);
  //true
  var fullName = '';
  if (fullName.isEmpty) {
    print("空");
    //空
  } else {
    print("非空");
  }
}
```

### [Records](https://dart.cn/language/records) (`(value1, value2)`)(dart3.0后才有的特性,类似于python里的元组)

记录是一种匿名的、不可变的聚合类型，记录对象的数据不允许被修改

位置字段用$访问，命名字段直接.

```dart
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
```



### [Lists](https://dart.cn/language/collections#lists) (`List`, 数组)

```dart
main() {
  var l1 = ["张三", 21, true];
  print(l1);
  //[张三, 21, true]
  print(l1[0]);
  //张三
  print(l1.length);
  //3
  print(l1.isEmpty);
  //false
  print(l1.isNotEmpty);
  //true
  print(l1.reversed); //反转显示列表
  // (true, 21, 张三)
  print(l1.reversed.toList()); //反转并转换成列表
  // [true, 21, 张三]
  l1.fillRange(1, 2, '左闭右开');
  print(l1);
  //[张三, 左闭右开, true]
  String str = l1.join(','); //以，连接转换为字符串
  print(str);
  //张三,左闭右开,true
  l1 = str.split(','); //以，分割为列表
  // [张三, 左闭右开, true]
  print(l1);
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
  l7.sort((a, b) => a.compareTo(b)); //按小到大排序
  print(l7);
  //[-3, -1, 2, 4, 5]
  l7.sort((a, b) => b.compareTo(a)); //按大到小排序
  print(l7);
}
```

[方法](https://api.dart.cn/stable/3.4.2/dart-core/Set-class.html)

### [Sets](https://dart.cn/language/collections#sets) (`Set`)

无序集合,不重复的元素的集合

```dart
main() {
  var names = <String>{
    '张三',
    '李四',
    '王五',
    '赵六',
    '孙七',
  };
  names.addAll({'周八', '吴九'});
  names.add('郑十');
  print(names);
  //{张三, 李四, 王五, 赵六, 孙七, 周八, 吴九, 郑十}
  print(names.length);
  //8
  names.remove("郑十");
  print(names);
  //{张三, 李四, 王五, 赵六, 孙七, 周八, 吴九}
  print(names.contains('王八')); //是否包含
  // false
  print(names.containsAll(['周八', '吴九'])); //是否包含
  //true

  var name1 = Set<String>();
  name1.addAll(['jack', 'tony', 'max']);

  var name2 = Set.from(['tony', 'bily']);
  print(name2);
  //{tony, bily}
  var intersection = name1.intersection(name2);//查看交集
  print(intersection);
  //{tony}
}
```

### [Maps](https://dart.cn/language/collections#maps) (`Map`)

映射

```dart
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
```

[map用法](https://api.dart.cn/stable/3.4.2/dart-core/Map-class.html)

## Dart算术运算符

```dart
main() {
  int a = 13;
  int b = 5;
  print(a + b); //加
  print(a - b); //减
  print(a * b); //乘
  print(a / b); //除
  print(a % b); //其余
  print(a ~/ b); //取整
}
```

## Dart关系运算符

```dart
main() {
  int a = 5;
  int b = 3;
  print(a == b); //判断是否相等
  print(a != b); //判断是否不等
  print(a > b); //判断是否大于
  print(a < b); //判断是否小于
  print(a >= b); //判断是否大于等于
  print(a <= b); //判断是否小于等于
}
```

## Dart逻辑运算符

```dart
main() {
  bool a = true;
  bool b = false;

  print(!a); //取反
  print(a && b); //与
  print(a || b); //或,全为flase输出false
}
```



## Dart赋值运算符

```dart
main() {
  double a = 4;
  double b = 5;
  print(a += b);//a=a+b
  print(a -= b);
  print(a *= b);
  print(a /= 2);
  print(a %= b);
}
```

## Dart条件表达式

```dart
main() {
  var flag = true;
  if (flag) {
    print("true");
  } else {
    print(false);
  }
/* 三目运算 */
  String str = flag ? 'true' : 'false';
/* ？？ */
  var a;
  var b = a ?? 10; //a有值则是原值，空则赋值
  print(b);
}
```

## Dart流程控制

```dart
main() {
  for (int i = 0; i < 10; i++) {
    print(i);
  }
  /* 计5的阶乘 */
  int sum = 1;
  for (int j = 1; j <= 5; j++) {
    sum *= j;
  }
  print(sum);
  /* while */
  int i = 0;
  while (i<10) {
    i += 1;
    print("while");
  }
}
```

do while、break、continue和其他语言一样

## Dart遍历

遍历方法其他聚类set、map也适用

```dart
main() {
  List l1 = ['相机', '内存卡', '电池', '镜头'];
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
```

## Dart函数

```dart
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
```

```dart
main() {
  str();
  /* 自执行方法 */
  //(匿名方法)()，也可以传参((接收参数){})(传入参数)
  (() {
    print('world');
  })();
}
/* 匿名方法：没有名字的方法 */
//匿名方法的返回值赋值给str
var str = () {
  return "hello";
};
```

闭包

```dart
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
```

## Dart class类

```dart
//late显式声明一个非空的变量，但不初始化
// late延迟初始化变量
class Person {
  int id = 1;
  String name = '张三';
  late int age;
  void getInfo() {
    print("$id***$name");
    print("${this.id}***${this.name}"); //this指这个类
  }
  void setInfo(int age) {
    this.age = age;
  }
}
main() {
  //实例化
  var p = new Person();
  print(p.name);
  //张三
  p.getInfo();
  // 1***张三
  // 1***张三
  p.setInfo(21); //age初始化延迟到了实例化之后，如果不初始化，p.age会报错age没有初始化
  print(p.age);
  //21
}
```

## Dart构造函数

无参构造

```dart
class Person {
  int id = 1;
  String name = '张三';
  late int age;

/* 构造函数 */
  Person() {
     print('这是默认构造函数，实例化时触发');
   }
}

main() {
  Person p = new Person();
  //这是默认构造函数，实例化时触发
}
```

有参构造

```dart
class Person {
  int id = 1;
  String name = '张三';
  late int age;
  Person(int age) {
    this.age = age;
    print('有参构造');
  }
  /* 简写 */
  // Person(this.age);
}
main() {
  Person p = new Person(21);
  //有参构造
  print(p.age);
  //21
}
```

命名构造函数

```dart
class Person {
  late int id; //late延迟初始化
  late String name;
  late int age;
  Person(this.id, this.name, this.age);

  /* 命名构造函数 */
  Person.setName(String name) {
    this.name = name;
  }
  Person.setAge(int age) {
    this.age = age;
  }
}

main() {
  Person p1 = new Person(1, '王五', 21);
  print(p1.id);
  //1
  Person p2 = new Person.setName('王五');
  print(p2.name);//其他属性没有初始化，访问会报错没有初始化
  //王五
  var p3 = new Person.setAge(21);
  print(p3.age);
}
```

## Dart计算属性get/set

```dart
import 'dart:math';

class Circle {
  double radius;

  Circle(this.radius);

  double get diameter => radius * 2;

  set diameter(double value) {//这个方法不需要调用就计算出了结果
    radius = value / 2;
  }

  double get area => pi * radius * radius;//这个方法不需要调用就计算出了结果
}

void main() {
  var circle = Circle(5);
  print('半径：${circle.radius}');
  print('直径：${circle.diameter}');
  print('面积：${circle.area}');

  circle.diameter = 10;
  print('新半径：${circle.radius}');
  print('新直径：${circle.diameter}');
  print('新面积：${circle.area}');
}
```

## Dart面向对象编程(oop)

**封装**:将一些属性和相关方法封装在一个对象中，对外隐藏内部具体实现细节

**可见性**:Dart只有public和private，默认为public,设置private保证谁实例谁用

定义私有缺一不可

* 需在属性或者方法前加**下划线_**
* 且将class类抽离成**单独的文件**存放
* 访问私有方法通过共有方法间接访问

```dart
import 'dart26.dart';//导入class
main() {
  Person p1 = new Person(1, '王五', 21);
  print(p1.getName());
}
```

dart26.dart

```dart
class Person {
  late int _id; //late延迟初始化
  late String _name;
  late int _age;
  Person(this._id, this._name, this._age);
  getName() {
    return this._name;
  }
}
```

错误写法

```dart
class Child {
  late int _age;
  late String _name;
}

main() {
  Child c = new Child();
  /* 这种放在一个文件里的做法虽然封装了属性，但没有保证安全性，只有将class抽离成单个文件才实现了真正的private */
  c._age = 21;
  print(c._age);
  // 21
}
```

**继承**:一个子类”拥有“父类的属性,实现代码复用

通过`extends`关键字实现,只继承属性和方法,不继承构造函数

```dart
class Father {
  int age=40;
  String name='张三';
  void printInfo() {
    print("${this.age}-----${this.name}");
  }
}
class Child extends Father {

}
main() {
  Child c = new Child();
  c.printInfo();
  //40-----张三
}
```

* 构造函数不能被继承,`super`调用父类构造函数,通过.xxx可以调用命名构造函数

* 子类可以重写父类方法

* 子类可以添加额外的方法和属性

```dart
class Father {
  int age;
  String name;
  Father(this.age, this.name);
    //命名构造函数
  Father.setInfo(this.age, this.name);
  void printInfo() {
    print("${this.age}-----${this.name}");
  }

  void run() {
    print('父类方法');
  }
}

class Child extends Father {
  Child(super.age, super.name); //构造函数不能继承，通过super关键字给父类构造函数传参
  Child.setInfo(super.age, super.name);
  //重写父类方法
  @override
  void run() {
    print('重写父类方法');
  }
}

main() {
  Father f = new Father(40, '张三');
  f.printInfo();
  // 40-----张三F
  f.run();
  //父类方法
  Father f2 = new Father.setInfo(30, '老王');
  f2.printInfo();
  //30-----老王
  Child c = new Child(20, '李四');
  c.printInfo();
  //20-----李四
  c.run();
  //重写父类方法
}
```

学java的看到这里会感到非常亲切

**多态**:去调用同一函数，产生了不同的行为

```dart
class Animal {
  void makeSound() {
    print('动物发出声音');
  }
}
class Dog extends Animal {
  @override
  void makeSound() {
    print('狗发出汪汪的声音');
  }
}
class Cat extends Animal {
  @override
  void makeSound() {
    print('猫发出喵喵的声音');
  }
}
/* 调用这一个函数传入不同的参数有不同的反应 */
void animalMakeSound(Animal animal) {
  animal.makeSound();
}
main() {
  Animal animal = Animal();
  Dog dog = Dog();
  Cat cat = Cat();

  animalMakeSound(animal); 
  // 动物发出声音
  animalMakeSound(dog);    
  // 狗发出汪汪的声音
  animalMakeSound(cat);    
  // 猫发出喵喵的声音
}
```

## Dart静态成员

通过`static`关键字实现，看到这里你会发现Dart的语法是js+ts+python+java+c+++kotlin,终极缝合怪

如果Person类按以下方式定义，我们需要实例化后通过实例对象.name去访问name

```
class Person {
  int age = 1;
  String name = '张三';
}
```

而添加static关键字后直接通过类名来访问

```dart
class Person {
  int age = 1;
  /* 静态成员 */
  static String name = '张三';
  /* 静态方法 只能访问静态成员*/
  static void show() {
    print(Person.name);
  }
  /* 非静态方法 可以访问静态成员和非静态成员*/
  void printInfo() {
    print(this.age);//非静态属性
    print(Person.name);//静态属性
    Person.show();//静态方法
  }
}
main() {
  print(Person.name);
  // 张三
  Person.show();
  // 张三
  Person p = new Person();
  p.printInfo();
  // 1
  // 张三
  // 张三
}
```

## Dart抽象类

通过`abstract`关键字实现

* 抽象类不能被实例化,只有继承抽象类的子类才能被实例化
* 子类继承抽象类必须重写其中的抽象方法
* 抽象方法不能用`abstract`关键字声明,没有方法体的方法称为抽象方法
* 实现抽象接口必须实现抽象接口里的所有属性和方法

```dart
abstract class Animal {
  makeSound();
}
class Dog extends Animal {
  @override //重写方法
  void makeSound() {
    print('狗发出汪汪的声音');
  }
}
class Cat extends Animal {
  @override //重写方法
  void makeSound() {
    print('猫发出喵喵的声音');
  }
}
main() {
  Animal dog = new Dog();
  dog.makeSound();
  //狗发出汪汪的声音
  Animal cat = new Cat();
  cat.makeSound();
  //猫发出喵喵的声音
}
```

都调用了makeSound方法,其实这也是一个多态的例子

## Dart接口

接口（Interface）是一种约定，用于定义类应该遵循的行为

Dart没有interface关键字,声明class就是接口,通过`implements`关键字实现接口

```dart
/* 抽象接口 */
abstract class Drawable {
  void draw();
}
class Circle implements Drawable {
  @override
  void draw() {
    print('绘制圆形');
  }
}
class Square implements Drawable {
  @override
  void draw() {
    print('绘制正方形');
  }
}
void drawShape(Drawable shape) {
  shape.draw();
}
main() {
  Circle circle = Circle();
  Square square = Square();
  circle.draw();
  // 绘制圆形
  square.draw();
  // 绘制正方形

/* 多态 */
  drawShape(circle);
  // 绘制圆形
  drawShape(square);
  // 绘制正方形
}
```

## Dart Mixin

Java中继承只能有一个父类,Dart也是一样的,Java可以通过 孙extends父,父extends爷来实现多重继承,Dart通过with`with`关键字多重继承来实现代码重用,但它**不是继承**

userService重用了日志和通知的方法

productService重用了日志和通知的方法

```dart
mixin LoggerMixin {
  void log(String message) {
    print('日志记录：$message');
  }
}
mixin MessageMixin {
  void note(String message) {
    print('通知信息：$message');
  }
}
class UserService with LoggerMixin, MessageMixin {
  void createUser(String username) {
    log('创建用户：$username');
    note('通知用户：$username');
  }
}
class ProductService with LoggerMixin, MessageMixin {
  void createProduct(String name) {
    log('创建产品：$name');
    note('通知产品：$name');
  }
}
main() {
  var userService = UserService();
  userService.createUser('张三');

  var productService = ProductService();
  productService.createProduct('手机');
}
```

## Dart泛型

* 解决方法/类/接口的重用性,使其支持多种类型
* 避免类型转换和运行时错误
* 抽象和通用性
* 减少重复代码和增加性能,泛型是在编译时进行类型擦除的,不会引入运行时的性能开销

**泛型方法**

```dart
T getInfo<T>(T value) {
  return value;
}
main() {
  print(getInfo(21));
  print(getInfo('既可以返回num又可以返回String'));
  /* 指定类型 */
  print(getInfo<List> ([1,2,3,4,5]));
  //[1, 2, 3, 4, 5]
} 
```

**泛型类**，该栈可以接受多种类型的元素

```dart
class Stack<T> {
  List<T> items = [];
  void push(T item) {
    items.add(item);
  }

  T? pop() {
    //?代表可空类型
    if (items.isNotEmpty) {
      return items.removeLast();
    }
    return null;
  }

  bool get isEmpty => items.isEmpty; //计算属性
}

main() {
  var stack = Stack<int>();
  // 入栈
  stack.push(1);
  stack.push(2);
  stack.push(3);
  //出栈
  while (!stack.isEmpty) {
    print(stack.pop());
  }

  var stringStack = Stack<String>();
  // 入栈
  stringStack.push('Hello');
  stringStack.push('World');
  stringStack.push('Dart');
  //出栈
  while (!stringStack.isEmpty) {
    print(stringStack.pop());
  }
}
```

**泛型接口**

Dart compareTo函数

- 如果指定的数与参数相等返回 0。
- 如果指定的数小于参数返回 -1。
- 如果指定的数大于参数返回 1

```dart
abstract class Comparable<T> {//支持特定类型
  int compareTo(T other);
}

class Person implements Comparable<Person> {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  int compareTo(Person other) {
    return age.compareTo(other.age);
  }
}

void main() {
  var san = Person('张三', 30);
  var si = Person('李四', 25);

  print(san.compareTo(si));
  // 1
  print(si.compareTo(san));
  // -1
}
```

## is类型判断

is用于判断是不是某种类型

```dart
class Person {
  int age = 1;
  String name = '张三';

  void printInfo() {
    print(this.name);
  }
}
main() {
  Person p = new Person();
  if (p is Person) {
    p.name = '王八';
  }
  p.printInfo();
  //王八
  if (p is Object) {//所有类型都继承于object
    p.name = '李四';
  }
  p.printInfo();
  //李四
}
```

## Dart级联操作

```dart
class Person {
  int age = 1;
  String name = '张三';
  void printInfo() {
    print(this.age);
  }
}
main() {
  Person p = new Person();
  // p.printInfo();
  // //1
  // p.age = 40;
  // p.printInfo();
  // //40
  /* 以上代码可以简化为 */
  p
    ..age = 1
    ..printInfo()
    ..age = 40
    ..printInfo();
}
```

## Dart异步方法

```dat
Future<String> fetchData() async {//async将方法变为异步方法
  // 延时模拟异步操作
  await Future.delayed(Duration(seconds: 2));
  return '数据已获取';
}

void main() async {
  print('开始获取数据');
  String result = await fetchData();//await等待方法执行完成
  print(result);
  print('数据获取完成');
}
```

## 空安全和类型断言

```dart
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
```

## 性能优化

通过`const`关键字实现常量构造函数,传入的数据相同构建的对象内存地址也相同,相同实例共享存储空间,不同数据的实例新建空间

成员变量需要定义为`final`,运行时赋值一次后不能再更改

```dart
class Person {
  final String name;
  final int age;

  const Person(this.name, this.age);
}

void main() {
  var person1 = const Person('张三', 25);
  var person2 = const Person('张三', 25);
  var person3 = const Person('李四', 30);

  print(identical(person1, person2)); //查看两个对象是否是同一个实例
  // true
  print(identical(person1, person3)); 
  // false
}
```

## Dart库

* https://pub.dev/packages

* https://pub.flutter-io.cn/packages

安装库

方式一

新建 `pubspec.yaml`文件(flutter应用存在该文件不需要新建)

添加依赖配置

执行`pub get`

或者

执行`flutter pub get`(pubspec.yaml文件存在)

方式二

执行`flutter pub add css_colors`添加包

执行`flutter pub remove css_colors`删除包

```dart
# 包重命名
import '地址' as 名字;
#只导入部分
import '地址' show 名字;
#隐藏部分
import '地址' hide 名字;
```

