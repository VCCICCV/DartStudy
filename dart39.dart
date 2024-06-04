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
