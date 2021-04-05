void main() {
  /**
      bai 1:
      - Khai bao bien kieu Int,String,float trong Dart
   */
  //Variable of type Int
  int i = 1;
  print("Data type in Dart:int , $i");
  //Variable of type String
  String s = 'This is variable of type String';
  print('Data type in Dart:String, $s');
  //Variable of type Float(In Dart language type Float = Double)
  double d = 2.233;
  print("Data type in Dart: float or Double, $d");

  /**
   * - Khai báo một biến kiêu Array,list,map,set
   * */
  //Variable of type List in Dart
  List<int> listInt = [1, 2, 3, 4, 5];
  print('Data type in Dart:list in Dart $listInt');
  List<String> listString = ['cat', 'dog', 'pig', 'parrot', 'chicken'];
  print('Data type in Dart:list in Dart $listString');
  // Variable of type Map
  Map<int, String> map01 = Map<int, String>();
  map01 = {
    1: "String type 01",
    2: "String type 02",
  };
  print('Data type in Dart: variable type map $map01');
  // or
  Map<int, String> map02 = {1: "String type 01", 2: "String type 02"};
  print('Data type in Dart: variable type map $map02');

  // Variable type Set
  Set dataTypeSet = new Set();
  dataTypeSet = {1, 2, 5, 8, 9};
  print('Data type in Dart:Variable type set $dataTypeSet');
  // or get element in dataTypeSet
  print('Data type in Dart:Variable type Set ${dataTypeSet.take(2)}');

  /**
   * -Khai báo một biến Final,const
   * */
  //Variable type Final: Value must be known at Run-time => Can't be changed after initialized
  final nameFinal = "This is my name";
  print('Data type in Dart:Variable type $nameFinal');
  //Variable type Const: Value must be know at Compile-time => Can't be changed after initialized
  const nameConst = "This is my name";
  print('Data type in Dart:Variable type $nameConst');

  /**
   * -Khai báo biến Dynamic type trong Dart
   * */

  //Variable type dynamic
  dynamic dynamicType = 'this is dynamic type in Dart';
  print('Data type in Dart:Variable type $dynamicType');
  // or
  dynamic dynamicType2 = 7749;
  print('Data type in Dart:Variable type $dynamicType2');
  //or
  dynamic dynamicType3 = 30.291231;
  print('Data type in Dart:Variable type $dynamicType3');
  //or
  var dynamicType4 = 7749.2121;
  print('Data type in Dart:Variable type $dynamicType4');
  //or
  var dynamicType5 = 'This is dynamicType ....';
  print('Data type in Dart:Variable type $dynamicType5');

  print('\n');
  /**
   * => dynamic type in Dart can be understood as optional data type and
   * is a basic data type in Dart.
   * */

  print('\n');

  /**
   * Bài 3: Toán Tử trong Dart
   * - Tổng hợp toán tử trong Dart
   * */
  var a = 2;
  var b = 3;
  //Toán tử số học
  print('Phép cộng: ${a + b}');
  print('phép trừ: ${b - a}');
  print('phép nhân: ${a * b}');
  print('phép chia: ${b / a}');
  print('phép chia lấy phần nguyên: ${b ~/ a}');
  print('phép chia lấy phần dư: ${b % a}');
  print('Đổi dấu biểu thức: ${-(a - b)}');
  print('Thêm 1 sau khi thực hiện biểu thức: ${a++}');
  print('Thêm 1 trước khi thực hiện biểu thức: ${++a}');
  print('Giảm 1 sau khi thực hiện biểu thức: ${a--}');
  print('Giảm 1 trước khi thực hiện biểu thức: ${--a}');
  print('\n');

  // Toán tử so sánh:
  var a1 = 10;
  var a2 = 10;
  var a3 = 11;
  var a5 = 12;
  if (a1 == a2) {
    print('Toán tử so sánh bằng');
  }
  if (a3 > a1) {
    print('Toán tử so sánh lơn hơn');
  }
  if (a1 < a3) {
    print('Toán tử so sánh nhỏ hơn');
  }
  if (a3 >= a1) {
    print('Toán tử so sánh lớn hơn hoặc bằng');
  }
  if (a1 <= a3) {
    print('Toán tử so sánh nhỏ hơn hoặc bằng');
  }
  print('\n');
  //Toán tử logic
  if (a1 > a3 || a2 < a3) {
    print('Toan tu logic Và. Nếu a1 > a3 hoặc a2 < a3 thì sẽ in ra dòng này ');
  }
  if (a1 < a3 && a2 < a3) {
    print('Toán tử logic Và. Nếu a1<a3 và a2 <a3 thì sẽ in ra dòng này ');
  }
  if (a1 != a3) {
    print('Toán tử khác\n');
  }

  /**
   * Toán tử 3 ngôi
   * */
  var a4 = (a3 > a1) ? a1 : a5;
  //Nếu như a3 > a1 => true thì a4 = a1 = 10 còn nếu như a3 > a1 => false thì a4 = a5 = 12
  print('Toán tử 3 ngôi trong Dart: $a4\n');

  /**
   * Bài 4: Câu điều kiện:
   * */
  // if/else sử dụng lại a1=10, a2=10, a3=11, a5=12
  if (a1 == a2) {
    print(
        'Nếu như a1 = a2 => true thì code sẽ chạy vào khối lệnh của if và thực hiện những dòng code bên trong ');
  } else {
    print(
        'Nếu như a1 = a2 => false thì code sẽ chạy vào khối lệnh của else và thực hiện các dòng code trong ');
  }
  print('\n');
  /**
   * -Khai báo câu điều kiện (if)(else if)(else)
   * */
  if (a1 == a2) {
    print(
        'Nếu như khối a1 = a2 => true thì tất cả những khối lệnh đằng sau sẽ dừng lại và không được thực thi.');
  } else if (a1 < a3) {
    print(
        'nếu như a1 = a2 => fals và a1 < a3 => true thì tất cả những khối (else if) và khối else ở đằng sau sẽ không\n được'
        'thực thi');
  } else {
    print(
        'Nếu tất cả các khối lệnh (if) và (else if) đều trả về false thì mặc định không lệnh của else '
        'sẽ đươc thực thi');
  }

  /**
   * -Sử dụng Switch -case
   * */
  //Ta có a4 = (a3 > a1) ? a1 : a5;
  print('\n');
  print('Sử dụng câu điều kiện (Switch case)');
  switch (a4) {
    case 10:
      print("a4 = $a4");
      break;
    case 11:
      print('a4 = $a4');
      break;
    case 12:
      print('a4 = $a4');
      break;
    // ignore: unnecessary_statements
    default:
      print('a4 = 16');
  }
  print('\n');

  /**
   * Bài 5: Sử dụng vòng lặp
   * */

  /**
   * - Vòng lặp For
   * */
  for (int i = 0; i < a4; i++) {
    print('Vòng lăp For: $i');
  }
  /**
   * -Vòng lặp do -while
   * */

  print('\n');
  do {
    print('Vòng lặp do - while: $a4');
    /**
     * Ví dự sử dụng Break và Continue
     * */
    a4--;
    if (a4 == 5) {
      print('Continue và a4 =5');
      continue;
    }
    if (a4 == 1) {
      print('Break và a4 = 1');
      break;
    }
  } while (a4 >= 0);
  /**
   * Vòng lặp while
   * */
  print('\n');
  while (a4 < 0) {
    print('Vòng lặp while $a4');
    a4++;
  }

  /**
   *  Bài 6: Try /Catch and Finally
   * */
  try {
    int i = int.parse('hello');
  } catch (e) {
    i = 1;
  } finally {
    print(i + 1);
  }
}
