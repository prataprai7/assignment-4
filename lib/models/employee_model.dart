class Employee{
  final String employeeId;
  final String fullName;
  final String gender;
  final String department;
  final String username;
  final String password;

  Employee({
    required this.employeeId,
    required this.fullName,
    required this.gender,
    required this.department,
    required this.username,
    required this.password,
  });
}

final List<Employee> employees = [
  Employee(employeeId: 'A1', fullName: 'Pratap Rai', gender: 'Male', department: "Engineering", username: 'pr', password: 'pass1'),
  Employee(employeeId: 'B2', fullName: "Salman Khan", gender: 'Male', department: 'Actor', username: 'sk', password: 'pass2'),
  Employee(employeeId: 'C3', fullName: "Katrina Kaif", gender: 'Female', department: 'Actress', username: 'kk', password: 'pass3'),
];