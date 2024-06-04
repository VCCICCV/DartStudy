/*
 * @Author       : vcciccv
 * @Date         : 2024-06-04 07:37:10
 * @LastEditors  : vcciccv
 * @LastEditTime : 2024-06-04 08:24:56
 * @FilePath     : \dart36.dart
 * @Description  : 泛型类，该栈可以接受多种类型的元素
 * Copyright 2024 vcciccv, All Rights Reserved. 
 * 2024-06-04 07:37:10
 */
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
