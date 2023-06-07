class Employee {
  final String _name;
  final DateTime timeWorked;
  String get getName => _name;

  Employee(this._name, this.timeWorked);

  void printTimeSheetReport() {
    print("Hours: $timeWorked");
  }
}

class TimeSheetReport {
  void printTime(Employee employee) {
    print("Hours: ${employee.timeWorked}");
  }
}
