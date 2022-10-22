class Task {
  // status = 1 => Нормальный
  // status = 2 => Высокий
  // status = 3 => Чрезвычайный
  final int priorityStatus;
  final int completionStatus;
  final String nameSurname;
  final String address;
  final String date;
  final int phoneNumber;
  final String task;
  Task({
    required this.priorityStatus,
    required this.completionStatus,
    required this.date,
    required this.nameSurname,
    required this.address,
    required this.phoneNumber,
    required this.task,
  });
}
