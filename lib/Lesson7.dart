abstract class Person {
  var name;
  var age;
  var address;

  void doWork();
}

class Student {
  printVehicleWork() {}
}

class Employee extends Person implements Student {
  var _grossSalary;

  insFromCompany() {
    print('this is function constructors of Employee');
  }

  void _countSalaryMonthly() {
    print('this is function private of class Employee');
  }

  @override
  void doWork() {
    print('function Employee override by class Employee');
  }

  @override
  printVehicleWork() {
    print(
        'function printVehicleWork of Student class override by class Student. But in Dart every class both the class '
        'and the Interface');
  }
}

class Teacher extends Person implements Student {
  isFromSchool() {
    print('this function constructors of Teacher');
  }

  @override
  printVehicleWork() {
    print(
        'function printVehicleWork of class Student and overwritten by class Teacher');
  }

  @override
  void doWork() {
    print(
        'function doWork of abstractClass Person and overwritten by class Teacher');
  }
}

void main() {
  var a = new Employee();
  a._grossSalary = "3000000";
  print('${a._grossSalary}');
  a.doWork();
  a.printVehicleWork();

  //Private function of class Employee
  a._countSalaryMonthly();

  var b = new Teacher();
  b.printVehicleWork();
  b.doWork();
}
