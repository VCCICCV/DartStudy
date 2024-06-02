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
