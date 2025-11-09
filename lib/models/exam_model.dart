

class ExamModel{
  String name;
  DateTime dateTime;
  List<String> examRooms;

  ExamModel(this.name, this.dateTime, this.examRooms);


  @override
  String toString() {
    return 'ExamModel{name: $name, dateTime: $dateTime, examRooms: $examRooms}';
  }
}