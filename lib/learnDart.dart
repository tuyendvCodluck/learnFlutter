
void main() {
  /**
   * Lesson 2:
   * - Write a function converts 2 variable a,b passed
   * */
  //The function converts 2 values a va b
  foo(3);
  print('');
  /**
   * - Write a function the passes optional positional
   * */
  optionalPositional('positional');
  print('');
  /**
   * - function anonymous
   * */
  var list = ['no complain', 'keep do it', 'and', 'good job'];
  list.forEach((element) {
    print('print element use anonymous function: $element');
  });
  /**
   * - Function lambda
   * */
  print('');
  list.forEach((element) => print('print element use lambda: $element'));

  /**
   * Hàm trả về giá trị mặc dịnh.
   * */
  print('');
  print(sum(1, 2));
  // or
  print(sum(1, 3, 7));

  /**
   * Hàm nhận parameter là hàm
   * */
  var result = sumOf(3, (double n) {
    return n * 3;
  });
  print(result);

  /**
   * - use extension function
   * */
  print('10000000000'.parseInt());
  print('1232141.03354'.parseDouble());
  'Văn Tuyền'.printFormat();

  /**
   * Use Enum Class
   * */
  var user = Group.guest;
  switch (user) {
    case Group.guest:
      print('guest');
      break;
    case Group.accounting:
      print('accounting');
      break;
    case Group.admin:
      print('admin');
      break;
    case Group.member:
      print('member');
      break;
    default:
      print('staff');
  }
}

//The function converts 2 variable a,b passed
void foo(int a) {
  print('The Function converts 2 values: $a');
}

/// Biến optional positional là paramter mà có thế bỏ qua khi gọi hàm, sử dụng nó bằng cách
/// nhúng [], nếu không truyền tham số vào parameter Optional positional thì giá trị mặc đinh bằng null.
/// Do trong project đã được kích hoạt safe nullable nên không thể bỏ trống parameter optional positional
/// */

void optionalPositional(String positional,
    [String optional = 'Optional Positional Parameter']) {
  print("This is parameter $optional and this is parameter normal $positional");
}

/// - function Single - Expression
/// */
void singleExpression(int a, int b) => a * b;

/// - Hàm trả về gái trị mặc định
/// */
int sum(int a, int b, [int c = 0]) => a + b + c;

/// hàm order function
/// */
double sumOf(double a, Function b) {
  return b(a);
}

///  Hàm Extension function trong Dart
/// */
extension extensionFunction on String {
  int parseInt() {
    return int.parse(this);
  }

  double parseDouble() {
    return double.parse(this);
  }
}

extension extensionFunction2 on String {
  void printFormat() => print('==== $this ===');
}

/// Bài 8: enum
/// - Tạo một enum class
/// */

enum Group { guest, staff, accounting, admin, member }
