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
