class GenericClass<E, T> {
  late E parameter1;
  late T parameter2;

  GenericClass(E parameter1, T parameter2) {
    this.parameter1 = parameter1;
    this.parameter2 = parameter2;
  }

  show() {
    print(this.parameter1);
    print(this.parameter2);
  }
}

funcGeneric<T>(T parameter) {
  print(parameter);
}

Future<void> getUserOrder() {
  return Future.delayed(Duration(seconds: 5), () => print('Large Latte'));
}

void main() {
  /**
   * String
   * */
  var a = new GenericClass<String, String>("THE MAN", "GENERIC CLASS");
  a.show();
  funcGeneric<String>('111');
  print('');
  /**
   * Int
   * */
  var b = new GenericClass<int, int>(45, 52);
  b.show();
  funcGeneric<int>(1111);
  print('');
  /**
   * double
   * */

  var c = new GenericClass<double, double>(2.22, 3.45);
  c.show();
  funcGeneric<double>(1111.1111);
}
